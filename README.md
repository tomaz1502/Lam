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
  - [x] Basic formalization
    + [x] Type checker
    + [x] Evaluator

### Features
  - [x] Simple Types
  - [ ] Extensions (TaPL ch 11)
    + [x] Uninterpreted (opaque) Types
    + [x] Numbers, booleans, ITE
    + [ ] Equality, Strings
    + [ ] Pairs
    + [ ] Sums
    + [ ] General recursion
    + [ ] Pattern Matching
  - [ ] Polymorphism
  - [ ] Verify properties using Agda (Progress/Preservation)
  - [ ] Library of examples

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
  - System F omega
  - Type Inference
  - Type Classes
  - Dependent Types

