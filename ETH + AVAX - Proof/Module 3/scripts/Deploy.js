const { ethers } = require("hardhat");

async function main() {
  const BlackBerry = await ethers.getContractFactory("BlackBerry");
  const blackBerry = await BlackBerry.deploy("Black Berry", "BBY");

  await blackBerry.deployed();

  console.log("BlackBerry contract deployed to:", blackBerry.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });