# Lam
A formally verified interpreter for Lambda Calculus.

Dependencies: agda2hs version 1.2.

## Roadmap
### Infrastructure
  - [x] Lexer
  - [x] Parser
  - [ ] Tests
    - [ ] Parser
    - [ ] Evaluator
    - [ ] Type Checker
  - [ ] DAG instead of AST

### Features
  - [x] De Bruijn Indices
  - [x] Simple Types
  - [ ] Type Inference
  - [ ] Extensions (TaPL ch 11)
  - [ ] Verify properties using Agda (Progress/Preservation)

### Usability
  - [ ] Code Generation
  - [ ] Support for commentary
  - [ ] Error messages
  - [x] Commands
    - [x] Eval
    - [x] Define
    - [x] Load
    - [x] Typedef

## Future Work
  - [ ] Tagless Final style
  - [ ] System F
  - [ ] System F omega
  - [ ] Type Classes
  - [ ] Dependent Types

