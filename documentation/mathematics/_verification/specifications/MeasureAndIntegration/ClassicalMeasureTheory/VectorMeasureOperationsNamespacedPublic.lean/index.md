# Verification target: Vector Measure Operations Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9205c48eb761706cc18537e786739a6673faaa89",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9205c48eb761706cc18537e786739a6673faaa89`.

Source path: `GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean.json)

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
| 1 | `def` | [toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure.md) | 52 | `declaration-track:48b94c79fa7e14672646f399b880e99e070930e926f18fe0aef201a09668deae` |
| 2 | `theorem` | [toSignedMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure-apply.md) | 63 | `result-track:f3b08266c12a4ad248a47bf9e3180479fc4082d2fbb41a4df6d0b8a122ab88aa` |
| 3 | `theorem` | [toSignedMeasure_apply_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure-apply-measurable.md) | 66 | `result-track:b95b5ad1575d52e9dce710f376f5bc83a8b07c342518078970d65e489b516c86` |
| 4 | `theorem` | [toSignedMeasure_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure-congr.md) | 72 | `result-track:8ff3302e6ef6c74d6d7f3dff9bb8749d09c8704cf71bf6b4b14bab3332f50a4c` |
| 5 | `theorem` | [toSignedMeasure_eq_toSignedMeasure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure-eq-tosignedmeasure-iff.md) | 76 | `result-track:ae005355f49ba00bdbd7b29f9f1c9bd07f9490fca054eb65c58633f17a647e05` |
| 6 | `theorem` | [toSignedMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure-zero.md) | 86 | `result-track:71c903b28e4127e11e3ad2c9260a0905a2515bee553ee2a53a9f7a7cda7ca167` |
| 7 | `theorem` | [toSignedMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure-add.md) | 91 | `result-track:d16dc779ab1a923c69c06c12b21dd59d6c9172ebcde05d179afaab78e3968c07` |
| 8 | `theorem` | [toSignedMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure-smul.md) | 99 | `result-track:555f41d4b8678aa0b04587cecc513071a8b1d82b6a024ce3180e0f96fff83829` |
| 9 | `def` | [toENNRealVectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/toennrealvectormeasure.md) | 108 | `declaration-track:c08842f7a96e7d9807cfcdf2e6bad12aa7426eea658947c452aae2dc3c9777a4` |
| 10 | `theorem` | [toENNRealVectorMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/toennrealvectormeasure-apply.md) | 119 | `result-track:ea51d722cc7388e20c89e2b719ac67403ffe68f63f6734e5ed3160eb297ffaf5` |
| 11 | `theorem` | [toENNRealVectorMeasure_apply_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/toennrealvectormeasure-apply-measurable.md) | 122 | `result-track:c1fa27b6878fcdab349f073319f5c9b08b55db310ec731a1e17bd64b033889b3` |
| 12 | `theorem` | [toENNRealVectorMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/toennrealvectormeasure-zero.md) | 127 | `result-track:0aeadb247ebc9d3b18d942e46058d6cc0e22d32b1b10ee20c9710c509a192087` |
| 13 | `theorem` | [toENNRealVectorMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/toennrealvectormeasure-add.md) | 132 | `result-track:9005624dc7ec667c92d6eeb1661d63c9393f2c048dbf68e83799d8879fad1773` |
| 14 | `theorem` | [toSignedMeasure_sub_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/tosignedmeasure-sub-apply.md) | 138 | `result-track:9fdc4a6e996b52df70ff338ac357817eae171dcbd400c4f007e8907124bed3ec` |
| 15 | `def` | [ennrealToMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/ennrealtomeasure.md) | 153 | `declaration-track:f4a8d0bd5c111e66d40b140e09fbef5b025faa629c6d19a410486f46e9006a00` |
| 16 | `theorem` | [ennrealToMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/ennrealtomeasure-apply.md) | 156 | `result-track:9003598b11b4a38262e1f42e1d19c49bcc9085363f9b918db10459e958940c37` |
| 17 | `theorem` | [ennrealToMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/ennrealtomeasure-zero.md) | 161 | `result-track:53364508d31ce81a28d6f8ccb4481c7d66c9dc22f04389438a1e90951ad15d29` |
| 18 | `theorem` | [Vector Measure Operations Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/toennrealvectormeasure-ennrealtomeasure.md) | 165 | `result-track:76afcac5d811f71dabe68c9752c16c48df8614b6f791dd201be07f9601986bac` |
| 19 | `theorem` | [ennrealToMeasure_toENNRealVectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/ennrealtomeasure-toennrealvectormeasure.md) | 171 | `result-track:cb0de3a50b8d1583d87dbb6e5579393aff3ce63bfa1c90a8cd729e4c9ee172bf` |
| 20 | `def` | [equivMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/equivmeasure.md) | 179 | `declaration-track:44a578a539516a14a3dfbc8bf17d89d5c951725d972fb04508446f4b572b4b1f` |
| 21 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/map.md) | 195 | `declaration-track:6db915674e2488b532da26bfbf80bbd751ea11bddc1648895a4133866a3bb1fb` |
| 22 | `theorem` | [map_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/map-not-measurable.md) | 207 | `result-track:b82d83b7796cd9a6c758d911cff7508b07ebe279e0ee0913ad65fa3e1171fe82` |
| 23 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/map-apply.md) | 210 | `result-track:6daf44f3c464c2887e29a46ad5b92d864b4ee360cdff8c53b40ddfbf7c22a3cf` |
| 24 | `theorem` | [map_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/map-id.md) | 216 | `result-track:39776afdf847d10d6796eafb516d2334caf9a6c117e02a55eeb5e76d3c94ae43` |
| 25 | `theorem` | [map_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/map-zero.md) | 220 | `result-track:e97a924fb22afaea2a61370ffda16eddf7d9b0febaf9e6f0c70f8a7ede5961bd` |
| 26 | `def` | [mapRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/maprange.md) | 232 | `declaration-track:1b036ff3cb642a346981dc19a7b172585f410b68454b0d448126e5a8cacbece3` |
| 27 | `theorem` | [mapRange_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/maprange-apply.md) | 239 | `result-track:88ddcbdd53d1c1f7b195e8347170326f12f6d2a5c6c016e934d6bad97c38a7b0` |
| 28 | `theorem` | [mapRange_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/maprange-id.md) | 243 | `result-track:1e9976441bc91c773405afcab51d1f61bcb46f175b373417d0317269b52fef90` |
| 29 | `theorem` | [mapRange_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/maprange-zero.md) | 248 | `result-track:023f5a929a983d58656c36e6cef98df22d4de5f24d86aff34fba04899fae0cc3` |
| 30 | `theorem` | [mapRange_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/maprange-add.md) | 258 | `result-track:60cdf03620551324a34bb3c7592e388faf7b7c1079ea559148f97fdcd432612a` |
| 31 | `def` | [mapRangeHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/maprangehom.md) | 265 | `declaration-track:374040b6a827fbe9d531b4369fe0ec94736856420d809a66cba0fee2fcd5eeca` |
| 32 | `theorem` | [mapRange_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/maprange-smul.md) | 281 | `result-track:adcb098168bc9f6f98573667e788b642b5ed69225fdf4c4cc4d6c2307bef0a32` |
| 33 | `def` | [mapRangeL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/maprangel.md) | 289 | `declaration-track:cdefca1de22822ea7d2261220f428e583bc7acf76dfdcb26d29a4731641913f6` |
| 34 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-source-edition-2.md) | 303 | `declaration-track:90a93bc16b1d82c4283a944f7b89baabe45b4451ac351c4a59eb49a453a8186e` |
| 35 | `theorem` | [restrict_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-not-measurable.md) | 317 | `result-track:ea4b951401277907cfff0578f21e0f95039ab5724f5df32fd0d358abf8938436` |
| 36 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-apply.md) | 320 | `result-track:c3c10c3044d0895097fba0d29233ad6fd5c6469828eebb1293cde6a8182d699a` |
| 37 | `theorem` | [restrict_apply_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-apply-univ.md) | 325 | `result-track:c4737393466c7c9f7e80740f487f0aa5f77239229f983863c6be3ec3eba30d9b` |
| 38 | `theorem` | [restrict_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-eq-self.md) | 331 | `result-track:9ef8b802498f15c131f2ec77271000a9401fba981fedf5317f751cb1c6f70da0` |
| 39 | `theorem` | [restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-empty.md) | 336 | `result-track:2826b320c03495b7f71975c2f13c61a8b8764ba7553def07db6dbed914d0a887` |
| 40 | `theorem` | [restrict_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-univ.md) | 341 | `result-track:beac20ec8456c897abb8ef95e1ec8d0a7fe511f7f08ce8c6fdc8ef213b0036d0` |
| 41 | `theorem` | [restrict_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-zero.md) | 345 | `result-track:df2034bdcf9b8865ba023ea6b74a36a39628dd21bd10e4f0517ee9db149df562` |
| 42 | `theorem` | [restrict_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-dirac.md) | 351 | `result-track:5fe6a79f3a39a57673cd3c33776e6771edcaafe5da76e9a7e111cb43e606b37d` |
| 43 | `theorem` | [restrict_dirac_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-dirac-of-mem.md) | 359 | `result-track:dbaa9d334d3262888a7ee62102d92bdbec9ddcf01c1d5b35f65dbdf1def7b499` |
| 44 | `theorem` | [restrict_dirac_of_notMem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-dirac-of-notmem.md) | 365 | `result-track:fb150c3fdb39c9c2ce0ba8a663fae67105a2b9fb8cbd8cf011a440ba57983d0d` |
| 45 | `theorem` | [restrict_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-singleton.md) | 373 | `result-track:c891d38e167299c6ea31a5bca786ffb353952a3b7ff4a069bbe91630058cd51c` |
| 46 | `theorem` | [restrict_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-restrict.md) | 379 | `result-track:0317b1b6e5bdd025ebe1d874cd00b3d831d508d4721d58ab3e7ad27ba0d66548` |
| 47 | `theorem` | [restrict_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-map.md) | 384 | `result-track:a1f599258f147801213b4d65fa02547ae3dd8b7befad8ef1bcb95864dd0e302e` |
| 48 | `theorem` | [restrict_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-tosignedmeasure.md) | 389 | `result-track:3189f47f10303d6c6d20285d5a09b4692fe31aa0b97e2ac50b5d82c4e89ea30c` |
| 49 | `theorem` | [map_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/map-add.md) | 400 | `result-track:50c8562d622f96bb1172875cdef8d7d8df7630b0065018e69709955edfde3494` |
| 50 | `def` | [mapGm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/mapgm.md) | 408 | `declaration-track:4d034b516c2869f38eb824e6e0387705e0715caee56a1add9b788bbc76ef9ca5` |
| 51 | `theorem` | [restrict_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-add.md) | 414 | `result-track:68919fa87f9d05fe9b56bcfc565a29de7ed3aecfb7f5c52b20d9702143363753` |
| 52 | `def` | [restrictGm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrictgm.md) | 423 | `declaration-track:9dc269d1333964f73fc1977505afe24be11c59c1cebd8e80c0f3058b0fb3186c` |
| 53 | `theorem` | [restrict_add_restrict_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-add-restrict-compl.md) | 437 | `result-track:5854b9cfdd75c17f74a559ba0c1e6f65e70f25db32e9df6621b9427d8332ca82` |
| 54 | `theorem` | [restrict_inter_add_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-inter-add-sdiff.md) | 445 | `result-track:7a1efa7277f083cf041b6c6353d377bf49b322b09537f4ecedef6183681b1fd8` |
| 55 | `theorem` | [restrict_union_add_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-union-add-inter.md) | 455 | `result-track:922dbc4ccb2fd729c6d550fbcc4746f0d011d1036caf86cc67c0c4c6909c1fc0` |
| 56 | `theorem` | [restrict_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-union.md) | 460 | `result-track:dbd9e1db757cd7f6009f44bab1f7513423417f83baf69523bb65870dce53407e` |
| 57 | `theorem` | [restrict_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-neg.md) | 471 | `result-track:4996fafa5939ceb39b645146fc7e9511fd911267c36b9ad99d903c8a25fafae5` |
| 58 | `theorem` | [restrict_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-sub.md) | 478 | `result-track:a8d73ea1c38ed10946e7d4a25a1ec5faa11aac7abc4a8c3e65f238c7084f4965` |
| 59 | `theorem` | [map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/map-smul.md) | 493 | `result-track:f01bacbe7a738e44a85d0388adb369a83b50feb21d3a23fa716236ac4b4ae0a3` |
| 60 | `theorem` | [restrict_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-smul.md) | 503 | `result-track:c49736aef02fd966c349ad224206ba0f1ef8d73503c6385606c2455742f63cf2` |
| 61 | `def` | [mapₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/map-source-edition-2.md) | 523 | `declaration-track:ff95e8b4c9184c4d26303c446918c492a51ce21096e0bd16c92e65c93abec436` |
| 62 | `def` | [restrictₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict.md) | 530 | `declaration-track:89086b28d5af68e447d5ee6cca6f80d19fd5d13688e665b8e55ce27ed8de0047` |
| 63 | `def` | [trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/trim.md) | 545 | `declaration-track:1fb6cf6d14e4f907e81f2ac48e3dc1b21070a9812ef6bc4bdb9da10d0628e131` |
| 64 | `theorem` | [trim_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/trim-eq-self.md) | 560 | `result-track:3484b7b6dc6221b6b85e736147f63e8d358fe97d3ba48be92b4e4d431203d33e` |
| 65 | `theorem` | [zero_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/zero-trim.md) | 565 | `result-track:f91a369820dbda9d42c4ce5588977c94c3690c94f303a2c903ee6f7a9c80c2be` |
| 66 | `theorem` | [trim_measurableSet_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/trim-measurableset-eq.md) | 569 | `result-track:bdfaa8c4a76906d09d5704eac36298fb33c1744ec73190ef47b53be4e2b78df7` |
| 67 | `theorem` | [restrict_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/declarations/restrict-trim.md) | 573 | `result-track:7498dea47c313f5ca9cd56128a5481e1c63a9dd90ec2bc22cb28ebd57529ea2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5080501021bf9a2933eb76d956cadd67e12695748c3c784e07db0b08efda4f85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
