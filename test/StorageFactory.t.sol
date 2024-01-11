// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {StorageFactory} from "../src/StorageFactory.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract StorageFactoryTest is Test {
    StorageFactory storageFactory;

    function setUp() public {
        storageFactory = new StorageFactory();
    }

    function test_createSimpleStorageContract() public {
        storageFactory.createSimpleStorageContract();
        SimpleStorage simpleStorage = storageFactory
            .listOfSimpleStorageContracts(0);
        assertEq(simpleStorage.retrieve(), 0);
    }

    function test_sfStore() public {
        storageFactory.createSimpleStorageContract();
        storageFactory.sfStore(0, 1);
        assertEq(storageFactory.sfGet(0), 1);
    }
}
