# Verification target: Skew Adjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45df81f4957206bb923db30886e655a133e5f2b0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45df81f4957206bb923db30886e655a133e5f2b0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SesquilinearForm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearMap.BilinForm.isSkewAdjoint_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/linearmap-bilinform-isskewadjoint-bracket.md) | 43 | `result-track:e2adf3dbe2697ad4b18309238e1ea4fc0f289289337b39dd83f74d08d1e51bdb` |
| 2 | `def` | [skewAdjointLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointliesubalgebra.md) | 54 | `declaration-track:dc7dcbcbdb1fac14beabdce05ba0bf87cf14ba19d7a3d507df55714d7b13d8ab` |
| 3 | `def` | [skewAdjointLieSubalgebraEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointliesubalgebraequiv.md) | 62 | `declaration-track:5270ef3664929f7c95bda39e684eb08661959cbf016aa6f53e71dcf979427215` |
| 4 | `theorem` | [skewAdjointLieSubalgebraEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointliesubalgebraequiv-apply.md) | 71 | `result-track:a2364e29df13fb2c4f0672751c8de7a6dca6a2240a2918e5aec8b194f5a9d20c` |
| 5 | `theorem` | [skewAdjointLieSubalgebraEquiv_symm_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointliesubalgebraequiv-symm-apply.md) | 77 | `result-track:267d53eb05e5105c60842133c05554934021c74217194896f1bd7015cd6b6d0a` |
| 6 | `theorem` | [Matrix.lie_transpose](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/matrix-lie-transpose.md) | 90 | `result-track:b1bf914d3dc8919e66d95fa5a326027cb9fd22b59984252e06ecee549e4ba13a` |
| 7 | `theorem` | [Matrix.isSkewAdjoint_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/matrix-isskewadjoint-bracket.md) | 93 | `result-track:197b8f50b58117228850db64b3bfc3be9599d2cec5be3e2a978d80e3bd1b2c99` |
| 8 | `def` | [skewAdjointMatricesLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointmatricesliesubalgebra.md) | 105 | `declaration-track:23c2171b155bbfb4412cc092654e091f931a16a8d5bc2caf065048f8b5ec1bc3` |
| 9 | `theorem` | [mem_skewAdjointMatricesLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/mem-skewadjointmatricesliesubalgebra.md) | 110 | `result-track:2d76aa3d1c7143ac4fe651c7743fa229501e11f08b699db21f042093686b1739` |
| 10 | `def` | [skewAdjointMatricesLieSubalgebraEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointmatricesliesubalgebraequiv.md) | 116 | `declaration-track:12add0cf7e4d985913a651360e4d8a153e109a39e8afc0c7c3045ee565cd0f0d` |
| 11 | `theorem` | [skewAdjointMatricesLieSubalgebraEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointmatricesliesubalgebraequiv-apply.md) | 127 | `result-track:091e3acbbe14f7692f9a562da25ba9402798e7a0e600737d78efaf2a36948c03` |
| 12 | `def` | [skewAdjointMatricesLieSubalgebraEquivTranspose](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointmatricesliesubalgebraequivtranspose.md) | 134 | `declaration-track:48725aa658c3cd6e107568f5aec1618f9c0e83d7aee68929e110cc21f36cbf05` |
| 13 | `theorem` | [skewAdjointMatricesLieSubalgebraEquivTranspose_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/skewadjointmatricesliesubalgebraequivtranspose-apply.md) | 145 | `result-track:74adf9aedbcf28c6b7edecb984b9f5d78feffbdfae33169182c825898c55877d` |
| 14 | `theorem` | [mem_skewAdjointMatricesLieSubalgebra_unit_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SkewAdjoint.lean/declarations/mem-skewadjointmatricesliesubalgebra-unit-smul.md) | 151 | `result-track:38927f5d5a463eb9ae62a781303f1e8130ec9e20da393806ca18d8430573787a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fc828456a7a74c71920680438fd4cc3b5917b8ae6bc052fb455e15288fb3d0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
