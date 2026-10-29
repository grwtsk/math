# Verification target: Quotient Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85e5ce4e033490af63e23ea0f22d6d21e876cd21",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85e5ce4e033490af63e23ea0f22d6d21e876cd21`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean.json)

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
| 1 | `def` | [restrictScalarsEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/restrictscalarsequiv.md) | 61 | `declaration-track:2db3d838ed770976ca3920bd16080a696f315e00713f274115d8c0fde4c57fbd` |
| 2 | `theorem` | [restrictScalarsEquiv_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/restrictscalarsequiv-mk.md) | 68 | `result-track:7bb79d71e875cc14dea429af6929f32cc72fee6890479096ab7c8bc8711bdc9a` |
| 3 | `theorem` | [restrictScalarsEquiv_symm_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/restrictscalarsequiv-symm-mk.md) | 74 | `result-track:66a36f4974da6a55860ff708d7dc8080d6338e2dc5d3f98804b9a996db3d3755` |
| 4 | `lemma` | [nontrivial_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/nontrivial-iff.md) | 83 | `result-track:b3e95c338307179157927ae07122b718a52ca34c58ac0133f0f22b3cc07753d2` |
| 5 | `lemma` | [subsingleton_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/subsingleton-iff.md) | 86 | `result-track:5370e1efce1cf6d0d0b8d33625fcfc489489dfdeab9ea8eb9e7a1223aa03dfaf` |
| 6 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/instance.md) | 89 | `declaration-track:dfc60b2e1f2c795cbd798cec00de0cdbdf7c93877f6687416b1467d25c13eef4` |
| 7 | `instance` | [QuotientBot.infinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotientbot-infinite.md) | 93 | `declaration-track:0169ecb3efe0fa4ac60ed44e908df1bca608e71d6a1b8cf4582be614fde1c991` |
| 8 | `instance` | [QuotientTop.unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotienttop-unique.md) | 97 | `declaration-track:96ff490cbc7b3e48859f91f4f9e72d1d6b2a37a901b7ee750c5170723ca03fdb` |
| 9 | `instance` | [QuotientTop.fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotienttop-fintype.md) | 102 | `declaration-track:a05cf800a34cfcffa886893d0626a35777566634941dc40441a8154653f40f6b` |
| 10 | `theorem` | [unique_quotient_iff_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/unique-quotient-iff-eq-top.md) | 106 | `result-track:9b8bc1c83f1beefd6bf64e5805177684ebf79650987563f4297733897ee4015d` |
| 11 | `instance` | [Quotient.fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotient-fintype.md) | 110 | `declaration-track:cee2b0fbc05f9ad46ebdd51c53020489f42b132dc879030f87222651f56be203` |
| 12 | `theorem` | [strictMono_comap_prod_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/strictmono-comap-prod-map.md) | 115 | `result-track:f181d0abb4cb7126803e17bcdb0ae78823a24db2a43aeb6c5965f1e4adc7058f` |
| 13 | `def` | [liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/liftq.md) | 126 | `declaration-track:ec1eb7e1dbf6c182ad3201ed182836dafc9bcb71efe8030ea9b204865a1a4497` |
| 14 | `theorem` | [liftQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/liftq-apply.md) | 131 | `result-track:e2caf6d6c7d19862fcee86a5b0db0cb83df8261538290696d14bbcd0fb4bc86f` |
| 15 | `theorem` | [liftQ_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/liftq-mkq.md) | 135 | `result-track:c2d989019931449d3cf7fe62d850f450e77e18637eba9c301f2cb91cc4ca3a9d` |
| 16 | `theorem` | [pi_liftQ_eq_liftQ_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/pi-liftq-eq-liftq-pi.md) | 137 | `result-track:a76cfa0a632029969822b86b46a5f2dbc8c2fa58354586c7145fea05c9a2a755` |
| 17 | `def` | [liftQSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/liftqspansingleton.md) | 147 | `declaration-track:d16f707c6f8d3f5749124afd16207457dfd56768b55efeb1fbd3de0c124fbd84` |
| 18 | `theorem` | [liftQSpanSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/liftqspansingleton-apply.md) | 151 | `result-track:8bf76525d5a452df5fbffb4341dc3bcda592ce34d43639983ca612be11bbde22` |
| 19 | `theorem` | [range_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/range-mkq.md) | 156 | `result-track:2724f5d3493efb08f7b54daea2e45640fd98949c47a0c0cb9d13df78b5e22b63` |
| 20 | `theorem` | [ker_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/ker-mkq.md) | 160 | `result-track:15a8b816b6d670106aa8ede1145d20ba59b9295eee77a59356e87950de463393` |
| 21 | `theorem` | [le_comap_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/le-comap-mkq.md) | 162 | `result-track:cec3dad7fe89113d4dcec1884378aa781d89acc5a77e6ea6e6d027028bfbcc3f` |
| 22 | `theorem` | [mkQ_map_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mkq-map-self.md) | 166 | `result-track:1be9dcd2d3f40b20e7e1456e6cefa213d003b50c15960c87f12182026e30a642` |
| 23 | `theorem` | [comap_map_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/comap-map-mkq.md) | 170 | `result-track:4e68a11725d2dd0022ab16a8659931b51877b7d0367af92cdab9496f29348985` |
| 24 | `theorem` | [map_mkQ_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/map-mkq-eq-top.md) | 173 | `result-track:b880955a0cdc203142241a68edd42e78feb20e8dc7edb8c845c3009d1ce88f69` |
| 25 | `def` | [mapQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mapq.md) | 180 | `declaration-track:ba69a093e96d6020b613e613397df955d6896f5c3f472aa50cb3f5f97367c6cc` |
| 26 | `theorem` | [mapQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mapq-apply.md) | 184 | `result-track:a462facdeb1a68bf1550b95ea6b3027a922db0c53838febca9f562dc1e1abf1f` |
| 27 | `theorem` | [mapQ_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mapq-mkq.md) | 188 | `result-track:ff7dd05f74cd8dc96701641ef311db9e451fb47b94dfadfd2bfa4fa88c70fb90` |
| 28 | `theorem` | [mapQ_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mapq-zero.md) | 192 | `result-track:74738478c0a4c862d5a1783c4a325bcdc7ed8b560752d39fb83d7a13bb72f2d3` |
| 29 | `theorem` | [mapQ_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mapq-comp.md) | 200 | `result-track:4db0c19a0a31aeb2b7dd85c773ba643dae3e703cd85bb587d09788053a4a240d` |
| 30 | `theorem` | [mapQ_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mapq-id.md) | 209 | `result-track:e700444c3ed2f46b457500c32d6685dda402d55008f6ec5187cff091df2bda24` |
| 31 | `theorem` | [mapQ_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mapq-pow.md) | 214 | `result-track:84dc55ea6ac467a21e36450fa1b004e77fae21a3145b02b3de4654ee3bf06d21` |
| 32 | `theorem` | [comap_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/comap-liftq.md) | 224 | `result-track:0fc72435c04d88067106bc2e6dc54ac240cf58b158218cb8d75a670a417629a5` |
| 33 | `theorem` | [map_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/map-liftq.md) | 228 | `result-track:cb6d978d1a6e93ad3494e828905126d91bfa3ec301d7e87748106b48840532ff` |
| 34 | `theorem` | [ker_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/ker-liftq.md) | 233 | `result-track:59844642a97ab0e8415b96e1809dd1adf6ed8c317490b8541020389e3a0ccdee` |
| 35 | `lemma` | [ker_mapQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/ker-mapq.md) | 236 | `result-track:4ae6d5309ce8ad815189ac262ed274da71da050e8bc5afa84ffc97f3a80aba67` |
| 36 | `theorem` | [range_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/range-liftq.md) | 239 | `result-track:82d88b5858cf053b28763d61e43be50367b6dc4ade0eb28b095ab2d7ec3d0e29` |
| 37 | `theorem` | [ker_liftQ_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/ker-liftq-eq-bot.md) | 242 | `result-track:c872e3b83b05cee93f56d5b4b60a48f0b92329cc96c7f296f7d3af7f49e35e67` |
| 38 | `theorem` | [ker_liftQ_eq_bot'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/ker-liftq-eq-bot-source-edition-2.md) | 245 | `result-track:cf886a8a65ccea9af8e5edb02b0b2ac9169dbbd23920142e767793c8a8715b3e` |
| 39 | `theorem` | [range_mapQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/range-mapq.md) | 249 | `result-track:0eb02a29afb5e9efc975271b9404cd1dab0746d33303f418618d3ddb8feeb903` |
| 40 | `abbrev` | [factor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/factor.md) | 263 | `declaration-track:d0614853b62337a01163978809c1907f6f3f0712d386e2adc5f368b1e2bf2dd0` |
| 41 | `theorem` | [factor_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/factor-mk.md) | 267 | `result-track:30576bbedbc5ad856b0f7a853f4aab08d5cf00a7d5dc9a76a4d84bc4832923af` |
| 42 | `theorem` | [factor_comp_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/factor-comp-mk.md) | 271 | `result-track:cf571716f978a15371d7772fd3316bb8e4c03669d45956829b63a3279020c060` |
| 43 | `theorem` | [factor_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/factor-comp.md) | 276 | `result-track:02413b3e402af4a2faacf8e00dc1ce607e794c6d7cfb2517585ad5f0dc0151e6` |
| 44 | `theorem` | [factor_comp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/factor-comp-apply.md) | 282 | `result-track:802ac0b4fa7801eb2fff3cc6fc006db31c23a4d7209b5891ebf4393f889ff570` |
| 45 | `lemma` | [factor_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/factor-surjective.md) | 287 | `result-track:57ff2ff9e3b283bddb798f62e2de3c34d0b383593ba1be73fbe876e4f148d180` |
| 46 | `def` | [comapMkQRelIso](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/comapmkqreliso.md) | 296 | `declaration-track:cc43ed519278824d202979655ebd044c8c7d1a9ded38089ab238de2edbc1d4bd` |
| 47 | `def` | [comapMkQOrderEmbedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/comapmkqorderembedding.md) | 305 | `declaration-track:5b2249dc98c68eab046019bd241ed4b471a1ca116653460d2c6c271735e6ca04` |
| 48 | `theorem` | [comapMkQOrderEmbedding_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/comapmkqorderembedding-eq.md) | 309 | `result-track:fbbf3f56a63e28401cfa2489e4474d12bb109e4a79b58f4413d0125cbcb53279` |
| 49 | `theorem` | [span_preimage_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/span-preimage-eq.md) | 313 | `result-track:9463ec46e5c73106dca6354ed7f8d56a1775e93ab6d8fe7a732f35886795104e` |
| 50 | `def` | [Quotient.equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotient-equiv.md) | 335 | `declaration-track:c2fd310300caae514ee16cd494433c58464025531ac29c76855f2621f1220b26` |
| 51 | `lemma` | [Quotient.equiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotient-equiv-apply.md) | 343 | `result-track:545ccbe3b94104467c02edbb8595b76f3e3016d4bb0bf45475c43ae74cf6426e` |
| 52 | `lemma` | [Quotient.equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotient-equiv-symm.md) | 348 | `result-track:025d674434a659c03bbeab24adff0c5713186f8599a23c93c676585f43a07426` |
| 53 | `theorem` | [Quotient.equiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotient-equiv-trans.md) | 353 | `result-track:9970efe4456b1fe748ab1c7ac92929e96c90076a098203b65d01a365eee77404` |
| 54 | `theorem` | [range_mkQ_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/range-mkq-comp.md) | 384 | `result-track:e0538801e70f35fe29225fb96b83e32661bbfcd70eefbc41ed0f78cfad9253cd` |
| 55 | `theorem` | [ker_le_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/ker-le-range-iff.md) | 387 | `result-track:b5258a836ed1aea9146325b9357285575a1d450d831a42268fc6e0198fb9f5b8` |
| 56 | `theorem` | [range_eq_top_of_cancel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/range-eq-top-of-cancel.md) | 392 | `result-track:273ced1466fda7e3fea786295b2022e6b4b0c1d52687d6f4b51210336217a874` |
| 57 | `def` | [quotEquivOfEqBot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotequivofeqbot.md) | 410 | `declaration-track:4ca94d7ba6bf2b09d5e1311b99986a54f7a21db2ad04ab0b3126cfc6a884cf75` |
| 58 | `theorem` | [quotEquivOfEqBot_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotequivofeqbot-apply-mk.md) | 415 | `result-track:4fccc80ef76bb69651a3981b0b6ce368e8b8d546b95e82205bdca2f34bb33f24` |
| 59 | `theorem` | [quotEquivOfEqBot_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotequivofeqbot-symm-apply.md) | 420 | `result-track:29a1962add74c3504ef66c2a65374c3edeb42e3f09618df492aef4cc00f5ccc1` |
| 60 | `theorem` | [coe_quotEquivOfEqBot_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/coe-quotequivofeqbot-symm.md) | 425 | `result-track:6a91c0cdf5a1cac91cae526c71a24e9b0ef33b626ac8b8c8dbbbeb235b7adb03` |
| 61 | `theorem` | [Quotient.equiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/quotient-equiv-refl.md) | 430 | `result-track:8db85c072171e223cb466b2449d5d7f90d19f94f1ea827a5e3eaa462c64af72c` |
| 62 | `def` | [mapQLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasicNamespacedPublic.lean/declarations/mapqlinear.md) | 448 | `declaration-track:c614c322e10e855c5abd3f835a46b5f21541527cdfd628ce153d0c6777a2aa18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0cdbcb5f956ca474b9666fc82238c51388ffe2fc707b6d7a6254bb547fe33f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant8a57b7b88a6700473527b6dc0e7a0fc95384ad0ab140049db81384655f84149b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
