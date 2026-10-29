# Verification target: Matrix Symmetry Namespaced Matrix Action

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "964bfd0aa9314bd61bf9a417c4fbd9a18f67ad9d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variantbfcb2cbae0aa409de3c6beedde339cdba8a8b3914152dc56c36c07a447f03980.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixSymmetryNamespacedMatrixAction.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixSymmetryNamespacedMatrixAction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `964bfd0aa9314bd61bf9a417c4fbd9a18f67ad9d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variantbfcb2cbae0aa409de3c6beedde339cdba8a8b3914152dc56c36c07a447f03980.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixSymmetry/Variantbfcb2cbae0aa409de3c6beedde339cdba8a8b3914152dc56c36c07a447f03980.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.Spin` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixSymmetryNamespacedMatrixAction.lean/declarations/matrixaction.md) | 27 | `declaration-track:94bda30adaa908d013b4fb3b1f37b4a3fa41583c850f64af11a16bb0010428ff` |
| 2 | `def` | [copyAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixSymmetryNamespacedMatrixAction.lean/declarations/copyaction.md) | 40 | `declaration-track:bb387c23364e0f173fcdd6ff0de7e68d03b8e9af601baf9de1fe918c67f353f7` |
| 3 | `theorem` | [copyAction_id_act](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixSymmetryNamespacedMatrixAction.lean/declarations/copyaction-id-act.md) | 53 | `result-track:42eb011115ef2f1191aa36ec319a9c99ea45a12dcff2e87a20d132ff671b8feb` |
| 4 | `structure` | [RectV4ActionContract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixSymmetryNamespacedMatrixAction.lean/declarations/rectv4actioncontract.md) | 58 | `declaration-track:3cc22d59846db04151874ae2126cefa5f848eb649178740aae0aa8c060530fa9` |
| 5 | `def` | [rectV4ActionContractTarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixSymmetryNamespacedMatrixAction.lean/declarations/rectv4actioncontracttarget.md) | 63 | `declaration-track:8c93d77e3d4689ac85038f61f5e81f59fc381a49baf95e38b76a468c09d6b38f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13702d3c444d717ad5339563a4710b5871affb939ebae6fad7b4235516eba14d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variantbfcb2cbae0aa409de3c6beedde339cdba8a8b3914152dc56c36c07a447f03980.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixSymmetry/Variantbfcb2cbae0aa409de3c6beedde339cdba8a8b3914152dc56c36c07a447f03980.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
