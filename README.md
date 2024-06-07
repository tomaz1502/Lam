# Lam
A formally verified interpreter for Lambda Calculus.

Dependencies: agda2hs version 1.2.

Build with the `build.sh` script.

## Roadmap
### Infrastructure
  - [x] Lexer
  - [x] Parser
  - [x] Tests
    - [x] Parser
    - [x] Evaluator
  - [x] De Bruijn Indices
  - [ ] Basic formalization
    + [x] Type checker
    + [ ] Evaluator

### Features
  - [x] Simple Types
  - [ ] Fix point operator in a typed context
  - [ ] Extensions (TaPL ch 11)
  - [ ] Polymorphism
  - [ ] Verify properties using Agda (Progress/Preservation)
  - [ ] Richer library

### Usability
  - [ ] Code Generation
  - [ ] Support for commentary
  - [x] Error messages
  - [x] Commands
    - [x] Eval
    - [x] Define
    - [x] Load
    - [x] Typedef

## Future Work
  - DAG instead of AST
  - Tagless Final style
  - System F omega
  - Type Inference
  - Type Classes
  - Dependent Types

