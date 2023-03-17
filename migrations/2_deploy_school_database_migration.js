const SchoolDatabaseMigration = artifacts.require("SchoolDatabaseMigration");

module.exports = function (deployer)
{
    deployer.deploy(SchoolDatabaseMigration).then(function ()
    {
        return SchoolDatabaseMigration.deployed().then(function (instance)
        {
            return instance.migrate();
        });
    });
};
