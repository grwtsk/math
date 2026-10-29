# Verification target: Linear Algebra Matrix Basis Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c38e864d6fd53b999e7533a3e7edadc68f8dece7",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c38e864d6fd53b999e7533a3e7edadc68f8dece7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix.md) | 59 | `declaration-track:621886a095c9ae774019b576c8c4e8f28bda736870b1d0d3c58c1f99c603a3f4` |
| 2 | `theorem` | [toMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-apply.md) | 63 | `result-track:876f79b9d1147dbe48475a97178c40f1ed7cc529e03063dcf433c06d1c75624e` |
| 3 | `theorem` | [toMatrix_transpose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-transpose-apply.md) | 66 | `result-track:81291d583e9b2cee413d2e493c8ff62c835ff077aa0d97994267037d188e153f` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-eq-tomatrix-constr.md) | 69 | `result-track:0a5fe4fcbfa7170cab2b38a22c5efb0e0f5fdcf6c46e41abe3b272afb782539e` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/coepibasisfun-tomatrix-eq-transpose.md) | 75 | `result-track:ed7e7066ee34b49aeb1f4081bac07dec4bf68ae3cbd34e18b514622bbeb1b638` |
| 6 | `theorem` | [toMatrix_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-self.md) | 81 | `result-track:03edaa21c00f3f749f312509229f3649b184e60e15b36a3200d6534b183cb7d1` |
| 7 | `theorem` | [toMatrix_update](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-update.md) | 86 | `result-track:6470230a5bbde38ac560e5bac6e9ff6e37e5d8dfda269a770f5d9b015e28df15` |
| 8 | `theorem` | [toMatrix_unitsSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-unitssmul.md) | 96 | `result-track:ffaf1fd483b628390d26cadd6fe8b59d52275dd10c9fb5aa4cb49e5f1f3d9566` |
| 9 | `theorem` | [toMatrix_isUnitSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-isunitsmul.md) | 104 | `result-track:887b4b2f6ed5ce8f3b5a26fad4f3d53c2457784f6259038a1436034338b64fe7` |
| 10 | `theorem` | [toMatrix_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-smul-left.md) | 108 | `result-track:ab586b7514c4867946ea10d433961ac68d5ba9ee1736440cc3f74a59bc7a8406` |
| 11 | `theorem` | [sum_toMatrix_smul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/sum-tomatrix-smul-self.md) | 112 | `result-track:0459c57b6705bca94ad0651165321509bfc248e51ba1fa9babf2b15c80575469` |
| 12 | `theorem` | [toMatrix_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-smul.md) | 115 | `result-track:283b333711541de1c5db554a0da4941cabe49acf8a2b96b6806894111109cc67` |
| 13 | `theorem` | [toMatrix_map_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-map-vecmul.md) | 122 | `result-track:b482f0d3446ca432fe05dbd5e7a1006745a7dec56937751b804021f88ad35cdd` |
| 14 | `theorem` | [toLin_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tolin-tomatrix.md) | 129 | `result-track:7ee7ed54b323a256c60710eeb2a0e7287fbbc2108e58105378fa8f8dad941a5f` |
| 15 | `def` | [toMatrixEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrixequiv.md) | 135 | `declaration-track:bef2992bbef67d764a7ca7f4dc2107887d2975ae93be27443bc22c682b1a73b4` |
| 16 | `theorem` | [restrictScalars_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/restrictscalars-tomatrix.md) | 158 | `result-track:d01b7149af123f390edc65ceeff82b81a3fd56ab770441a9bd81e173521630b0` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/linearmap-tomatrix-id-eq-basis-tomatrix.md) | 181 | `result-track:626dbfc412a6f9f15fea109210131fc9218cb9bc437f345aa6d7355a67eced16` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix.md) | 189 | `result-track:11a127587acd9b0b63dc266061e66005448c2fe98d4c5f963ff12fe965f74c50` |
| 19 | `theorem` | [basis_toMatrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/basis-tomatrix-mul.md) | 195 | `result-track:847468ae60a27c7e1dc9b661cadfb366027a14e09705df491421021ba5dcd1f3` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/linearmap-tomatrix-mul-basis-tomatrix.md) | 204 | `result-track:6974926b1574f371f0813997aedb28a962accbb074bedab3cf77e27d237a825d` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix.md) | 209 | `result-track:1124572e65891150910792ab2005697aaaaee3414dfe510bc20a563398edcb3b` |
| 22 | `theorem` | [mul_basis_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/mul-basis-tomatrix.md) | 215 | `result-track:08fb0aefe372b1952766a041ff045c17aabdcf5535e107f838f23d7900eb779a` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/basis-tomatrix-basisfun-mul.md) | 222 | `result-track:785e3b7547d6d7d07fbf82ba8d8f08a10ec1fc1b698825b73ca61bc5649e739c` |
| 24 | `theorem` | [toMatrix_reindex'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-reindex-source-edition-2.md) | 233 | `result-track:96a5ca3a5cb6deb0c3a04e00ab2155b3d6b8c799323298b819c8729ca4fb6b2d` |
| 25 | `lemma` | [toMatrix_mulVec_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-mulvec-repr.md) | 241 | `result-track:ffc6cdd5166df1b7a9e2f841ac53bd266efab54efe9714ab974d2fe04b96e795` |
| 26 | `theorem` | [toMatrix_mul_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-mul-tomatrix.md) | 253 | `result-track:c3884c23c7327d5497e7130713f3a1aaf3d3296a1cdb795c1425cc013161c2d7` |
| 27 | `theorem` | [toMatrix_mul_toMatrix_flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-mul-tomatrix-flip.md) | 262 | `result-track:08aeed854ee5cb91d80019e31123dd36d4b3d46b3a90e5081de136e3986d411f` |
| 28 | `def` | [invertibleToMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/invertibletomatrix.md) | 267 | `declaration-track:ed0af4daf1d08698a8a6efac562089266cc6fb72d724405fd2e39a33641200ee` |
| 29 | `theorem` | [toMatrix_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-reindex.md) | 272 | `result-track:54e9386d7fd3efcd7d08536da3321b1e271557a03e2231e66adf6cf53f79c097` |
| 30 | `theorem` | [toMatrix_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-map.md) | 278 | `result-track:64155aafb99f5837b27c41c98ddec83dafb78a4992e81d536829fddaa9b2ae3c` |
| 31 | `lemma` | [Linear Algebra Matrix Basis Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/declarations/tomatrix-eq-basistomatrix.md) | 283 | `result-track:fdc2a085cd7821b71f61c54a82a5f80077c121240b373d9fcbc83c119a78f083` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65c25dff07e0d65d090a509f28726cdc86132bb2558aab7e63562626cc6ae832 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
