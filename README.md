# solsecz - solidity security zoo
The idea of this repo is to combine all available solidity linters, static analysis tools and vulnerability search tools in one place. You run a single command on a smart contract - you get extensive output from all the tools.

Currently more tools are being added. All the tools are tested on vulnerable smart contracts from `vulnerable` folder. If you need to test your own contract then simply put it inside the `vulnerable` directory.

## How to use
1. clone this repo
2. `npm install`
3. `npm run check`

## Supported tools
| Tool | Status | Last commit |
|------|--------|-------------|
| [Solium linter](https://github.com/duaraghav8/Solium) | On | 2 days ago |
| [Solcheck linter](https://github.com/federicobond/solcheck) | On | 9 months ago |
| [Solint linter](https://github.com/SilentCicero/solint) | Off | 2 years ago |

## Todo
- https://consensys.github.io/smart-contract-best-practices/security_tools/
- https://habr.com/company/dsec/blog/353676/

