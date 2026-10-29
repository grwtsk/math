
/- source-tree-label: STL1|L|addr=0000010|role=proof_code_atom|slug=sourcetree-primeverb|owner=canonical_owner|core=SourceTree/PrimeVerb.lean|leaf=M536f75726365547265652f5072696d65566572622e6c65616e.lean -/

set_option autoImplicit false
inductive PrimeVerb | distinguish | triangulate | matrix | graph | discriminate | invariantize | partition | enumerate | combine | transform | conjecture | formalize | prove | coin | versify | totientize | algebraize | adjoint | diagonalize | symmetrize | generalize | specialize | analogize | codify | synthesize deriving DecidableEq, Repr

def primeVerbLabel : PrimeVerb → Nat
| .distinguish => 2 | .triangulate => 3 | .matrix => 5 | .graph => 7 | .discriminate => 11 | .invariantize => 13 | .partition => 17 | .enumerate => 19 | .combine => 23 | .transform => 29 | .conjecture => 31 | .formalize => 37 | .prove => 41 | .coin => 43 | .versify => 47 | .totientize => 53 | .algebraize => 59 | .adjoint => 61 | .diagonalize => 67 | .symmetrize => 71 | .generalize => 73 | .specialize => 79 | .analogize => 83 | .codify => 89 | .synthesize => 97
