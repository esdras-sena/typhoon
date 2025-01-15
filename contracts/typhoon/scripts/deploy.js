import { RpcProvider, Account, Contract, json, stark, uint256, shortString, CallData, AccountInterface } from 'starknet';
import * as fs from 'fs';
import verifierSierra from '../target/dev/typhoon_Groth16VerifierBN254.contract_class.json' assert { type: "json" };
import verifierCasm from '../target/dev/typhoon_Groth16VerifierBN254.compiled_contract_class.json' assert { type: "json" };
import hasherSierra from '../target/dev/typhoon_Hasher.contract_class.json' assert { type: "json" };
import hasherCasm from '../target/dev/typhoon_Hasher.compiled_contract_class.json' assert { type: "json" };
import typhoonSierra from '../target/dev/typhoon_Typhon.contract_class.json' assert { type: "json" }
import typhoonCasm from '../target/dev/typhoon_Typhon.compiled_contract_class.json' assert { type: "json" };
import poolSierra from '../target/dev/typhoon_Pool.contract_class.json' assert { type: "json" };
import poolCasm from '../target/dev/typhoon_Pool.compiled_contract_class.json' assert { type: "json" };
import dotenv from 'dotenv'

dotenv.config({ path: '../.env' })

const provider = new RpcProvider({ nodeUrl: 'https://free-rpc.nethermind.io/sepolia-juno/v0_7' });
const accAddress = "0x014c78b080b3e8b9d56ea74f05acdd9de473894998319761619eec15d415fa0a"
const ethAddress = "0x049d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7"
const strkAddress = "0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d"
const tokens = [ethAddress, strkAddress]
const account = new Account(provider, accAddress, process.env.PRIVATE_KEY);


async function deploy() {
    // const typhoonAddress = "0x5e82f6558c20cbb25cf1fc9175021d3172123a22d5af70bebb0a13866985609"

    // const { abi: typhoonAbi } = await provider.getClassAt(typhoonAddress);
    // const typhoon = new Contract(typhoonAbi, typhoonAddress, account);

    // let isRoot = await typhoon.isKnownRoot(BigInt("9662676834302638852743737306812847358206667280625371298355741299892273837783"))
    // return isRoot
    // return '0x'+pool.toString(16)
    
    // const verifierAddress = "0x4ee1ebf59714f2160bed90bb4206d12eed2cfa524d27e3a906d7c212fc3623e"

    // const { abi: verifierAbi } = await provider.getClassAt(verifierAddress);
    // const verifier = new Contract(verifierAbi, verifierAddress, account);
    // let verification = await verifier.verify_groth16_proof_bn254(callData)
    // return verification

    console.log("deploying verifier...")
    
    let verifierResponse = await account.declareAndDeploy({
        contract: verifierSierra,
        casm: verifierCasm,
    });
    await provider.waitForTransaction(verifierResponse.deploy.transaction_hash);
    console.log("verifier deployed at ", verifierResponse.deploy.contract_address)


    console.log("deploying hasher...")
    let hasherResponse = await account.declareAndDeploy({
        contract: hasherSierra,
        casm: hasherCasm,
    });
    await provider.waitForTransaction(verifierResponse.deploy.transaction_hash);
    console.log("hasher deployed at ", hasherResponse.deploy.contract_address)
    

    // console.log("declaring pool...")
    // let declaredPool = await account.declare({
    //     contract: poolSierra,
    //     casm: poolCasm
    // })

    // await provider.waitForTransaction(declaredPool.transaction_hash);

    const typhoonCallData = new CallData(typhoonSierra.abi)
    const typhoonConstructor = typhoonCallData.compile('constructor', {
        owner: accAddress,
        _hasher: hasherResponse.deploy.contract_address,
        _verifier: verifierResponse.deploy.contract_address,
        _poolClassHash: "0x04cd9372e31c454503286b620fdfadaf41f2280666745476a5231a1a8d094471"
    });

    console.log("deploying typhoon...")
    let typhoonResponse = await account.declareAndDeploy({
        contract: typhoonSierra,
        casm: typhoonCasm,
        constructorCalldata: typhoonConstructor
    })
    await provider.waitForTransaction(typhoonResponse.deploy.transaction_hash);
    console.log("typhoon deployed at ", typhoonResponse.deploy.contract_address)

    const { abi: typhoonAbi } = await provider.getClassAt(typhoonResponse.deploy.contract_address);
    if (typhoonAbi === undefined) {
        throw new Error('no abi.');
    }
    const typhoon = new Contract(typhoonAbi, typhoonResponse.deploy.contract_address, provider);
    typhoon.connect(account)

    

    let baseDenomination = BigInt('1' + '0'.repeat(16))

    let now = new Date();
    now.setUTCHours(0, 0, 0, 0);
    let currentDay = Math.floor(now.getTime() / 1000);

    console.log("deploying and adding pools...")
    for (let i = 0; i < 2; i++) {
        for (let j = 0; j < 5; j++) {
            const call = typhoon.populate('addPool', [tokens[i], baseDenomination * BigInt(10 ** j), currentDay]);
            const res = await typhoon.addPool(call.calldata);
            
            await provider.waitForTransaction(res.transaction_hash);
        }
    }
    console.log("pools deployed and added")
    console.log("Typhoon address: ", typhoon.address)
    return [typhoon.address, verifierResponse.deploy.contract_address, hasherResponse.deploy.contract_address]
}

deploy().then((typhoon) => {
    // console.log(typhoon)
    const jsonString = JSON.stringify({ "typhoon": typhoon[0] , "verifier": typhoon[1], "hasher": typhoon[2]}, null, 2); // The third argument adds indentation for readability

    // Write the JSON string to a file
    fs.writeFile('typhoon.json', jsonString, 'utf8', (err) => {
        if (err) {
            console.error('An error occurred while writing JSON Object to File:', err);
        } else {
            console.log('JSON file has been saved.');
        }
    });
})