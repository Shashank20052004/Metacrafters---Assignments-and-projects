const hre = require("hardhat");
const tokenContractJSON = require("../artifacts/contracts/Naruto.sol/Naruto.json");

const tokenAddress = "0x494ba781B500ba5c7Fce37741Cabd6555d01aDeE"; // Ethereum address of the deployed ERC721A contract
const tokenABI = tokenContractJSON.abi;
const walletAddress = "0x63265F61dd177Fc68beEBAb427b409eF642bf4C0"; // Ethereum public address for the wallet

async function main() {
    // Get the contract instance of the deployed ERC721A contract
    const token = await hre.ethers.getContractAt(tokenABI, tokenAddress);

    // Log the total number of ERC721A tokens owned by the specified wallet address
    console.log("You now have a total number of: " + await token.balanceOf(walletAddress) + " tokens in the wallet.");
  }
  
 // Call the main function and handle any errors
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
