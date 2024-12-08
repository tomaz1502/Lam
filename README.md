# Lam
A formally verified interpreter for Lambda Calculus.

Dependencies: agda2hs version 1.2.

Build with the `build.sh` script.

## Roadmap
### Basics
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
  - [x] Verify properties using Agda (Progress/Preservation)
  - [x] Extensions (TaPL ch 11)
    + [x] Uninterpreted (opaque) Types
    + [x] Numbers, booleans, ITE, ltNat
    + [x] Pairs
    + [x] Sums
    + [x] Pattern Matching
    + [x] General recursion
  - [ ] More preprocessing besides erasing names (enable larger sums or products, for instance)
  - [ ] Polymorphism
  - [ ] Recursive Types (Enabling strings)
  - [ ] Library of examples

### Usability
  - [ ] Editor Support
    - [ ] Syntax Highlight (Vim, Emacs)
    - [ ] Language Server Protocol
  - [ ] Package Manager
  - [ ] Nicer REPL
    - [x] Interpret arrows
    - [ ] Autocomplete
  - [ ] Code Generation
  - [ ] Support for commentary
  - [ ] Specific error nessages
    - [ ] Lexer
    - [ ] Parser
    - [ ] Type checker
  - [ ] Documentation
  - [x] Commands
    - [x] Eval
    - [x] Define
    - [x] Load
    - [x] Typedef
    - [x] Read (type safety?)
    - [x] Check

## Future Work
  - DAG instead of AST
  - System F omega
  - Type Inference
  - Type Classes
  - Dependent Types

