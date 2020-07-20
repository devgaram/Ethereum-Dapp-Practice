var Election = artifacts.require('./Election.sol');

module.exports = function(deployer) {
  deployer.deploy(Election);
};
/**
 * Truffle이 마이그레이션을 순서대로 실행하도록 migration 폴더 안의 파일들에는 넘버링이 되어있다.
 */