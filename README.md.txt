# Jogo das Diferenças (Qt Creator)

Projeto desenvolvido em C++ com Qt Creator.  
É um jogo interativo de encontrar diferenças, com níveis progressivos de dificuldade, trilha sonora dinâmica e sistema de recompensas.

## 🎮 Como funciona o jogo

- O jogo começa com um **ecrã inicial**, que leva o jogador para o **tutorial**.
- No tutorial, o jogador aprende as funcionalidades básicas.
- Após o tutorial, começa a **trilha sonora de fundo**.  
  - Cada interação com botões gera efeitos sonoros.  
  - Existe música contínua durante o jogo.

### 📈 Progressão dos Níveis
- A dificuldade aumenta progressivamente a cada nível.
- O número de diferenças a encontrar cresce ao longo do jogo.
- Cada nível tem **tempo limite**:
  - Níveis 1 a 5 → 3 minutos  
  - Níveis 6 a 10 → 5 minutos  
- Se o jogador falhar, perde o nível.  
- Caso consiga completar:
  - Muito rápido → ⭐⭐⭐ (3 estrelas)  
  - Tempo médio → ⭐⭐ (2 estrelas)  
  - Muito demorado → ⭐ (1 estrela)  
- As estrelas são usadas para comprar **poderes especiais**.

### 🛠️ Funcionalidades do Menu Principal
- **Configurações** → ajustar volume da música e dos efeitos sonoros.  
- **Guia do Jogador** → explicação detalhada de como jogar.  
- **Loja (ícone do carrinho)** → mostra poderes disponíveis:
  - Congelar o tempo.
  - Ganhar vidas extras.  

### ⭐ Sistema de Recompensas
- O jogador ganha estrelas conforme o seu desempenho nos níveis.  
- As estrelas podem ser usadas para comprar poderes na loja.  

## 🎵 Áudio
- Música ambiente que acompanha todo o jogo.  
- Efeitos sonoros ativados em cada interação.  

### Estrutura do Projeto

jogo-diferencas-qt/
├── src/ # Código-fonte C++/Qt
├── assets/ # Imagens, sons e recursos do jogo
├── build/ # Pasta de build (não incluída no GitHub)
└── docs/ # Prints e documentação

## Tecnologias
- C++ com **Qt Creator**
- Interface gráfica Qt Widgets
- Recursos multimédia (música e efeitos sonoros)

## Como executar
1. Abrir o projeto no **Qt Creator**
2. Certificar-se que o **Qt** e compilador C++ estão instalados
3. Selecionar a configuração (ex.: Desktop Qt 6.x.x MinGW/MSVC)
4. Compilar e executar o projeto

## Autor
gui24214
