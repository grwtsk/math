# Verification target: Recharts Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78289e64dc650114ca3e3fe53a2521559d856492",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Recharts/Variant05e5e55a6142c58144a43ad8e7286e7060f1483e4ba6955a37841d089ad0dcb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78289e64dc650114ca3e3fe53a2521559d856492`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Recharts/Variant05e5e55a6142c58144a43ad8e7286e7060f1483e4ba6955a37841d089ad0dcb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Recharts/Variant05e5e55a6142c58144a43ad8e7286e7060f1483e4ba6955a37841d089ad0dcb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Component.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Recharts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/recharts.md) | 15 | `declaration-track:574c5d731d0592b4ffab6fb00f211741e7f2c25320bb952ec8ed4e678c5dac84` |
| 2 | `inductive` | [LineChartLayout](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/linechartlayout.md) | 18 | `declaration-track:d80be425bc231d9d3c15ddd372d869eadca1a3c4f07705c5c24a0ec3678a050b` |
| 3 | `inductive` | [LineChartSyncMethod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/linechartsyncmethod.md) | 23 | `declaration-track:001a813c19cd0e0c8b6f5f852a9eaf0586b4f6cc5abadc2b247b0267a8b93f21` |
| 4 | `structure` | [LineChartMargin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/linechartmargin.md) | 27 | `declaration-track:ce8dc994fb64f5fc435f2378c9a620bab58cd03463a0bda368cd06dc15e253e0` |
| 5 | `structure` | [LineChartProps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/linechartprops.md) | 34 | `declaration-track:90025b8315e5353ea0ac48b7ed7d46f1e987ed3c749e3bdf573051054581dd42` |
| 6 | `def` | [LineChart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/linechart.md) | 45 | `declaration-track:ea78bd78d5b7a63b0dc6b44260858b09ff3060439bd03473e8f2a1ea93fff0c5` |
| 7 | `structure` | [AxisProps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/axisprops.md) | 49 | `declaration-track:00a867c00ed06a6aab07cf7309d9c2642493025c68533a7525a98899fd56f3d2` |
| 8 | `def` | [XAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/xaxis.md) | 57 | `declaration-track:30b60ccb44281c7ae9189cc71806f437f0d1da0f6370fcc539d760adcc1f80d2` |
| 9 | `def` | [YAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/yaxis.md) | 62 | `declaration-track:cbd49dff3fbe1e2b6c784a4a2e13d5667a69ee7ef07fabd2c6d6eaf22309ddcb` |
| 10 | `inductive` | [LineType](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/linetype.md) | 66 | `declaration-track:49d77073fce80d23d577bac577a7e7198856187fda0c688e11ed3bd64e61afb9` |
| 11 | `structure` | [LineProps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/lineprops.md) | 71 | `declaration-track:4c494e18b3728b09c20eb04ede7738700b2d69f4712106e3f821a63eec507c30` |
| 12 | `def` | [Line](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RechartsNamespaced.lean/declarations/line.md) | 80 | `declaration-track:a084c961c9f1c410f6d490bb640f63e1c544cb177db3e671dfefd73fe78aa702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6534e88b45b6a8c82999ac4b2501c50efebeeb55b3937287820a0a356110dcc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Recharts/Variant05e5e55a6142c58144a43ad8e7286e7060f1483e4ba6955a37841d089ad0dcb1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Recharts/Variant05e5e55a6142c58144a43ad8e7286e7060f1483e4ba6955a37841d089ad0dcb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
