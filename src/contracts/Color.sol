pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract Color is ERC721, IERC721Enumerable {
	string[] public colors;
	mapping(string => bool) _colorExists;

	constructor() ERC721("Color", "COLOR") public {
	}

	// e.g. color = "#FFFFFF"
	function mint(string memory _color) public {
		require(!_colorExists[_color]);
		colors.push(_color);
		uint _id = colors.length;
		_mint(msg.sender, _id);
		_colorExists[_color] = true;
	}

	function tokenOfOwnerByIndex(address owner, uint256 index) public view override returns (uint256) {
        // You need update this logic.
        // ...
        return 3;
    }

    function totalSupply() external  view override returns (uint256) {
      return colors.length;
    }

    function tokenByIndex(uint256 index) external view  override returns (uint256) {
      // You need update this logic.
      // ...
      return 5;
    }
}