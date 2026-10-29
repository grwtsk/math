# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LogicalFoundation.Variant571748b1b3f6fd5976958bbe3e7473e1e941e905257fdf933c722a5c57160452

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35d7686e8b72c3f6508d619e1d08b2bc49c30773` · SHA-256 `571748b1b3f6fd5976958bbe3e7473e1e941e905257fdf933c722a5c57160452`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface

inductive LogicalFoundation where
  | constructive
  | bijectiveFiniteFlow
  | classical
  | measurable
  | fractal
  | oracle
  | heatFlow
  | heatAveraging
  | chainComplex
  | homologyStability
  | ricciFlow
  | ricciSurgery
  | extinctionTopology
  | infiniteTime
  | choice
  | choiceOracle
  | choiceInfiniteTime
  | unknown
deriving DecidableEq, Repr

namespace LogicalFoundation

def finiteRank : LogicalFoundation -> Option Nat
  | constructive => some 0
  | bijectiveFiniteFlow => some 1
  | classical => some 2
  | measurable => some 3
  | fractal => some 4
  | _ => none

def oracleRank : LogicalFoundation -> Option Nat
  | constructive => some 0
  | bijectiveFiniteFlow => some 1
  | classical => some 2
  | oracle => some 3
  | choiceOracle => some 4
  | choiceInfiniteTime => some 5
  | _ => none

def choiceRank : LogicalFoundation -> Option Nat
  | constructive => some 0
  | bijectiveFiniteFlow => some 1
  | classical => some 2
  | choice => some 3
  | choiceOracle => some 4
  | choiceInfiniteTime => some 5
  | _ => none

def heatRank : LogicalFoundation -> Option Nat
  | heatFlow => some 0
  | homologyStability => some 1
  | _ => none

def chainRank : LogicalFoundation -> Option Nat
  | chainComplex => some 0
  | homologyStability => some 1
  | _ => none

def ricciRank : LogicalFoundation -> Option Nat
  | ricciFlow => some 0
  | ricciSurgery => some 1
  | extinctionTopology => some 2
  | _ => none

def infiniteRank : LogicalFoundation -> Option Nat
  | infiniteTime => some 0
  | choiceInfiniteTime => some 1
  | _ => none

def rankLe (rank : LogicalFoundation -> Option Nat)
    (a b : LogicalFoundation) : Bool :=
  match rank a, rank b with
  | some x, some y => decide (x ≤ y)
  | _, _ => false

def leBool (a b : LogicalFoundation) : Bool :=
  rankLe finiteRank a b ||
  rankLe oracleRank a b ||
  rankLe choiceRank a b ||
  rankLe heatRank a b ||
  rankLe chainRank a b ||
  rankLe ricciRank a b ||
  rankLe infiniteRank a b ||
  decide (a = b)

def Le (a b : LogicalFoundation) : Prop :=
  leBool a b = true

instance : LE LogicalFoundation where
  le := Le

instance instDecidableLe (a b : LogicalFoundation) : Decidable (a ≤ b) := by
  change Decidable (leBool a b = true)
  infer_instance

theorem foundation_refl (a : LogicalFoundation) :
    a ≤ a := by
  cases a <;> rfl

theorem foundation_trans {a b c : LogicalFoundation} :
    a ≤ b -> b ≤ c -> a ≤ c := by
  cases a <;> cases b <;> cases c <;> decide

theorem constructive_le_bijectiveFiniteFlow :
    constructive ≤ bijectiveFiniteFlow := by
  rfl

theorem bijectiveFiniteFlow_le_classical :
    bijectiveFiniteFlow ≤ classical := by
  rfl

theorem classical_le_measurable :
    classical ≤ measurable := by
  rfl

theorem measurable_le_fractal :
    measurable ≤ fractal := by
  rfl

theorem classical_le_oracle :
    classical ≤ oracle := by
  rfl

theorem classical_le_choice :
    classical ≤ choice := by
  rfl

structure HeatHomologyCertificate where
  kernelSound : Prop
  chainMapSound : Prop

structure RicciSurgeryCertificate where
  curvatureSound : Prop
  neckSound : Prop

structure ExtinctionTopologyCertificate where
  surgerySound : Prop
  topologySound : Prop

theorem heatFlow_le_homologyStability_with_certificate
    (_cert : HeatHomologyCertificate) :
    heatFlow ≤ homologyStability := by
  rfl

theorem ricciFlow_le_ricciSurgery_with_certificate
    (_cert : RicciSurgeryCertificate) :
    ricciFlow ≤ ricciSurgery := by
  rfl

theorem ricciSurgery_le_extinctionTopology_with_certificate
    (_cert : ExtinctionTopologyCertificate) :
    ricciSurgery ≤ extinctionTopology := by
  rfl

end LogicalFoundation

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbdc5defafd5ea00681299a3c3438032a604290e33050013269dc9be0a16b20b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LogicalFoundation/Variant571748b1b3f6fd5976958bbe3e7473e1e941e905257fdf933c722a5c57160452.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
