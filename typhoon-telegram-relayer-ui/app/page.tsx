"use client";
import Image from "next/image";
import { CogIcon } from "@heroicons/react/16/solid";
import React, { useEffect, useState, useRef } from "react";

export default function Home() {
  const STARTED = "Stop Node";
  const STOPED = "Start Node";

  const [btnText, setBtnText] = useState(STOPED);
  const [relaying, setRelaying] = useState(false);

  return (
    <div className="grid grid-rows-[20px_1fr_20px] items-top justify-items-center min-h-screen p-8 pb-20 sm:p-20 font-[family-name:var(--font-geist-sans)]">
      <div className="fixed left-0 top-0 w-full px-8 py-4 flex items-center justify-between">
        <div className="flex items-center">
          <img src="/Typhoon_logo.png" className="h-12" />
        </div>

        <div className="flex">
          <button onClick={() => console.log("test")}>
            <CogIcon className="h-6" />
          </button>
        </div>
      </div>
      <main className="flex flex-col gap-8 row-start-2 items-center sm:items-start">
        <div className="flex flex-col gap-4 text-[--headings]">
          <div className="flex justify-between">
            <div className="flex items-center gap-4">
              <div className="h-8 w-8 rounded-full md:h-12 md:w-12">
                <img className="w-full" src="/assets/TYPH.png" alt="" />
              </div>
              <div>
                <p className="text-md">TYPH</p>
              </div>
            </div>
            <div className="mr-4 flex items-center">
              <p className="">{Number(0).toFixed(3)}</p>
            </div>
          </div>

          <div className="flex justify-between">
            <div className="flex items-center gap-4">
              <div className="h-8 w-8 rounded-full md:h-12 md:w-12">
                <img className="w-full" src="/assets/eth.svg" alt="" />
              </div>
              <div>
                <p className="text-md">ETH</p>
              </div>
            </div>
            <div className="mr-4 flex items-center">
              <p className="">{Number(0).toFixed(3)}</p>
            </div>
          </div>
          <div className="flex justify-between">
            <div className="flex items-center gap-4">
              <div className="h-8 w-8 rounded-full md:h-12 md:w-12">
                <img className="w-full" src="/assets/strk.svg" alt="" />
              </div>
              <div>
                <p className="text-md mr-5">STRK</p>
              </div>
            </div>
            <div className="mr-4 flex items-center">
              <p className="">{Number(0).toFixed(3)}</p>
            </div>
          </div>
        </div>
        <div className="flex">
          <p className="text-md mr-5">Today Earnings:</p>
          {Number(0).toFixed(3)}
          <p className="text-md ml-2">USD</p>
        </div>
        <div className="flex">
          <p className="text-md mr-5">Total Earnings:</p>
          {Number(0).toFixed(3)}
          <p className="text-md ml-2">USD</p>
        </div>
        {relaying && relayingIndicator()}
      </main>

      <footer className="row-start-3 flex gap-6 flex-wrap items-center justify-center">
        <div>
          <button
            className={getBtnClassName()}
            onClick={() => {
              if (btnText === STARTED) {
                setRelaying(false)
                setBtnText(STOPED);
              } else if (btnText === STOPED) {
                setRelaying(true)
                setBtnText(STARTED);
              }
            }}
          >
            {btnText}
          </button>
        </div>
      </footer>
    </div>
  );

  function getBtnClassName() {
    let className = "bottom-0 p-4 w-full my-2 rounded-xl";
    className += btnText === STARTED ? " bg-red-700" : " bg-blue-700";
    return className;
  }

  function relayingIndicator() {
    return (
      <div style={{ marginLeft: "auto", marginRight: "auto", width: "50%" }}>
        <img src='/Infinity.svg'></img>
        <div>
          Relaying...
        </div>
      </div>
    )
  }
}
