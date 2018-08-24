# solsecz - solidity security zoo
The idea of this repo is to combine all available solidity linters, static analysis tools and vulnerability search tools in one place. You run a single command on a smart contract - you get extensive output from all the tools.

Currently more tools are being added. All the tools are tested on vulnerable smart contracts from `vulnerable` folder. If you need to test your own contract then simply put it inside the `vulnerable` directory.

## How to use
1. clone this repo
2. `npm install`
3. install [solc](http://solidity.readthedocs.io/en/v0.4.24/installing-solidity.html)
4. install [manticore](https://github.com/trailofbits/manticore)
5. install [mythril](https://github.com/ConsenSys/mythril) 
6. `npm run check`

## Supported tools
| Tool | Status | Last commit |
|------|--------|-------------|
| [Solgraph](https://github.com/raineorshine/solgraph) | On | 4 days ago |
| [Manticore](https://github.com/trailofbits/manticore) | On | 2 days ago |
| [Mythril](https://github.com/ConsenSys/mythril) | On | 1 day ago |
| [Solium linter](https://github.com/duaraghav8/Solium) | On | 2 days ago |
| [Solcheck linter](https://github.com/federicobond/solcheck) | On | 9 months ago |
| [Solhint linter](https://github.com/protofire/solhint) | On | 1 month ago |
| [Solint linter](https://github.com/SilentCicero/solint) | Off | 2 years ago |

## Notice
- To check your contracts with `manticore` or `mythril` you should edit `check.sh` script accordingly.
- To visualize `dot` files produced by `solgraph` you should isntall [graphviz](https://graphviz.gitlab.io/download/) and run the following command: `dot -Tpng MyContract.dot -o MyContract.png`

## Todo
- https://habr.com/company/dsec/blog/353676/
- http://solidity.readthedocs.io/en/v0.4.24/index.html
- https://medium.com/loom-network/how-to-secure-your-smart-contracts-6-solidity-vulnerabilities-and-how-to-avoid-them-part-2-730db0aa4834