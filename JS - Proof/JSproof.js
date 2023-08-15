// Create a variable to hold NFTs
let nftCollection = [];

// This function will take in values as parameters, create an
// NFT object using the parameters passed, and store it in the nftCollection.
function mintNFT(uid, name, state, grade) {
    const nft = {
        uid: uid,
        name: name,
        state: state,
        grade : grade
    };
    nftCollection.push(nft);
}

// This function will loop through the nftCollection array and print their metadata.
function listNFTs() {
    for (const nft of nftCollection) {
        console.log("uid: " + nft.uid);
        console.log("Name: " + nft.name);
        console.log("state: " + nft.state);
        console.log("grade: " + nft.grade);
        console.log("------------------------------");
    }
}

// This function returns the total number of NFTs created.
function getTotalSupply() {
    return nftCollection.length;
}

// Call the functions
mintNFT("22BCS80150", "Shashank", "Bihar", "A");
mintNFT("22BCS80174" , "Ankit",  "Chandigarh", "A+");
mintNFT("22BCS80171", "Sagar", "Haryana", "B+");
mintNFT("22BCS80201", "Abhishek", "Bihar", "A");
mintNFT("22BCS80149", "Ritesh", "Bihar", "A+");

listNFTs();

const totalSupply = getTotalSupply();
console.log("Total NFTs: " + totalSupply);