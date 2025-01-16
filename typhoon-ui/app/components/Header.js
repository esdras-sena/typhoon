"use client"
import React, { useEffect, useState } from 'react'

import { useAccount } from "@starknet-react/core";
import AddressBar from "./lib/AddressBar";
import ConnectButton from "./lib/Connect";


import toast, { Toaster } from 'react-hot-toast'

const providerUrl = 'https://free-rpc.nethermind.io/sepolia-juno/v0_7';


const Header = () => {
  const [tokenBalComp, setTokenBalComp] = useState()

  const { address } = useAccount();


  let className = "rounded-[12px] bg-button-primary bg-blue px-6 py-3 text-background-primary-light transition-all duration-300 hover:rounded-[30px] md:py-4"

  const openLink = (url) => {
    const newWindow = window.open(url, '_blank', 'noopener,noreferrer')
    if (newWindow) newWindow.opener = null
  }

  return (
    <div className='fixed left-0 top-0 w-full px-8 py-4 flex items-center justify-between'>
      <div className='flex items-center'>
        <img src='/Typhoon_logo.png' className='h-12' />

      </div>

      <div className='flex'>
        <button style={{ backgroundColor: 'blue', color: 'white' , marginRight: '10px'}}
          aria-haspopup="dialog"
          onClick={() => openLink("https://starknet-faucet.vercel.app/")}
          className={className}
        >
          Get Faucets
        </button>
        {address ? (
          <div className="flex items-center gap-4">
            <AddressBar />
          </div>
        ) : (
          <ConnectButton />
        )}
      </div>

      <Toaster />
    </div>
  )

  function getBtnText(address) {
    return `${address.substring(0, 6)}...${address.substring(address.length - 4, address.length)}`
  }

  
}

export default Header
