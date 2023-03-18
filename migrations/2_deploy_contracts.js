const SchoolDatabase = artifacts.require("SchoolDatabase");
const SchoolDatabaseMigration = artifacts.require("SchoolDatabaseMigration");

module.exports = async function (deployer) {
  await deployer.deploy(SchoolDatabase);
  const schoolDatabase = await SchoolDatabase.deployed();
  await deployer.deploy(SchoolDatabaseMigration, schoolDatabase.address);
};
