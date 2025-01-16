"use client"
import React, { useEffect, useState } from 'react'

import { Dropdown, DropdownTrigger, DropdownMenu, DropdownItem, Button } from '@nextui-org/react'
import {
  STRK,
  USDC,
  DEFAULT_VALUE,
  ETH,
} from '../utils/SupportedCoins'

import {  five, four, three, two, one } from '../utils/SupportedDenominations'

export const CoinSelector = ({ defaultValue, ignoreValue, setToken, id, disabled }) => {
  const menu = [
    { key: ETH, name: ETH },
    { key: STRK, name: STRK },
  ]

  const [selectedItem, setSelectedItem] = useState()
  const [menuItems, setMenuItems] = useState(getFilteredItems(ignoreValue))

  function getFilteredItems(ignoreValue) {
    return menu.filter(item => item['key'] !== ignoreValue)
  }

  useEffect(() => {
    setSelectedItem(STRK)
  }, [defaultValue])

  useEffect(() => {
    setMenuItems(getFilteredItems(ignoreValue))
  }, [ignoreValue])

  return (
    <Dropdown disableAnimation={disabled} className='bg-black rounded-xl mr-2'>
      <DropdownTrigger>
        <Button disabled={disabled} variant="bordered" className='bg-black rounded-xl ml-2 mr-7'>{selectedItem}</Button>
      </DropdownTrigger>
      <DropdownMenu className='bg-black rounded-xl' aria-label="Static Actions" items={menuItems} onAction={key => {
          setSelectedItem(key)
          setToken(key)
        }}>
          {item => (
          <DropdownItem
            aria-label={id}
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

export const DenominationSelector = ({ defaultValue, ignoreValue, setToken, id, disabled }) => {
  const menu = [
    { key: one, name: one },
    { key: two, name: two },
    { key: three, name: three },
    { key: four, name: four },
    { key: five, name: five },
  ]

  const [selectedItem, setSelectedItem] = useState()
  const [menuItems, setMenuItems] = useState(getFilteredItems(ignoreValue))

  function getFilteredItems(ignoreValue) {
    return menu.filter(item => item['key'] !== ignoreValue)
  }

  useEffect(() => {
    setSelectedItem(one)
  }, [defaultValue])

  useEffect(() => {
    setMenuItems(getFilteredItems(ignoreValue))
  }, [ignoreValue])

  return (
    <Dropdown disableAnimation={disabled} className='bg-black rounded-xl'>
      <DropdownTrigger>
        <Button disabled={disabled} variant="bordered" className='bg-black rounded-xl ml-2'>{selectedItem}</Button>
      </DropdownTrigger>
      <DropdownMenu  className='bg-black rounded-xl' aria-label="Static Actions" items={menuItems} onAction={key => {
          setSelectedItem(key)
          setToken(key)
        }}>
          {item => (
          <DropdownItem
            aria-label={id}
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
