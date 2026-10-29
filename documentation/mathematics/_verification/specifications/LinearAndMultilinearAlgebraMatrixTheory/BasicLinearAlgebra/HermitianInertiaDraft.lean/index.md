# Verification target: Hermitian Inertia Draft

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "133ab51a4118d680182f37bd2dba63c15b97491e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `133ab51a4118d680182f37bd2dba63c15b97491e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RealificationDraft` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/spectralcoordinates.md) | 14 | `declaration-track:5895983acd5d00ad5fa95d1e586ee9747bdd454f7b0752a6bde2a5035e3c0f55` |
| 2 | `theorem` | [spectralCoordinates_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/spectralcoordinates-apply.md) | 19 | `result-track:6116cb9f53a7ba7c9644438d3293aceb0c79154c97c9abc993e7efc9d2d6cf90` |
| 3 | `def` | [realForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/realform.md) | 24 | `declaration-track:4a6b53e1c046b434bcadbcfbb673c61402e9eaeb21ce7edce3516c6fec3a50b8` |
| 4 | `def` | [spectralRealEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/spectralrealequiv.md) | 27 | `declaration-track:f50305ddf1ca3bf357fe2426b6d38411d2ed31fc6b0e9a7d3837c6e10869e829` |
| 5 | `theorem` | [realForm_energy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/realform-energy.md) | 32 | `result-track:7904039f9e059643f160990eb14f52c3d43a1c450c86870cdeb9dc34c7f2d326` |
| 6 | `theorem` | [sigPos_realForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/sigpos-realform.md) | 43 | `result-track:3df03677870d0371ae124b392cc18c66ab4916f965e263028ce102bbd0b90e4b` |
| 7 | `theorem` | [sigNeg_realForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/signeg-realform.md) | 49 | `result-track:3347e48e972548a80c6d4d673e0b185f37d933874817d0c89c555f1fb42bdb2c` |
| 8 | `def` | [congruenceCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/congruencecoordinates.md) | 56 | `declaration-track:8c91f3de018d899ab7757fd14df05e70ca43442d86ead01ade596e89ec47d365` |
| 9 | `theorem` | [congruenceCoordinates_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/congruencecoordinates-apply.md) | 61 | `result-track:bc9a6e36fad0ab79f47c468d063aef63bfaff12dfc6b998741733cb57c508121` |
| 10 | `theorem` | [realForm_congruence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/realform-congruence.md) | 65 | `result-track:4ceb376a14757b74c896c6d30e2c37342eb5e0ac2e0e2c43afce0e440f69c78e` |
| 11 | `theorem` | [positive_count_congruence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/positive-count-congruence.md) | 75 | `result-track:443cc76ea0e7858b54eb0b75f943b1e7ef7dbcf3e61bdd107696c2eef42ebaae` |
| 12 | `theorem` | [negative_count_congruence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianInertiaDraft.lean/declarations/negative-count-congruence.md) | 87 | `result-track:8b1753244a508423ea753d262e0edc5a99fb8ce128ddb08ed8f04dcb62eefe4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f1a4d2bd4b0406f7d3f7ea6bb896ee25f146f4d429fc6b46f85231380d5a108 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant6bf4ab1caf705d644b2f2154a9f8139bc129beef48aa837b5c851180b3f0be67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
