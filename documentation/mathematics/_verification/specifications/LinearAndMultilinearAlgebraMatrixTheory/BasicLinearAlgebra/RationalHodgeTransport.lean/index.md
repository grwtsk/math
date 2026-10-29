# Verification target: GRWTSK.Geometry.Hodge.RationalHodgeTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce90366d81cf18384db557b2d66b3734b33d6f28",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce90366d81cf18384db557b2d66b3734b33d6f28`.

Source path: `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/RationalHodgeTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.RationalCycleCellular`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalCycleCellular.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CycleClassEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/declarations/cycleclassequiv.md) | 11 | `declaration-track:516350010a4d29f5a4a2d584920e0c0097f767fb9139ab8db1ce67b6db2b8b11` |
| 2 | `theorem` | [commute_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/declarations/commute-apply.md) | 39 | `result-track:9f3af43f44a594ceacb9e5d6c60e3b47e7f7455a9564da4c72d1297ee141f251` |
| 3 | `theorem` | [surjective_forward](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/declarations/surjective-forward.md) | 45 | `result-track:f3900ccd6e4cd74de3123de6fb266ce411009d771785396c96253d4c534e0c88` |
| 4 | `theorem` | [surjective_backward](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/declarations/surjective-backward.md) | 58 | `result-track:f9d0e22199e063b5475460add5014c5ee4ea26d48d0480728c74b1c04692f335` |
| 5 | `theorem` | [surjective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/declarations/surjective-iff.md) | 73 | `result-track:a4ed8112bfaf328ec8e9857eea5e8afdafd453c6ccf5b3a9f928663ced9a1786` |
| 6 | `def` | [transportTheorem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/declarations/transporttheorem.md) | 83 | `declaration-track:33795437d47909594111543755398eb82bb34c4de7212b8f27eed0c6bed0785a` |
| 7 | `def` | [lineEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/declarations/lineequiv.md) | 100 | `declaration-track:ba3f4fc6a348eb4ae415e542dc45617c47038711005c3030a67ccf00a2c710de` |
| 8 | `theorem` | [line_transport_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalHodgeTransport.lean/declarations/line-transport-surjective.md) | 106 | `result-track:48952ed4bb32be27b5cceb44ff239b18fc60dbe2533947d77f5b9de15d385630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=daebf3670bd53400030c6b88030cd20d0083d4396b0733211fbf71085012e01e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean","GRWTSK/_verification/specifications/Geometry/Hodge/RationalHodgeTransport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
