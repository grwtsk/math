# Verification target: Continuous Function Zero At Infty Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d4f104eefffe8b26bb32eac6e3af6a2d0cc4924",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d4f104eefffe8b26bb32eac6e3af6a2d0cc4924`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.CocompactMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroAtInftyContinuousMap](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/zeroatinftycontinuousmap.md) | 50 | `declaration-track:7d6d2d1eb2285dafb345d6cab4fe39db0eea252e1b4c39aa2b7110390f621ff3` |
| 2 | `class` | [ZeroAtInftyContinuousMapClass](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/zeroatinftycontinuousmapclass.md) | 70 | `declaration-track:e153e5a354cb63ba9d60717457369fa925d7182d4e005ca26e9074b025859246` |
| 3 | `instance` | [instZeroAtInftyContinuousMapClass](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instzeroatinftycontinuousmapclass.md) | 86 | `declaration-track:f5f45dbf794ce4f5124cb325fc12fe4fd549b98f0776afbd82ef7588b2fb0e40` |
| 4 | `instance` | [instCoeFun](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instcoefun.md) | 97 | `declaration-track:b5fc8d9439a21ee587bb08a03835055e798693b9eca473dad3899b37e81166c5` |
| 5 | `instance` | [instCoeTC](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instcoetc.md) | 100 | `declaration-track:2f92abff0ff6f7f6dc4e8a0417f347a8b91bbc1ac008c143d55f2e0d04462548` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-tocontinuousmap.md) | 107 | `result-track:27cba23dc7038ef25d20c260dc1c1b6e29b7575398734b92eee293ce0b957370` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/ext.md) | 112 | `result-track:56b6a31bb885c6f46c119334b91cd0526eac8a6c5ee266f4fd88625b15db36f9` |
| 8 | `def` | [copy](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/copy.md) | 118 | `declaration-track:5ee748b31196322b70362808f846aa1cb6faee9fae1d6e321ecba91341db15b0` |
| 9 | `theorem` | [coe_copy](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-copy.md) | 129 | `result-track:71a7c23dafa979e8ae70fb22aedc7dc7c815354b7fb5ecec509bf69bce48477f` |
| 10 | `theorem` | [copy_eq](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/copy-eq.md) | 133 | `result-track:c2c1e6815431949d651ee7618083efd4abf8d51d49f8c8be7c7967b38d5b183c` |
| 11 | `theorem` | [eq_of_empty](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/eq-of-empty.md) | 137 | `result-track:1ff6dc8baad0d2592e89a441eaaa82f704a354833a70db9fe3e8827976449ba7` |
| 12 | `def` | [ContinuousMap.liftZeroAtInfty](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/continuousmap-liftzeroatinfty.md) | 144 | `declaration-track:e93279f2bd8d70d2e5bb701170c3f1e8015d553c687fc88bc9b9a24af61359b8` |
| 13 | `def` | [zeroAtInftyContinuousMapClass.ofCompact](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/zeroatinftycontinuousmapclass-ofcompact.md) | 160 | `declaration-track:ad06d9abb4e1b7c37f8e44e51e196cd23a48ec20cd1b6c9bf34469a4262ad4f1` |
| 14 | `instance` | [instZero](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instzero.md) | 182 | `declaration-track:3d3785d93352a2a7e9841ed150a7a1b8170515d40548086b5a526b7adc2da3e1` |
| 15 | `instance` | [instInhabited](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instinhabited.md) | 185 | `declaration-track:de8857b96522beb612020ecc2b9130e71337be6573d3c282e473d936d2b44890` |
| 16 | `theorem` | [coe_zero](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-zero.md) | 189 | `result-track:bef8654338999f693437fe510f4afdf859c871708db45506ddbaacf867d3cb4f` |
| 17 | `theorem` | [zero_apply](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/zero-apply.md) | 193 | `result-track:e21be019851a73b7f3c1b2fda52350073f3d561a73020d10d0ccbf25b694489c` |
| 18 | `instance` | [instMul](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instmul.md) | 197 | `declaration-track:9503f05ecd547cf23fe6a038b561de05e757c90d613de17a3ab0fdbadfda8f11` |
| 19 | `theorem` | [coe_mul](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-mul.md) | 202 | `result-track:390e8f5663beb0416e6ad4f86e22aaf2fe5e06f8764583ce4575e680ca45a15c` |
| 20 | `theorem` | [mul_apply](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/mul-apply.md) | 206 | `result-track:154bbd523bcc7e5b0eeff71b37409f665d2b13adabc15421bc8d325c603c62a2` |
| 21 | `instance` | [instMulZeroClass](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instmulzeroclass.md) | 210 | `declaration-track:c3c408bfe2bd3488a6992bb97386d82e7294286aef61e830ef60cda63e397cd1` |
| 22 | `instance` | [instSemigroupWithZero](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instsemigroupwithzero.md) | 213 | `declaration-track:c25af5331f75c8f8872cbe0d9b64e450e4b4b865df1df6eb7baea9d2f946d86b` |
| 23 | `instance` | [instAdd](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instadd.md) | 217 | `declaration-track:2d2c4cf9222309f0a6bb2684d6ef8580c65cbafccc621ba5d6670e7969034a85` |
| 24 | `theorem` | [coe_add](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-add.md) | 221 | `result-track:3ed378ce73e7cc8df68c44003455d26866c6018b8a8b2db07af3e9a42cc2cf2f` |
| 25 | `theorem` | [add_apply](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/add-apply.md) | 225 | `result-track:c3d2c6cd46669fee48383db60a6e6ed2799e3445248bb4c4fc8005548d808f95` |
| 26 | `instance` | [instAddZeroClass](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instaddzeroclass.md) | 229 | `declaration-track:b81560bae15f15ef1fea551193e0a5089dee93fa10270c3e27c4b0f1008455d0` |
| 27 | `theorem` | [coe_nsmulRec](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-nsmulrec.md) | 237 | `result-track:e573f3a6e3afa05bca4ea8b75866ce8fa98f72a68e226239967f75944e43ecca` |
| 28 | `instance` | [instNatSMul](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnatsmul.md) | 242 | `declaration-track:64af79e0f7ed68c200cb789ee1c51ca4d63b96d09b3e2fd4974e479f5c57acf9` |
| 29 | `instance` | [instAddMonoid](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instaddmonoid.md) | 247 | `declaration-track:10006ac9e6cf882ba8308802c656c127a48620f66f1da232bc3b94f4476e0c89` |
| 30 | `instance` | [instAddCommMonoid](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instaddcommmonoid.md) | 252 | `declaration-track:86937b6979f286ed2ba218921f59b6fd6df8ccbed15bb33c79816d3359babdd8` |
| 31 | `instance` | [instNeg](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instneg.md) | 259 | `declaration-track:8efb20e04e75375e4b9e4555f10fa57b7bec98ceef6bcfd765f7722a752a027b` |
| 32 | `theorem` | [coe_neg](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-neg.md) | 263 | `result-track:b7d72817a279e1327c7844ff8bc6b88ea095983600b1dbffa3745f7a574b5cb4` |
| 33 | `theorem` | [neg_apply](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/neg-apply.md) | 267 | `result-track:ec93b0543c0ed0604433a2434b2fcb57875ecf63e9d28770b1d70c26084af43d` |
| 34 | `instance` | [instSub](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instsub.md) | 271 | `declaration-track:0b9fb6045f836cc9e1df8880bb3762355d8c5a6f94fe7cb86de266712cda6c31` |
| 35 | `theorem` | [coe_sub](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-sub.md) | 275 | `result-track:038fd462c88c088fd5eca95af00d246a462f1b98cb02c82860e62484f0bed94d` |
| 36 | `theorem` | [sub_apply](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/sub-apply.md) | 279 | `result-track:daaf019d721d741ec2c653d47896f0acf3811d8f9ec54777acae1604d5790d9e` |
| 37 | `theorem` | [coe_zsmulRec](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-zsmulrec.md) | 284 | `result-track:bdaf612828e2af179f6711ae969f97f306214d4ed0a7a439a93399e5f498f2f6` |
| 38 | `instance` | [instIntSMul](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instintsmul.md) | 289 | `declaration-track:1eccaaff74672707c6b88b10ab30bc6774bb06ca8070d30334c4cc91cb6aabe1` |
| 39 | `instance` | [instAddGroup](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instaddgroup.md) | 295 | `declaration-track:2e4dad77cca52f303365e8f5297f289d3cde9a1ddb7f0bf91e11d6b19a83c18b` |
| 40 | `instance` | [instAddCommGroup](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instaddcommgroup.md) | 300 | `declaration-track:310d7cc14d8fff237acac195dcdae56b76d8408aefea1676abb51606371f80cd` |
| 41 | `instance` | [instSMul](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instsmul.md) | 304 | `declaration-track:67de53a74c3faa6e4ad11fa336f0474223c29a8cf2012d32e948ae40e5a9764f` |
| 42 | `theorem` | [coe_smul](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-smul.md) | 311 | `result-track:6eb008faf0804f987240afc38ca6c901a4b1cb399e8192e2a232191444808d78` |
| 43 | `theorem` | [smul_apply](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/smul-apply.md) | 316 | `result-track:69fa26b765da75c1d9007073b11707ecd9364598ec54590383e32547eb6d2aef` |
| 44 | `instance` | [instIsCentralScalar](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instiscentralscalar.md) | 321 | `declaration-track:5815cbab3044f41c9af988c13894ca7ce1c51ba215281cdbd4b0f924b2d16b38` |
| 45 | `instance` | [instSMulWithZero](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instsmulwithzero.md) | 325 | `declaration-track:e773df22597447e0d7f9df2a9e28c93dc8d505a890fb25770bc3da2f54a1a0e3` |
| 46 | `instance` | [instMulActionWithZero](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instmulactionwithzero.md) | 329 | `declaration-track:fc482740acd7acdd5a1707a2d3afe0d21d81f461e4230f7653f3700c1ada1cb9` |
| 47 | `instance` | [instModule](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instmodule.md) | 333 | `declaration-track:195f838af9c8bf79ec9f4650a5fecef5ff079a7bd02b4792f142fb5ae43a7b87` |
| 48 | `instance` | [instNonUnitalNonAssocSemiring](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnonunitalnonassocsemiring.md) | 337 | `declaration-track:8d590fb7028eef2f6607f537eb4316f0e739dfc230e589188c3a990a81227b01` |
| 49 | `instance` | [instNonUnitalSemiring](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnonunitalsemiring.md) | 341 | `declaration-track:22830d34122eb3ec289af70fb6a6f4773afb6ea14bea595768d2cdd9d91e395e` |
| 50 | `instance` | [instNonUnitalCommSemiring](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnonunitalcommsemiring.md) | 345 | `declaration-track:8ba5ee6dcc4768cf8d2dcaa45da89bafc53ef275fe1a5aae2a569a3f2d50452f` |
| 51 | `instance` | [instNonUnitalNonAssocRing](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnonunitalnonassocring.md) | 349 | `declaration-track:216e6dd12b8711d2de7aa428b99e50b81bdea3bcb652d9c8d4db6e06f8e746e6` |
| 52 | `instance` | [instNonUnitalRing](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnonunitalring.md) | 354 | `declaration-track:cba8f0938e242c978167b3356077a6b6bab0610e2537f35f85b72d3c3c6d836b` |
| 53 | `instance` | [instNonUnitalCommRing](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnonunitalcommring.md) | 358 | `declaration-track:e85ea75f14906a23b638ced28fad9a5ee2b5962406698554713e864733f48eb7` |
| 54 | `instance` | [instIsScalarTower](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instisscalartower.md) | 363 | `declaration-track:1c98f8819d6a29595c96baf088ccb442af4dd0ec627692922a21972236922230` |
| 55 | `instance` | [instSMulCommClass](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instsmulcommclass.md) | 371 | `declaration-track:9e0e5b621aaee2a83814327ddd70b8366b2eb909d4294f6ad5e1e3dc82c95e14` |
| 56 | `theorem` | [uniformContinuous](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/uniformcontinuous.md) | 385 | `result-track:da55fb1454c94d718cee43687feaebddc8e40bfd6c530b4236c240dd879501ae` |
| 57 | `theorem` | [bounded](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/bounded.md) | 406 | `result-track:8ffacef1fb9ff4a26008699dda2e7ccaee366c645c055dedab95f8dd6a7cdbef` |
| 58 | `theorem` | [bounded_range](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/bounded-range.md) | 420 | `result-track:dc8698ea8c442b42ec6871db355a7bb816bd452c3715814cd267858bf30f96cd` |
| 59 | `theorem` | [bounded_image](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/bounded-image.md) | 424 | `result-track:0de42ae5a4e2d915c15969aff966dfa04c7b9a3c7f50a282dffe00951d86f218` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instance-source-edition-2.md) | 428 | `declaration-track:b6c05c76a88e4433dd2566bc6631b558aacd95eef96a81a48ce11985cbac784d` |
| 61 | `def` | [toBcf](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/tobcf.md) | 434 | `declaration-track:5a905164abfa494c567703f6f8d90dea1249588ac7a6dc104cea6ece95065f6e` |
| 62 | `theorem` | [toBcf_injective](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/tobcf-injective.md) | 442 | `result-track:772fa81ec5a787f132a75f08be7e77819be27515c1dc2264e9803c578444cfb7` |
| 63 | `instance` | [instMetricSpace](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instmetricspace.md) | 453 | `declaration-track:da7d71046f17df941adb7e2fdaa64080012cffe2cfabf1c373f4c222824eaacb` |
| 64 | `theorem` | [dist_toBcf_eq_dist](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/dist-tobcf-eq-dist.md) | 457 | `result-track:ed1676ec0807a6ffa61d97d74c372888f4985e3ccfc8a250894ac914972540c2` |
| 65 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/tendsto-iff-tendstouniformly.md) | 464 | `result-track:40d3713815eb96cbf05b8d5417b40d405a97ecdfd50a89692494dce7ef5d3ee9` |
| 66 | `theorem` | [isometry_toBcf](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/isometry-tobcf.md) | 471 | `result-track:1f93a73703857691806ac6d0ff4177afeeed99d7babb3c785d7cf24f291b5322` |
| 67 | `theorem` | [closed_range_toBcf](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/closed-range-tobcf.md) | 474 | `result-track:07d6afdfc59631e69f134e133b7ec88956de4fac62951672d6e213d84ae0830f` |
| 68 | `instance` | [instCompleteSpace](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instcompletespace.md) | 491 | `declaration-track:e2b237caa31a545722c8ca9584268ab54b0173f10bbc3164806466929b66948d` |
| 69 | `instance` | [instNormedAddCommGroup](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnormedaddcommgroup.md) | 511 | `declaration-track:dbe7b167b75342cffe7641b8f439f8f529a6227e83d2e435a0fb182cbc82620a` |
| 70 | `theorem` | [norm_toBcf_eq_norm](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/norm-tobcf-eq-norm.md) | 516 | `result-track:4c8561bee1c0e80389c94771153ffdfff23eb321f13619a6a981a4c80f3010ec` |
| 71 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instance.md) | 520 | `declaration-track:259f95557a32e6bea96d9468cd911a3dc7e5611f8c946fd75e60e59e344d4497` |
| 72 | `instance` | [instNonUnitalNormedRing](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnonunitalnormedring.md) | 528 | `declaration-track:f737ed84c9ae91845f77a6ba4ec423dadcb219195eaf78d61ba59d41fa44e983` |
| 73 | `instance` | [instStar](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/inststar.md) | 551 | `declaration-track:4611f47fd13fee836040e23de0886fe3308b92d42d81cdc17c26b1a216b43659` |
| 74 | `theorem` | [coe_star](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-star.md) | 559 | `result-track:1a397b4cbaff9bf9765edc66ffe9cccfc6598fbfce497d1cf583b7f9e0633d57` |
| 75 | `theorem` | [star_apply](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/star-apply.md) | 563 | `result-track:8c80f86a38ca926ba7941cc6a62cbfb0ee114b15df2bbea3de222f1f4d892c93` |
| 76 | `instance` | [instStarAddMonoid](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/inststaraddmonoid.md) | 567 | `declaration-track:e8b306bc06d392b4f2a5b7dcd2fe4e54c7854b434e79fb77774b646032ea79e0` |
| 77 | `instance` | [instNormedStarGroup](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instnormedstargroup.md) | 577 | `declaration-track:53bdeb563c730804aa68806146b380c147e89a187be830ad2775c3e5a3eb80db` |
| 78 | `instance` | [instStarModule](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/inststarmodule.md) | 587 | `declaration-track:f9ac463f011a5f1cb2e80db425fd9e4600b6d40e19bba8f0de47fb34b24fb7eb` |
| 79 | `instance` | [instStarRing](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/inststarring.md) | 597 | `declaration-track:1ebdc93d86aa728e4bfb59034cade0440f156c2febf9b3d2132435112a2fdb1a` |
| 80 | `instance` | [instCstarRing](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/instcstarring.md) | 605 | `declaration-track:39fed2f87aa094ee4131e9c81e8c026f0cb178d82a598a462de36e601a16a5a7` |
| 81 | `def` | [comp](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/comp.md) | 627 | `declaration-track:29cd4dd47048ab5db429e8aba864c01629fe92c1d862b63c00c8111a8124d20b` |
| 82 | `theorem` | [coe_comp_to_continuous_fun](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/coe-comp-to-continuous-fun.md) | 633 | `result-track:e1710c378d8fe35e20968a05cadbd844659f1d33497d6801fa6ba03a5e7a6fe0` |
| 83 | `theorem` | [comp_id](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/comp-id.md) | 638 | `result-track:de688e1a89b0bb11085165872270b461a5a688ff4a750fd99aa87ef5bf0209a8` |
| 84 | `theorem` | [comp_assoc](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/comp-assoc.md) | 643 | `result-track:f7cb2b53784b0617e60ffaca7d5693121c5a39217b544cd139db05c041d19821` |
| 85 | `theorem` | [zero_comp](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/zero-comp.md) | 649 | `result-track:693711de1954903179158d5f51a7c3e148d11ce78bf82b5ca83ef6d532737edd` |
| 86 | `def` | [compAddMonoidHom](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/compaddmonoidhom.md) | 656 | `declaration-track:d29e5fbceed40064350cb33dedc227974ec7063cfdcd5310660f5b5ecc764c52` |
| 87 | `def` | [compMulHom](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/compmulhom.md) | 663 | `declaration-track:66c29d49ec6a531ddad7ab9fac93ec26b1876767e02d723ffb82177d471af74f` |
| 88 | `def` | [compLinearMap](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/complinearmap.md) | 669 | `declaration-track:a76cbc22c55992c5138e838dd4e5f3332b6780ff8fa87450a3e9b8df83570ac8` |
| 89 | `def` | [compNonUnitalAlgHom](../../../../GeneralTopology/ContinuousFunctionZeroAtInftyNamespaced.lean/declarations/compnonunitalalghom.md) | 677 | `declaration-track:80a84f8cd6e772e9e15cecdcb891c5486d58dabb3a690ed125fb365b9ec43e0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae9aeeac4a5dc857467f5ef59a7780dea7785510ba221d1f5bc32e2882308b74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
