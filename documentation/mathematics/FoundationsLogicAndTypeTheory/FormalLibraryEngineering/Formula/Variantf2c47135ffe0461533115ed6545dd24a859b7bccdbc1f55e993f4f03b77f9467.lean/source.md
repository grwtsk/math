# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variantf2c47135ffe0461533115ed6545dd24a859b7bccdbc1f55e993f4f03b77f9467

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd512f79437705f6cdde5237fa89f44c4725449` · SHA-256 `f2c47135ffe0461533115ed6545dd24a859b7bccdbc1f55e993f4f03b77f9467`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Boolean formulas

Object nucleus for propositional formulas and Boolean valuations. Evaluation,
semantics, normal forms, traversal, and laws are provided by
`Boolean.Formula.*` leaves.
-/

namespace Boolean

universe u

/-- A Boolean valuation for atoms of type `α`. -/
abbrev Valuation (α : Type u) := α → Bool

/-- Propositional Boolean formulae over atoms of type `α`. -/
inductive Formula (α : Type u) : Type u where
  | var : α → Formula α
  | falsum : Formula α
  | truth : Formula α
  | neg : Formula α → Formula α
  | conj : Formula α → Formula α → Formula α
  | disj : Formula α → Formula α → Formula α
  | impl : Formula α → Formula α → Formula α
  | eqv : Formula α → Formula α → Formula α
deriving Repr, DecidableEq

namespace Formula

variable {α : Type u}

/-- The constant Boolean formula determined by a Boolean value. -/
def const : Bool → Formula α
  | false => .falsum
  | true => .truth

end Formula

end Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d6ae387a39f82549c61a7d1702c9094d05258ca5abe768fb5d31f85e8569818 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variantf2c47135ffe0461533115ed6545dd24a859b7bccdbc1f55e993f4f03b77f9467.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
