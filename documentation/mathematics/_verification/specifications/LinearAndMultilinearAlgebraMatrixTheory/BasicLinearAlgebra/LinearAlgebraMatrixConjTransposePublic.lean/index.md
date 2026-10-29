# Verification target: Linear Algebra Matrix Conj Transpose Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e16902aeaa49e8ce049f52ecea5b03ea4eab1277",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variante18c230504967123d31c72c3017571aa6814b473919b9f364f29908a0b7da032.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e16902aeaa49e8ce049f52ecea5b03ea4eab1277`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variante18c230504967123d31c72c3017571aa6814b473919b9f364f29908a0b7da032.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ConjTranspose/Variante18c230504967123d31c72c3017571aa6814b473919b9f364f29908a0b7da032.lean.json)

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
| 1 | `def` | [conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose.md) | 36 | `declaration-track:ac840266679d232f7cc050dced969349eb205df1d12279b715576f5c336dee27` |
| 2 | `lemma` | [conjTranspose_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-single.md) | 43 | `result-track:97065737678a37728d14ef0af3493321a16e3f9f1acaeb8f38f7a07f6a19c009` |
| 3 | `theorem` | [diagonal_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/diagonal-conjtranspose.md) | 54 | `result-track:35884add2f4f4bfa7b30385db47d5629350f8ec4746dd34e70af8932c1232a66` |
| 4 | `theorem` | [map_diagonal_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-diagonal-star.md) | 59 | `result-track:133cd7de329c8af93e644d785d044b2adf7c99adc0dc39ac990b0985a7ad04ea` |
| 5 | `theorem` | [diag_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/diag-conjtranspose.md) | 67 | `result-track:1302000e616324ee00c65844585e8862996197f9619f1ef96b888b2abc878621` |
| 6 | `theorem` | [diag_map_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/diag-map-star.md) | 71 | `result-track:aaf32f8e6f5d1aff1b909d8766cdb7386ce0500aaf1aa1d62232ba2b764a4ffa` |
| 7 | `theorem` | [star_dotProduct_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/star-dotproduct-star.md) | 83 | `result-track:a028d3327c4574485b99b724888655b77a3bdedf04bcc7a5e4b013a490fdbbf0` |
| 8 | `theorem` | [star_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/star-dotproduct.md) | 85 | `result-track:67a2368723671c12c3395c78858cff73decf32049840ab97605f493bd83597ec` |
| 9 | `theorem` | [dotProduct_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/dotproduct-star.md) | 87 | `result-track:1f2bce3660576df9749ac04bc1c5da976b7adc50ef9a0b8574cfcd84fa1c9106` |
| 10 | `theorem` | [star_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/star-mulvec.md) | 97 | `result-track:82860937ce9f22e34adbf80fdc3e5d0e2aa43748bdf78bfbca0a4061f65f7aaa` |
| 11 | `theorem` | [star_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/star-vecmul.md) | 101 | `result-track:26f5541402a11184b5ac1dd0d0e4bb95615390ea9e80c0faafa5209be6590b4b` |
| 12 | `theorem` | [mulVec_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/mulvec-conjtranspose.md) | 105 | `result-track:80830bcbdae40e2b74763b2b51025798c0e5aab896345f2711b923ca5a655500` |
| 13 | `theorem` | [vecMul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/vecmul-conjtranspose.md) | 109 | `result-track:6427b040ebb4bc33307ecae19245d17088ad52370ce8ce0666502ae748703f15` |
| 14 | `theorem` | [conjTranspose_vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-vecmulvec.md) | 116 | `result-track:4442362feb169be60c1f1fc8f2dd321a76c7b7a275fa7fecce05a9891b836823` |
| 15 | `theorem` | [map_vecMulVec_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-vecmulvec-star.md) | 120 | `result-track:73694f695f4d9b0d18fb6fa230be5aaef8fdfe8f791ca447d289194b46caf1fa` |
| 16 | `theorem` | [conjTranspose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-apply.md) | 133 | `result-track:7c6b606aa6b4570103d23520d4136d65ad749e94dcac3dd1a669696b1bb9e95b` |
| 17 | `theorem` | [conjTranspose_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-conjtranspose.md) | 138 | `result-track:91e67821f5be8174dd957940299d6504a8f4135e85466386c0ae78196a2d8570` |
| 18 | `theorem` | [conjTranspose_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-involutive.md) | 142 | `result-track:e805aaac5382bffff0d0bf54c4607d39edba1b8014956315b6f2a7afff7797a4` |
| 19 | `theorem` | [conjTranspose_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-transpose.md) | 146 | `result-track:c481f93d96a4e15c1f7bf0fbd938c791ef64b7f92ac3c56bf73516d7f776ed1c` |
| 20 | `theorem` | [transpose_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/transpose-conjtranspose.md) | 150 | `result-track:059b7a7d6e7e56bfe6e33c8b022a772d70ffc97b4d6d2dd90d3c1e5d5fd846a4` |
| 21 | `theorem` | [conjTranspose_transpose_eq_transpose_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-transpose-eq-transpose-conjtranspose.md) | 154 | `result-track:2ca444771b94c318d80146fd96e09e647c38920f77ef202a083a465f0c081c5f` |
| 22 | `theorem` | [conjTranspose_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-injective.md) | 158 | `result-track:4d776e58208055aef65e04f18b56fc3db83169e46e03e1c927a67fabdeb147f3` |
| 23 | `theorem` | [conjTranspose_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-inj.md) | 162 | `result-track:d744df7dd1424b2db869f70de9f4037a1104d762aa40c4f9fab93563236b6ef1` |
| 24 | `theorem` | [conjTranspose_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-eq-diagonal.md) | 166 | `result-track:7eeac9b775765efed9a71dbea641dacb6cf87085e61fb2427f3b5518cf287140` |
| 25 | `theorem` | [map_star_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-star-eq-diagonal.md) | 171 | `result-track:04d002708c42779953c6dc4cdce1b2d8866b7e35d64a4cf79160b06a33ab3e2c` |
| 26 | `theorem` | [conjTranspose_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-zero.md) | 176 | `result-track:b5b04f93d46988c5ca215ea41ef53559647f9d8c2ce6e8162bb8eda6fac179b7` |
| 27 | `theorem` | [conjTranspose_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-eq-zero.md) | 180 | `result-track:62e5b99c5f7bffca384c434d4753f450fb60505688ef70a7cf03e1f81ce7e0e4` |
| 28 | `theorem` | [map_star_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-star-eq-zero.md) | 184 | `result-track:5d16e0d2a89c06665e6e76fc2e2fbac2a66421e784da2a6305756a650e592f94` |
| 29 | `theorem` | [conjTranspose_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-one.md) | 188 | `result-track:2770057e0049a40933f7f22bd1d2fac1b342223f25aaeca5b0389068251862a7` |
| 30 | `theorem` | [conjTranspose_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-eq-one.md) | 193 | `result-track:7f06f2521af10f988177db423b73c7ec59abcd1ef7316d4f111b61f121401518` |
| 31 | `theorem` | [map_star_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-star-eq-one.md) | 197 | `result-track:86695da0773dcf1833a9f0dcf78ac57d0ae969987b2ad23a16f9d8220e50b33e` |
| 32 | `theorem` | [conjTranspose_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-natcast.md) | 202 | `result-track:6fde61d3eb40df4a08ae9a25977ccd03f37673a601dd681c093823faa60da3a0` |
| 33 | `theorem` | [map_natCast_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-natcast-star.md) | 207 | `result-track:f804c6eeed965de60deecb91b31393206152afe07c63874c21d7006f2d95a47d` |
| 34 | `theorem` | [conjTranspose_eq_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-eq-natcast.md) | 211 | `result-track:1d4ceca15b55a064568211511c0a5526cd1d771ea9b8f15e2bca45d7135135e8` |
| 35 | `theorem` | [map_star_eq_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-star-eq-natcast.md) | 216 | `result-track:72995cae9779812f77b166329b3285d98d3a5ce86efe9010c54de729d7a4c625` |
| 36 | `theorem` | [conjTranspose_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-ofnat.md) | 221 | `result-track:d550fa0b94f545aea94b3d1de88acb4440beba626da647470d796e61220924a5` |
| 37 | `theorem` | [map_ofNat_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-ofnat-star.md) | 225 | `result-track:fb2bc83205f2c31a4367f2ded6f845e2074e71afed41b965620bf347903a9416` |
| 38 | `theorem` | [conjTranspose_eq_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-eq-ofnat.md) | 229 | `result-track:16cf89e2e9e43f976b1866daa963bb5fe2486261780a503206d24366191a0b3a` |
| 39 | `theorem` | [map_star_eq_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-star-eq-ofnat.md) | 234 | `result-track:7fab8dde2e6da4f077a5bde5509f3b4abc0abaf8383c52ad48408e95aae74fa4` |
| 40 | `theorem` | [conjTranspose_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-intcast.md) | 238 | `result-track:01f01339269a49a7b7e3ef70ea6e03b0a3089a82dfead7f20a14b6809ec72bab` |
| 41 | `theorem` | [map_intCast_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-intcast-star.md) | 242 | `result-track:8f2e791780cbf63dc50c0b3af28819c10b174a922b36d6efbf6981907d89d643` |
| 42 | `theorem` | [conjTranspose_eq_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-eq-intcast.md) | 246 | `result-track:58289cb92d909e459a7f60761905f1201b1e8dc69cbff59a016f9c7297fd738b` |
| 43 | `theorem` | [map_star_eq_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/map-star-eq-intcast.md) | 252 | `result-track:cf232b355564d401ad2b431f52fae6d399c4df1931833b7aea0388e14aa18283` |
| 44 | `theorem` | [conjTranspose_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-add.md) | 257 | `result-track:d1479bd6b217ab2879640cfd035bf78f8de8647efc549c26652a9ff1fdcca140` |
| 45 | `theorem` | [conjTranspose_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-sub.md) | 262 | `result-track:490a376ee82f45846751107ab546f6289a21a6296b17a55505b7ec8d8a64e1d1` |
| 46 | `theorem` | [conjTranspose_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-smul.md) | 278 | `result-track:e0795b94e9b9dfc84d14339886a0e151831b636bd0a39efd0651adc110d66e3a` |
| 47 | `theorem` | [conjTranspose_smul_non_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-smul-non-comm.md) | 283 | `result-track:d2432205adab6180a9e68b522ab52f74d02a1c2e6b60ccbc78a4ad2ed3c89693` |
| 48 | `theorem` | [conjTranspose_smul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-smul-self.md) | 288 | `result-track:52da0aeea23309ce41f376a3671039968d593c7464f76449c0ed26e7be1d37e6` |
| 49 | `theorem` | [conjTranspose_nsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-nsmul.md) | 292 | `result-track:1bce00bc7e83618bf3bcbd7f8f6e66e90fac5b0f2e3479657be2af818a495457` |
| 50 | `theorem` | [conjTranspose_zsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-zsmul.md) | 296 | `result-track:f1c10929afb556c8f3b1e9c11f243b7a7b27725af24eb8c01e29d9e491593148` |
| 51 | `theorem` | [conjTranspose_natCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-natcast-smul.md) | 301 | `result-track:817afc92590e5f8d1397fb767a9295080a20f31c4c71c5718038e65ec4d0379f` |
| 52 | `theorem` | [conjTranspose_ofNat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-ofnat-smul.md) | 306 | `result-track:4c2996a37235b048df735bc180645e455df9ddc87195bd7e1a0550ec40b4438a` |
| 53 | `theorem` | [conjTranspose_intCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-intcast-smul.md) | 312 | `result-track:a25676ce4d9a84dd6023c6bcd47541fb796250bf675b11090e06f7545052f8ff` |
| 54 | `theorem` | [conjTranspose_inv_natCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-inv-natcast-smul.md) | 317 | `result-track:1a40ceb5a78caea1774c8886cc033690b8283eeb22e6b843344c0af6fff44900` |
| 55 | `theorem` | [conjTranspose_inv_ofNat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-inv-ofnat-smul.md) | 322 | `result-track:1a30b3a4f47ba284e360dfeda8429a24eb38a4c0e5eb79cc163d32601fdd04f5` |
| 56 | `theorem` | [conjTranspose_inv_intCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-inv-intcast-smul.md) | 328 | `result-track:eadaa99e3a57abb364278ba8595aa417aea33cfc5cbc59889d131165abba6b17` |
| 57 | `theorem` | [conjTranspose_ratCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-ratcast-smul.md) | 333 | `result-track:ecb006ae38eb5f614b17cc3ba5ae8225fd7f5d742621071284c0bf3f50da57d8` |
| 58 | `theorem` | [conjTranspose_rat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-rat-smul.md) | 337 | `result-track:859a397769273d28809f5fea4c7ded6e9cf59725acd76937cb0e5e2ce08e86e0` |
| 59 | `theorem` | [conjTranspose_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-mul.md) | 342 | `result-track:e2e8a3c503a9ab7a4964f00c874e5ac64696a331246977be9760e21145c1c3f5` |
| 60 | `theorem` | [conjTranspose_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-neg.md) | 347 | `result-track:bfd55d07c7011f119b967f906af5d45547a91bfa15d503109487e864ce2adf80` |
| 61 | `theorem` | [conjTranspose_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-map.md) | 350 | `result-track:54a71a88d574afa891c414b0e34c62f8e39f17a0e9da80d5c144bfa008db9648` |
| 62 | `theorem` | [conjTranspose_eq_transpose_of_trivial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-eq-transpose-of-trivial.md) | 357 | `result-track:20239d41447ac8505c15d2525273cc876c0f388fbbb58469ed71648bf00330b6` |
| 63 | `def` | [conjTransposeAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtransposeaddequiv.md) | 364 | `declaration-track:ed76f0904a80503930b9a988b6de99a6b2686b7b7bbb82e8bb2a76c2e6b877af` |
| 64 | `theorem` | [conjTransposeAddEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtransposeaddequiv-symm.md) | 372 | `result-track:86f6ec5364e114786660cc5262d2ff39c12d5156742b35ef7896a96e546a611e` |
| 65 | `theorem` | [conjTranspose_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-list-sum.md) | 378 | `result-track:d8c93fe1def5e2abe1000b61d589307d919f6a1c5282b174b4f620df1a7496af` |
| 66 | `theorem` | [conjTranspose_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-multiset-sum.md) | 382 | `result-track:7ebc35f31adb5f9de2a2c0af76d1261fd3db95480dd107d90a8dbc6a05e945e0` |
| 67 | `theorem` | [conjTranspose_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-sum.md) | 386 | `result-track:a02151a5fea4acd0f996ecf925762087b1a02a0fb42b1a169e67a369875e06f7` |
| 68 | `def` | [conjTransposeLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtransposelinearequiv.md) | 394 | `declaration-track:3fae954516ee0ea8c6ff1942b86483f3321a955968d3091e94e81a4eccebbc5b` |
| 69 | `theorem` | [conjTransposeLinearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtransposelinearequiv-symm.md) | 400 | `result-track:b25edda6019c8e85d8a00b3291c5d3f7a146c09f98e7ed2489268b5b5e71f64e` |
| 70 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/instance.md) | 411 | `declaration-track:43c5df8d3e7f62c3b2feaabe5f90874f7583f95af0e9ca27b75260d56f255f27` |
| 71 | `theorem` | [star_eq_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/star-eq-conjtranspose.md) | 413 | `result-track:85b0334b1fe4a7227ac69c3d943dbaa36af06a0ac28b10839bbe6211872911f5` |
| 72 | `theorem` | [star_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/star-apply.md) | 417 | `result-track:8c27d20be4c2948472448f0c8ccf791a893fb59d4ddce26a0d376e9221a415b1` |
| 73 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/instance-source-edition-2.md) | 420 | `declaration-track:583f84b171d40198b5aba4743d58f0ed3ea8810fdaf0838c8efac8d3586fc8a2` |
| 74 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/instance-source-edition-5.md) | 424 | `declaration-track:dd0f50838b5763a4af5376a4df1ac14b3640156c1deda1b9a8b055c199528fd7` |
| 75 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/instance-source-edition-3.md) | 427 | `declaration-track:7dc5c1a5c34ac135f81267e1d0e284b11a8963d56e7126cf734f1afaf13ec4f4` |
| 76 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/instance-source-edition-4.md) | 431 | `declaration-track:a97beacaf597ae0eb9fa2b33804fe8e9596741bd727aedd193292ad6d2fa9d91` |
| 77 | `theorem` | [conjTranspose_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-submatrix.md) | 440 | `result-track:57093d8fe34c7f3401bf20035b48b44238af0b966f2b41d09c6c8dd457c1b435` |
| 78 | `theorem` | [conjTranspose_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-reindex.md) | 444 | `result-track:d313643c9257f9fc7a4dede20a2c2f948750e2210cf99a45c72f8dc853a0dc92` |
| 79 | `def` | [conjTransposeRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtransposeringequiv.md) | 451 | `declaration-track:e2ef2ed8c0d01e1a13f06b5285d80d8dd151fd0e587ce234c83245244bb6ef83` |
| 80 | `theorem` | [conjTranspose_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-pow.md) | 458 | `result-track:0db3268310603c893e87263da373e7e9780b57884e1243ce5cb362632b008026` |
| 81 | `theorem` | [conjTranspose_list_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtranspose-list-prod.md) | 462 | `result-track:298ca6cacc60dae864ced5b1423072b9b882c16007ea6d4d6bce02916ce53b12` |
| 82 | `def` | [conjTransposeAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposePublic.lean/declarations/conjtransposealgequiv.md) | 469 | `declaration-track:87af66d7b1e6854cd18ae048ca89d65d085b42127acdbbc44ad440408b5d66c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb9a3104d55a61e58199d57bf8e2d32e7ef3ac073134c712ede471f8886ca170 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variante18c230504967123d31c72c3017571aa6814b473919b9f364f29908a0b7da032.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ConjTranspose/Variante18c230504967123d31c72c3017571aa6814b473919b9f364f29908a0b7da032.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
