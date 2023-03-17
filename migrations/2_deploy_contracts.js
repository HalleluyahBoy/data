const SchoolDatabaseMigration = artifacts.require("SchoolDatabaseMigration");

module.exports = function (deployer)
{
    deployer.deploy(SchoolDatabaseMigration);
};
