# Slow nat operations with unary representation
# How to use Data.Text in Agda?
# Is it possible to use intrinsically typed terms, introduced in PLFA, De Bruijn?
 - It would be nice to remove the typing judgment using lists for variables
# More examples and tests for new constructs

# Note on Reduction
  - Notice that we allow reduction under lambda terms
  - This means that the substitution operation might have to substitute a variable by an open term -> for instance, `(lam x -> ((lam y -> y) . x)) . (lam x -> x)` can be fully reduced in our version, whereas in the version that treats any lambda as a value can't
  - Therefore, a lambda is only a value if it's body is also a value
  - This makes substitution a bit harder. I thought it was only harder if we had named variables, but it is also harder using DeBruijn indices (not much harder thought, but the definition of substitution treating lambdas as values is ridiculously simple, and is nicer to formalize that way).
  - To substitute Z by N at M, we have to also increase the numbers of the free variables in N
