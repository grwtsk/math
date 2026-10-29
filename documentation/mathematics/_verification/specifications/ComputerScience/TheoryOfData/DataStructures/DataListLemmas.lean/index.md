# Verification target: Data List Lemmas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfaf0257cdc3b73c7ce53b4cf5749cc5ddac7c37",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfaf0257cdc3b73c7ce53b4cf5749cc5ddac7c37`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.InsertIdx` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setOf_mem_eq_empty_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/declarations/setof-mem-eq-empty-iff.md) | 21 | `result-track:def884fe75a1a7d4eb595bdf459135ec28fefe81625f983fa531159112bec984` |
| 2 | `theorem` | [injOn_insertIdx_index_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/declarations/injon-insertidx-index-of-notmem.md) | 26 | `result-track:b2a19b6460c270bfeda7952e02fd05560ec613036dd0c336ea7af71fcf3c2f88` |
| 3 | `theorem` | [foldr_range_subset_of_range_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/declarations/foldr-range-subset-of-range-subset.md) | 47 | `result-track:cdd1566abe126e8d21514f4bdfced107caa0c303bd916d78a75ee3c1e8702366` |
| 4 | `theorem` | [foldl_range_subset_of_range_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/declarations/foldl-range-subset-of-range-subset.md) | 57 | `result-track:0ae1ea8f5b59c06915c8c91f4974d08fa5741681b577f90a80ee12f60772fcf8` |
| 5 | `theorem` | [foldr_range_eq_of_range_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/declarations/foldr-range-eq-of-range-eq.md) | 66 | `result-track:722d52df38ecfd6c6a3ea864ea0700e29281f52bf89f945564317385100c121e` |
| 6 | `theorem` | [foldl_range_eq_of_range_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/declarations/foldl-range-eq-of-range-eq.md) | 71 | `result-track:7d862966c555b92121b1c8ce9fd1c4eafc8e7e4e4b9f45303a67e8b742b150d0` |
| 7 | `theorem` | [mapAccumr_eq_foldr](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/declarations/mapaccumr-eq-foldr.md) | 85 | `result-track:2171bad983c1673befb0b20ffc88494e626500f0c8254bb6e021f645cbcafafa` |
| 8 | `theorem` | [mapAccumr₂_eq_foldr](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListLemmas.lean/declarations/mapaccumr-eq-foldr-source-edition-2.md) | 94 | `result-track:b48bb4667d716169006ee0574f563bc7ff2ad34aa01f465ca1e6a77885a90524` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cb48f9a202a6f4a15aae731bf57092a75ebc63f8e8e41be3f27c1f793f5832a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
