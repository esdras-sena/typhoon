"use client"
import React, { useEffect, useState, useRef } from 'react'

import FormGroup from '@mui/material/FormGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import Switch from '@mui/material/Switch';

import { RpcProvider, Contract, WalletAccount, CallData, cairo } from 'starknet';

import WithdrawField from './WithdrawField'
import toast, { Toaster } from 'react-hot-toast'
import { DEFAULT_VALUE, ETH, STRK } from '../utils/SupportedCoins'
import DepositField from './DepositField'
import { denominationsList, one } from '../utils/SupportedDenominations'

import { CoinSelector, DenominationSelector } from './Selector';
import { Dropdown, DropdownTrigger, DropdownMenu, DropdownItem, Button } from '@nextui-org/react'
import { allowancePerPool, commitmentAndNullifierHash, generateSecretAndNullifier, getFullDenomination, poolsToNumber } from '../utils/depositUtils';
import { JSONInputStringToList, generateProofCalldata } from '../utils/withdrawUtils';
import {
  useAccount
} from "@starknet-react/core";

const MainComponent = () => {
  const { address, account } = useAccount();


  const [srcToken, setSrcToken] = useState(STRK)
  const [loading, setLoading] = useState(false)
  const [loadingText, setLoadingText] = useState('')

  const [rewardMode, setRewardMode] = useState(true)


  const typhoonAddress = "0x2d3db422ca384702726a961e43e6506ec709e6f7b21c1e96655800fe7c2aaee"

  const tokenToAddress = {
    "STRK": "0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d",
    "ETH": "0x049d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7",
    "USDC": ""
  }

  const [noteValue, setNoteValue] = useState("")
  const [receiverValue, setReceiverValue] = useState("")

  const [telegramValue, setTelegramValue] = useState("")

  const noteValueRef = useRef()
  const receiverValueRef = useRef(null)

  const telegramInputRef = useRef()

  const depositRef = useRef()


  const specificRef = useRef()

  const ENTER_AMOUNT = 'Enter an amount'
  const CONNECT_WALLET = 'Connect wallet'
  const DEPOSIT = 'Deposit'
  const TELEGRAM_TRANSFER = "Coming Soon"

  const WITHDRAW = 'Withdraw'
  const TELEGRAM = 'Transfer via Telegram'

  const [selectedNavItem, setSelectedNavItem] = useState(DEPOSIT)

  const nObj = {
    setValue: setNoteValue,
    holder: "note",
    disabled: false,
    value: noteValue
  }

  const rObj = {
    setValue: setReceiverValue,
    holder: "0x",
    disabled: false,
    value: receiverValue
  }

  const [receiverObj, setReceiverObj] = useState(rObj)
  const [noteObj, setNoteObj] = useState(nObj)

  const [noteComp, setNoteComp] = useState()
  const [receiverComp, setReceiverComp] = useState()

  const [denomination, setDenomination] = useState(one)

  const [content, setContent] = useState()

  const [specificValue, setSpecificValue] = useState()

  const [selectedDepositType, setSelectedDepositType] = useState("Defined denominations")

  const dTypes = [
    { key: "Defined denominations", name: "Defined denominations" },
    { key: "Specific Amount", name: "Specific Amount" },
  ]

  const [depositTypes, setDepositTypes] = useState(getFilteredItems(selectedDepositType))

  const [todayDeposits, setTodayDeposits] = useState(0)

  const [overallDeposits, setOverallDeposits] = useState(0);

  useEffect(() => {
    async function getDeposits() {
      let denominations = poolsToNumber()
      const { abi: typhoonAbi } = await account.getClassAt(typhoonAddress);

      const typhoon = new Contract(typhoonAbi, typhoonAddress, account);
      typhoon.connect(account)
      let total = 0
      for (let i = 0; i < denominations.length; i++) {
        let pool = await typhoon.getPool(tokenToAddress[srcToken], getFullDenomination(denominationsList[i]))
        let poolAddr = '0x' + pool.toString(16)
        const { abi: poolAbi } = await account.getClassAt(poolAddr)
        const poolC = new Contract(poolAbi, poolAddr, account);
        let day = await poolC.currentDay()
        let deposits = await poolC.liquidityProviders(day)
        total = total + Number(deposits)        
      }
      setOverallDeposits(total)
    }
    if(account){
      getDeposits()
    }
    if(!loading){
      setContent(depositContent)
    }
  }, [overallDeposits, srcToken, account])


  useEffect(() => {
    async function getDeposits() {
      const { abi: typhoonAbi } = await account.getClassAt(typhoonAddress);

      const typhoon = new Contract(typhoonAbi, typhoonAddress, account);
      typhoon.connect(account)
      let pool = await typhoon.getPool(tokenToAddress[srcToken], getFullDenomination(denomination))
      let poolAddr = '0x' + pool.toString(16)
      const { abi: poolAbi } = await account.getClassAt(poolAddr)
      const poolC = new Contract(poolAbi, poolAddr, account);
      let day = await poolC.currentDay()
      let deposits = await poolC.liquidityProviders(day)
      setTodayDeposits(deposits)
    }
    if(account){
      getDeposits()
    }
    if(!loading){
      setContent(depositContent)
    }

  }, [todayDeposits, denomination, srcToken, account])

  useEffect(() => {
    setDepositTypes(getFilteredItems(selectedDepositType))
    setContent(depositContent)
  }, [selectedDepositType])

  useEffect(() => {
    setContent(depositContent)
  }, [depositTypes])


  useEffect(() => {
    if (loading == true) {
      setContent(loadingContent)
    } else {
      if (btnText == DEPOSIT) {
        setContent(depositContent)
      } else if (btnText == WITHDRAW) {
        setContent(withdrawContent)
      } else if (btnText == TELEGRAM_TRANSFER) {
        setContent(telegramContent)
      }
    }

  }, [loading])

  useEffect(() => {
    setContent(loadingContent)
  }, [loadingText])

  function getFilteredItems(ignoreValue) {
    return dTypes.filter(item => item['key'] !== ignoreValue)
  }


  let depositObj = {
    denomination: denomination,
    defaultValue: STRK,
    setToken: setSrcToken,
    setDenomination: setDenomination,
    disabled: false
  }

  const [comp, setComp] = useState(<DepositField obj={depositObj} ref={depositRef} />)

  let telegramObj = {
    denomination: denomination,
    defaultValue: STRK,
    setToken: setSrcToken,
    setDenomination: setDenomination,
    disabled: true
  }

  let telegramInputObj = {
    holder: "@handle",
    setValue: setTelegramValue,
    disabled: true
  }

  const [compT, setCompT] = useState(<DepositField obj={telegramObj} ref={depositRef} />)


  const [btnText, setBtnText] = useState(CONNECT_WALLET)


  useEffect(() => {
    if (address) {
      if (selectedNavItem === DEPOSIT) {
        setBtnText(DEPOSIT)
      } else if (selectedNavItem === WITHDRAW) {
        setBtnText(WITHDRAW)
      } else if (selectedNavItem === TELEGRAM_TRANSFER) {
        setBtnText(TELEGRAM_TRANSFER)
      }

    }
  }, [address])



  useEffect(() => {
    setContent(withdrawContent)
  }, [noteValue]);

  useEffect(() => {
    setContent(withdrawContent)

  }, [receiverValue]);


  useEffect(() => {
    setContent(depositContent)
  }, [])



  return (
    <div className='bg-zinc-900 w5-[35%] p-4 px-6 rounded-xl'>
      <div className='bg-zinc-900 h-fit flex items-center justify-around rounded-full mx-6'>
        <p
          className={getNavIconClassName(DEPOSIT)}
          onClick={() => {
            setSelectedNavItem(DEPOSIT)
            setContent(depositContent)
            if (address) {
              setBtnText(DEPOSIT)
            }
          }}
        >
          {DEPOSIT}
        </p>
        <p
          className={getNavIconClassName(WITHDRAW)}
          onClick={() => {
            setSelectedNavItem(WITHDRAW)
            setContent(withdrawContent)
            if (address) {
              setBtnText(WITHDRAW)
            }
          }}
        >
          {WITHDRAW}
        </p>
        <p
          className={getNavIconClassName(TELEGRAM)}
          onClick={() => {
            setSelectedNavItem(TELEGRAM)
            setContent(telegramContent)
            setBtnText(TELEGRAM_TRANSFER)
          }}
        >
          {TELEGRAM}
        </p>

      </div>
      {content}
      <button
        className={getBtnClassName()}
        disabled={loading}
        onClick={async () => {
          if (btnText === DEPOSIT) {
            if (selectedDepositType === "Defined denominations") {
              await handleDeposit()
            } else {
              await handleSpecificAmountDeposit()
            }
          }
          else if (btnText === WITHDRAW) await handleWithdraw()
        }}
      >
        {btnText}
      </button>



      <Toaster />
    </div>
  )

  function withdrawContent() {
    return (
      <div>
        <div className='flex items-center justify-between py-4 px-1'>
          <p>Withdraw</p>

        </div>

        Note
        <div className='relative bg-[#212429] p-4 py-6 rounded-xl mb-5 border-[2px] border-transparent hover:border-zinc-600'>

          <div className='flex items-center rounded-xl'>
            <input
              ref={noteValueRef}
              className={getInputClassname()}
              type={"text"}
              value={noteValue}
              placeholder={"note"}
              disabled={false}
              onChange={e => {
                setNoteValue(e.target.value)
              }
              }
            />

          </div>
        </div>
        Receiver
        <div className='bg-[#212429] p-4 py-6 rounded-xl mb-2 mt-2 border-[2px] border-transparent hover:border-zinc-600'>
          <div className='flex items-center rounded-xl'>
            <input
              ref={receiverValueRef}
              className={getInputClassname()}
              type='text'
              value={receiverValue}
              placeholder={"0x"}
              disabled={false}
              onChange={e => {
                setReceiverValue(e.target.value)
              }
              }
            />

          </div>
        </div>
        <FormGroup className='' >

          <FormControlLabel disableTypography={{ color: 'white' }} disabled={true} onChange={(_, checked) => {
            console.log(checked)
          }} control={<Switch defaultChecked />} label="Telegram Relayers (coming soon)" />
        </FormGroup>
      </div>
    )
  }

  function depositContent() {
    return (
      <div>
        <div className='flex items-center justify-between py-4 px-1'>
          Deposit
          {depositTypeSelector()}
        </div>

        <div className='relative bg-[#212429] p-4 py-6 rounded-xl mb-5 border-[2px] border-transparent hover:border-zinc-600'>
          {selectedDepositType === "Defined denominations" ? comp : specificAmountField()}
        </div>
        <div className='bg-[#212429] p-4 py-6 rounded-xl mt-5 border-[2px] border-transparent hover:border-zinc-600'>
          {selectedDepositType === "Specific Amount"? "Overall today deposits": "today deposits for pool"}: {selectedDepositType === "Specific Amount"? overallDeposits: todayDeposits}
        </div>

        <FormGroup className='mb-5'>
          <FormControlLabel onChange={(_, checked) => {
            setRewardMode(checked)
          }} control={<Switch defaultChecked />} label="Reward mode" />
        </FormGroup>
      </div>
    )
  }

  function telegramContent() {
    return (
      <div>
        <div className='mb-5 mt-5'>
          Transfer via Telegram (Coming Soon)
        </div>

        <div className='relative bg-[#212429] p-4 py-6 rounded-xl mb-5 border-[2px] border-transparent hover:border-zinc-600'>
          {compT}
        </div>
        <div className='bg-[#212429] p-4 py-6 rounded-xl mt-5 border-[2px] border-transparent hover:border-zinc-600'>
          Today deposits: {0}
        </div>
        <div className='bg-[#212429] p-4 py-6 rounded-xl mb-2 mt-2 border-[2px] border-transparent hover:border-zinc-600'>
          <WithdrawField obj={telegramInputObj} ref={telegramInputRef} curValue={telegramValue} />
        </div>
        <FormGroup className='mb-5' >

          <FormControlLabel disableTypography={{ color: 'white' }} disabled={true} onChange={(_, checked) => {
            console.log(checked)
          }} control={<Switch defaultChecked />} label="Reward mode" />
        </FormGroup>
      </div>
    )
  }

  function loadingContent() {
    return (
      <div style={{ marginLeft: "auto", marginRight: "auto", width: "50%" }}>
        <img src='/Infinity.svg'></img>
        <div>
          {loadingText}
        </div>
      </div>
    )
  }

  function createAndDownloadFile(content) {
    const fileContent = content;
    const blob = new Blob([fileContent], { type: 'text/plain' });
    const url = URL.createObjectURL(blob);

    const link = document.createElement('a');
    link.href = url;
    link.download = 'note.txt';

    document.body.appendChild(link);

    link.click();

    document.body.removeChild(link);

    URL.revokeObjectURL(url);
  }

  async function handleDeposit() {
    setLoading(true)
    setLoadingText("Initiating deposit...")
    const { abi: typhoonAbi } = await account.getClassAt(typhoonAddress);

    const typhoon = new Contract(typhoonAbi, typhoonAddress, account);

    let pool = await typhoon.getPool(tokenToAddress[srcToken], getFullDenomination(denomination))
    let poolAddr = '0x' + pool.toString(16)

    setLoadingText("Depositing...")
    const [secret, nullifier] = generateSecretAndNullifier()
    const cn = await commitmentAndNullifierHash(secret, nullifier)
    const multiCall = await account.execute([
      // Calling the first contract
      {
        contractAddress: tokenToAddress[srcToken],
        entrypoint: 'approve',
        calldata: CallData.compile({
          spender: poolAddr,
          amount: cairo.uint256(getFullDenomination(denomination)),
        }),
      },
      // Calling the second contract
      {
        contractAddress: typhoonAddress,
        entrypoint: 'deposit',
        calldata: CallData.compile({
          _commitment: [cairo.uint256(cn[0])],
          _pool: cairo.tuple([poolAddr]),
          _reward: rewardMode
        }),
      },
    ]);

    await account.waitForTransaction(multiCall.transaction_hash);

    const { abi: poolAbi } = await account.getClassAt(poolAddr)
    const poolC = new Contract(poolAbi, poolAddr, account);

    let day = await poolC.currentDay()

    let proofElements = JSON.stringify({
      "secret": secret,
      "nullifier": nullifier,
      "txHash": multiCall.transaction_hash.toString(),
      "pool": poolAddr,
      "day": rewardMode ? day.toString() : '1'
    })
    console.log("creating file")
    createAndDownloadFile(proofElements)
    setLoadingText("Deposit Completed!")
    await new Promise(r => setTimeout(r, 2000));
    setLoading(false)
  }

  async function handleSpecificAmountDeposit() {
    setLoading(true)
    const { abi: typhoonAbi } = await account.getClassAt(typhoonAddress);
    const typhoon = new Contract(typhoonAbi, typhoonAddress, account);
    typhoon.connect(account)

    const { abi: tokenAbi } = await account.getClassAt(tokenToAddress[srcToken])
    const token = new Contract(tokenAbi, tokenToAddress[srcToken], account);
    token.connect(account)

    let proofsElements = []

    let secrets = []
    let nullifiers = []
    let pools = []
    let commitments = []

    let approvalsAndDeposit = []

    let [poolsAllowance, depositCount] = allowancePerPool(specificValue)
    let noteCounter = 0
    for (let i = 0; i < poolsAllowance.length; i++) {
      if (poolsAllowance[i] == 0) {
        continue
      }
      let pool = await typhoon.getPool(tokenToAddress[srcToken], getFullDenomination(denominationsList[i]))
      approvalsAndDeposit.push({
        contractAddress: tokenToAddress[srcToken],
        entrypoint: 'approve',
        calldata: CallData.compile({
          spender: '0x' + pool.toString(16),
          amount: cairo.uint256(poolsAllowance[i]),
        }),
      })
      for (let j = 0; j < BigInt(poolsAllowance[i]) / getFullDenomination(denominationsList[i]); j++) {
        noteCounter++
        setLoadingText(`Generating Deposit (${noteCounter}/${depositCount})...`)
        const [secret, nullifier] = generateSecretAndNullifier()
        secrets.push(secret)
        nullifiers.push(nullifier)
        pools.push('0x' + pool.toString(16))
        const [commitment, _] = await commitmentAndNullifierHash(secret, nullifier)
        commitments.push(commitment)
      }
    }

    approvalsAndDeposit.push({
      contractAddress: typhoonAddress,
      entrypoint: 'deposit',
      calldata: CallData.compile({
        _commitment: cairo.tuple(commitments.map(x => cairo.uint256(x))),
        _pool: cairo.tuple(pools),
        _reward: rewardMode
      }),
    })
    setLoadingText("Depositing...")
    const multiCall = await account.execute(approvalsAndDeposit);

    await account.waitForTransaction(multiCall.transaction_hash);

    const { abi: poolAbi } = await account.getClassAt(pools[0])
    const poolC = new Contract(poolAbi, pools[0], account);

    let day = await poolC.currentDay()

    for (let i = 0; i < commitments.length; i++) {
      proofsElements.push(
        JSON.stringify({
          "secret": secrets[i],
          "nullifier": nullifiers[i],
          "txHash": multiCall.transaction_hash,
          "pool": pools[i],
          "day": rewardMode ? day.toString() : '1'
        })
      )
    }
    setSpecificValue("")
    createAndDownloadFile(proofsElements.join('\n'))
    setLoadingText("Deposit Completed!")
    await new Promise(r => setTimeout(r, 2000));
    setLoading(false)
  }

  async function handleWithdraw() {
    setLoading(true)
    setLoadingText("Initiating Withdraw...")
    await new Promise(r => setTimeout(r, 1000));

    let proofsStringList = JSONInputStringToList(noteValue)

    for (let i = 0; i < proofsStringList.length; i++) {
      setLoadingText(`Generating Proof (${i + 1}/${proofsStringList.length})... (This can take a few seconds)`)
      let proofString = JSON.parse(proofsStringList[i])
      let callData = await generateProofCalldata(proofString, receiverValue)

      setLoadingText(`Withdrawing (${i + 1}/${proofsStringList.length})... (This can take a few seconds)`)
      const multiCall = await account.execute({
        contractAddress: typhoonAddress,
        entrypoint: 'withdraw',
        calldata: CallData.compile({
          full_proof_with_hints_list: cairo.tuple(callData),
        }),
      });
      await account.waitForTransaction(multiCall.transaction_hash);
    }


    setLoadingText("Withdraw Completed!")
    await new Promise(r => setTimeout(r, 3000));
    setNoteValue("")
    setReceiverValue("")
    setLoading(false)
  }


  function specificAmountField() {
    return (
      <div className='flex items-center rounded-xl'>
        <input
          ref={specificRef}
          className={getInputClassname()}
          type={'number'}
          value={specificValue}
          placeholder={'0.0'}
          onChange={e => {
            setSpecificValue(e.target.value)
          }}
        />

        <CoinSelector
          disabled={false}
          id={"coin"}
          setToken={setSrcToken}
          defaultValue={STRK}
        />
      </div>
    )
  }

  function depositTypeSelector() {
    return (
      <Dropdown className='bg-black rounded-xl'>
        <DropdownTrigger>
          <Button variant="bordered" className='bg-black rounded-xl ml-2 mr-10'>{selectedDepositType}</Button>
        </DropdownTrigger>
        <DropdownMenu className='bg-black rounded-xl' aria-label="Static Actions" items={depositTypes} onAction={key => {

          setSelectedDepositType(key)
        }}>
          {item => (
            <DropdownItem
              aria-label={"depositType"}
              key={item.key}
              color={item.key === 'delete' ? 'error' : 'default'}
            >
              {item.name}
            </DropdownItem>
          )}
        </DropdownMenu>
      </Dropdown>
    )
  }



  function getBtnClassName() {
    let className = 'p-4 w-full my-2 rounded-xl'
    className +=
      btnText === ENTER_AMOUNT || btnText === CONNECT_WALLET || btnText === TELEGRAM_TRANSFER
        ? ' text-zinc-400 bg-zinc-800 pointer-events-none'
        : ' bg-blue-700'
    return className
  }



  function getNavIconClassName(name) {
    let className =
      'p-1 px-4 cursor-pointer border-[4px] border-transparent flex items-center'
    className +=
      name === selectedNavItem
        ? ' bg-zinc-800 border-zinc-900 rounded-full'
        : ''
    return className
  }

  function getInputClassname() {
    let className =
      ' w-full outline-none h-8 px-2 appearance-none text-3xl bg-transparent'
    return className
  }
}

export default MainComponent
