import React from 'react'
import Selector from './Selector'

const WithdrawField = React.forwardRef(({ obj }, inputRef) => {
  const {setValue, holder, disabled, value } = obj

  return (
    <div className='flex items-center rounded-xl'>
      <input
        ref={inputRef}
        className={getInputClassname()}
        type='text'
        value={value}
        placeholder={holder}
        disabled={disabled}
        onChange={e => {
          console.log(value)
          setValue(e.target.value)}
        }
      />

    </div>
  )

  function getInputClassname() {
    let className =
      ' w-full outline-none h-8 px-2 appearance-none text-3xl bg-transparent'
    return className
  }
})

export default WithdrawField
