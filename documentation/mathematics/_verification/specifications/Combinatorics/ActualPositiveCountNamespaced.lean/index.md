# Verification target: Actual Positive Count Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0232cd3b93d385167f35cee12f11e31977ef1e8e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0232cd3b93d385167f35cee12f11e31977ef1e8e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.LocalCount` — import line 6; external provider; requires a separately pinned dependency.
- `CountWindow` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.
- `LogarithmicTail` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PositiveOccurrences](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/positiveoccurrences.md) | 27 | `declaration-track:ddd83692c6c0b269e6f58b23574e4cbc9c4d6cc6f2f65e4cd52a7281e7167775` |
| 2 | `def` | [WindowOccurrences](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/windowoccurrences.md) | 30 | `declaration-track:f0d241575479f2aac06dafedf4a61a5a278b3c43128e6103f04389526dc4fca6` |
| 3 | `def` | [occurrenceEquiv](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/occurrenceequiv.md) | 33 | `declaration-track:5c660b3e057c945f46c81fbfa9bf6548cbfbe92ec7d40ddbfcc5feb4b5f0458d` |
| 4 | `theorem` | [positiveOccurrences_finite](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/positiveoccurrences-finite.md) | 41 | `result-track:38dfe21e46b5c0a94427bcfb61f9970e134e665bed2a4fd17433d416d6d8300a` |
| 5 | `theorem` | [occurrence_card_eq_Ncount](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/occurrence-card-eq-ncount.md) | 47 | `result-track:b61a4e238be59fcf6fd13d7d931fc6af262a4a4433aa044a3e6637eeb5a6c315` |
| 6 | `theorem` | [Ncount_same](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/ncount-same.md) | 60 | `result-track:41d21ed2ea1a9a2879cd1194bf63326566300409ad976fdda9258bd5768341c5` |
| 7 | `theorem` | [cumulative_nat_of_unit_bound](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/cumulative-nat-of-unit-bound.md) | 68 | `result-track:14f92a41ec0fb038b0a8b29226d07aa4384bf2c3fa34ccf6f09d135832fe0a57` |
| 8 | `theorem` | [cumulative_real_of_unit_bound](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/cumulative-real-of-unit-bound.md) | 90 | `result-track:4361874333caf0604a2de8a4cb2886da454ac7a3d310aa9d7c09d6490dfd1f69` |
| 9 | `theorem` | [actual_Ncount_logarithmic](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/actual-ncount-logarithmic.md) | 121 | `result-track:ff9733e707a495b68d80d792456b8d0ca8a88087c9b1e017022c77dd317a0683` |
| 10 | `theorem` | [actual_occurrence_count_logarithmic](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/actual-occurrence-count-logarithmic.md) | 128 | `result-track:df5577f60bd0c1be20409165a538273c077a7445008ae1bbf7f4b61aec3a8ec3` |
| 11 | `theorem` | [positiveCount_eq_Ncount](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/positivecount-eq-ncount.md) | 133 | `result-track:d01b705d5ee22ca59e4410954477bde63a076e4862585c6a4310e67201e252d5` |
| 12 | `theorem` | [actual_positiveCountBound](../../../../Combinatorics/ActualPositiveCountNamespaced.lean/declarations/actual-positivecountbound.md) | 138 | `result-track:fec3b7ca79e6322d88c1db2c58fceea1582b376c1503f1583dd6b2444364178d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c475385921954817ad96e683c338867fd6447b9a855681a3605c4337d0ca90bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
