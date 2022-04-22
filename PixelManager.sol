import "./Pixel.sol";

contract PixelManager {
    // Maps each address to whether or not they have changed their pixel
    mapping(address => bool) _pixelChangeMap;

    // Pixel[] public pixels;
    mapping (Pixel => address) public PixelToOwner;

    // mapping (address => Pixel) ownerPixelCount;    
    constructor () {

    }

    event mintToken(address to, uint256 amount);

    function mint(address to, uint256 amount) public {
        _pixelChangeMap[Pixel] = false; 

        emit mintToken(to, amount);
    } 

    function changePixel(uint256 r, uint256 g, uint256 b) public {
        if(!_pixelChangeMap[msg.sender]){
            _pixelMap[msg.sender].changePixelColor(r, g, b); 
            _pixelChangeMap[msg.sender] = true;   
        } else {
            // You have already changed your pixel
        }
    }

}