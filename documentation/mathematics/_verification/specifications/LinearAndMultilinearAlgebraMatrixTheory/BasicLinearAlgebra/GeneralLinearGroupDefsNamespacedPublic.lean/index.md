# Verification target: General Linear Group Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c7f4155b3ea3c3f4938691c2d63b60e054a6c3b",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c7f4155b3ea3c3f4938691c2d63b60e054a6c3b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean.json)

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
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/generallineargroup.md) | 51 | `declaration-track:4eb3431227065c7c9700dc5cd2c2fd4f4b9f51555f7b4ded0750f31af00b5768` |
| 2 | `def` | [scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/scalar.md) | 63 | `declaration-track:76c394960cff4e99ade75f7cca116dcd5888e77a3db33684047307bf1c0704ab` |
| 3 | `instance` | [instCoeFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/instcoefun.md) | 68 | `declaration-track:e76492a8e47808f5dbf3d08cf1bb7296d44d641ac4aba38ab2d55556b0d38077` |
| 4 | `lemma` | [coe_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-scalar.md) | 72 | `result-track:8adb48f7dcf327ae0ced3d8aa9cbd2b919991092e6dd9cadfd3d5c709672d5aa` |
| 5 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 82 | `declaration-track:d9757b2a3dc5306913688b5ac144d0c33bb8b382d8d3683a9209a726ea5e5cfc` |
| 6 | `lemma` | [smul_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/smul-def.md) | 85 | `result-track:a2f04310f91163d61f0135a883f989b481bf5c49dc6f01df257207e6f3c94b8f` |
| 7 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 87 | `declaration-track:cc498dd24a5134b8ab12dcdd6a748073c93ac89c1bd9e632ce315644335531be` |
| 8 | `lemma` | [scalar_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/scalar-commute.md) | 96 | `result-track:adb72f4503fb33df395b2d1bf106069ce26a0007169ce768bc7d83268d11668c` |
| 9 | `def` | [det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/det.md) | 102 | `declaration-track:5645d03f8d81342fbb889902cd5bf45201b88d615692508dc63c3a1dc35075fb` |
| 10 | `lemma` | [det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/det-ne-zero.md) | 111 | `result-track:5ea2dbfc3759fef1be62defb1b6883107740fc1d70ff3e04f9051390943c7f0e` |
| 11 | `theorem` | [det_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/det-scalar.md) | 115 | `result-track:d900344528a55dcb8ce13a6fbd4a85e3c259015174263d6c7856cff41687a25f` |
| 12 | `lemma` | [det_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/det-surjective.md) | 119 | `result-track:a3851107f2f1516ce21e197b372cae8ce118440be243d71cb04cff71b2a1735a` |
| 13 | `def` | [toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/tolin-source-edition-2.md) | 129 | `declaration-track:cd63561c5ab9aa47f0a1b00fae9ea165a052a2fb682c04d7a7a140ec162e11b1` |
| 14 | `def` | [toLin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/tolin.md) | 134 | `declaration-track:04c534e6b9b9bf5c326508c3058874aedddd0d35308da67e0601590c53186f52` |
| 15 | `lemma` | [toLin'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/tolin-apply-source-edition-2.md) | 139 | `result-track:e0fd16e9911b09a907f2d8eba6f0acf12c54c1359bb8d1f1c9948db9086feecc` |
| 16 | `def` | [mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/mk.md) | 146 | `declaration-track:18a085b4e2eb1cbd2c1a83eb0ace37f83fe622b0d09d2adeaf1aab634a8095a5` |
| 17 | `def` | [mk''](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/mk-source-edition-2.md) | 151 | `declaration-track:d61427c6d76132dab9141e3368b4b20531b3e85f2314b4e375d54f5b5158bf1f` |
| 18 | `def` | [mkOfDetNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/mkofdetnezero.md) | 156 | `declaration-track:a10f3a9ed9d10cc125c6e504cac714583c09cc978fcfe35291e7306b2449a403` |
| 19 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/ext-iff.md) | 159 | `result-track:e555f6c791d2e9da68754b4dd3187d221e45d092bae13fa7eb2776f2d4e62577` |
| 20 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/ext.md) | 163 | `result-track:5db8010b3dc124a45dcd798334a65e8cb3b1eee75c906b8ef3ede02cb4395344` |
| 21 | `theorem` | [coe_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-mul.md) | 171 | `result-track:e83c002ec9f35b15965893445e43375d7f3717652f60569da15c9bb9552648ae` |
| 22 | `theorem` | [coe_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-one.md) | 175 | `result-track:c385c9276c2fbf84c3fca674a486a3a0eb3f8e8e3be8e431b71b9b6672ccbe74` |
| 23 | `theorem` | [coe_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-inv.md) | 178 | `result-track:e1b3575e631f8315d8ba5b9ee08f6998469d35bb219871f25e9ffd6ceb731347` |
| 24 | `theorem` | [coe_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-tolin.md) | 183 | `result-track:c74e6af3598406b8547449c06110e357b852c2566365b06aab2d48d7bc075a71` |
| 25 | `theorem` | [toLin_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/tolin-apply.md) | 187 | `result-track:0ab081e5282795117448f8e88726df4f863cacbedaf4ca772c05972f893a2138` |
| 26 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map.md) | 196 | `declaration-track:02c934dcc3892c144ae18fa6907847a7308a3dc74b4298a989788982a08f425d` |
| 27 | `theorem` | [map_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-id.md) | 199 | `result-track:64e653ee4cefdc4b2e67bed5dd3fa84f4c182472aefaa2b70a9f2e3432d6fdc7` |
| 28 | `lemma` | [map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-apply.md) | 203 | `result-track:e989869cb166f00f22a7a004c25e80a6d1e962bbcccebf77473ead0b90c8fa88` |
| 29 | `theorem` | [map_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-comp.md) | 207 | `result-track:676900e5f3a828878ba7e6078ef9afdd44c7550b60264ef1cc14172a451bee51` |
| 30 | `theorem` | [map_comp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-comp-apply.md) | 212 | `result-track:d8bb6345b5acf4998036a259b0b06e74f069867da1589fd572c5e39d1c215a7b` |
| 31 | `lemma` | [map_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-one.md) | 219 | `result-track:49540b5d8ea39cbe4ed210549a6b6ce0edba87e46698b83801c907b7c361d9e9` |
| 32 | `lemma` | [map_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-mul.md) | 222 | `result-track:3c3ca4b13b529a5ad20bc6dc1134b02e22818ac30dbab32ce3866e423b6835c2` |
| 33 | `lemma` | [map_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-inv.md) | 225 | `result-track:62210240349f78a467d4554b8e32bcaa0748b6c9134ee1c4e9c5e8e53d476c79` |
| 34 | `lemma` | [map_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-det.md) | 228 | `result-track:9577d50a73c49bdb5899802133aed30d7420484ec4259615027f3b1997b3206b` |
| 35 | `lemma` | [map_mul_map_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-mul-map-inv.md) | 235 | `result-track:613dc5260326b965235392cdc053ae09f43c4f5bd0248a7261347361ad717937` |
| 36 | `lemma` | [map_inv_mul_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-inv-mul-map.md) | 238 | `result-track:2b31d9a822a31c10cc50f8a4db11c7189c51631f360b11fb85a8b475e3300d48` |
| 37 | `lemma` | [coe_map_mul_map_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-map-mul-map-inv.md) | 242 | `result-track:d487c4a0047294a83f6606b60f1305df7597a688d7be1b47a05e006fba2a2198` |
| 38 | `lemma` | [coe_map_inv_mul_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-map-inv-mul-map.md) | 247 | `result-track:fa74d1ac46005622e5d6c1937053c2e3c26bbd27f37f7aa2114d6d2d7f54feb0` |
| 39 | `lemma` | [map_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-scalar.md) | 251 | `result-track:111e3022b859fbd2e35d7391b60e5ace8c037129a5844d2a1c490a59f1811a7e` |
| 40 | `def` | [kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/kronecker.md) | 262 | `declaration-track:9e3aaa2a15545754ed51526501a893d55347e2f3e5d73b7c903ec40bae243769` |
| 41 | `theorem` | [General Linear Group Defs Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/kronecker-source-line-268-occurrence-2.md) | 268 | `result-track:5d13672cf0b9fefb02268cb91bd5c6a9b43f20418edba8a159c8d527f484afce` |
| 42 | `def` | [toGL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/togl.md) | 282 | `declaration-track:0ad668b9a16a6f8bf464f8e32451886ca2124c824b3711ef8102d281631fcb33` |
| 43 | `instance` | [hasCoeToGeneralLinearGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/hascoetogenerallineargroup.md) | 287 | `declaration-track:4f02bcb3db32244c0603e8a6cb6e626c07c5763debceb3cfce26b82970d7a7e8` |
| 44 | `lemma` | [toGL_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/togl-injective.md) | 290 | `result-track:d01f303c342475f84893662364ca0b430f630d786efaabc9bcf5d1e0f89b6607` |
| 45 | `lemma` | [toGL_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/togl-inj.md) | 295 | `result-track:f56dd4a7801fc1749f2ae2aa685f4777f9af0564fe48dd06883c20256a7fe233` |
| 46 | `theorem` | [coeToGL_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coetogl-det.md) | 300 | `result-track:9308788b209924eb5d0f46052788b74dae62e45b3c348a50b040c2987a6af156` |
| 47 | `lemma` | [coe_GL_coe_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-gl-coe-matrix.md) | 305 | `result-track:e310af1449b4f6bbded14d089a50b22b22d773ffe6bd36b128ca3b791921e04b` |
| 48 | `lemma` | [range_toGL_eq_ker_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/range-togl-eq-ker-det.md) | 307 | `result-track:220609ba52bb80965f26ea8e4b530d698b3d2362d2d59ac78ca36e1b51905901` |
| 49 | `def` | [toGLKerEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/toglkerequiv.md) | 316 | `declaration-track:8a0b00f58815aab8dcfbf7c04caf5d01f5ac7ef9f526579a66bd9530587eae3f` |
| 50 | `def` | [mapGL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/mapgl.md) | 326 | `declaration-track:66d6db0bdd98e9f41e1438c61fac41dd2bef404b60f26d2789f601ccf39f0be0` |
| 51 | `lemma` | [mapGL_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/mapgl-inj.md) | 330 | `result-track:05a962cba48044ef1d1ce1cce2c4b7f2811a0adc3e50754afb3b9709630301eb` |
| 52 | `lemma` | [mapGL_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/mapgl-injective.md) | 334 | `result-track:8c29dacdbf2a36a71b2c8ec6097b00394cbc6d433291ce64c0e89f81373dfcb5` |
| 53 | `lemma` | [mapGL_coe_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/mapgl-coe-matrix.md) | 339 | `result-track:60c3ab2e289b84acb11d960669e4f70837b6322edb425b6c1651d9c9f133ab27` |
| 54 | `lemma` | [map_mapGL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/map-mapgl.md) | 344 | `result-track:68b38307fb5b899c0a7998a9d71fed348015adbbc346de12d281c6c34c43d1a2` |
| 55 | `lemma` | [det_mapGL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/det-mapgl.md) | 351 | `result-track:2aec7f12669e2efab666fd286f83e9929f1c31366bb12469cfaa7ec6dbbfb03d` |
| 56 | `def` | [GLPos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/glpos.md) | 367 | `declaration-track:2ce02f1c08baea865178d77d29b5b67fb43a160b1f43db396e9aab343da0cc3f` |
| 57 | `theorem` | [mem_glpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/mem-glpos.md) | 375 | `result-track:9dc25cbc65feffc8330141e4dd833c02c2b0697f232aa30ff6d57159e4914c99` |
| 58 | `theorem` | [GLPos.det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/glpos-det-ne-zero.md) | 378 | `result-track:d204858038e6fd74c58da66f049d6b1178ccd2d4396078cae85f712d73211e84` |
| 59 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 391 | `declaration-track:72a929e538736ebdb357008b00e4afc6726f97a709d3c59c90942974d1d0432b` |
| 60 | `theorem` | [GLPos.coe_neg_GL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/glpos-coe-neg-gl.md) | 399 | `result-track:6bd655d9cd19ac5bad1f3992acf39e136252f82c74f2b1a34c04b68628145e48` |
| 61 | `theorem` | [GLPos.coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/glpos-coe-neg.md) | 403 | `result-track:1f4bef3f0265f97e189c6ef7d12c3f469845a501d7463364dc5fb7315956caaf` |
| 62 | `theorem` | [GLPos.coe_neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/glpos-coe-neg-apply.md) | 407 | `result-track:14e77e7e3dd3411a095d59c6a1d4ee43c19cc0213fa482e755c7196a23f5d9cb` |
| 63 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/instance.md) | 411 | `declaration-track:72257b382446a095818c434dc7d3947bdbfdaab5a50ff576729d604c334de703` |
| 64 | `def` | [toGLPos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/toglpos.md) | 422 | `declaration-track:a536fbd369c42c81b70142cdd34f5e2078735b6c23660736c96684a200867fd7` |
| 65 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 427 | `declaration-track:cdf128971ca96ebcdb85de0f5d079077dedf8ae3fbc578310815dc01cd438789` |
| 66 | `theorem` | [toGLPos_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/toglpos-injective.md) | 430 | `result-track:49baf5a63b68e78d340f6095a70ffef6269b386277c78d2b771829c83a8e597c` |
| 67 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-glpos-coe-gl-coe-matrix.md) | 440 | `result-track:d1012adf6e7230e72a9266b9efc6530a2a11c8ece6a118f1ad710c2a63164c07` |
| 68 | `theorem` | [coe_to_GLPos_to_GL_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-to-glpos-to-gl-det.md) | 445 | `result-track:860dd7c3822eb0c630b4b317b9dcc4ceb2ec1d3e35371143125186a6d66cde65` |
| 69 | `theorem` | [coe_GLPos_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/declarations/coe-glpos-neg.md) | 452 | `result-track:0469612f8309851a8e100b676503d5f812a6c876775225000d1ac59734546759` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb1f359087e803e8517239797ce63ce5c5609a7144b23dd7cadd46c138c64b00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
