# Verification target: Vector Measure Set Integral Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c73e89f84ce475e59e63393bd479f8e5c8ce97d",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c73e89f84ce475e59e63393bd479f8e5c8ce97d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean.json)

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
| 1 | `theorem` | [IntegrableOn.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrableon-mono.md) | 41 | `result-track:96a366515294b924e9030c2c78d2fbc5e06903fe47167e482a13699b28bc0a58` |
| 2 | `theorem` | [IntegrableOn.union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrableon-union.md) | 48 | `result-track:b84e072f24ad647dc4d9e87b000a1420f41a680b2d7f7aebe516f387105f0f44` |
| 3 | `theorem` | [IntegrableOn.empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrableon-empty.md) | 57 | `result-track:511551f77077eb8bfc750912b5f628bdf2dd886462387579a5b05ddac97bd263` |
| 4 | `theorem` | [IntegrableOn.biUnion_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrableon-biunion-finite.md) | 60 | `result-track:9660dfea8c338f1969b2b3c911bf899a3332fccd5a3d7331f02e81be5b4ceae8` |
| 5 | `theorem` | [IntegrableOn.biUnion_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrableon-biunion-finset.md) | 70 | `result-track:5e4c357c7efb620fd78d6fa8500bfd316c4163518daabf2fb793c3f9089bfbcf` |
| 6 | `theorem` | [IntegrableOn.iUnion_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrableon-iunion-finite.md) | 75 | `result-track:3296ba8fcd7f231b8a1bdf7096f19e6629d1f57534846182b335b81961e51d20` |
| 7 | `theorem` | [integrableOn_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrableon-univ.md) | 82 | `result-track:907e52e0b0388d1bed022e889d45df90d3d1950ae8342fd7d1d3b80f6acc7fa5` |
| 8 | `theorem` | [Integrable.integrableOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrable-integrableon.md) | 85 | `result-track:5116208c44524a3b3e70470f3f531e7e47c138578482b789af5115692af52e43` |
| 9 | `theorem` | [integrable_indicator_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrable-indicator-iff.md) | 89 | `result-track:a154912a7b270b15483cbadb071b0560444809d7f878e9ae36618d4feda2bb40` |
| 10 | `theorem` | [IntegrableOn.integrable_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrableon-integrable-indicator.md) | 94 | `result-track:79dcf5c9ad9a95b27a7d78bdc2ddb35cad9828ca7cf669efea110ce798200cfc` |
| 11 | `theorem` | [setIntegral_eq_zero_of_not_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-eq-zero-of-not-measurableset.md) | 101 | `result-track:02d48949542e43ba99f83b9234dbf4e6e3de4ef328c5c3509294664c1902d774` |
| 12 | `theorem` | [setIntegral_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-congr-ae.md) | 105 | `result-track:311b087ff0100fcf4ccfdb6b314e5fa24da14433d7809255a0ba0462ac2bb302` |
| 13 | `theorem` | [setIntegral_congr_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-congr-fun.md) | 113 | `result-track:2cc238e2f6b5c1d3c46f06124d4ab34f6222a51bf4bb704a7c6e06e1e9e538bd` |
| 14 | `theorem` | [setIntegral_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-union.md) | 117 | `result-track:9cb4fe3d0360e2f51c03047a2928c79b81f7f9e1d649e5ad921f4088de922cb4` |
| 15 | `theorem` | [setIntegral_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-sdiff.md) | 122 | `result-track:08076483b9361761912e97d837149df5c5ace613f801ca6e3172e288c7a613a0` |
| 16 | `theorem` | [setIntegral_inter_add_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-inter-add-sdiff.md) | 128 | `result-track:323d207b438e324349a7fead6b9b17b9ce319df099c7887744d7d8161a9ce3c7` |
| 17 | `theorem` | [setIntegral_biUnion_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-biunion-finset.md) | 134 | `result-track:4e927f45c29cb7f0e4c31ee23b43f00bcb02107e40ac8d1068085c78028c7eca` |
| 18 | `theorem` | [setIntegral_iUnion_fintype](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-iunion-fintype.md) | 153 | `result-track:8f4e212377a3539fae18cb9bac90c519046b161651e49c239a6435d039ec225a` |
| 19 | `theorem` | [setIntegral_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-empty.md) | 161 | `result-track:f83971c36e5d0d227f2ae92ed96a108b671b953fba99e5abb9a71dd5f44d4551` |
| 20 | `theorem` | [setIntegral_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-univ.md) | 163 | `result-track:91c74bb61062af6c88daabdf8937221692613ab369c6785f42d7827d67794170` |
| 21 | `theorem` | [setIntegral_add_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-add-compl.md) | 165 | `result-track:4afa316e190b6ab4aee1c2066ebe2df47c97d4263fbd3c30490799bbd28acd50` |
| 22 | `theorem` | [setIntegral_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-compl.md) | 170 | `result-track:33a84db97135a6aee9ca00a3e4d7c8c598619760db13ac0807af772d92a06c01` |
| 23 | `theorem` | [integral_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integral-indicator.md) | 177 | `result-track:71fb1d312a419a3786a219e105359c81fbe30f682d430bd452dc1c9994c6e696` |
| 24 | `theorem` | [setIntegral_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-indicator.md) | 195 | `result-track:70daddea5721dc94b1038ee21b63105cb39706240f2b55c03cb23904fd7a75e8` |
| 25 | `theorem` | [setIntegral_congr_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-congr-set.md) | 199 | `result-track:cc0678f79fc7d7573225c4e09b8628aae1dc9cc4c399f841634d5865f375f2d2` |
| 26 | `theorem` | [integral_piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integral-piecewise.md) | 209 | `result-track:d8da287280975f39baf8a8510f6927988eeb945a2cb0c608c5a4bd7c3c611ce8` |
| 27 | `theorem` | [setIntegral_eq_zero_of_ae_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-eq-zero-of-ae-eq-zero.md) | 216 | `result-track:06b61af5ea4b7c906e2501b8dc1c7d327623782630f1b8cefafa17bf2af6f1b0` |
| 28 | `theorem` | [setIntegral_eq_zero_of_forall_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-eq-zero-of-forall-eq-zero.md) | 238 | `result-track:5a1c76ec14248a51912cd9de09ceb3a16abe73d9c829f30761748bc825b16a4e` |
| 29 | `theorem` | [frequently_ae_ne_zero_of_setIntegral_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/frequently-ae-ne-zero-of-setintegral-ne-zero.md) | 242 | `result-track:e7cc2fc8972fcdc3bdca1251b1b17706993bc19b2700ad549f26c6a46b9c434a` |
| 30 | `theorem` | [exists_ne_zero_of_setIntegral_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/exists-ne-zero-of-setintegral-ne-zero.md) | 250 | `result-track:659bdddd00cdc47b5ab542ef69a6d52451139fe4819085787225e8254ee73e35` |
| 31 | `theorem` | [setIntegral_of_variation_apply_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-of-variation-apply-eq-zero.md) | 254 | `result-track:f900d42c108eb7acde71f6a5e38e110b3c1a1abb40885edb8a3591bdeb0e4ed6` |
| 32 | `theorem` | [setIntegral_dirac'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-dirac.md) | 265 | `result-track:bbabed5b44e4f363e2174a1174c34616f39c88fd37f75eeefba1254bdf8378d1` |
| 33 | `theorem` | [setIntegral_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-dirac-source-edition-2.md) | 273 | `result-track:e4c6206c47fa86f5dde456d89d02ae80fbe3d091407d9be1804c00abdac5acd0` |
| 34 | `theorem` | [integral_singleton'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integral-singleton-source-edition-2.md) | 281 | `result-track:c3f7cb5850785f9106c8da114058e4d6bd5cb0d9e2284dee3a2491a9707ca3ae` |
| 35 | `theorem` | [integral_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integral-singleton.md) | 285 | `result-track:726c450478cbbdf09d18694b039832bf2542082e1afd9c173a9feacce1770565` |
| 36 | `theorem` | [setIntegral_union_eq_left_of_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-union-eq-left-of-ae.md) | 289 | `result-track:ab54c14c9780862bc26650f1d306ef35103e6c73d8c7e05af4d59dcaae69d6a6` |
| 37 | `theorem` | [setIntegral_union_eq_left_of_forall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-union-eq-left-of-forall.md) | 300 | `result-track:74af276033d9af63286fc1082abed838b792942f9996879b85c9a063f5ccab99` |
| 38 | `theorem` | [setIntegral_eq_of_subset_of_ae_sdiff_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-eq-of-subset-of-ae-sdiff-eq-zero.md) | 306 | `result-track:168919cc3ed3760c6435a56a839bfe29941d7ce6dc4ee0c77fb6f0bef26c9f7b` |
| 39 | `theorem` | [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-eq-of-subset-of-forall-sdiff-eq-zero.md) | 313 | `result-track:64ff0b7a8f1f5d61fe370b5e1846f8488763f6fb3c237324414c26faef24bfad` |
| 40 | `theorem` | [setIntegral_eq_integral_of_ae_compl_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-eq-integral-of-ae-compl-eq-zero.md) | 322 | `result-track:07ad71daaaf58ad1fd2fd2a9cda627bdb3dc6e9871a1380fea2b14c5b25759f4` |
| 41 | `theorem` | [setIntegral_eq_integral_of_forall_compl_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-eq-integral-of-forall-compl-eq-zero.md) | 333 | `result-track:da08eb0663106539f2f6371085cb195a8b6739decd664d66b94c9b80abce6efc` |
| 42 | `theorem` | [setIntegral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-const.md) | 338 | `result-track:cf79614334354df45c1ec29012b5e80f9bca8803cb6526fdccf487a4b167cbf4` |
| 43 | `theorem` | [integral_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integral-indicator-const.md) | 347 | `result-track:99af8ad6624c072fcff123978c03a714936dd08e984680283f249a91ec28ffee` |
| 44 | `theorem` | [setIntegral_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-map.md) | 353 | `result-track:630c8cfd2e85bc971e176de86f3da7a94f31c16a8b6398066655c0b58ad1f42e` |
| 45 | `theorem` | [Vector Measure Set Integral Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-map-vectormeasure-source-line-360-occurrence-2.md) | 360 | `result-track:df02a3ac1ad2647528f56e687177fd1fb2e24b54a7c3214925d63d1934eec538` |
| 46 | `theorem` | [Vector Measure Set Integral Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-map-vectormeasure.md) | 365 | `result-track:2d27e74a6ce06223d54602cd3fec0f2ecbf2f8e8bfab1aab26adbebd9ed4c4e1` |
| 47 | `theorem` | [setIntegral_map_equiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-map-equiv.md) | 372 | `result-track:378dee2e25be1883a58cfe90f44fbbb722974425496aeb1e1317f6a3154a5644` |
| 48 | `theorem` | [continuousLinearMap_apply_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/continuouslinearmap-apply-integral.md) | 377 | `result-track:9f0956fd43c2dbc2157aedf3aba45895b1b6f3665cdfb25ed87a38986095a593` |
| 49 | `theorem` | [integral_continuousLinearMap_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integral-continuouslinearmap-comp.md) | 394 | `result-track:c1f542f11e547f55227a04f2e758d146847baad2f585814a07ab4058fb40ad5b` |
| 50 | `theorem` | [enorm_setIntegral_le_of_enorm_le_const_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/enorm-setintegral-le-of-enorm-le-const-ae.md) | 423 | `result-track:cfa44c4d6d73a9f1c4e23c3d741d7bd6a3f0ab3f2589ad624da6cee2d648139a` |
| 51 | `theorem` | [enorm_setIntegral_le_of_enorm_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/enorm-setintegral-le-of-enorm-le-const.md) | 433 | `result-track:33c0df58a6333fee6ac7cb52fb410985787cded84d6097ea1876625d35aefb18` |
| 52 | `theorem` | [norm_setIntegral_le_of_norm_le_const_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/norm-setintegral-le-of-norm-le-const-ae.md) | 442 | `result-track:70e3fe866b55cb30208b2ff7d7acb8722409cdd373bc6aa13e69c752435c5259` |
| 53 | `theorem` | [norm_setIntegral_le_of_norm_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/norm-setintegral-le-of-norm-le-const.md) | 458 | `result-track:53a830438cd72f978e41c502797501fc6f3862c4c8d01311d1537411ab2e1134` |
| 54 | `theorem` | [enorm_setIntegral_le_lintegral_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/enorm-setintegral-le-lintegral-enorm.md) | 471 | `result-track:18e0f98c9b7c64ab07d3fe9a608e25cb0e3cd617d54b5c68abd66f943f80723d` |
| 55 | `theorem` | [enorm_setIntegral_le_lintegral_enorm_transpose](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/enorm-setintegral-le-lintegral-enorm-transpose.md) | 475 | `result-track:d30d1da342cc4efbad9a6997f1d07fce35515b9fc1ec8f3a00b9496b8836a772` |
| 56 | `theorem` | [hasSum_setIntegral_iUnion_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/hassum-setintegral-iunion-nat.md) | 479 | `result-track:a7924aa0900c21059878afecce705cc04b5c951ef8f472eb2fb4d149ada05e26` |
| 57 | `theorem` | [hasSum_setIntegral_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/hassum-setintegral-iunion.md) | 524 | `result-track:cf6c023f62d315e41f04e293c5432ab2665c3a674414d92b7c666b27d3df7dba` |
| 58 | `theorem` | [integral_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integral-iunion.md) | 540 | `result-track:76ff57a6c57d2f2dc1c70701955cee346f0e5c2c66d3d4359597284c7e5f22e9` |
| 59 | `theorem` | [setIntegral_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/setintegral-tosignedmeasure.md) | 545 | `result-track:7da6138143546a1e6c2eb72de16b4101a15873bced47fb508a85a00ff6a32991` |
| 60 | `theorem` | [Integrable.tendsto_setIntegral_nhds_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/integrable-tendsto-setintegral-nhds-zero.md) | 552 | `result-track:930216b6a87ffcc5cff2b574544010e8678bdacfd434041a2fa44e3ebd328d8d` |
| 61 | `lemma` | [tendsto_setIntegral_of_L1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/tendsto-setintegral-of-l1.md) | 570 | `result-track:bd7c4917a79ea2f7fcd75b5b8845e68616f9a115897fbc01251abcd25b6794aa` |
| 62 | `lemma` | [tendsto_setIntegral_of_L1'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralNamespacedPublic.lean/declarations/tendsto-setintegral-of-l1-source-edition-2.md) | 587 | `result-track:d03f6a0dcdb0af0d8a984f846ca219615b9c4447d83b5bbb5b2d8636651bfa73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=946f03c4cba9f395687c9887a0eb6387c3cad8597d2ff20cfb2b5dda5dc2ca84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
