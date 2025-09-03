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
