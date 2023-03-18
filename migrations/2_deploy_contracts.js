const SchoolDatabase = artifacts.require("SchoolDatabase");
const SchoolDatabaseMigration = artifacts.require("SchoolDatabaseMigration");

module.exports = function (deployer) {
  deployer.deploy(SchoolDatabase).then(function() {
    return deployer.deploy(SchoolDatabaseMigration, SchoolDatabase.address, SchoolDatabase.address);
  });
};
