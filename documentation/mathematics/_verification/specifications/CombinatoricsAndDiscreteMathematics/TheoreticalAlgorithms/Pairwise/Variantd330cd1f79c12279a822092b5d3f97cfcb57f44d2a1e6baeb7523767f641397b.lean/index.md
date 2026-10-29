# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ceaa7eca75b8d682bbe774518d0286245c10549",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ceaa7eca75b8d682bbe774518d0286245c10549`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_getElem_sublist](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/declarations/map-getelem-sublist--55ba37bbee8c4281f6636b41.md) | 40 | `result-track:55ba37bbee8c4281f6636b411acd1fe11ebc3a9d283e481043ede13b963ca085` |
| 2 | `theorem` | [sublist_eq_map_getElem](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/declarations/sublist-eq-map-getelem--acb81481ccfa469ac89a1e82.md) | 59 | `result-track:acb81481ccfa469ac89a1e821537a8b57e3297bf23ab89ca25adffaeb664d04c` |
| 3 | `theorem` | [pairwise_iff_getElem](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/declarations/pairwise-iff-getelem--5ef32610c5f32ec38707e09c.md) | 75 | `result-track:5ef32610c5f32ec38707e09c99789317473c7ab8cd494ef7798a78e23103ebdc` |
| 4 | `theorem` | [pairwise_lt_finRange](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/declarations/pairwise-lt-finrange--0bd8cea53385a75d38f65b7f.md) | 89 | `result-track:0bd8cea53385a75d38f65b7f20b5d07107696f66e26c58b2de681633da46cea0` |
| 5 | `theorem` | [pairwise_le_finRange](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/declarations/pairwise-le-finrange--5f9941c2e67fa6febf02fda1.md) | 96 | `result-track:5f9941c2e67fa6febf02fda1ab2483c27e68f5f9600fbb93e645588c4f203461` |
| 6 | `theorem` | [nodup_finRange](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/declarations/nodup-finrange--7ffae380801aa80e06aaa8a1.md) | 103 | `result-track:7ffae380801aa80e06aaa8a1185f1b42b6f5dbb18a6ad55f85b6d2264c05f718` |
| 7 | `theorem` | [Nodup.idxOf_getElem](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/declarations/nodup-idxof-getelem--4d205b2d7141f8b8ca0aee9f.md) | 109 | `result-track:4d205b2d7141f8b8ca0aee9f39ce475f7e38d7db1223a111cda3cbcffbebc3ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=864fc0e1856fb638c3ff6ab184f392a4c0585db00dfd02c820248309a975496f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
