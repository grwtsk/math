# Verification target: Polynomial Mahler Measure Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2728419ad1445bcdb12ee8096254dd55ccc58278",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2728419ad1445bcdb12ee8096254dd55ccc58278`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure.md) | 54 | `declaration-track:f3c103c010307bda0c7ec00204f0ab274cdb949e4f63e7d9dacefd47d0fcacdf` |
| 2 | `theorem` | [logMahlerMeasure_def](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-def.md) | 56 | `result-track:33eb8a9df6a01a66b7b0affcd018538a5b36a91cdc54fd89ec2799609ca9a1df` |
| 3 | `theorem` | [logMahlerMeasure_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-zero.md) | 60 | `result-track:bc982676631e0bd21fdedf234f9fb702e84c8416b5b60b2b72eb17dff8fdfe7d` |
| 4 | `theorem` | [logMahlerMeasure_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-one.md) | 64 | `result-track:1266addd0a0b5a4ad841ab3b925cce1eab85a1ae6e735ceb4312cf091142ba4f` |
| 5 | `theorem` | [logMahlerMeasure_const](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-const.md) | 68 | `result-track:a534a09dca997349cbd3ab025b12df72d22983c7b96211bb4b05cebf78c1082f` |
| 6 | `theorem` | [logMahlerMeasure_X](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-x.md) | 72 | `result-track:1963d3b811a7a008da2961550efde0d1540e7a120958abbc8c507679320fa13d` |
| 7 | `theorem` | [logMahlerMeasure_monomial](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-monomial.md) | 76 | `result-track:68198eaa2a6d2d46c7570905f7c0a6ba0234592b8563d605201309e110121cf5` |
| 8 | `def` | [mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure.md) | 81 | `declaration-track:87d477ad4aa90b5f0f1b7e90ff9de318fa79a603a3dd2e61c4288957780c96d5` |
| 9 | `theorem` | [mahlerMeasure_def_of_ne_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-def-of-ne-zero.md) | 84 | `result-track:95212eed6fe075a9ed712dd948e1daf7917f354e4feddd090ec97c06e88f9b41` |
| 10 | `theorem` | [logMahlerMeasure_eq_log_MahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-eq-log-mahlermeasure.md) | 89 | `result-track:aaa8847fd1a388c648738b6df8f0eb11d505b7052a604fede73e083de59f9cd7` |
| 11 | `theorem` | [mahlerMeasure_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-zero.md) | 94 | `result-track:b5658dcb7aa313ef331f94db3d424b7262345120e0c1ff04a98f8654378a22ed` |
| 12 | `theorem` | [mahlerMeasure_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-one.md) | 97 | `result-track:0cf0ccdc2062620012f615cd97fcde28574d0ab85db8ea5a98912535447e0f4d` |
| 13 | `theorem` | [mahlerMeasure_const](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-const.md) | 100 | `result-track:8f602beeafdb7e7fbb12c6a0856627ccbcf68ebd8f738617a207032e248cd620` |
| 14 | `theorem` | [mahlerMeasure_nonneg](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-nonneg.md) | 106 | `result-track:fb8f3f0aa8f4e9a68acf92dd2aed424feaed5b941569c49b6ffb83dd2818b132` |
| 15 | `theorem` | [mahlerMeasure_pos_of_ne_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-pos-of-ne-zero.md) | 110 | `result-track:baa30e33fb3372b817af552e81e20830277e9bc1fb99833823a561eeab4362a6` |
| 16 | `theorem` | [mahlerMeasure_eq_zero_iff](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-eq-zero-iff.md) | 114 | `result-track:e62e6d924bbe8d0904a1a2568d43d1f4399861bd3047e4955b43b9036818a83a` |
| 17 | `lemma` | [intervalIntegrable_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/intervalintegrable-mahlermeasure.md) | 119 | `result-track:df8f7a01806cf62cda9429f82a59870ad55e205945a6b48a9909953a1bf64a54` |
| 18 | `theorem` | [mahlerMeasure_mul](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-mul.md) | 126 | `result-track:333b164207fe1ad96934185ec01e191d19e7850e367ab5a0e99c65c4e58444fd` |
| 19 | `theorem` | [prod_mahlerMeasure_eq_mahlerMeasure_prod](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/prod-mahlermeasure-eq-mahlermeasure-prod.md) | 148 | `result-track:a51575511d2b7a8fffece1401af4cfed1b38261b056741609f31ef90c73ced46` |
| 20 | `theorem` | [logMahlerMeasure_mul_eq_add_logMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-mul-eq-add-logmahlermeasure.md) | 154 | `result-track:02060893242013ad8323889243b71a5ca3db6789e6c4bd39479c65162535d310` |
| 21 | `theorem` | [logMahlerMeasure_C_mul](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-c-mul.md) | 158 | `result-track:8c67d735f05337705b1f33ebfbcd00d5cfa9f6a6170a0c0b0772ad637d66c597` |
| 22 | `theorem` | [logMahlerMeasure_X_sub_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-x-sub-c.md) | 165 | `result-track:b6d237ab857bbfb0639d82dd171be38fe812f1e92f05fc8a58be914b9d062868` |
| 23 | `theorem` | [logMahlerMeasure_X_add_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-x-add-c.md) | 169 | `result-track:6e7171757bd9c2ab554e363de116a048dd16b6e30a2bf1407c4e8ce065b6a604` |
| 24 | `theorem` | [logMahlerMeasure_C_mul_X_add_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-c-mul-x-add-c.md) | 172 | `result-track:4136d8bd823157af3a1118c49bf5d077b4f9b32db91a7817a2ab8cdb8f8c6709` |
| 25 | `theorem` | [logMahlerMeasure_of_degree_eq_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-of-degree-eq-one.md) | 177 | `result-track:4c63a4a9046d99d543db3cb52535f4c2bee6a33bccc046d24bc4062e9c7aeba5` |
| 26 | `theorem` | [mahlerMeasure_X_sub_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-x-sub-c.md) | 184 | `result-track:46f9a32fe646cf8b09941ae53ba36920802f3ae9ad0a5d2b7095a84040f2688e` |
| 27 | `theorem` | [mahlerMeasure_X_add_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-x-add-c.md) | 193 | `result-track:67724b2964bf1cbdfc4386ad5dafc2bd108fd7363ea4120b9b89fb76b2659a33` |
| 28 | `theorem` | [mahlerMeasure_C_mul_X_add_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-c-mul-x-add-c.md) | 197 | `result-track:d6adfbc54b2ce829629100a478900121b62038960aafb79f5e9b48bd4df1c811` |
| 29 | `theorem` | [mahlerMeasure_of_degree_eq_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-of-degree-eq-one.md) | 204 | `result-track:7cfba65476967bdfe79b8258436bd55256aac9b3fbcca0c0881ed1738c68d2ec` |
| 30 | `theorem` | [logMahlerMeasure_eq_log_leadingCoeff_add_sum_log_roots](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/logmahlermeasure-eq-log-leadingcoeff-add-sum-log-roots.md) | 212 | `result-track:4cdd89c1bfc14ce737348d4002867cdd233a98f9d07f216132567e95e53620f5` |
| 31 | `theorem` | [mahlerMeasure_eq_leadingCoeff_mul_prod_roots](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-eq-leadingcoeff-mul-prod-roots.md) | 224 | `result-track:c01a0e9deb3a3750569f02dc2039e13b615f0746fb1d4a6f2ae7d28274bd6de7` |
| 32 | `lemma` | [one_le_prod_max_one_norm_roots](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/one-le-prod-max-one-norm-roots.md) | 239 | `result-track:e45bbfe26d97021a15e3c30fb9d8f3fa897956b62608a793acdc3ae3b62ee1ac` |
| 33 | `lemma` | [leadingCoeff_le_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/leadingcoeff-le-mahlermeasure.md) | 242 | `result-track:f57525392a0dcce233361a212dad0cde0722db56235c9d3b7071104eddab519a` |
| 34 | `lemma` | [prod_max_one_norm_roots_le_mahlerMeasure_of_one_le_leadingCoeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/prod-max-one-norm-roots-le-mahlermeasure-of-one-le-leadingcoeff.md) | 247 | `result-track:e94d0c8ca1b620c8e4e233b4d8cf9a4ed2703ef01667eb5ba834a81496010133` |
| 35 | `lemma` | [one_le_mahlerMeasure_of_one_le_norm_leadingCoeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/one-le-mahlermeasure-of-one-le-norm-leadingcoeff.md) | 256 | `result-track:d6d59254a0ba8d724ad17ab98590486bde618fe027303849eecc6db8ffd8d00c` |
| 36 | `theorem` | [mahlerMeasure_le_sum_norm_coeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-le-sum-norm-coeff.md) | 263 | `result-track:23cc225192c62d2de1690dc31960e67c20fd7a596bc21fe96608b134ee26ca79` |
| 37 | `theorem` | [mahlerMeasure_le_sqrt_sum_sq_norm_coeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-le-sqrt-sum-sq-norm-coeff.md) | 300 | `result-track:ae42a343e5f2b316deccc2d8e622b6d431d4dd593742b2408927205b0bce2052` |
| 38 | `theorem` | [mahlerMeasure_le_sqrt_natDegree_add_one_mul_supNorm](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mahlermeasure-le-sqrt-natdegree-add-one-mul-supnorm.md) | 346 | `result-track:e1292d52b59aa2ce855d2f1b695b705d6deabb573161c8bbb05e1bfeb150f31b` |
| 39 | `theorem` | [norm_coeff_le_choose_mul_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/norm-coeff-le-choose-mul-mahlermeasure.md) | 359 | `result-track:728b2f5c779569cd1ed5868fa245b06b451f2193e0bc787c309d1f1cc682de23` |
| 40 | `theorem` | [supNorm_le_choose_natDegree_div_two_mul_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/supnorm-le-choose-natdegree-div-two-mul-mahlermeasure.md) | 407 | `result-track:9261b2f7463f11bc4bdd741319b4d0dcabc6e045b3f7f6786bcf20ffd101cd9e` |
| 41 | `theorem` | [norm_coeff_le_choose_mul_mahlerMeasure_of_one_le_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/norm-coeff-le-choose-mul-mahlermeasure-of-one-le-mahlermeasure.md) | 429 | `result-track:f76fea46ca7406166eeedd93d0d040048196f615718ecaa1f8df56949b80c38e` |
| 42 | `def` | [mapMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure.md) | 459 | `declaration-track:0caf8a33f119475e878021594b27f164fb2f12e639cb6c8d4cf064de7382fae2` |
| 43 | `lemma` | [mapMahlerMeasure_eq](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure-eq.md) | 461 | `result-track:66445b4472aa1a096bc7f1cdd4484f115e67db70e5b2c21a9d72f13d8150f153` |
| 44 | `lemma` | [mapMahlerMeasure_mul](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure-mul.md) | 463 | `result-track:318705c129e8841c8e6a321a0fa979444ed165e29618109741185c2862bc4ce7` |
| 45 | `lemma` | [mapMahlerMeasure_nonneg](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure-nonneg.md) | 467 | `result-track:b4da66a488ed2dd2365ba0b4372c2aeb04562b3770a1742794d9d50b8e2dd9a1` |
| 46 | `lemma` | [mapMahlerMeasure_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure-zero.md) | 471 | `result-track:726c31c238f4620ce7a6f798610c633525f8fc5a9d7b5c68dfeecf03262ecbd8` |
| 47 | `lemma` | [mapMahlerMeasure_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure-one.md) | 475 | `result-track:cef304a7ebdeec2eac723ee62bf655d54aefccdfdd08a4b13983f25e3db12503` |
| 48 | `lemma` | [mapMahlerMeasure_const](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure-const.md) | 480 | `result-track:d8ab88e8cd42ac894848a95c6c8f01520bc581b4d24fd8014b8263e33c818d67` |
| 49 | `lemma` | [leadingCoeff_le_mapMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/leadingcoeff-le-mapmahlermeasure.md) | 483 | `result-track:174ac54ca82c7236f3b69d041084ce5163d2ea40f472696f0f70945835a8c14e` |
| 50 | `lemma` | [Monic.one_le_mapMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/monic-one-le-mapmahlermeasure.md) | 494 | `result-track:f82edb2a1f9e55f6a9d90a0d529a4925ea05fc6aa6d6596d7443bcb09cbbbb57` |
| 51 | `theorem` | [mapMahlerMeasure_pos_of_ne_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure-pos-of-ne-zero.md) | 499 | `result-track:e5dd37b0f486ca8b8f0193d8b98e886bd422186866a42e5f73b611d9d8055c70` |
| 52 | `theorem` | [mapMahlerMeasure_le_sum_norm_coeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/mapmahlermeasure-le-sum-norm-coeff.md) | 503 | `result-track:8477c7f33e5e6d111e0d81ee2e4a152dbffdb6bcfb23a630fe1a9e9b3d68e96b` |
| 53 | `theorem` | [norm_coeff_le_choose_mul_mapMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasurePublic.lean/declarations/norm-coeff-le-choose-mul-mapmahlermeasure.md) | 510 | `result-track:b7e829694063c51b3a9c41f1f4b23f3335a7830b350d1f0ea10c1abc2783c125` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6879406289de5c4c22f184aee4e95f7fe314bfe12afec587d92da7126c03f3f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
