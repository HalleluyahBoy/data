const SchoolDatabase = artifacts.require("SchoolDatabase");

module.exports = function (deployer)
{
    deployer.deploy(SchoolDatabase);
};
