pragma solidity >=0.4.22 <0.9.0;

contract Pixel
{
    constructor()
    {
        //randomly set x and randomly set y coordinate to something not already occupied
        _col = PixelColor(0,0,0);
    }

    struct PixelColor {
        uint256 _r;
        uint256 _g;
        uint256 _b;
    }
    
    uint256 _xcoord;
    uint256 _ycoord;
    PixelColor _col;

    event ColorChange(uint256 r, uint256 g, uint256 b);

    function changePixelColor(uint256 r, uint256 g, uint256 b) public
    {
        _col = PixelColor(r, g, b);
        emit ColorChange(r, g, b);
    }
}