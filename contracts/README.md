# MultiSig wallet for swapProxy

## deploy

+ deploy MultiSigWalletFactory.sol
+ call create(address[] owners, uint require)
+ + owners is the list of owners
  + require is the minium number of signatures needed to excute a transaction 

+ get MultiSigWallet generated

## make transaction

+ use encoder contracts OR encoder transactions yourself, get transaction data
+ one of the signers call submitTransaction, specify destination contract, msg.value and transaction data
+ other signers sign the transaction by calling comfirmTransaction(), specify the transactionID
+ when achieved enough confirmations, the transcation will be excuted by the last comfirming signer