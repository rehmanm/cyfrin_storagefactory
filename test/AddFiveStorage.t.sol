// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {AddFiveStorage} from "../src/AddFiveStorage.sol";

contract AddFiveStorageTest is Test {
    AddFiveStorage addFiveStorage;

    function setUp() public {
        addFiveStorage = new AddFiveStorage();
    }

    function test_store() public {
        addFiveStorage.store(5);
        assertEq(addFiveStorage.retrieve(), 10);
    }
}
