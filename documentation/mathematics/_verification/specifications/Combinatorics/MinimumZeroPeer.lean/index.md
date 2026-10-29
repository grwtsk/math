# Verification target: Minimum Zero Peer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9eef247180e49ca1606dd23e39bd179abf2a0b52",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/MinimumZeroPeer.lean/index.md) · [Full source](../../../../Combinatorics/MinimumZeroPeer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9eef247180e49ca1606dd23e39bd179abf2a0b52`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SeparationBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sufficientObservationFamilies](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/sufficientobservationfamilies.md) | 23 | `declaration-track:9eb7b1863ce279c634db7a8840e254c498ad77d1cb91c9c18bf8bb3a0c44df17` |
| 2 | `theorem` | [mem_sufficientObservationFamilies](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/mem-sufficientobservationfamilies.md) | 28 | `result-track:2db315d4b956fec807f357faeedbe5b7b2525223e5d036658918b8e39ac89f0d` |
| 3 | `theorem` | [sufficientObservationFamilies_nonempty_iff](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/sufficientobservationfamilies-nonempty-iff.md) | 35 | `result-track:e13ec586da13bf2ce38046ef15363bfa8f355d57d03aca39795581cc0fbb1e95` |
| 4 | `theorem` | [sufficientObservationFamilies_eq_empty_iff](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/sufficientobservationfamilies-eq-empty-iff.md) | 48 | `result-track:2efa1ffe0c7f10974fd10478bc46df4f1f4a83b6786b591ddefcd3a4ec4fb553` |
| 5 | `def` | [TargetSeparationRank](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationrank.md) | 55 | `declaration-track:9fdb4d9457384213ab9f9e3aa818a3a089bab68ee97345d90a0e089b19b3fa0a` |
| 6 | `def` | [TargetSeparationCost](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationcost.md) | 60 | `declaration-track:4bf4e2f0857db49cb530c4fd5adcd502a8a980f9e046ffc5cc21a8dde44733bf` |
| 7 | `theorem` | [targetSeparationCost_unit_eq_rank](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationcost-unit-eq-rank.md) | 67 | `result-track:4538faaec86b2125c597c92851027221123ed49cfc18d55fe347c6ddf5c20d4c` |
| 8 | `theorem` | [targetSeparationRank_le_of_sufficient](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationrank-le-of-sufficient.md) | 74 | `result-track:c145679eee59ca66b00145cafd79fcbc8c24192c7b1f28bb27a5205054d64e03` |
| 9 | `theorem` | [le_targetSeparationRank](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/le-targetseparationrank.md) | 82 | `result-track:ed2637d3dfa19399c0d8da2986ced11bc23b03d009e06a3c9ea4ddfe57b7ba40` |
| 10 | `theorem` | [targetSeparationCost_le_of_sufficient](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationcost-le-of-sufficient.md) | 94 | `result-track:5669115dd4f68ec471ecd53f289d4cda37c8f49854193e383d7b07268be35345` |
| 11 | `theorem` | [le_targetSeparationCost](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/le-targetseparationcost.md) | 104 | `result-track:16364adfac41e2b2a2399999591ef9f5a83d6380599ceebad256a2912695fb67` |
| 12 | `theorem` | [targetSeparationRank_attained](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationrank-attained.md) | 117 | `result-track:9d0816f3e09b2568c29494548646e3741813491b803fd7617e9efa9dbbcfe05c` |
| 13 | `theorem` | [targetSeparationCost_attained](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationcost-attained.md) | 126 | `result-track:e61ff41e6bcc5298a4360c18d473a4437b49b375a08558e6a4ad42c27f32415c` |
| 14 | `theorem` | [targetSeparationRank_eq_top_iff](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationrank-eq-top-iff.md) | 137 | `result-track:1fff1db81bb68f866cf512c5f799018437de469a9fce49a4f91bd7fcdd3c6f52` |
| 15 | `theorem` | [targetSeparationCost_eq_top_iff](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationcost-eq-top-iff.md) | 143 | `result-track:9dda1f76a3171d129987978f016a15f2c7a56663be3d7421133dc775562e03d8` |
| 16 | `theorem` | [targetSeparationRank_eq_top_iff_collision](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationrank-eq-top-iff-collision.md) | 150 | `result-track:91af60dbe5dffd77f5156a13fc33a85f73ec50eca4d979cfdcf9b8e910ac9621` |
| 17 | `theorem` | [targetSeparationRank_eq_top_iff_obstructed](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationrank-eq-top-iff-obstructed.md) | 168 | `result-track:bceb0d12015fc47798fe089122b1cfa0dd434641a7f5e1d36906cb5026f0f477` |
| 18 | `theorem` | [targetSeparationRank_eq_zero_iff](../../../../Combinatorics/MinimumZeroPeer.lean/declarations/targetseparationrank-eq-zero-iff.md) | 181 | `result-track:819eb305f3fb32d0af11016baefb8c0a31d104855ddff3b93dfa38a9ea948e6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c24ab925a7fa926cd6116732216b27f35cfa88d8f0a4d85e4c569a08661fe43d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
