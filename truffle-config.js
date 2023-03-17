


module.exports = {
  networks: {
    ganache: {
      host: "127.0.0.1",
      port: 7545, // or 8545 if using Ganache CLI
      network_id: "*", // Match any network id
    },
  },
  compilers: {
    solc: {
      version: "0.8.19",
    },
  },
};





















// module.exports = {


//   networks: {
//     // Useful for testing. The `development` name is special - truffle uses it by default

//   },

//   // Set default mocha options here, use special reporters, etc.
//   mocha: {
//     // timeout: 100000
//   },

//   // Configure your compilers
//   compilers: {
//     solc: {
//       version: "0.8.19",      // Fetch exact version from solc-bin (default: truffle's version)

//     }
//   },

// }