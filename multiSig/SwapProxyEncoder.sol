pragma solidity ^0.6.0;

interface ISwapProxy {
    function update(address[] memory tokens, address newContract) external;
    function transferOwnership(address newOwner) external;
    function setManagerProxy(address ethCCMProxyAddr) external;
    function bindProxyHash(uint64 toChainId, bytes memory targetProxyHash) external;
    function bindSwapperHash(uint64 toChainId, bytes memory targetSwapperHash)  external;
    function bindPoolAddress(uint64 poolId, address poolAddress)  external ;
    function bindPoolAssetAddress(uint64 poolId, uint64 chainId, address assetAddress, bytes memory rawAssetHash) external;
    function bindAssetHash(address fromAssetHash, uint64 toChainId, bytes memory toAssetHash) external;
}

contract Encoder {
    
    function update(address[] memory tokens, address newContract) public view returns(bytes memory) {
        return abi.encodeWithSelector(ISwapProxy.update.selector, tokens, newContract);
    }
    
    function transferOwnership(address newOwner) public view returns(bytes memory) {
        return abi.encodeWithSelector(ISwapProxy.transferOwnership.selector, newOwner);
    }
    
    function setManagerProxy(address ethCCMProxyAddr) public view returns(bytes memory) {
        return abi.encodeWithSelector(ISwapProxy.setManagerProxy.selector, ethCCMProxyAddr);
    }
    
    function bindProxyHash(uint64 toChainId, bytes memory targetProxyHash) public view returns(bytes memory) {
        return abi.encodeWithSelector(ISwapProxy.bindProxyHash.selector, toChainId, targetProxyHash);
    }
    
    function bindSwapperHash(uint64 toChainId, bytes memory targetSwapperHash) public view returns(bytes memory) {
        return abi.encodeWithSelector(ISwapProxy.bindSwapperHash.selector, toChainId, targetSwapperHash);
    }
    
    function bindPoolAddress(uint64 poolId, address poolAddress)  public view returns(bytes memory) {
        return abi.encodeWithSelector(ISwapProxy.bindPoolAddress.selector, poolId, poolAddress);
    }
    
    function bindPoolAssetAddress(uint64 poolId, uint64 chainId, address assetAddress, bytes memory rawAssetHash) public view returns(bytes memory) {
        return abi.encodeWithSelector(ISwapProxy.bindPoolAssetAddress.selector, poolId, chainId, assetAddress, rawAssetHash);
    }
    
    function bindAssetHash(address fromAssetHash, uint64 toChainId, bytes memory toAssetHash) public view returns(bytes memory) {
        return abi.encodeWithSelector(ISwapProxy.bindAssetHash.selector, fromAssetHash, toChainId, toAssetHash);
    }
    
}