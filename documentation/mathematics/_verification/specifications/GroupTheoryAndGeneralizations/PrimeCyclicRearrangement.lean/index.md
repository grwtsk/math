# Verification target: GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7891da79dc3d1a40e1093a907e493e4a6024cb1b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/PrimeCyclicRearrangement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7891da79dc3d1a40e1093a907e493e4a6024cb1b`.

Source path: `GRWTSK/Combinatorics/Sequences/PrimeCyclicRearrangement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/PrimeCyclicRearrangement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.PartialSumOrdering`](../../../../GroupTheoryAndGeneralizations/PartialSumOrdering.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair`](../../../../GroupTheoryAndGeneralizations/ZeroSumIntervalRepair.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSubsetSum`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModSubsetSum.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Data.List.Permutation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exhaustiveSearch](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/exhaustivesearch.md) | 23 | `declaration-track:52133530f4ac91ee16b4f2d7f24184165f69f23c2645b480c301d7253230c199` |
| 2 | `theorem` | [exhaustiveSearch_sound](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/exhaustivesearch-sound.md) | 26 | `result-track:e973a91918b24ce99e6e2d1e7fcd931e2585f3d710d58e204efcd192dc168e53` |
| 3 | `theorem` | [exhaustiveSearch_success_iff](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/exhaustivesearch-success-iff.md) | 35 | `result-track:504e73d17e12669a5b5e6ece80d930e8f0adb8dda0e34e7733dea3d6d678dada` |
| 4 | `theorem` | [exhaustiveSearch_none_iff](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/exhaustivesearch-none-iff.md) | 40 | `result-track:84338eff150e4da7f9d4c6a948b6e4d5649e51901e8f224b486264316ae68414` |
| 5 | `theorem` | [exhaustiveSearch_complete](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/exhaustivesearch-complete.md) | 48 | `result-track:822dee8556857638f43780c2eac5ad5ad956e03b68b8472ba17ad3e4576c3a3e` |
| 6 | `theorem` | [candidate_count](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/candidate-count.md) | 57 | `result-track:a9d9848530e7bb6b5c664447cad9254459d276be3d99d6df7d80c7490e79a1d8` |
| 7 | `theorem` | [zmod5_small_search_succeeds](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/zmod5-small-search-succeeds.md) | 61 | `result-track:def3f0b3ae54c69e365576813dc175c0e56311bdc564cf4e864f8408d97ce1bd` |
| 8 | `theorem` | [zero_packet_search_rejected](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/zero-packet-search-rejected.md) | 68 | `result-track:7a0c6026b96eb9109a7c32f285b8e25fdf25f1c4af934ec3d6219f7bbd828414` |
| 9 | `theorem` | [sound_total_search_does_not_imply_unconditional_existence](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/sound-total-search-does-not-imply-unconditional-existence.md) | 77 | `result-track:5bd7791187dbcbec2a1474324c4a7e942f7a806b70fe6ac044a7dffd3c5c2bef` |
| 10 | `def` | [tailFailure](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/tailfailure.md) | 93 | `declaration-track:75e26de1b5936feca6700572b8750e01c9ef7210951a1dcac0f45d1f246b3286` |
| 11 | `def` | [densityFailure](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/densityfailure.md) | 100 | `declaration-track:0541f28cfe0bd180d7f526114bbe17bac5804c8e059dd3a7ac9f271c57da459a` |
| 12 | `def` | [compatibilityFailure](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/compatibilityfailure.md) | 108 | `declaration-track:18ea9287aec571c7074050cf13b44e7c1993ca50a98c9145d5a592fc5917aab6` |
| 13 | `def` | [goodPermutationEvent](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/goodpermutationevent.md) | 117 | `declaration-track:4ff326f4e48a3ac39f54845c00ac36a4e5bb6166b2d94f9c02e3e8f3d2055556` |
| 14 | `theorem` | [not_mem_failure_union_iff_good](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/not-mem-failure-union-iff-good.md) | 120 | `result-track:74faa1a310767c9efbafefd0468aed61f905c0c5ab9c89dcad0bfa83b07fb0d3` |
| 15 | `theorem` | [mem_goodPermutationEvent_iff](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/mem-goodpermutationevent-iff.md) | 147 | `result-track:e30a97bd6f7f1b6a005bdaa9c53b3735f5560ff3585b4afd02d72057c370b725` |
| 16 | `theorem` | [conditional_good_geometry_probability](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/conditional-good-geometry-probability.md) | 157 | `result-track:03d49ac74d5c03cc83815521f5efbe5d2a36bc4f014233160ccf81436ec94630` |
| 17 | `theorem` | [conditional_good_geometry_exists](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/conditional-good-geometry-exists.md) | 164 | `result-track:fc12ef1412ccff5943050ccf675afb880afcc6ff46fbfe842ac1725ae8f9a290` |
| 18 | `theorem` | [conditional_rearrangement_from_failure_bounds](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/conditional-rearrangement-from-failure-bounds.md) | 179 | `result-track:6042bab9411a61fc6b735e904fad2a7232b9bedab03ff488dfce5e041bb4a6e6` |
| 19 | `def` | [PhamSauermannSourceRange](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/declarations/phamsauermannsourcerange.md) | 198 | `declaration-track:a7c8df840277c413b10914658f11c0c174e468115f556066f1dc229a4c56a562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff37d8e225d2a9c5fe6389ede7be286d8fdda0509b0ee5eec70e7a39e80335d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/Sequences/PrimeCyclicRearrangement.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sequences/PrimeCyclicRearrangement.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
