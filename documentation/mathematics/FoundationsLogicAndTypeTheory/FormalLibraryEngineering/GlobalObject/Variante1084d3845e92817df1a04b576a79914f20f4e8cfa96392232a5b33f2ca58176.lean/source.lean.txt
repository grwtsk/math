import Mathematics.Prismatic.CertifiedPrime

/-!
# Global objects and nonidentical realizations

The arithmetic object is not identified with any one of its realizations.
Archimedean, `ℓ`-adic, prismatic, de Rham, Betti, and finite-combinatorial
views remain separately typed.  A passage between them is explicit,
directional, and certificate bearing.
-/

namespace Mathematics.Prismatic

universe u v

/-- Realization channels that must not be collapsed by representation syntax. -/
inductive RealizationKind
  | globalArithmetic
  | archimedean
  | ellAdic (prime : Nat)
  | prismatic (prime : Nat)
  | deRham
  | betti
  | finiteCombinatorial
  deriving DecidableEq, Repr

/-- Identity of the arithmetic object before choosing a realization. -/
structure GlobalArithmeticObject where
  objectId : ElementRef
  semanticDigest : Digest
  definitionAddress : ObjectAddress
  deriving Repr

/-- One typed carrier representing a fixed global object. -/
structure ArithmeticRealization
    (global : GlobalArithmeticObject) where
  Carrier : Type u
  kind : RealizationKind
  realizationDigest : Digest
  realizationAddress : ObjectAddress

/--
A directional comparison map.  The certificate binds the precise domain,
codomain, scalar extension, hypotheses, and map; no equivalence is inferred.
-/
structure RealizationComparison
    {global : GlobalArithmeticObject}
    (source : ArithmeticRealization.{u} global)
    (target : ArithmeticRealization.{v} global) where
  map : source.Carrier → target.Carrier
  hypothesisDigest : Digest
  scalarExtensionDigest : Digest
  mapDigest : Digest
  certificate : ObjectAddress

end Mathematics.Prismatic
