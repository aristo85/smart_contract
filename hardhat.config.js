require('@nomiclabs/hardhat-waffle')    //its a plugin to build SC tests

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/5aCXiCOAAlT2DpwbvNrs3xVQB5x4byrT',   //the url that we got from alchemy
      accounts: ['5d37af20e26580d4a009c60dab312adad1adaf42fb54e1ff6a9a142a7d0bdeeb']  //the private key from the metamask acc ==> acc detail ==> export private key
    }
  }
}