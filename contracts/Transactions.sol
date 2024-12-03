// SPDX-License-Identifier: UNLICENSED          this is need to remove license warning

pragma solidity ^0.8.0; //solidity version

//contract name
contract Transactions {
    uint256 transactionCount; //storage varibale type of (uint25)

    //creating an event (similar to function), which we emit(call) later inside the contract code
    event Transfer(
        address form,
        address reciever,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    // contract structure(schema)
    struct TransferStruct {
        address sender;
        address reciever;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // storage variable of array of transactions
    TransferStruct[] transactions;

    // function to create a transaction in blockchain
    function addToBlockchain(
        address payable reciever,
        uint256 amount,
        string memory message, //from memory
        string memory keyword
    ) public {
        transactionCount += 1;
        transactions.push(
            TransferStruct(
                msg.sender, //msg is from the user when calling the func
                reciever,
                amount,
                message,
                block.timestamp, //timestamp when the block is created in blockchain
                keyword
            )
        );

        emit Transfer(
            msg.sender,
            reciever,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactinCount() public view returns (uint256) {
        return transactionCount;
    }
}
