# Verification target: Congruence Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dad8f892e37ee4b5f079e7d683999c172434f64b",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dad8f892e37ee4b5f079e7d683999c172434f64b`.

Source path: `GRWTSK/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean.json)

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
| 1 | `def` | [ker](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/ker.md) | 61 | `declaration-track:fdd879a5d9ea8e3a66b5b18f3a86dcfc63892d5897e9ccf4c3c7708fcb21b255` |
| 2 | `theorem` | [comap_bot](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comap-bot.md) | 63 | `result-track:33c967309854727fea2560c65c4d660335b4a94c989cf9be1d3a582f2f6766a3` |
| 3 | `theorem` | [ker_apply](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/ker-apply.md) | 67 | `result-track:c2f628e6eb1e0b113a0d54d496bd3aa04abef5ab159d3555bd37a620248bf3fa` |
| 4 | `theorem` | [ker_mk'_eq](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/ker-mk-eq.md) | 71 | `result-track:6b5c85a3260044aac6acf3471a1dc06cd929db26b574afb16c548f361d4be2aa` |
| 5 | `theorem` | [ker_comp](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/ker-comp.md) | 74 | `result-track:e874832048e5bbe650f9d65140a5b104022bc9b94e28bf8fb5f6abedcfc86c52` |
| 6 | `theorem` | [comap_eq](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comap-eq.md) | 78 | `result-track:0ee9e38da50aaa7544ef1038aacffeac7d8777a9b9f5873c3055dbd1f661bd23` |
| 7 | `def` | [congr](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/congr-source-edition-2.md) | 84 | `declaration-track:588976ccc5a099fafaef8a1860bb592e69d00a8fcb06f851ac65fca59d34710b` |
| 8 | `theorem` | [congr_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/congr-mk.md) | 90 | `result-track:7a9e565d261fd54f65833f9a4273690b7134410dd87ec3d4fe9092940ff86ff7` |
| 9 | `theorem` | [congr_symm](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/congr-symm.md) | 93 | `result-track:863ebb2f36dd600116fff31c953692a4e4162a7af4c573910f07fda7b8a8e87a` |
| 10 | `def` | [mapGen](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/mapgen.md) | 101 | `declaration-track:702c84c84ba05b900417a639f098c15e89616a7c3242355dbeb44f675a9c6408` |
| 11 | `theorem` | [mapGen_eq_map_of_surjective](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/mapgen-eq-map-of-surjective.md) | 107 | `result-track:480d7718703e82cc89590bf9acbb72d5069f6555b1678b84d2ff40b103103ccc` |
| 12 | `theorem` | [mapGen_apply_apply_of_surjective](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/mapgen-apply-apply-of-surjective.md) | 127 | `result-track:b354b46d6370f060e3a855be1eafe9687adf77a1781d630044bb17d10132ca33` |
| 13 | `def` | [correspondence](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/correspondence.md) | 137 | `declaration-track:e59be04fac1432122cfbdc78c3c8f0780cc0ea82a26489003469c84da828cff8` |
| 14 | `def` | [lift](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-source-edition-2.md) | 164 | `declaration-track:42af0a17503fcb904225fe5c10b7a297dc240dcc9cd9f427436d8fc7d19b0780` |
| 15 | `theorem` | [lift_mk'](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-mk-source-edition-2.md) | 172 | `result-track:c0c4fbb5ab1a6b1b2b15e0a8f9d861de18b241cc229b18c04b4e809466515939` |
| 16 | `theorem` | [lift_coe](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-coe.md) | 176 | `result-track:15f0db5eff87b022b65200aace9661b412635f5d824152ab6af2bf8e275e6d15` |
| 17 | `theorem` | [lift_comp_mk'](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-comp-mk.md) | 180 | `result-track:52e5d654ed3ab2039ec1d3832a6f19e88dd30c0567afaf41071dabe0324f28c0` |
| 18 | `theorem` | [lift_apply_mk'](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-apply-mk.md) | 185 | `result-track:046a154dcc51b8d311680cf0b85c5dd19e75877a4561f2eab2d227f14d64af91` |
| 19 | `theorem` | [Quotient.hom_ext](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotient-hom-ext-source-edition-2.md) | 192 | `result-track:ea08ef8dde3578afbb6ea10d7bd1eb5947b7946b37528ad427a34d8f01cba9e0` |
| 20 | `theorem` | [lift_unique](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-unique.md) | 196 | `result-track:23bda507beb558f32640116128408a0cfd58a26efe8fb00799f90adfe6fd74b8` |
| 21 | `theorem` | [lift_surjective_iff](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-surjective-iff.md) | 202 | `result-track:846a6113a70fa286dcf54082128ec32cf3a259ccd535cc438073b1d69bb312fd` |
| 22 | `theorem` | [lift_surjective_of_surjective](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-surjective-of-surjective.md) | 209 | `result-track:5c423a10fd7ff694da6a732ca98c087fcead542d2c994fd8315eeb7880ccc20e` |
| 23 | `theorem` | [lift_injective_iff](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-injective-iff.md) | 215 | `result-track:e01b23dd6160ad01804548b18c01cc49a5a63ecabf29032a75496f2e10c252b1` |
| 24 | `theorem` | [lift_bijective_iff](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-bijective-iff.md) | 221 | `result-track:2c9ab5cdb74444c4942cb61bd7b892f26884e03223aba900dd15485be7283a4f` |
| 25 | `theorem` | [ker_eq_lift_of_injective](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/ker-eq-lift-of-injective.md) | 229 | `result-track:a3a49e5cfaa2a7b556470efdf50321532828116f119aadbf951c9935de467473` |
| 26 | `def` | [kerLift](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/kerlift.md) | 235 | `declaration-track:4ef70b4c26bba963208a635785628f728437acd676ae0b7a9f6d64d0c932621e` |
| 27 | `theorem` | [kerLift_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/kerlift-mk.md) | 242 | `result-track:558fb81d05bf7e5f8f6dd9f5e5c11fe6e4608e2636747e26552d4f28ecddc959` |
| 28 | `theorem` | [kerLift_injective](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/kerlift-injective-source-edition-2.md) | 246 | `result-track:9375406c758e6689759d519c15c8d5bfa54b70df35f6cf9c1ededf03893e9348` |
| 29 | `def` | [map](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/map.md) | 252 | `declaration-track:749349ca42825adcbaf5f90786914d4efa343c216c8e48123858fbf2dd40e749` |
| 30 | `theorem` | [map_apply](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/map-apply.md) | 258 | `result-track:bec6c21c1f5e96cbb54dce00ef38beb508af9cf995f5f6bd99cbf4d2466aa37c` |
| 31 | `theorem` | [rangeS_mk'](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/ranges-mk.md) | 270 | `result-track:134ad491e8bdb679f47cdebd31526214bccabf9581719b6e4df5c2e3fb0ad03f` |
| 32 | `theorem` | [rangeS_lift](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/ranges-lift.md) | 278 | `result-track:dc37e4bdc19f178eb464df6748886a87e96cc99c8699ff8e85b18f50e390b8e0` |
| 33 | `theorem` | [rangeS_kerLift](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/ranges-kerlift.md) | 284 | `result-track:87d0aff7407a1d8076da08b2c902a601e492fec24322f311985c06ec66f25963` |
| 34 | `def` | [quotientKerEquivRangeS](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivranges.md) | 291 | `declaration-track:edf34a0f5bc4481384e9a90429df371f10ac6ff4d4cf5171982c36458eb6732f` |
| 35 | `theorem` | [coe_quotientKerEquivRangeS_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/coe-quotientkerequivranges-mk.md) | 296 | `result-track:8808aa420774d9c1c04449ef77fdf1739e70b18a068d884ea15e4996eebb2040` |
| 36 | `def` | [quotientKerEquivOfRightInverse](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivofrightinverse.md) | 300 | `declaration-track:b3e9d46fb26087294fcb6e6aeaf2c083f50f2bbe4587e5ea139adf94388649e4` |
| 37 | `theorem` | [quotientKerEquivOfRightInverse_apply](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivofrightinverse-apply.md) | 305 | `result-track:4112eff2707c09159a609ceee7462973637cc874caa3612464afb3b76c774456` |
| 38 | `def` | [quotientKerEquivOfSurjective](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivofsurjective.md) | 314 | `declaration-track:3fb04beeeb50df7cdd42b465fc4a2568442b102f0fe3a6ab7f86dc26a41edcc0` |
| 39 | `theorem` | [quotientKerEquivOfSurjective_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivofsurjective-mk.md) | 318 | `result-track:14888783a6733bbf303dc6d0436ad78ec19714aae857e3531f14734fae578e2b` |
| 40 | `def` | [comapQuotientEquivOfSurj](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivofsurj.md) | 324 | `declaration-track:6ca94a31c0aa8bb8a5c2d37c646bdfc7f58e172828644f5e4d3f3cd2dae6c8ca` |
| 41 | `lemma` | [comapQuotientEquivOfSurj_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivofsurj-mk.md) | 332 | `result-track:d33a7bd9f401375011cf03996f6dc8fd4bb6fb10a926538a35fc912033feb945` |
| 42 | `lemma` | [comapQuotientEquivOfSurj_symm_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivofsurj-symm-mk.md) | 337 | `result-track:113bb6b1dbf107641f2c7470abbdb4b07d1e72606ac9d21a263ded2e0bfe4edd` |
| 43 | `lemma` | [comapQuotientEquivOfSurj_symm_mk'](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivofsurj-symm-mk-source-edition-2.md) | 345 | `result-track:2029b11c14bb75ea9db16c05a8d8010f4106f77fdf624630ee3a6f98cb2cc8da` |
| 44 | `def` | [comapQuotientEquivRangeS](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivranges.md) | 353 | `declaration-track:7f78f5a0c6dfea33417f1cc262005161fc7be05d358e85773222fb7133b32d83` |
| 45 | `theorem` | [comapQuotientEquivRangeS_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivranges-mk.md) | 358 | `result-track:a64aa0d905b0524f0977557032db19d605c88eb307c16c7306ceba6887d53f3a` |
| 46 | `theorem` | [comapQuotientEquivRangeS_symm_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivranges-symm-mk.md) | 363 | `result-track:aa6cda020a3d365bf66e9e29515a70ceb876932b1caa410393374d37504a7d03` |
| 47 | `def` | [quotientQuotientEquivQuotient](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientquotientequivquotient-source-edition-2.md) | 370 | `declaration-track:f82897ed9969ec386975cd88a9e3a603828e942c6d02d59e188f9df065bd5654` |
| 48 | `theorem` | [quotientQuotientEquivQuotient_mk_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientquotientequivquotient-mk-mk-source-edition-2.md) | 382 | `result-track:eca22203962eca6eae27b79f17bb18a61d4d1b2eda931ff7d558859534516f6c` |
| 49 | `theorem` | [quotientQuotientEquivQuotient_coe_coe](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientquotientequivquotient-coe-coe-source-edition-2.md) | 385 | `result-track:ec58382fba3991fd3f1840b1c09db3db04317fe399e651ba475d98d673e2cd89` |
| 50 | `theorem` | [quotientQuotientEquivQuotient_symm_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientquotientequivquotient-symm-mk-source-edition-2.md) | 389 | `result-track:f405851a7b712f1b839c94636c19d7b1db443fcebdb3fbb1951bf42a4ef8cd4f` |
| 51 | `theorem` | [range_mk'](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/range-mk.md) | 401 | `result-track:27423e3967800ce32b0433bc041cb7e1de30c4c181644fe5213e099bb55dbe7f` |
| 52 | `theorem` | [range_lift](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/range-lift.md) | 409 | `result-track:a8ea354abf65b741b04f153ae24eaf540c34406a9e17c41acd3a0488ede5cca9` |
| 53 | `theorem` | [kerLift_range_eq](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/kerlift-range-eq.md) | 415 | `result-track:128d7970790ee66808252037f22888ea9d7981830aff14955f15ae18615dfd7f` |
| 54 | `def` | [quotientKerEquivRange](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivrange-source-edition-2.md) | 422 | `declaration-track:604adcd09367874bf6d16d94c7cf9b7e8edf51782536fab3eca96d34c0200933` |
| 55 | `def` | [comapQuotientEquivRange](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivrange.md) | 427 | `declaration-track:13a79af1a20b63ba7fefd58e5ac30c68dabe9d4bdb71a03547e5153808dff804` |
| 56 | `theorem` | [comapQuotientEquivRange_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivrange-mk.md) | 431 | `result-track:2f948e384bf7244bff18a2428f463b38fb1bb1128ea62f8840081f2efc62a3bd` |
| 57 | `theorem` | [coe_comapQuotientEquivRange_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/coe-comapquotientequivrange-mk.md) | 436 | `result-track:90453845b6f66c923c40b5581c9aacb311d4afbe86773e9c593ca93bf42125f1` |
| 58 | `theorem` | [comapQuotientEquivRange_symm_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivrange-symm-mk.md) | 441 | `result-track:d20e60f19fa2f1036d63b9d9890ebe171add0475851ff9a07136ce421ea5f1d1` |
| 59 | `def` | [congrₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/congr.md) | 460 | `declaration-track:3ce2f732f1c8d9ad6840a2339f1f0c00c1fed8197cc0c2dc84420bbd3fa487d6` |
| 60 | `theorem` | [congrₐ_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/congr-mk-source-edition-2.md) | 466 | `result-track:a90ba095077c158ad318b0a058d46323a1819c54d141f71390b31e5deba4ae4e` |
| 61 | `theorem` | [congrₐ_symm](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/congr-symm-source-edition-2.md) | 470 | `result-track:f3879d7aeecec00139e8993ad5729e70f6ccf78f99531c3a37aa5cf0a9f17a19` |
| 62 | `theorem` | [range_mkₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/range-mk-source-edition-2.md) | 475 | `result-track:e1a366ebd8fac82671e20299750f4a2a7b5dcc3aaf6cc2e6a632402aa87d77bd` |
| 63 | `def` | [liftₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift.md) | 481 | `declaration-track:2be1f5c26589b674ef80f574b70bcb0ce72488e37087a69477fe7ee9d2e87417` |
| 64 | `theorem` | [liftₐ_coe_toRingHom](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-coe-toringhom.md) | 486 | `result-track:db1987fb4b758105d35bd6fce412b4d6a9f21c2609accc660b97d35a06b0a54a` |
| 65 | `theorem` | [coe_liftₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/coe-lift.md) | 490 | `result-track:974cefaa07384dfd37ec1a18393ce76ecea30f53ffcc14b3e0849fc163382f63` |
| 66 | `theorem` | [liftₐ_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-mk.md) | 494 | `result-track:5139d41863c693f096e17b428c9ff17efec61440c7505be8c36c9c353859c858` |
| 67 | `theorem` | [liftₐ_range](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-range.md) | 501 | `result-track:fe69e33bc3f0deed7070d4db2427f458719d37e7f479c65aaf331866f746e5fd` |
| 68 | `theorem` | [Quotient.hom_extₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotient-hom-ext.md) | 510 | `result-track:485249f1d3cf8268a6cf65c1976a5c5a8adcf6aad948615a5aad0d9d4a0f4f68` |
| 69 | `def` | [liftₐEquiv](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/lift-equiv.md) | 516 | `declaration-track:74d164ff42c0bd4b7992e7e9767d982b9f3e183fa58eb21a73c85fce19021946` |
| 70 | `def` | [kerLiftₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/kerlift-source-edition-2.md) | 523 | `declaration-track:52df4d00433c3300ed04f5b6d8c070764983907fc4d8afab1e663a9c2fafcfcf` |
| 71 | `theorem` | [kerLiftₐ_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/kerlift-mk-source-edition-2.md) | 531 | `result-track:765c16a49e5fcd0914707433861b2b6562b1aff6288c9219170729f1490da074` |
| 72 | `theorem` | [kerLiftₐ_injective](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/kerlift-injective.md) | 535 | `result-track:881e67e0c7742129d6cf0c6e1299674eee775ae8008a1e99406cf8a4c55f1625` |
| 73 | `def` | [factorₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/factor.md) | 542 | `declaration-track:4906a6938ec9a5078aa8727083d1b0c81ad599007206d66550fa2d47357911c8` |
| 74 | `theorem` | [factorₐ_apply](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/factor-apply.md) | 549 | `result-track:b669e0f638227526cfa4885efe7eaf037171042b4b639cc88ed6fb215f9087b4` |
| 75 | `theorem` | [factorₐ_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/factor-mk.md) | 556 | `result-track:23c346bd088257b8c215e5cfc8e5d6ae47fb2be26c99e0d76528a99b0ff316aa` |
| 76 | `theorem` | [mkₐ_comp_factorₐ_comp_mkₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/mk-comp-factor-comp-mk.md) | 560 | `result-track:8876bc1ee4eb206bf42983c13f93ccaf130a832f80c572af2dbdddf6e6dba84d` |
| 77 | `theorem` | [kerLiftₐ_range_eq](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/kerlift-range-eq-source-edition-2.md) | 566 | `result-track:9ce563bb37b296d8bcf7fe3d6682214950d6fda29c05e21329a1cfd4c1a0a5e5` |
| 78 | `def` | [quotientKerEquivRangeₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivrange.md) | 573 | `declaration-track:3b62dfc30e15df96014bef263fafb8128eedc35cc870cd0cffd5fbc45c3b8458` |
| 79 | `theorem` | [quotientKerEquivRangeₐ_mkₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivrange-mk.md) | 578 | `result-track:0e125674e27fda48f4360ad9f0b1c3101deddd15b2ceb065b2777ed7d668e173` |
| 80 | `theorem` | [coe_quotientKerEquivRangeₐ_mkₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/coe-quotientkerequivrange-mk.md) | 583 | `result-track:b8a71292647c09b5ea711d2226531c1270b3a36e0df8608768a1cff472a06387` |
| 81 | `theorem` | [quotientKerEquivRangeₐ_comp_mkₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientkerequivrange-comp-mk.md) | 587 | `result-track:2343e752ff193359cf45041b606343a40a806d7a317cdb4de78101297056e126` |
| 82 | `def` | [comapQuotientEquivRangeₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivrange-source-edition-2.md) | 592 | `declaration-track:cb7581d4e7b66eb3234b431551fc8bf0ec9a5e245112b64790eacf7188660104` |
| 83 | `theorem` | [comapQuotientEquivRangeₐ_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/comapquotientequivrange-mk-source-edition-2.md) | 596 | `result-track:5b431f4848c9423ddb09eaaac721749f89ae906396cfb0f075613408725f1180` |
| 84 | `theorem` | [coe_comapQuotientEquivRangeₐ_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/coe-comapquotientequivrange-mk-source-edition-2.md) | 600 | `result-track:ecbf6c38f8ad8c359100e9fec26250b231258eab97d21e23a82e31601c076f2e` |
| 85 | `theorem` | [coe_comapQuotientEquivRangeₐ_symm_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/coe-comapquotientequivrange-symm-mk.md) | 605 | `result-track:9dd1edd262a1f10278e619babbf0fa4a842c3b3ce90a70cdef9a67510cedda3c` |
| 86 | `def` | [quotientQuotientEquivQuotientₐ](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientquotientequivquotient.md) | 613 | `declaration-track:247981d003fa8b1621c175364ae6d634d5849d198a8ff9312d2c85be8ada7d57` |
| 87 | `theorem` | [quotientQuotientEquivQuotientₐ_mk_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientquotientequivquotient-mk-mk.md) | 619 | `result-track:e343d4c28c677c05c83269319d6a9d9d60f34295b0bb1115ff0817d7725c98e5` |
| 88 | `theorem` | [quotientQuotientEquivQuotientₐ_coe_coe](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientquotientequivquotient-coe-coe.md) | 623 | `result-track:5b06678b699333a3c4a214d43188510d64c2fbbc05eff107fb8565bbbce26ac1` |
| 89 | `theorem` | [quotientQuotientEquivQuotientₐ_symm_mk](../../../../CommutativeAlgebra/CongruenceHomPublic.lean/declarations/quotientquotientequivquotient-symm-mk.md) | 628 | `result-track:a807725b84f6c80275ae3ec2135e80d644796be38fd0b75598941c5302e7feb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9072024b0ffe7bdfb8380edaf6c3848ab691c7839b4a0716f1bd6d643da4636a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean","GRWTSK/_verification/specifications/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
