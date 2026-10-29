# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FrontierAntichain.Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93a25c0a8ece3b2c4552bd4870aa1af1b93092e3` · SHA-256 `d2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Prod

/-!
# Antichain algebra of unresolved route leaves

`zero` means no represented finite route. `one` means a complete route with no
unresolved leaves.  They are deliberately distinct.
-/

namespace Mathematics.ProofStrategy

universe u

abbrev Requirement (Obligation : Type u) :=
  Finset Obligation

abbrev FrontierFamily (Obligation : Type u) :=
  Finset (Requirement Obligation)

def frontierZero
    (Obligation : Type u) :
    FrontierFamily Obligation :=
  ∅

def frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    FrontierFamily Obligation :=
  {∅}

def InclusionMinimal
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation)
    (candidate : Requirement Obligation) : Prop :=
  candidate ∈ family ∧
    ∀ other ∈ family, other ⊆ candidate → candidate ⊆ other

noncomputable def normalizeFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation) :
    FrontierFamily Obligation := by
  classical
  exact family.filter (InclusionMinimal family)

noncomputable def frontierOr
    {Obligation : Type u}
    [DecidableEq Obligation]
    (left right : FrontierFamily Obligation) :
    FrontierFamily Obligation :=
  normalizeFrontier (left ∪ right)

noncomputable def frontierAnd
    {Obligation : Type u}
    [DecidableEq Obligation]
    (left right : FrontierFamily Obligation) :
    FrontierFamily Obligation := by
  classical
  exact normalizeFrontier
    ((left.product right).image fun pair => pair.1 ∪ pair.2)

theorem frontierZero_ne_frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    frontierZero Obligation ≠ frontierOne Obligation := by
  simp [frontierZero, frontierOne]

@[simp] theorem empty_mem_frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    (∅ : Requirement Obligation) ∈ frontierOne Obligation := by
  simp [frontierOne]

end Mathematics.ProofStrategy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e4e6f1eac39565ea156a6c4a3fa2733bccf889a46cc4c87b524461bad44864e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
