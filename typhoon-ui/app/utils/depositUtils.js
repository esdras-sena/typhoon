import { one, two, three, four, five } from "./SupportedDenominations";
import { ethers } from 'ethers'
import $u from './$u.js';
const wc = require("./witness_calculator.js");



export function generateSecretAndNullifier() {
    const secret = uint8ArrayTo256BitBigInt(ethers.randomBytes(32)).toString();
    const nullifier = uint8ArrayTo256BitBigInt(ethers.randomBytes(32)).toString();
    return [secret, nullifier]
}

function uint8ArrayTo256BitBigInt(uint8Array) {
    if (uint8Array.length !== 32) {
      throw new Error("Uint8Array must be exactly 32 bytes for a 256-bit integer.");
    }
  
    let result = BigInt(0);
    for (const byte of uint8Array) {
      result = (result << BigInt(8)) + BigInt(byte);
    }
  
    return result;
}

export async function commitmentAndNullifierHash(secret, nullifier) {
    const input = {
        secret: BigInt(secret),
        nullifier: BigInt(nullifier)
    };
    var res = await fetch("deposit.wasm");
    var buffer = await res.arrayBuffer();

    var depositWC = await wc(buffer);

    const r = await depositWC.calculateWitness(input, 0);

    const commitment = r[1];
    const nullifierHash = r[2];

    return [commitment, nullifierHash]
}

export function allowancePerPool(amount) {
    let pools = poolsToNumber()
    let poolsAllowance = []
    let depositsCount = 0
    let res = amount.toString().includes('.')? Number(amount.toString().split('.').join('')) : amount
    for (let i= 0, c = pools.length-1; i < pools.length; i++, c--) {
        if (res > pools[i]) {
            let aux = res % pools[i]
            poolsAllowance[c] = res - aux
            depositsCount = depositsCount + (poolsAllowance[c] / pools[i])
            res = aux
            
        } else {
            poolsAllowance[c] = 0
        }
    }
    return [poolsAllowance, depositsCount]
}



export function allowanceCallsPerPool(allowancePerPool) {
    let poolsNumber = poolsToNumber();
    let poolCalls = []
    for (let i = 0; i < allowancePerPool.length; i++) {
        if (allowancePerPool[i] == 0) {
            poolCalls[i] = 0
        } else {
            poolCalls[i] = allowancePerPool[i] / poolsNumber[i]
        }

    }
    return poolCalls
}

export function poolsToNumber() {
    let pools = []
    pools[0] = Number(`${five + '0'.repeat(18)}`);
    pools[1] = Number(`${four + '0'.repeat(18)}`);
    pools[2] = Number(`${three + '0'.repeat(18)}`);
    pools[3] = Number(`${two.split('.')[1] + '0'.repeat(17)}`);
    pools[4] = Number(`${one.split('.')[1] + '0'.repeat(16)}`);
    return pools
}

export function getFullDenomination(denomination) {
    if(denomination == one){
        return BigInt(`${one.split('.')[1] + '0'.repeat(16)}`)
    } else if (denomination == two){
        return BigInt(`${two.split('.')[1] + '0'.repeat(17)}`) 
    } else if (denomination == three) {
        return BigInt(`${three + '0'.repeat(18)}`)
    } else if(denomination == four){
        return BigInt(`${four + '0'.repeat(18)}`);
    } else if (denomination == five){
        return BigInt(`${five + '0'.repeat(18)}`)
    } else {
        return 0
    }
}