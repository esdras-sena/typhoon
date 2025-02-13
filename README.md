# Typhoon

Typhoon is a zk-SNARK coin mixer protocol crafted during the buidlbox Starknet Winter Hackathon for Starknet, Typhoon is based on the Tornado Cash protocol, with some changes in the AP (Anonymity Points) reward system, Deposit mechanism, and a Telegram Relayers system (under development). These modifications will be detailed in the subsequent sections of this README.

## Who can benefit from Typhoon

As any coin mixer Typhoon aims to enhance privacy for cryptocurrency transactions by obscuring the trail between the funds and their original source. Here are the groups or individuals who might benefit from using Typhoon:

1. Privacy Advocates
    * Individuals who value their financial privacy might use coin mixers to keep their transactions anonymous. They might not want their financial dealings to be traceable, especially in regions where personal financial privacy is not well-protected by law.


2. Cryptocurrency Traders and Investors
    * Some traders might use Typhoon to protect their trading strategies or to keep their portfolio sizes confidential. This can be particularly relevant when dealing with large volumes where revealing transaction patterns could affect market dynamics.


3. Sensitive Businesses Transactions
    * Companies in sectors like journalism, legal services, or any businesses handling sensitive or confidential transactions might use Typhoon to protect the privacy of their clients or their own operations from competitive analysis or unwanted attention.


4. Whistleblowers or Activists
    * Those involved in political activism, whistleblowing, or similar activities might use Typhoon to protect their identities from being traced through financial transactions, especially in oppressive regimes or high-surveillance environments.


5. High Net Worth Individuals
    * Wealthy individuals might employ Typhoon to maintain privacy regarding their wealth or to protect against potential security threats like kidnapping or extortion by keeping their financial movements obscured.

## Differences from Tornado Cash

Typhoon is based on Tornado Cash, mirrors its predecessor in numerous ways, yet introduces its own distinctive features. Here's what sets Typhoon apart:

### Platform
Typhoon is specifically crafted for the Starknet ecosystem, thus it's coded in Cairo, harnessing the robust capabilities and scalability of Starknet's infrastructure.

### Telegram Relayers (Under Development)
Telegram Relayers are being developed to become the main feature of the Typhoon ecosystem, dramatically enhancing user privacy by resolving the longstanding "fee payment dilemma." Unlike Tornado Cash, where becoming a Relayer requires a little technical know-how to operate a node on your personal machine, Typhoon innovates with a seamless integration through a Telegram mini app. This approach not only simplifies the process but also makes it remarkably user-friendly for those less tech-savvy within the Telegram community.

**Benefits for Telegram Users:** Imagine this: nearly one billion Telegram users can now tap into a new avenue for passive income simply by installing a mini app. All that's required is to fund the app with ETH or STRK for gas fees, thereby not only earning a little extra but also contributing to a larger network of privacy. This mini app turns the complex into the commonplace, enabling users to bolster their financial portfolios while enhancing the privacy of their digital interactions within Typhoon.

**Advantages for Starknet:** The integration of Telegram Relayers with Typhoon opens a gateway to Starknet for millions. To operate as a Relayer, users must interact with Starknet to supply their Relayer accounts with ETH or STRK for gas fees. This interaction could potentially funnel nearly a billion Telegram users into the Starknet ecosystem, significantly boosting its visibility, usage, and adoption. It's not just about transactions; it's about expanding a blockchain's community through practical, everyday use.

**Enhancing the Typhoon User Experience:** With an influx of Telegram users turning Relayers, the landscape becomes more competitive. This competition among Relayers is anticipated to drive down fees, making privacy services through Typhoon more accessible and economically viable for users. The larger the pool of Relayers, the more dynamic and user-centric the pricing can become, ensuring that privacy doesn’t have to come at a prohibitive cost.

In essence, the introduction of Telegram Relayers within the Typhoon protocol is not just a feature, it's a leap towards democratizing blockchain privacy, making it a collective endeavor accessible to all, not just the technically adept. It's about fostering an ecosystem where privacy, income, and blockchain interaction harmoniously coexist.

### Typhoon Reward System

Typhoon rewards its liquidity providers (LPs) with a portion of the fees from user withdrawals (when the reward mode is activated). If the Reward mode is activated in your deposit, your commitment will be hashed with the day timestamp (00:00 UTC of the  current day) to make sure that only a valid day can generate a valid Merkle Tree root. At the moment of your withdraw the deposit day timestamp of your proof public signals will be used to calculate the amount of days that you provide liquidity for Typhoon, and you’ll get your part of the accrued fees as reward. The accrued fees are splitted between the liquidity providers and Typhoon (As protocol revenue).

### Deposit Mechanism

Typhoon's Deposit mechanism offers two modes of deposit. The first mode, familiar to Tornado Cash users, involves selecting a specific denomination for your deposit, which then mixes into a pool with matching deposits, rendering individual transactions indistinguishable. The second mode of Typhoon Deposit allows you to input any large amount, which gets cleverly splitted among existing pools, ensuring privacy even for specific and large amounts. The only caveat: the amount must be divisible by 1 * (10^16), with any remainder automatically subtracted and not claimed by Typhoon, maintaining the integrity and privacy of the system.

## Garaga

[Garaga](https://github.com/keep-starknet-strange/garaga) is a great project from     Keep Starknet Strange (visit their repo [here](https://github.com/keep-starknet-strange)) that enables efficient elliptic curve operations on Starknet and is a very important part of Typhoon, with Garaga was possible to generate the verifier contract to verify the SNARK proofs from Typhoon.



