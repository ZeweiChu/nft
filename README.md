# NFT Color Demo Project

This project is implemented following [DApp Univrsity's Youtube tutorial](https://www.youtube.com/watch?v=YPbgjPPC1d0). 

I made the following updates:
- Change all solidity smart contract to version `^0.8.0`
- My node version: 16.13.0

Configure the following environment before running this tutorial:
- Install [Ganache](https://www.trufflesuite.com/ganache). This gives us a local ETH chain for our experiments. 
- Install [MetaMask](https://metamask.io/) chrome extension, for our ETH wallet. Configure this ETH wallet to import an address (private key) from Ganache. 
- Install [truffle](https://trufflesuite.com/): `npm install -g truffle`
- Under the git directory, run `truffle migrate` to deploy the chain. (You should find your ETH balance goes down a little bit after migration)
- `truffle compile` and `truffle test` should both work.

After that, run `npm run start`, you should see the demo is up at [http://localhost:3000](http://localhost:3000). Remember to configure your Metamask wallet to connect to local Ganache server so we can mint color on the local test blockchain. 
