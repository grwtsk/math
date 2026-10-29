# Verification target: Union Lift Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e563e5ce9833949f702e8075a80b3bb9f2f6e17",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionLift/Variant04bad8fc98353c920044259b44f0515a494f575e161c11a95613772f6ca0aba4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e563e5ce9833949f702e8075a80b3bb9f2f6e17`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionLift/Variant04bad8fc98353c920044259b44f0515a494f575e161c11a95613772f6ca0aba4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionLift/Variant04bad8fc98353c920044259b44f0515a494f575e161c11a95613772f6ca0aba4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iUnionLift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/iunionlift.md) | 63 | `declaration-track:3ca49d9edb292388c6f0843218c8b1f7f91e6aade0b5686a10ae54bfa26b4c50` |
| 2 | `theorem` | [iUnionLift_mk](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/iunionlift-mk.md) | 74 | `result-track:13cd8d7990eaac89fa6d89f8ba02aea3a74e998e7a24714bf6c8425fb46af95d` |
| 3 | `theorem` | [iUnionLift_inclusion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/iunionlift-inclusion.md) | 77 | `result-track:af8bb6f4f0036b90b2944f1c00fc605aae0d4189f5cdb7298c59e3829afc19d9` |
| 4 | `theorem` | [iUnionLift_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/iunionlift-of-mem.md) | 81 | `result-track:49ea644efb2cd0ea41708e25a55ef0965847ca459850bfabd50022bab4f5154e` |
| 5 | `theorem` | [preimage_iUnionLift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/preimage-iunionlift.md) | 84 | `result-track:c7d0f360d8879ec8c3dd6c1b7f236e6bc8ebae565255f85fbc33a7c6d0130b11` |
| 6 | `theorem` | [iUnionLift_const](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/iunionlift-const.md) | 101 | `result-track:d7ded86afb56bd6f6ff9a0a282f32e0cc8b943d4805f497de3eb7d57472a2f52` |
| 7 | `theorem` | [iUnionLift_unary](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/iunionlift-unary.md) | 111 | `result-track:74eb2cd4191d69020d9dc0b0138e47142336ede44e8b47c6e5c940f484cfa4e7` |
| 8 | `theorem` | [iUnionLift_binary](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/iunionlift-binary.md) | 130 | `result-track:9ec680ab6ff5d97bbed54586ac11c83abc3978241463a13b640dda7ac415446f` |
| 9 | `def` | [liftCover](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/liftcover.md) | 162 | `declaration-track:45e902badba13398c8eec8a65b50f4d9ce3ac89b4cbfdca1c3d9ff86e1bf6c74` |
| 10 | `theorem` | [liftCover_coe](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/liftcover-coe.md) | 168 | `result-track:297e7afe0992b61a7a2e4913161e6e82b9d24b61874c957b3605a5e8ebc896e0` |
| 11 | `theorem` | [liftCover_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/liftcover-of-mem.md) | 171 | `result-track:a9f85facd025ad03ecf6458b2f795a3b475638fc2d9338d4bd4e7e08e95d61ac` |
| 12 | `theorem` | [preimage_liftCover](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/UnionLiftNamespacedPublic.lean/declarations/preimage-liftcover.md) | 175 | `result-track:6b120911c9064b4204fff004944273ce27ca0f1202ab9cde25d0ec57440d7412` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63673976aa42f4565de66799b545d3d3e430fcdb1b8877ca398fe7619d88e3af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionLift/Variant04bad8fc98353c920044259b44f0515a494f575e161c11a95613772f6ca0aba4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionLift/Variant04bad8fc98353c920044259b44f0515a494f575e161c11a95613772f6ca0aba4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
