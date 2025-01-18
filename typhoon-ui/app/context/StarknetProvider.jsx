"use client";
import { sepolia, mainnet } from "@starknet-react/chains";
import {
  alchemyProvider,
  argent,
  braavos,
  infuraProvider,
  lavaProvider,
  nethermindProvider,
  reddioProvider,
  StarknetConfig,
  starkscan,
  useInjectedConnectors,
} from "@starknet-react/core";
import { ArgentMobileConnector } from "starknetkit/argentMobile";
import { WebWalletConnector } from "starknetkit/webwallet";
import dotenv from 'dotenv'
dotenv.config()



export function StarknetProvider({ children }) {
  const { connectors: injected } = useInjectedConnectors({
    recommended: [, argent(), braavos()],
    includeRecommended: "always",
  });

  const connectors = [
    ...injected,
    new WebWalletConnector({ url: "https://web.argent.xyz" }),
    new ArgentMobileConnector(),
  ];

  const apiKey = process.env.NEXT_PUBLIC_API_KEY
  const nodeProvider = process.env.NEXT_PUBLIC_PROVIDER

  let provider;
  if (nodeProvider == "infura") {
    provider = infuraProvider({ apiKey });
  } else if (nodeProvider == "alchemy") {
    provider = alchemyProvider({ apiKey });
  } else if (nodeProvider == "lava") {
    provider = lavaProvider({ apiKey });
  } else if (nodeProvider == "nethermind") {
    provider = nethermindProvider({ apiKey });
  } else {
    provider = reddioProvider({ apiKey });
  }

  // const provider = new RpcProvider({ nodeUrl: 'https://free-rpc.nethermind.io/sepolia-juno/v0_7' });
  return (
    <StarknetConfig
      connectors={connectors}
      chains={[mainnet, sepolia]}
      provider={provider}
      explorer={starkscan}
      autoConnect
    >
      {children}
    </StarknetConfig>
  );
}
