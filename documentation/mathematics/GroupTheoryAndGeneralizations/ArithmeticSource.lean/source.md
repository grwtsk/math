# Arithmetic Source — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8c1635e544e1bfecb81410d4a0e7aab0750ee38` · SHA-256 `130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.DiscrepancyTrace
import Mathematics.Prismatic.ArithmeticEnhancement

/-!
# Canonical arithmetic source and reduced channel

Arithmetic quotient, level, Hecke, and local--global data are present before
any automorphic claim.  The reduced source is obtained from an explicit
idempotent invariant projector.
-/

namespace Mathematics.MobiusOntology

universe u v w

abbrev ArithmeticEnhancement :=
  Mathematics.Prismatic.ArithmeticEnhancement

structure ArithmeticSource
    (Object : Type u) (Embedding : Type v) (Coefficient : Type w) where
  object : Object
  embeddings : Finset Embedding
  permutationValue : Embedding → Coefficient
  enhancement : ArithmeticEnhancement
  constructionLaw : Prop
  constructionLawProof : constructionLaw

structure ReducedArithmeticSource
    (Carrier : Type u) [AddCommGroup Carrier] where
  carrier : Carrier
  invariantProjection :
    Mathematics.AbelReynolds.InvariantProjection Carrier

namespace ReducedArithmeticSource

def invariant
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) : Carrier :=
  source.invariantProjection.project source.carrier

def reduced
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) : Carrier :=
  source.carrier - source.invariant

theorem invariant_reduced_eq_zero
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) :
    source.invariantProjection.project source.reduced = 0 := by
  rw [reduced, invariant, map_sub,
    source.invariantProjection.idempotent, sub_self]

end ReducedArithmeticSource

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a9c4c9065f798d3b7555ad374e9a441c1013d3e299ada6abc4d26bcaa9aad3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
