# Verification target: Average Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6295be232e94167e5402f139258de1bfc91ca6e",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6295be232e94167e5402f139258de1bfc91ca6e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean.json)

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
| 1 | `def` | [laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage.md) | 71 | `declaration-track:c9d616380c02948bbc0f292d47c0f04aaaab1d3776881769877116c08035800d` |
| 2 | `theorem` | [laverage_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-zero.md) | 107 | `result-track:69fdbf7ab6dad645c96a2761b30989d7f8f315be0d8c8846ab0b1209134d32fc` |
| 3 | `theorem` | [laverage_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-zero-measure.md) | 110 | `result-track:a753c48fd761955c69018041310a165d91b7aa986cb63d0b0669a3771a0db1d4` |
| 4 | `theorem` | [laverage_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-eq-source-edition-2.md) | 112 | `result-track:352bafcd708fdf87446135cfef865a2f78b39d188dee96d94e9030ef89cbcff9` |
| 5 | `theorem` | [laverage_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-eq.md) | 114 | `result-track:292a793daf5b2175a8b45d97782b692bf2dfb2f2f5cc540f35bae35878eea308` |
| 6 | `theorem` | [laverage_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-eq-lintegral.md) | 117 | `result-track:de68527d94372feb5317e13bef323c8d5d1eb498025b111dcedf54d0535b78ea` |
| 7 | `theorem` | [measure_mul_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-mul-laverage.md) | 121 | `result-track:be5c0b3c50a564d1080efe75fd48713938b5164087ed1457acf1bf90a5b774e2` |
| 8 | `theorem` | [setLAverage_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-eq-source-edition-2.md) | 127 | `result-track:50fe75c0b7aaf9c419500859a9a9c9651facc8145c28b00427138d50ead165f8` |
| 9 | `theorem` | [setLAverage_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-eq.md) | 130 | `result-track:1a398c10b1fa3160c493c08cd10ecd6fdf7686c6248137576432b2634c2ba82d` |
| 10 | `theorem` | [laverage_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-congr.md) | 136 | `result-track:4511cba6dfc7089d1e168a52aed92c6694de757ee736926848613927da9fabf1` |
| 11 | `theorem` | [setLAverage_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-congr.md) | 139 | `result-track:3a2c0445b405cb74b8515e3a7db6b09279fb269932b3ef8e7d3d2a5d5843d1be` |
| 12 | `theorem` | [setLAverage_congr_fun_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-congr-fun-ae.md) | 142 | `result-track:2f2e2611e4d7b1735dfaffd9c4c95a46edfd4459423ca0c42f208c5cc7b10942` |
| 13 | `theorem` | [setLAverage_congr_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-congr-fun.md) | 146 | `result-track:70c641733ac82a3155f65642362c97c01710714288d35cb0907e1e8554d26e0a` |
| 14 | `theorem` | [laverage_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-lt-top.md) | 150 | `result-track:eb30635cd9f18d87898c63a604790ab57b297750a471829c68f753b2fc8fcc70` |
| 15 | `theorem` | [setLAverage_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-lt-top.md) | 156 | `result-track:789f071182812ec7865cc4e5cbf510228ff6c7a0729b020ea348a023735228e6` |
| 16 | `theorem` | [laverage_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-add-measure.md) | 159 | `result-track:852ef126eb01c7e3b2dc8c4eab747952bae1a8df823fe57c2b549ba4735ee3df` |
| 17 | `theorem` | [measure_mul_setLAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-mul-setlaverage.md) | 171 | `result-track:98cee773d7c90cb7a377f2d15ec9ef0fca09e15f73285a6d533440e5dd9baf33` |
| 18 | `theorem` | [laverage_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-union.md) | 176 | `result-track:8dad063ea1788445fc30a7201552b57da4814481a2ffc4ca594772e51543ac08` |
| 19 | `theorem` | [laverage_union_mem_openSegment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-union-mem-opensegment.md) | 181 | `result-track:76821f0a4886e765e25ea52e36f21bb9ddcf0f1b01f5210f132c438376b8491d` |
| 20 | `theorem` | [laverage_union_mem_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-union-mem-segment.md) | 190 | `result-track:9a0be9d8c8f16a53662a627d17c096862fe57b87c0c7ced78eb9cf8d352824f8` |
| 21 | `theorem` | [laverage_mem_openSegment_compl_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-mem-opensegment-compl-self.md) | 202 | `result-track:7dedc17295208ee4fd38cd129edfb36da0f8b5e32ec9c6732675f9e17674ec22` |
| 22 | `theorem` | [laverage_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-const.md) | 210 | `result-track:e1dff50406e01b602872a6e09ddf091e86919c5712ddc263c73e89a145781f5e` |
| 23 | `theorem` | [setLAverage_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-const.md) | 214 | `result-track:fd5e30fd5e620e1d2a613e29c71cfa86476bfe2d868835d16ea5af7160037168` |
| 24 | `theorem` | [laverage_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-one.md) | 218 | `result-track:3766fc78fd1a618a84c160587b8d57602e0bb88c0d16e2d24a8c7bf61e9c0b33` |
| 25 | `theorem` | [setLAverage_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-one.md) | 221 | `result-track:b2a4658574d8cf3ae768952a17bd208297b153b7c1f91ecb7f87190cde43995b` |
| 26 | `theorem` | [laverage_mul_measure_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-mul-measure-univ.md) | 225 | `result-track:f63bf9dc9ed78364421a430508bba8196e458a9f2feb2ea889754af6a7c5a0ad` |
| 27 | `theorem` | [lintegral_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/lintegral-laverage.md) | 231 | `result-track:23d53dcc246fc9cca0465dd4ffad1325645ce00ad9f6a4e3765019d706e39c06` |
| 28 | `theorem` | [setLIntegral_setLAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlintegral-setlaverage.md) | 235 | `result-track:fdc4f3037d474bd5c21edb39224b4c4d395349026ca66410078055c1883cd973` |
| 29 | `theorem` | [laverage_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-mono-ae.md) | 240 | `result-track:b37a6659684978399bf5f7d582afcaba5452375457910f6f1e1023e17dd77790` |
| 30 | `theorem` | [setLAverage_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-mono-ae.md) | 245 | `result-track:f3c55b2ae20974d2e8bf1388e60869aa3d5caad9c55f9660eca83e7a14fc951d` |
| 31 | `theorem` | [setLAverage_le_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setlaverage-le-esssup.md) | 249 | `result-track:3ce1290efb7a7d100cedbb834d3894c684d91d055eb07dc8c952082d78defa7c` |
| 32 | `theorem` | [laverage_le_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/laverage-le-esssup.md) | 261 | `result-track:eff701ac53a8260b59557def17e081a693f8defbe2347b267c19d5207ca3d21c` |
| 33 | `def` | [average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average.md) | 279 | `declaration-track:2c575a184a734727eae84ee59731e6ef5f67c7887fba0e50058c084e6b9aa404` |
| 34 | `theorem` | [average_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-zero.md) | 320 | `result-track:12e7ca9ece48af3005c68ca8d47b264f05a0026c4a0c1d1887972441f61b6089` |
| 35 | `theorem` | [average_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-zero-measure.md) | 323 | `result-track:8c1a395d38f2499d0c834be47a4bf14a8758cbdbc61122cabc66aabd5e5cd18d` |
| 36 | `lemma` | [average_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-add.md) | 327 | `result-track:c2027d34bf95a0d41829f5b92d7e8c8838f82d0fb93a6e86b3d14d8edbc01133` |
| 37 | `lemma` | [setAverage_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-add.md) | 334 | `result-track:c38ecc0f435ed0152676f95f2c713012b7ab9268876c796fd3b7763052e1fcfa` |
| 38 | `lemma` | [average_finsetSum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-finsetsum.md) | 338 | `result-track:52f4bca9b559247b2ba0027d861dbaf8c7389defcc71d08de37e85b61efafa37` |
| 39 | `lemma` | [setAverage_finsetSum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-finsetsum.md) | 346 | `result-track:c27fb32f5b6366c528e2281b2c054d0eda892d85c35e23e6efb21806a04c928b` |
| 40 | `lemma` | [average_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-neg.md) | 352 | `result-track:3672d02771a421a3b809256a51c9ad2197c504b72faa375951a14b9c411b8482` |
| 41 | `lemma` | [average_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-sub.md) | 357 | `result-track:511c67e33db4c5f8f19cb170f7dfd721951ab8e8375ab022025c23fa380b863a` |
| 42 | `lemma` | [setAverage_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-sub.md) | 362 | `result-track:ab0a0f0d5b7d265e39d99935916a94414b108b68a4ba10203e61ce55798c8196` |
| 43 | `lemma` | [average_const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-const-mul.md) | 366 | `result-track:a0ed10d16055b98adb115d9317ee0c48622364cdf2182376c5e90d0c18de0f51` |
| 44 | `lemma` | [average_mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-mul-const.md) | 370 | `result-track:ab8d16c14e94967a1c8e59f0910c0730582db1895353b71c19f4339e5f72f393` |
| 45 | `lemma` | [average_const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-const-smul.md) | 374 | `result-track:7733a9d5a61ddbe03ae8190330824a9e31506a76404239b2d5f80adbc7662844` |
| 46 | `lemma` | [average_smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-smul-const.md) | 378 | `result-track:317436a581a1b3e99a79363c85af53b7b73da568a7ae445940599cbb0b0bb98f` |
| 47 | `theorem` | [average_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-eq.md) | 382 | `result-track:513bd3b7a518c44f482726fadf94e2a401f8bc0ff505b8baf68e1b0fc64ccbc4` |
| 48 | `theorem` | [average_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-eq-source-edition-2.md) | 385 | `result-track:9ca5898eb21b163d166a0247df84cfe03f8ee15df9629d92aee0d322ba03be0c` |
| 49 | `theorem` | [average_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-eq-integral.md) | 389 | `result-track:4bfb420c73c1bae5f87019ac4abe63de4f99ca61cfdf75af689c28ebfc34af00` |
| 50 | `theorem` | [measure_smul_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-smul-average.md) | 394 | `result-track:6bb5733b58febfb3d5cfb2262bebf1646f03843e39dcf6c78148f1ccf0bb340f` |
| 51 | `theorem` | [setAverage_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-eq.md) | 402 | `result-track:08bff96e3660628f9c95cc56059ed77ed516e2786039f1eee028e396503cb933` |
| 52 | `theorem` | [setAverage_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-eq-source-edition-2.md) | 406 | `result-track:1bee85243bd03512b10e7a25b30598abc3147a37fedbf3ed4a7939e2eea61b04` |
| 53 | `theorem` | [average_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-congr.md) | 409 | `result-track:b785e7a7279e745dadf93f5e58fb73a3fcd2d621b41c04e51d2f75e4d18eebd5` |
| 54 | `theorem` | [setAverage_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-congr.md) | 412 | `result-track:685200c6cb363b42f675e09409e7bb19d19c3d651caaf2a9932791721e88c2ce` |
| 55 | `theorem` | [setAverage_congr_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-congr-fun.md) | 415 | `result-track:bccfa7e4a4e4aef378a9f632902f3ec24a0b68c647ca48a131d9059a432be956` |
| 56 | `theorem` | [average_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-add-measure.md) | 418 | `result-track:d6928842d174da916cba3dd0868ba1b2e584c69841cdfc40372b2da3677a9ac8` |
| 57 | `theorem` | [average_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-pair.md) | 427 | `result-track:44f17276a29c83f7bed5c9f7a943ec88ee8c91ed906b723f8fef76ded762eab0` |
| 58 | `theorem` | [measure_smul_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-smul-setaverage.md) | 432 | `result-track:db30cb108d168d8ff8d27c9468f9aa7e4a40a7ac857cea6248d2ce2d31ed7eae` |
| 59 | `theorem` | [average_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-union.md) | 437 | `result-track:69048157b47a0234350b72ae9da581ee68e764d37d8c0a5c0c07ca8600d8733b` |
| 60 | `theorem` | [average_union_mem_openSegment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-union-mem-opensegment.md) | 446 | `result-track:0ebc4c3b2cd6704429d31f3dcbe54fbaced17434bfc6f45216ddec18e0a43689` |
| 61 | `theorem` | [average_union_mem_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-union-mem-segment.md) | 455 | `result-track:21c87edb43eb8aaef7d58be8674da921de1471d0e2b95326083b0de276dc9b8e` |
| 62 | `theorem` | [average_mem_openSegment_compl_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-mem-opensegment-compl-self.md) | 471 | `result-track:b6aef0c356bbc666f61c17935ecc4c0eab56fc8346f0d38f752fb60cd96f1fa8` |
| 63 | `lemma` | [average_count](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-count.md) | 478 | `result-track:7dc23ca4321ff1143f7112825d8a4e052769a160d510e3948225bb474ae51095` |
| 64 | `lemma` | [average_nonneg_of_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-nonneg-of-ae.md) | 486 | `result-track:d9c209ba98f9acb9d1383ac0c11213425c7da787b357caa42cf85b107814e3a1` |
| 65 | `lemma` | [average_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-nonneg.md) | 489 | `result-track:3a8c2c34eeb94c0f9215bdff0f3d5470e0f1cbf86a0e8f915004b08715b5cb2b` |
| 66 | `theorem` | [average_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/average-const.md) | 496 | `result-track:3fba5a0f1f1276e7d3c7a300e6b6a296ef33459b5d79666bd3bf465c6c29b0c2` |
| 67 | `theorem` | [setAverage_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-const.md) | 500 | `result-track:a605d0db7c45cb85286cd03879b6b798f9a61a834ae23f8188d54bc314e1298d` |
| 68 | `theorem` | [integral_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/integral-average.md) | 504 | `result-track:0761c6d4ce4b870f7a089fe820a73ea34ab5d63fa880a072017eeeec50ed8fcd` |
| 69 | `theorem` | [setIntegral_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setintegral-setaverage.md) | 507 | `result-track:4a71fd7dc16f714cd6ee9c35da5f27bc5d6c9160e69f8d952e108d1808765944` |
| 70 | `theorem` | [integral_sub_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/integral-sub-average.md) | 511 | `result-track:2251c098daf7727e69ac045e7aaddb1100525eb77258749e7fb8d6ec6ea4fc09` |
| 71 | `theorem` | [setAverage_sub_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setaverage-sub-setaverage.md) | 519 | `result-track:0d8d807b954989770d647f92081cb22fb069a146f1ac72983bf34ce54ea59f6d` |
| 72 | `theorem` | [integral_average_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/integral-average-sub.md) | 524 | `result-track:527d8018108879129769033c2150f76df6a0424040b664f7aaaa3fe01cec9331` |
| 73 | `theorem` | [setIntegral_setAverage_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/setintegral-setaverage-sub.md) | 528 | `result-track:13ca7a6c538f6432ed32322cf0e9b5a29411a90a9aff3478c0439c70f656e24b` |
| 74 | `theorem` | [ofReal_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/ofreal-average.md) | 535 | `result-track:267391df5365e4e7091469e965789c330a2de5a2462f563479ea3335e5530bcb` |
| 75 | `theorem` | [ofReal_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/ofreal-setaverage.md) | 543 | `result-track:0850666b53166b3289d4aea79bc45889b995f26b56784d1a1858ef0ed4e4688e` |
| 76 | `theorem` | [toReal_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/toreal-laverage.md) | 547 | `result-track:2f21707667dcbb63af488b6a32cb876ad900ff03d4724f37b545b051af4542f9` |
| 77 | `theorem` | [toReal_setLAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/toreal-setlaverage.md) | 552 | `result-track:70a3f13db78fb02d78cc1d9d0632922960465a3de02c24dbf9fef26610aefc4a` |
| 78 | `theorem` | [measure_le_setAverage_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-le-setaverage-pos.md) | 564 | `result-track:d2a25463fefc2dd1bfba1de3134df039d15f1e17e7055233fef3c453ff95b450` |
| 79 | `theorem` | [measure_setAverage_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-setaverage-le-pos.md) | 584 | `result-track:bc9b5986b05eedb885e35a2e771a3621b5420f51755d739b0794180d04820be3` |
| 80 | `theorem` | [exists_le_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-le-setaverage.md) | 589 | `result-track:6b461e9fd274a9f8e55b849220b6d33458c5292add6847e31ca7e454bbae40db` |
| 81 | `theorem` | [exists_setAverage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-setaverage-le.md) | 595 | `result-track:c5c026a0dec09a8c905913d1d0ad20dc41870f5fcf46ff3d69584aed3e818dd7` |
| 82 | `theorem` | [measure_le_average_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-le-average-pos.md) | 606 | `result-track:1579c7caabffa967f0fe030bc76bcd4b351080f4d3e611aa2bcb3e1b85b0bba3` |
| 83 | `theorem` | [measure_average_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-average-le-pos.md) | 613 | `result-track:c2570208693a58d800bfadf9c4393929f3d21b05a8aee8b36feff4a7ad03c93c` |
| 84 | `theorem` | [exists_le_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-le-average.md) | 619 | `result-track:8064ea252d4646d593fabfe88046f8b0b1f9a494a657f8804dd08de6cfc8ea0c` |
| 85 | `theorem` | [exists_average_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-average-le.md) | 624 | `result-track:8f9471b7fc8d6913e36c4bed7c7f923c8ddf65a3d389c66ed1642d3441694b50` |
| 86 | `theorem` | [exists_notMem_null_le_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-notmem-null-le-average.md) | 630 | `result-track:69ea8e55e142e5411b58d803e1c764c145cd768365e401e52f8b9978abba3dc0` |
| 87 | `theorem` | [exists_notMem_null_average_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-notmem-null-average-le.md) | 639 | `result-track:18490dc057593549031d7686a997c88c3444f6202be96d1d0ac4df75f735af16` |
| 88 | `theorem` | [measure_le_integral_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-le-integral-pos.md) | 651 | `result-track:abfdc3c8fcf47601e39d0e7059ea7fd18884777fde5c1561202037e03d15d64d` |
| 89 | `theorem` | [measure_integral_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-integral-le-pos.md) | 657 | `result-track:d0aa08586f0bc2c481d9a53ce8bcdd7917a2429fb8b6726642f8cbaaebc903d4` |
| 90 | `theorem` | [exists_le_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-le-integral.md) | 662 | `result-track:f2248acd330e8422f4e80a111fbd35629a88de106f57c215936d55b2dc335f81` |
| 91 | `theorem` | [exists_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-integral-le.md) | 666 | `result-track:a656db1e447f5092a7301b791c0228b1284de8178f6d1a8321fac061339f8069` |
| 92 | `theorem` | [exists_notMem_null_le_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-notmem-null-le-integral.md) | 671 | `result-track:75a9e0affc1a0515336d2ddb1b1df664160bfbcce1bff1c90918fed7c7c61e01` |
| 93 | `theorem` | [exists_notMem_null_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-notmem-null-integral-le.md) | 678 | `result-track:fcc5becd7fa910cf062aafa3b3410d6c34094a5c88663a2f011c50cf9016addb` |
| 94 | `theorem` | [measure_le_setLAverage_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-le-setlaverage-pos.md) | 691 | `result-track:8103c482c2074e606ef40da2bf8538356a5dbd744369c043bc45fefe4e4fc56b` |
| 95 | `theorem` | [measure_setLAverage_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-setlaverage-le-pos.md) | 710 | `result-track:46764c85b895e4e3803b2b9423660b1d8e70fc9a872aa9f2d9f193ea0af632d2` |
| 96 | `theorem` | [exists_le_setLAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-le-setlaverage.md) | 731 | `result-track:fd1eb7df97dee16bfb2e5681f8c55e05bc1457d5ad9420cadafd659494a0ed71` |
| 97 | `theorem` | [exists_setLAverage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-setlaverage-le.md) | 737 | `result-track:cce6c479b78491a3dbcfc64148c07209a1407fd6d6bf064b88a002587b560327` |
| 98 | `theorem` | [measure_laverage_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-laverage-le-pos.md) | 744 | `result-track:715057dd059a80a8371a10fb83a62b18a640f37565b60902803b0ff26ab1f425` |
| 99 | `theorem` | [exists_laverage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-laverage-le.md) | 750 | `result-track:f8eb4eafdb511113308c65a233f85b737c343c5e957cca63cf457592bcb222b4` |
| 100 | `theorem` | [exists_notMem_null_laverage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-notmem-null-laverage-le.md) | 756 | `result-track:7ce58a16b88b53b5faa22f037ee1e234901876783fe4b9e7587dae60e02c65f5` |
| 101 | `theorem` | [measure_le_laverage_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-le-laverage-pos.md) | 768 | `result-track:25f2d6538cec9e7519578cd267116b3bd0474094f78d924220e670da3b4ae25d` |
| 102 | `theorem` | [exists_le_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-le-laverage.md) | 774 | `result-track:ac52331f8c6ac8f26ff98f27a65d01adcc7e6619829c3efa06bb6fe2f812c629` |
| 103 | `theorem` | [exists_notMem_null_le_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-notmem-null-le-laverage.md) | 780 | `result-track:39ba71d6dc24ba9db9d33a45f2905b80a33ea4c28e0cf87d748d656dccc58ea1` |
| 104 | `theorem` | [measure_le_lintegral_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-le-lintegral-pos.md) | 795 | `result-track:735b92d48c0ca2b02b81a96805b19a5693ce95a87fa801fe8115edd0efd51b61` |
| 105 | `theorem` | [measure_lintegral_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/measure-lintegral-le-pos.md) | 801 | `result-track:cbfc83cb710ffcfac8d838b19bc1f9502f0dc9d805c15bf345a618b24b39cf1f` |
| 106 | `theorem` | [exists_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-le-lintegral.md) | 806 | `result-track:184311f0ce3fd801961963e60ba673dcde0255d80582caa76d822620a32178b6` |
| 107 | `theorem` | [exists_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-lintegral-le.md) | 810 | `result-track:1af071674743a29de9a4664718fab1512be28036633fa888eb2232db0934fdd4` |
| 108 | `theorem` | [exists_notMem_null_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-notmem-null-le-lintegral.md) | 816 | `result-track:e1f14aa950ea70c31205e1333036a40617f9f3918b92cac6cd21c97c34bb1a49` |
| 109 | `theorem` | [exists_notMem_null_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-notmem-null-lintegral-le.md) | 823 | `result-track:0671ce08b49321939c3077e2e7307c50d18b14d46f7be8304006e7d7d387fae3` |
| 110 | `theorem` | [tendsto_integral_smul_of_tendsto_average_norm_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/tendsto-integral-smul-of-tendsto-average-norm-sub.md) | 835 | `result-track:b7e3958eb64c40e1d90286e78100cdc51f1855923996935864e24ddd1de06b96` |
| 111 | `theorem` | [exists_eq_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AveragePublic.lean/declarations/exists-eq-setaverage.md) | 894 | `result-track:96c9bd4f46b8a9a1c0b82292e3aca8b2af9b7ebba0216fe7b7b77ff701e88c3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eacf975861ec0c90db286ad667c3f33a5230cf0a0ce3e8c8042e120f04aef7c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
