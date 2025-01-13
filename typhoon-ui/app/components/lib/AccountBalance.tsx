import { useReadContract} from "@starknet-react/core";
import Erc20Abi from "../../utils/token.abi.json";
import { formatCurrency } from "../../utils/helpers";

type Props = {
  address: string;
  heading?: boolean;
};

function AccountBalance({ address, heading = true }: Props) {
  const { data: eth, isLoading: ethLoading } = useReadContract({
    address: "0x049d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7",
    abi: Erc20Abi,
    functionName: "balanceOf",
    args: [address!],
    watch: true,
  });

  const { data: strk, isLoading: strkLoading } = useReadContract({
    address: "0x04718f5a0fc34cc1af16a1cdee98ffb20c31f5cd61d6ab07201858f4287c938d",
    abi: Erc20Abi,
    functionName: "balanceOf",
    args: [address!],
    watch: true,
  });

  // @ts-ignore
  const ethBalance = formatCurrency(eth?.balance.low.toString());
  // @ts-ignore
  const strkBalance = formatCurrency(strk?.balance?.low.toString());

  return (
    <div className="p-4 text-sm bg-white">
      {heading && <h3 className="mb-4 text-md">Assets</h3>}

      <div className="flex flex-col gap-4 text-[--headings]">
        <div className="flex justify-between">
          <div className="flex items-center gap-4">
            <div className="h-8 w-8 rounded-full md:h-12 md:w-12">
              <img className="w-full" src="/assets/eth.svg" alt="" />
            </div>
            <div>
              <p className="mb-2 text-md">ETH</p>
              <p>Ethereum</p>
            </div>
          </div>
          <div className="mr-4 flex items-center">
            <p className="">{Number(ethBalance).toFixed(3)}</p>
          </div>
        </div>
        <div className="flex justify-between">
          <div className="flex items-center gap-4">
            <div className="h-8 w-8 rounded-full md:h-12 md:w-12">
              <img className="w-full" src="/assets/strk.svg" alt="" />
            </div>
            <div>
              <p className="mb-2 text-md">STRK</p>
              <p>Starknet token</p>
            </div>
          </div>
          <div className="mr-4 flex items-center">
            <p className="">{Number(strkBalance).toFixed(3)}</p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default AccountBalance;
