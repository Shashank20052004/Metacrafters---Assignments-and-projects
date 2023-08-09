// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract DigitalArtGallery {

    // Struct to represent an artwork
    struct Artwork {
        address artist;
        string title;
        string description;
    }

    // Public variables
    string public galleryName = "ArtNFT Gallery";
    string public gallerySymbol = "ARTNFT";
    uint public totalArtworks = 0;

    // Mapping to store artworks
    mapping(uint => Artwork) public artworks;

    // Mapping to track ownership of artworks
    mapping(address => uint[]) public artistArtworks;

    // Mint function to create a new artwork
    function mintArtwork(string memory _title, string memory _description) public {
        uint artworkId = totalArtworks;
        artworks[artworkId] = Artwork(msg.sender, _title, _description);
        artistArtworks[msg.sender].push(artworkId);
        totalArtworks++;
    }

    // Get total artworks for an artist
    function getTotalArtworks(address _artist) public view returns (uint) {
        return artistArtworks[_artist].length;
    }

    // Get artwork details by ID
    function getArtwork(uint _artworkId) public view returns (address, string memory, string memory) {
        require(_artworkId < totalArtworks, "Invalid artwork ID");
        Artwork memory artwork = artworks[_artworkId];
        return (artwork.artist, artwork.title, artwork.description);
    }
}