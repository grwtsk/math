# Verification target: Linear Algebra Matrix Pos Def Namespaced Pos Def Of To Quadratic Form

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f8dd9870f5c20398f904a3c0e425b314994cbf5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f8dd9870f5c20398f904a3c0e425b314994cbf5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Spectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PosDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef.md) | 46 | `declaration-track:eb5f80d34f3ac7ee178dc5a280af6eb96a9884e5ec7c58c892be7f6955a5a468` |
| 2 | `theorem` | [PosDef.isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-ishermitian.md) | 50 | `result-track:4355548db625cd0988506b66e42dff5ca5c3e3b6d59939c0d7e8bb120fe616d9` |
| 3 | `theorem` | [PosDef.re_dotProduct_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-re-dotproduct-pos.md) | 54 | `result-track:90300411c33cfe5120d3117b4b1dfd444798628e724fbc82d7b7a146aa39b652` |
| 4 | `def` | [PosSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/possemidef.md) | 60 | `declaration-track:a894040f366b8a09b3303bcdd8e01de94a45df08933e1532bb1c7ef81dab82bb` |
| 5 | `theorem` | [PosSemidef.re_dotProduct_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/possemidef-re-dotproduct-nonneg.md) | 64 | `result-track:29ba078740e23065275f2f0fac0581ef66c8ef5bba89f47f1e12aa763842ff03` |
| 6 | `theorem` | [PosDef.posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-possemidef.md) | 68 | `result-track:7c5c419b186e232b9bdd9a731b0b7d48f3459b2802374b47afe9ca699c26506b` |
| 7 | `theorem` | [PosSemidef.submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/possemidef-submatrix.md) | 77 | `result-track:a22d6b6599896c7f42dde5f2e1b681f2c4c5916205bbe0d1370bc2a5e8a70ea1` |
| 8 | `theorem` | [posSemidef_submatrix_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/possemidef-submatrix-equiv.md) | 94 | `result-track:295ae082bc22293f7e7f7aa846fc213e1c53f12d37c13f9829f52c188fda50c7` |
| 9 | `theorem` | [PosDef.transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-transpose.md) | 99 | `result-track:5f98296c0bb88e4988016058328e7af6da6f930f2f03a5f6754affa7193c40b6` |
| 10 | `theorem` | [posDef_of_toQuadraticForm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-of-toquadraticform.md) | 105 | `result-track:f36985516af341ff824ada7500973435bfd9fb4e70b8ff789012af1171352af8` |
| 11 | `theorem` | [posDef_toQuadraticForm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-toquadraticform.md) | 113 | `result-track:5a7b98e620cf4e410e790508e1455268b279ca3cc4cd7a70916992d5df8dd263` |
| 12 | `theorem` | [posSemidef_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/possemidef-conjtranspose-mul-self.md) | 121 | `result-track:1d4b794bb89abfa186836173d743ae654649f9cdb022879f49b74c95218b3c5a` |
| 13 | `theorem` | [posSemidef_self_mul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/possemidef-self-mul-conjtranspose.md) | 127 | `result-track:5ab661482f9e331f7fcc1d32ff230e01303f66f698bd9552813b610bd36ca5f4` |
| 14 | `lemma` | [PosDef.eigenvalues_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-eigenvalues-pos.md) | 131 | `result-track:2260924fd48099b37ce9502521154d34d5d1ab4f5d925c4678863f6d99c42b18` |
| 15 | `lemma` | [PosSemidef.eigenvalues_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/possemidef-eigenvalues-nonneg.md) | 137 | `result-track:9f090ed324c5864e8d9f817bdd9c10ddbdc0f6eb594aef352cf6ccfbbcbc5f38` |
| 16 | `theorem` | [det_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/det-pos.md) | 145 | `result-track:1a85e1d57cddffcb00a7f8eef8117f0811160b4c1e723352ee529b4361f32081` |
| 17 | `theorem` | [posDef_of_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-of-tomatrix.md) | 165 | `result-track:38ca69e42c0e2b5d3b3978b72513aa9124ce7d730a20f3a40ddb8b451d76f2f5` |
| 18 | `theorem` | [posDef_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/posdef-tomatrix.md) | 171 | `result-track:72b43a7b85c9eec64e69dcccf8152e86af3685993075f22787e1f8c413ed879b` |
| 19 | `def` | [NormedAddCommGroup.ofMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/normedaddcommgroup-ofmatrix.md) | 186 | `declaration-track:00266d3346ffc68b5c24436afdbb1c63190546de542e27b53ef8e47bb8e56ab5` |
| 20 | `def` | [InnerProductSpace.ofMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPosDefOfToQuadraticForm.lean/declarations/innerproductspace-ofmatrix.md) | 208 | `declaration-track:b3cd996ac2504149ac3d236b2b675e12971c5479cbf628bd748a3c46364714ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5443cf39b890ccf0605545cc723cf84032597a6467dc8309889c52703ebfe80a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
