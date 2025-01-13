import React from 'react'
import {CoinSelector, DenominationSelector} from './Selector'

const DepositField = React.forwardRef(({ obj }, ref) => {
  const {denomination, defaultValue, setToken, setDenomination, disabled } = obj

  return (
    <div className='flex items-center' >
      Token:
      <CoinSelector
        id={"coin"}
        setToken={setToken}
        defaultValue={defaultValue}
        disabled={disabled}
      />
      Denomination:
      <DenominationSelector
        disabled={disabled}
        id={"denomination"}
        setToken={setDenomination}
        defaultValue={denomination}
      />
    </div>
  )

  function getInputClassname() {
    let className =
      ' w-full outline-none h-8 px-2 appearance-none text-3xl bg-transparent'
    return className
  }
})

export default DepositField
