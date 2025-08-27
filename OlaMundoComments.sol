// SPDX-License-Identifier: MIT
// -> Isso apenas indica que o código está sob a licença MIT (livre para uso).

pragma solidity ^0.8.0; 
// -> Diz ao compilador que esse contrato funciona a partir da versão 0.8.0 do Solidity.

// Aqui começa o contrato inteligente chamado OlaMundo
contract OlaMundo {
    string mensagem; 
    // -> Variável que guarda um texto (string). 
    //    Pense como uma "caixinha" onde será guardada a mensagem.

    // Construtor: roda apenas uma vez, no momento em que o contrato é criado.
    constructor() {
        mensagem = "Ola, Blockchain!"; 
        // -> Define o valor inicial da caixinha como "Ola, Blockchain!".
    }
    
    // Função para ler a mensagem guardada
    function buscarMensagem() public view returns (string memory) {
        // -> 'public' significa que qualquer pessoa pode chamar essa função.
        // -> 'view' quer dizer que ela só lê os dados, não altera nada.
        // -> 'returns (string memory)' indica que vai devolver um texto.
        return mensagem; 
        // -> Aqui devolvemos o que está dentro da variável 'mensagem'.
    }

    // Função para alterar a mensagem
    function alterarMensagem(string calldata _novaMensagem) public {
        // -> Recebe como entrada um novo texto chamado '_novaMensagem'.
        // -> 'calldata' significa que esse texto vem de fora (do usuário) 
        //    e não precisa ser copiado na memória, economizando recursos.
        mensagem = _novaMensagem; 
        // -> Substitui o valor antigo da variável pelo novo que foi passado.
    }
}
// -> Fim do contrato.
