pragma solidity ^0.7.0;

contract eventContract {
    event Log(address sender, string message);
    event ActiveLog();

    function fireEvent() public {
        emit Log(msg.sender, "Hello Vinee");
        emit Log(msg.sender, "Hello Aman");
    }
}

// [
// 	{
// 		"from": "0xC3Ba5050Ec45990f76474163c5bA673c244aaECA",
// 		"topic": "0x0738f4da267a110d810e6e89fc59e46be6de0c37b1d5cd559b267dc3688e74e0",
// 		"event": "Log",
// 		"args": {
// 			"0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
// 			"1": "Hello Vinee",
// 			"sender": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
// 			"message": "Hello Vinee"
// 		}
// 	},
// 	{
// 		"from": "0xC3Ba5050Ec45990f76474163c5bA673c244aaECA",
// 		"topic": "0x0738f4da267a110d810e6e89fc59e46be6de0c37b1d5cd559b267dc3688e74e0",
// 		"event": "Log",
// 		"args": {
// 			"0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
// 			"1": "Hello Aman",
// 			"sender": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
// 			"message": "Hello Aman"
// 		}
// 	}
// ]
