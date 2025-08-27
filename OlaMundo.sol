// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OlaMundo {
    string mensagem;

    constructor() {
        mensagem = "Ola, Blockchain!";
    }
    
    function buscarMensagem() public view returns (string memory) {
        return mensagem;
    }

    function alterarMensagem(string calldata _novaMensagem) public {
        mensagem = _novaMensagem;
    }
}
