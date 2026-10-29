# Verification target: Unit Disc Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6727a05ec5f0e845943a22188e0e349ed9a0006b",
  "lexical_observation_count": 134,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6727a05ec5f0e845943a22188e0e349ed9a0006b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean.json)

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
| 1 | `def` | [UnitDisc](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/unitdisc.md) | 30 | `declaration-track:b97a33811ca6236cadec7a57934414b8db485a0d527ed7af05990f4a96fc9064` |
| 2 | `def` | [UnitClosedDisc](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/unitcloseddisc.md) | 34 | `declaration-track:ec1972cc2556362185d22b96ca0fff40bda4bd3f0625be5f81cd700cdd9429e4` |
| 3 | `def` | [coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-source-edition-2.md) | 45 | `declaration-track:de8eecd36443d58f82f444c127fd6d3d359b41ac842992f1d6bfd335ed700792` |
| 4 | `instance` | [instCommSemigroup](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instcommsemigroup.md) | 47 | `declaration-track:d16769b552f0c8ce86e25ba6a3397d6d00fcb54b19cfad062569b78718b98270` |
| 5 | `instance` | [instSemigroupWithZero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instsemigroupwithzero.md) | 49 | `declaration-track:fb8de938140432f7f40e3f788e5de0d91196fd362a632e22a57e4632b2bf18e8` |
| 6 | `instance` | [instIsCancelMulZero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instiscancelmulzero.md) | 52 | `declaration-track:969e7ff574a6c8e905534216100c43071b118240a5df5dbe362248e49eae115d` |
| 7 | `instance` | [instHasDistribNeg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/insthasdistribneg.md) | 55 | `declaration-track:6c2d26340db6a9a6f2a71d47469fcc721497e5e49ea78eeb821b6c99c985d375` |
| 8 | `instance` | [instCoe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instcoe.md) | 58 | `declaration-track:443a845b11aa97c5736be15c819616d944cf51ac370dcbba5770fe0f9eac7d0a` |
| 9 | `theorem` | [coe_injective](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-injective-source-edition-2.md) | 61 | `result-track:8eda2c942228824e7cab88037d862969c26449598a9fe2e83f5327b0ed71e83c` |
| 10 | `theorem` | [coe_inj](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-inj-source-edition-2.md) | 65 | `result-track:f7c15650649b83f4710be07def5ffd21a4c3c53ae906821a4263feb15c1fd171` |
| 11 | `theorem` | [isEmbedding_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/isembedding-coe-source-edition-2.md) | 68 | `result-track:fd8f300bc3349ae1c68ddc6bcd2dbade87bef1df3dc5a6af2d33dcabdfc9b450` |
| 12 | `theorem` | [continuous_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/continuous-coe-source-edition-2.md) | 71 | `result-track:996c3e7c14f96dcad06df68c6cfb6542a805facae9c496d31fdc754e7b426e6b` |
| 13 | `theorem` | [norm_lt_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/norm-lt-one.md) | 73 | `result-track:9405b6d6467c8a022c88343d4500262fc3cbc3c0a3fcaccabdf7ea5cde7716a1` |
| 14 | `theorem` | [norm_ne_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/norm-ne-one.md) | 76 | `result-track:e8b9506fe1225903a4bb1cfdbf26ba3b1553c61d97bc779a0e5a93f1d7795a09` |
| 15 | `theorem` | [sq_norm_lt_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/sq-norm-lt-one-source-edition-2.md) | 79 | `result-track:f5a4d1942854eb1e38f99b4ce31567ccb0b23252411f40c4cf6d4cb2bd943fa3` |
| 16 | `theorem` | [normSq_lt_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/normsq-lt-one.md) | 83 | `result-track:504a01e5c2c8f7c4c32cbb971015fca9a2f9cc16abfafd9c977b7754a77b0829` |
| 17 | `theorem` | [coe_ne_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-ne-one.md) | 87 | `result-track:131478475ba1ad1fc003df8530c0d598a8152739067a211825e6b2b9dc7413e6` |
| 18 | `theorem` | [coe_ne_neg_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-ne-neg-one.md) | 90 | `result-track:a7ca9dc5019f6e320a6eeb936bd37e90c5b47aa2469ab6ec84c96b7c24adc8ae` |
| 19 | `theorem` | [one_add_coe_ne_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/one-add-coe-ne-zero.md) | 93 | `result-track:3254cb55af78278b197a5e6bc8894be953df3971441f6bee6b9c2c33f0736836` |
| 20 | `theorem` | [coe_mul](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-mul-source-edition-2.md) | 97 | `result-track:f7d1540e56a8c0e1127772c245d0e408ed226a119ece2f8c45e649580c9da9dd` |
| 21 | `theorem` | [coe_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-neg.md) | 101 | `result-track:a1d5e00cecff045725869e3dc3742d524fd52f37898f91086220cec52c81007f` |
| 22 | `def` | [mk](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk.md) | 105 | `declaration-track:2e7bc4e1a02e1e8d9c241b0d25db27d87e2c41a9bcdd42c6becbaf810254794d` |
| 23 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-14.md) | 108 | `declaration-track:8540b6f09ebfc7305777c5c9cc7fa2eb7ebde3934e251427c2ad547fe7310f97` |
| 24 | `def` | [casesOn](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/caseson.md) | 113 | `declaration-track:a5a30228c00091837ebf3ce72fe4fb7c57d7c880f16a2a71c105b4c815ae7f4c` |
| 25 | `theorem` | [casesOn_mk](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/caseson-mk.md) | 118 | `result-track:3c11a96d9527ddfcca3f62acdf48aa996c963eb2ad729459eaeeb30b58c03d16` |
| 26 | `theorem` | [coe_mk](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-mk.md) | 123 | `result-track:84fad87d4a139db5a5d389549e3676bb537d004476d18abb36282fc36aa0115c` |
| 27 | `theorem` | [mk_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-coe-source-edition-2.md) | 127 | `result-track:ee4df6ec32411c54286c44e3ae8b3457f622e35747520918d3dff46312b79706` |
| 28 | `theorem` | [mk_inj](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-inj-source-edition-2.md) | 131 | `result-track:f5338cdbad35afb41b042af5fe2f1a225490602440fb3466ebd738ddc0889a06` |
| 29 | `theorem` | [«forall»](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/forall-source-edition-2.md) | 134 | `result-track:decf7701e342dab40febd60496b02c669720053604791794a7f9c0b61ccd53a1` |
| 30 | `theorem` | [«exists»](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/exists-source-edition-2.md) | 137 | `result-track:700c65e95a57683c3e0f93c25c8f50695425d2ad0790ebc03562fa3e1e02e234` |
| 31 | `theorem` | [mk_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-neg-source-edition-2.md) | 141 | `result-track:87315f634ffa4a5228fac145b36bdbf8f6d92af510a7157fa9cae1d1b4530351` |
| 32 | `theorem` | [coe_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-zero.md) | 145 | `result-track:35b16c1c68d95ad928bf4b7f987fbc449a3efa3c01f317978fe94f4b4033ec0c` |
| 33 | `theorem` | [coe_eq_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-eq-zero.md) | 149 | `result-track:93b0b3b2f1c617ed1166445c967ac9317a0e149f349233dc843287d510cb2be2` |
| 34 | `theorem` | [mk_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-zero.md) | 152 | `result-track:6a8b1221896d7bafcf798e7382115be1afc636c7a338c2d7cb1f964d9079987b` |
| 35 | `theorem` | [mk_eq_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-eq-zero-source-edition-2.md) | 154 | `result-track:c7d5d1c9699838f4985792d655c701f32143fca43d64a1985ec4fb4322e808ce` |
| 36 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-2.md) | 156 | `declaration-track:0fcea9cc6e4bd93a50447a9072519a9ba3a33ec2b9106fbea67cc24dce9836d0` |
| 37 | `instance` | [instMulActionCircle](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instmulactioncircle.md) | 159 | `declaration-track:408577317ff94f34ec06867db05fb066afbb961992944906bf96f5e58e0b2e92` |
| 38 | `instance` | [instIsScalarTower_circle_circle](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instisscalartower-circle-circle.md) | 162 | `declaration-track:b3704f1e84254900c3d8b1a04ea01d7ae15e9f39ffe0243a80a0e414a06b2fa5` |
| 39 | `instance` | [instIsScalarTower_circle](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instisscalartower-circle.md) | 165 | `declaration-track:7d7a9937af3299f343070d05ea4ac42f23b052790703db0e6ad834ce64928e73` |
| 40 | `instance` | [instSMulCommClass_circle_left](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instsmulcommclass-circle-left.md) | 168 | `declaration-track:6a87b4bd7ea30809f5083e671222e75849fdc8a70cde212ed7097bfa95f9d7b5` |
| 41 | `instance` | [instSMulCommClass_circle_right](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instsmulcommclass-circle-right.md) | 171 | `declaration-track:753990b76a76c695a04b5d0a25daa7823b7f06eab7890bf8f77050c3e7c121ff` |
| 42 | `theorem` | [coe_circle_smul](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-circle-smul-source-edition-2.md) | 175 | `result-track:4eb4d1f6c41ec0641d5555df33233886f47b78c82c048bd3c8916492b51eb385` |
| 43 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-3.md) | 178 | `declaration-track:12cf29f99a42cf9c93ef8d73b98efb10818f1d698027cd3eb1c6e80b75dfe32c` |
| 44 | `theorem` | [coe_pow](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-pow-source-edition-2.md) | 182 | `result-track:5b68f0524de57931c993f8f927973a72dbdf836f2d3eb7f8e44874b1e3140454` |
| 45 | `theorem` | [continuous_pow](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/continuous-pow-source-edition-2.md) | 185 | `result-track:9d41134671bde0e863b403d70f61453dad3a3e1e555ddd069c14030355a3a169` |
| 46 | `theorem` | [pow_eq_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/pow-eq-zero.md) | 190 | `result-track:94522ff56a93cec32646a0061a034e151db3127ed67e1b07091467fafbf712cc` |
| 47 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-6.md) | 194 | `declaration-track:378d9a664250aac29a4e4c6243cfefaa3ead4f86fa831781115069485eace35a` |
| 48 | `theorem` | [tendsto_pow_atTop_nhds_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/tendsto-pow-attop-nhds-zero.md) | 198 | `result-track:7ce0cb233992fdcdcbbccacfc8cf72afa43a8344a5b5dd68b66dd6dde7ff0e91` |
| 49 | `def` | [re](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re.md) | 205 | `declaration-track:2e8506fb22e8004dfb16d312f87162b11cc208c5a7edcb8a3df98c4e8833fbec` |
| 50 | `def` | [im](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im.md) | 209 | `declaration-track:2a2fc75cb6b71a627422be655546a58d0cd496f4d774983e34b1e3cbf72ca1a5` |
| 51 | `theorem` | [re_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-coe.md) | 213 | `result-track:062fc009f1302023e642234ab488e64903f6b16779f7ff105157357d054a85d4` |
| 52 | `theorem` | [im_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-coe.md) | 217 | `result-track:923e27f0f8329be759f17d936acd9630bbd5683deb49f11e5be740667571d7ce` |
| 53 | `theorem` | [re_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-neg.md) | 221 | `result-track:77e27b80d8e438dd184dfd0a58c3e49a19e23444847158b41d12aa86117d3d51` |
| 54 | `theorem` | [im_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-neg.md) | 225 | `result-track:38cd0f0ae78936c3f07696fcb8688bdfb7706fef363f916236364d8ae178f49a` |
| 55 | `theorem` | [re_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-zero-source-edition-2.md) | 228 | `result-track:e043130cb8825458ab9f88ccc396539f8f5ebbff980820d22894d07e1475e523` |
| 56 | `theorem` | [im_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-zero-source-edition-2.md) | 229 | `result-track:c1f1c482cd6f36f52c09a09d964d18e5df4c00b432f36c1d6d219c04bdf05287` |
| 57 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-13.md) | 232 | `declaration-track:83bed326c527c83c8e706b995d5c570a4a2ee4fd0576943a955e21167d24c4db` |
| 58 | `theorem` | [coe_star](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-star.md) | 235 | `result-track:e21d0d8dedc733ef79391b53f0ebbb65a8b5edba8c4c4702e6af112e75762bed` |
| 59 | `theorem` | [star_eq_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/star-eq-zero-source-edition-2.md) | 238 | `result-track:b290fdae522db08af7d2c74e85a3ad98b50d20deec9649d8ef28c297ca798805` |
| 60 | `theorem` | [star_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/star-zero-source-edition-2.md) | 242 | `result-track:4bd32e8fe66bea1e7f1fe573448992164b78bfebb62785a5b088b3874b6e11cf` |
| 61 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-20.md) | 244 | `declaration-track:c422d5471329c8a81de15520eaed312b57b6ab2fa47fe65955f2f1eaec68f51d` |
| 62 | `theorem` | [star_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/star-neg.md) | 247 | `result-track:2215ebde24be885572e64d03e5e96afa7ea31d0e2c968f60dc01da65ee719441` |
| 63 | `theorem` | [re_star](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-star.md) | 249 | `result-track:994a87ba4c0908078688bd62a2a5e51d49e7f09ea6c20abcaafeb75b94c90d91` |
| 64 | `theorem` | [im_star](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-star-source-edition-2.md) | 251 | `result-track:dfb5aacd65b48c42722e189022abb7811611b9c8af5e2a0ac03a91c494b0d41a` |
| 65 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-11.md) | 253 | `declaration-track:720ad2996473a3c8cb8fa225d3bedee1fd22d76d848d639b7b8d45b3075359e2` |
| 66 | `def` | [coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe.md) | 261 | `declaration-track:6bbf1a6fce2fca0426d655368d8643b16c4059fac1349c140ee86f428e40c578` |
| 67 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-7.md) | 263 | `declaration-track:3cbbbe3bf7015a03795e169c148a35967c5132587ef767c899b1fec8320e724c` |
| 68 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-8.md) | 265 | `declaration-track:41aecd473dc249c0f04da497616a9f8d61932295a37705e6c41bf1b0bdb0ac3a` |
| 69 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-4.md) | 268 | `declaration-track:150e22da279290c8cab3914df607766454c5c903c162a74a70f66011d9cee9e3` |
| 70 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-15.md) | 271 | `declaration-track:88e50aa73dea17e187e0a774d9817d54af4126e3f8c016228fe1c55217a03fb3` |
| 71 | `theorem` | [coe_injective](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-injective.md) | 274 | `result-track:4a8e56bea3e73f15fa55a63888f4f1403d2f71d6f24428c233b8cdb1eff2b094` |
| 72 | `theorem` | [coe_inj](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-inj.md) | 278 | `result-track:b504f9c4a99630f3eb8e578a17f704f1c70b05b99b2bddfd120de9ed51350232` |
| 73 | `theorem` | [isEmbedding_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/isembedding-coe.md) | 281 | `result-track:3216b918b8b6521ce51ca0ff5b8d63234d218765604fab8a7af37d584a060538` |
| 74 | `theorem` | [continuous_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/continuous-coe.md) | 284 | `result-track:055c7c74ad72fe0586a733a572eda3c4adffa7fe3a9a258fd55a725894f35ab9` |
| 75 | `theorem` | [norm_le_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/norm-le-one.md) | 286 | `result-track:568d5d123bd2c06b040b43d33f212a2e6c7982cf31f9890341502f3cd7fb2968` |
| 76 | `theorem` | [sq_norm_lt_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/sq-norm-lt-one.md) | 289 | `result-track:3469da3373df11fe9a2d12f09b936d04c78a44f3d5977d47e60770f5a59e40db` |
| 77 | `theorem` | [normSq_lt_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/normsq-lt-one-source-edition-2.md) | 293 | `result-track:e8458b334538b5808eb888ff93b1decf49e902564879720451404ecb01e8eb46` |
| 78 | `theorem` | [coe_mul](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-mul.md) | 298 | `result-track:36aa54fc5e17630df9ae4b73b9fcbd9db35c932eb98f4479bad83ecc3c9fe823` |
| 79 | `theorem` | [coe_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-neg-source-edition-2.md) | 302 | `result-track:dd197d030315baf6c0b19970d0d55fc6d34cd767a34ca66035fb471536210a68` |
| 80 | `def` | [mk](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-source-edition-2.md) | 306 | `declaration-track:76a1bc524e1bbd968b70f7dcb46f07e05647d52a37248e9521497cfc93fa20a6` |
| 81 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-19.md) | 309 | `declaration-track:c044b35bc197a96d14cfd738d1ab275ba89c9a0e75f453004d919dee94f21aac` |
| 82 | `def` | [casesOn](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/caseson-source-edition-2.md) | 314 | `declaration-track:eaa55567e1b5e1215c274e52dfb5edc71ddc26a24b979a23a59c6664bcb2cb16` |
| 83 | `theorem` | [casesOn_mk](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/caseson-mk-source-edition-2.md) | 319 | `result-track:b22cd413da6a778fb98090b04a5d797232921113b80eb6ad6d1f0a3659db66cb` |
| 84 | `theorem` | [coe_mk](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-mk-source-edition-2.md) | 324 | `result-track:8663a3c8635def39edbd3d63ac42fa68b9cbed2c9fc86255672579140dfda230` |
| 85 | `theorem` | [mk_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-coe.md) | 328 | `result-track:d6a684a04bb7f0af581ee177b9ef663894afa9234b624e13b3e0d13d4aeb9d2b` |
| 86 | `theorem` | [mk_inj](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-inj.md) | 332 | `result-track:7558e2a3fa253eff40c26f3c6e5375ef374324e0da7d5ef76cfb79e8a3f76b51` |
| 87 | `theorem` | [«forall»](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/forall.md) | 335 | `result-track:36ba5ec464fe377dce4fe99c553281df4e7729668c58ffc7cd9de73c9eb4fc45` |
| 88 | `theorem` | [«exists»](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/exists.md) | 338 | `result-track:4b02ad23982157bc546505cbf03595c8c459668521b1da439c189c0a64f62361` |
| 89 | `theorem` | [mk_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-neg.md) | 342 | `result-track:85a48505a6c3b4e9c5691e22f5fa5449218ac128af3e64d295719479580609bf` |
| 90 | `theorem` | [coe_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-zero-source-edition-2.md) | 346 | `result-track:647701404b0f8c347e60984512076a9c82a869ff0931cb725f5bc5e7c80c9b85` |
| 91 | `theorem` | [coe_eq_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-eq-zero-source-edition-2.md) | 350 | `result-track:e52c256b569dd59305a06b96844e8bb9d216fbe0dc7691145f528a1b13b8200e` |
| 92 | `theorem` | [mk_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-zero-source-edition-2.md) | 353 | `result-track:f612ed543dc4e8dc585250f7ed7bc1a5191dee03442b55c0a6e21a33ad5bedb6` |
| 93 | `theorem` | [mk_eq_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-eq-zero.md) | 355 | `result-track:bd4ee49ee9717969b6edb784c2aeed32760041aeb138fba2fad0c9545db281cf` |
| 94 | `theorem` | [coe_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-one.md) | 358 | `result-track:0d2e56e3ac64cde19e85964961bdf28ded3b30e854a20d0204322e96ef2d31e6` |
| 95 | `theorem` | [coe_eq_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-eq-one.md) | 362 | `result-track:d96c301cb44c1397bcd8e55f90ce827574394bf275c39bdf6f48dac6334990e0` |
| 96 | `theorem` | [mk_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-one.md) | 365 | `result-track:bc0f46970df312cfb9e30c8a569572a467c585fb43aa23032f15c7e4ec239832` |
| 97 | `theorem` | [mk_eq_one](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/mk-eq-one.md) | 367 | `result-track:c8e3fb8a22b68f6b68d8c0d475e6c0a6aabf486ef6fc39bb860d0519eaffcfff` |
| 98 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance.md) | 369 | `declaration-track:0dba351d3956ece89622c6e1d5d4171c90947aca714f528ebb693ef4bc55833a` |
| 99 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-17.md) | 372 | `declaration-track:b02374f02eaed54441c287e929f2e9785889dedc64d77b952355504cb546b3b7` |
| 100 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-24.md) | 375 | `declaration-track:f901a38706e6375f9fcf82ed45876302efa533d8a0b67d267773fd0a973701d2` |
| 101 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-12.md) | 378 | `declaration-track:7756aa226827c4d1a1461821bdd4558cef13040372fc97d54d095b1d3adcc11a` |
| 102 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-22.md) | 381 | `declaration-track:ef4a882797c76e422c5a2ee81ed94a0421a5f732313ccf188034506f593aadc7` |
| 103 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-23.md) | 384 | `declaration-track:f290f83eed3b5b6d84220e29444262188510f83f6f89f3da4af966d45ef28875` |
| 104 | `instance` | [instMulActionClosedBall](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instmulactionclosedball.md) | 387 | `declaration-track:5317ae39f385dbbdf95aa0fee2c0b2aeb41f51f0faf484ea9960085e7ee5042c` |
| 105 | `instance` | [instIsScalarTower_closedBall_closedBall](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instisscalartower-closedball-closedball.md) | 390 | `declaration-track:614341264e1664b097c5ce1c7725d762da93c7f45121f900aa7539d24d578de7` |
| 106 | `instance` | [instIsScalarTower_closedBall](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instisscalartower-closedball.md) | 394 | `declaration-track:1b474a237272aa5a867abef88f5ebafff0321d2b789fa333f421c1ec796951e2` |
| 107 | `instance` | [instSMulCommClass_closedBall_left](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instsmulcommclass-closedball-left.md) | 397 | `declaration-track:d0fecc176db704951c321b6592c0122cd0eb52ae176ca922cd2e0571232e0ded` |
| 108 | `instance` | [instSMulCommClass_closedBall_right](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instsmulcommclass-closedball-right.md) | 400 | `declaration-track:840ddd41aa0da1c2062dc1b763170a0614ffcd69da49cd139e6dc360f84b33bb` |
| 109 | `instance` | [instSMulCommClass_circle_closedBall](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instsmulcommclass-circle-closedball.md) | 403 | `declaration-track:93aca6dc1af8602ebf03c9370b6ee3823b2c8428e8d321b416678cca43934312` |
| 110 | `instance` | [instSMulCommClass_closedBall_circle](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instsmulcommclass-closedball-circle.md) | 406 | `declaration-track:4a045227993395fa947fdfc99657cc17c0df54c8ec379f0c8663cd4ba8a4814a` |
| 111 | `theorem` | [coe_closedBall_smul](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-closedball-smul.md) | 410 | `result-track:4ee646a93ff25db86737723931a7350f5c11edb630159786aacc7e372c31f5a0` |
| 112 | `theorem` | [coe_circle_smul](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-circle-smul.md) | 414 | `result-track:0632554b58d963a8b8c06e4f5562b4641184fa89da78868596df6df17ea535b4` |
| 113 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-10.md) | 417 | `declaration-track:68962bf9a989784d8e2daa6dbee4b2c66714862e39ad3d11f61c0b2f5843d636` |
| 114 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-16.md) | 420 | `declaration-track:a4b618c218538ce104d27386be7358a344a07851b269c90e9f76e5f2a2f83518` |
| 115 | `theorem` | [coe_pow](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-pow.md) | 424 | `result-track:26e3a16a7b326940127fbc9dd4b5d6cd2d203fadb50a9264f4219856349f4ee6` |
| 116 | `theorem` | [continuous_pow](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/continuous-pow.md) | 427 | `result-track:09f182a175283910de4955e5ed22500abb78630b76e9cf45551d4d032c82f7f7` |
| 117 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-9.md) | 431 | `declaration-track:4f13d5348d622b314e4389b2bcbf9de1172f01347d88f8dd59280cfa8103aaa5` |
| 118 | `def` | [re](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-source-edition-2.md) | 437 | `declaration-track:d8301ea912fe9af8bdfba8190df7f696d21ada0130b2ba59d7e0293d2ef4ab16` |
| 119 | `def` | [im](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-source-edition-2.md) | 441 | `declaration-track:f0a990940da7d2f6e12dc18b416ba2df28041f625f9df4fc64c7ab994c1b4476` |
| 120 | `theorem` | [re_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-coe-source-edition-2.md) | 445 | `result-track:4c503006fd8cdc0b86fc3d9b9842b9980b37e79b5baee3326c4e4cd87546b045` |
| 121 | `theorem` | [im_coe](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-coe-source-edition-2.md) | 449 | `result-track:eb1b315b46f6011a3294a48479e387742ad06599931bfa551f3449ae81717659` |
| 122 | `theorem` | [re_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-neg-source-edition-2.md) | 453 | `result-track:fd7bd080f6dd5d3d93169586965f485ace7caed17ffc43ab560024e70634a270` |
| 123 | `theorem` | [im_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-neg-source-edition-2.md) | 457 | `result-track:a27bcc00a85a5abb66d16329ae0139c86706eaf64f3067c01f495bd3366a0eb7` |
| 124 | `theorem` | [re_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-zero.md) | 460 | `result-track:3fde4418e2da8e9dd8c4e059c26fe565fb2c810398f5d2f8ddf482efe696354b` |
| 125 | `theorem` | [im_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-zero.md) | 461 | `result-track:029b8b7c9ff3640a8292a85b325071015223bad927d168a987fae5b90ac4c1d3` |
| 126 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-18.md) | 464 | `declaration-track:b9129a91ef9d618ddeb34184aa77b3cb3dbf4979e9c7643ca26860ada802c853` |
| 127 | `theorem` | [coe_star](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/coe-star-source-edition-2.md) | 467 | `result-track:e365ba2be6a6681d3079d3153025e127dbca946f93a48584cda7be92cd5b06b6` |
| 128 | `theorem` | [star_eq_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/star-eq-zero.md) | 470 | `result-track:356b128ba38996ae8b5bb822cc1cd82f503267f01ed57ce00244371c80aae76d` |
| 129 | `theorem` | [star_zero](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/star-zero.md) | 474 | `result-track:46b7bc3fe4e659658a602b591106e12df38a6692df058270fe5d7dbad7e416c1` |
| 130 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-5.md) | 476 | `declaration-track:19f0fb9d3c34e3bbc9d65cd7b20c2404d612c245cc97f6e7e66b93ed2a1ba213` |
| 131 | `theorem` | [star_neg](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/star-neg-source-edition-2.md) | 479 | `result-track:301d2de645e048b7f493049cf793a3c931bd786d6f5293e78d430eecb120c5b3` |
| 132 | `theorem` | [re_star](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/re-star-source-edition-2.md) | 481 | `result-track:f88a3bde0a0d17cc9296e2436b3b8d71ea3b45f239529460b9a4e46d7adf2f97` |
| 133 | `theorem` | [im_star](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/im-star.md) | 483 | `result-track:187529ab697d210906497cd762cb5824d0fea91e7e0429fec02c94a1ca4c8997` |
| 134 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UnitDiscBasicPublic.lean/declarations/instance-source-edition-21.md) | 485 | `declaration-track:c67e908eacf7359be3d989472e1d53a07510d121ea1981dded5f2224011c1211` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bc2aae86d48e0bbcff9940aa12de8016ec949461573e1709a219ef6f2d0f803 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
