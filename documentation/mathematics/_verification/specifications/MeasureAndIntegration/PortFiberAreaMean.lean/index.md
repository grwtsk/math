# Verification target: GRWTSK.Interfaces.PortFiberAreaMean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d05421754eb13396ae2cb363b80bd070dd9a0c86",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberAreaMean.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d05421754eb13396ae2cb363b80bd070dd9a0c86`.

Source path: `GRWTSK/Interfaces/PortFiberAreaMean.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberAreaMean.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberMeasureTransfer`](../../../../OperatorTheory/PortFiberMeasureTransfer.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicAreaMean`](../../../../MeasureAndIntegration/HolomorphicAreaMean.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/schemaversion.md) | 25 | `declaration-track:41b98949907e02b32c9be4469a07d026ea616faf3ffd3dd819172f6d30185d08` |
| 2 | `inductive` | [AddedIndex](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/addedindex.md) | 27 | `declaration-track:d64ee7f8a05398505af6e41266c482a82d05211fdc3375560a48fe9ebe6cefcd` |
| 3 | `def` | [AddedClaim](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/addedclaim.md) | 36 | `declaration-track:bdebcf91da6698a1c6eb65e217a04b1c1f73501fa04b61f86767ade24869ba7a` |
| 4 | `theorem` | [addedClaim_proof](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/addedclaim-proof.md) | 61 | `result-track:5867b7a3dcbd63d01ecba018a1fad204bb1b0e449070e9e04a49ae55b52eed7f` |
| 5 | `def` | [portfolio](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/portfolio.md) | 72 | `declaration-track:8ec6934e7b05c53144b4f379ddf0291e1f97b80e04497f8af166ac5d4c71dfe7` |
| 6 | `def` | [architecture](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/architecture.md) | 75 | `declaration-track:0cb1f71206eaf8e6c2586c56ba744b173515def8d3d9950b2590a7868ffc9783` |
| 7 | `abbrev` | [PreviousIndex](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/previousindex.md) | 79 | `declaration-track:3dee06b9e22c45b2e6c8781c71cf970dc4498ea08674a9c820dc05775c698a9a` |
| 8 | `theorem` | [original_branch_unchanged](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/original-branch-unchanged.md) | 83 | `result-track:3bb587fff810fa7ef8468f083a7da845870d460c7286b1d5ed984ee067fc0e74` |
| 9 | `theorem` | [new_branch_proved](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/new-branch-proved.md) | 89 | `result-track:47c3f8dc7102190dd22f511554e21aa400572f6f51d4ace1fabf995fb71405e1` |
| 10 | `theorem` | [target_unchanged](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/target-unchanged.md) | 94 | `result-track:127967ae00e7f8f903237cb27d6c32900f5ef984276077aa5b199de6caf6ea88` |
| 11 | `theorem` | [retarget_preserves_new](../../../../MeasureAndIntegration/PortFiberAreaMean.lean/declarations/retarget-preserves-new.md) | 99 | `result-track:53bb1c90bb555f66c93396a6278030f0ceabf749098440b08e5979e8e6acf1fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a5b3f591ad6cfec40892f37553072f11cf4f4561a32fa1a51452c11bab86d49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Interfaces/PortFiberAreaMean.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/PortFiberAreaMean.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
