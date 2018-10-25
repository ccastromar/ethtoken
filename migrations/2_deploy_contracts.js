var MiToken = artifacts.require("./MiToken.sol");

module.exports = function(deployer) {
  deployer.deploy(MiToken);
};
