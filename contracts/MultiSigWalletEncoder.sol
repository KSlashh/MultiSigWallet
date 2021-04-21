pragma solidity ^0.6.0;

interface IMultiSigWallet {
    function addOwner(address owner) external;
    function removeOwner(address owner) external;
    function replaceOwner(address owner, address newOwner) external;
    function changeRequirement(uint _required) external;
}

contract Encoder {
    function addOwner(address owner) public view returns(bytes memory) {
        return abi.encodeWithSelector(IMultiSigWallet.addOwner.selector, owner);
    }
    
    function removeOwner(address owner) public view returns(bytes memory) {
        return abi.encodeWithSelector(IMultiSigWallet.removeOwner.selector, owner);
    }
    
    function replaceOwner(address owner, address newOwner) public view returns(bytes memory) {
        return abi.encodeWithSelector(IMultiSigWallet.replaceOwner.selector, owner, newOwner);
    }
    
    function changeRequirement(uint _required) public view returns(bytes memory) {
        return abi.encodeWithSelector(IMultiSigWallet.changeRequirement.selector, _required);
    }
}