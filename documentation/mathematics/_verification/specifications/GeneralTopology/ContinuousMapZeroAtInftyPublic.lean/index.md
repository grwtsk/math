# Verification target: Continuous Map Zero At Infty Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f79b9219f4bdf77ba4f929d6bab7b66539c77b0",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f79b9219f4bdf77ba4f929d6bab7b66539c77b0`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean.json)

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
| 1 | `structure` | [ZeroAtInftyContinuousMap](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/zeroatinftycontinuousmap.md) | 45 | `declaration-track:4647896eece340b88f4609d88cf1168d1dd68d90df1b8f4eba6c6e2f973bebca` |
| 2 | `class` | [ZeroAtInftyContinuousMapClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/zeroatinftycontinuousmapclass.md) | 64 | `declaration-track:4179f7dca7df7e1b71ed287dcaf1ece7c6b64e7c76bd86066f63e6d180d3530f` |
| 3 | `instance` | [instFunLike](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instfunlike.md) | 80 | `declaration-track:18044e12389fbac6647109d43f83c1a227565d680933eb176a15da5ead2f6342` |
| 4 | `instance` | [instZeroAtInftyContinuousMapClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instzeroatinftycontinuousmapclass.md) | 87 | `declaration-track:a895219579aab514954562f9505eecd299b32a9cb6ed38a81b797b5f0386cca7` |
| 5 | `instance` | [instCoeTC](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instcoetc.md) | 91 | `declaration-track:8355a9d7c1c734a0ddd4f64cdeb4fab5f852908fed79bff13b96906efc0cf78f` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-tocontinuousmap.md) | 98 | `result-track:75b74381ed09fa2b3bc017c64a9f1586a1e210763badecac16cca826e5be684f` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/ext.md) | 102 | `result-track:c9444967e2b930c8d38c100964e6c54646a4eeed6a0381b0ba78c2f77e1013bb` |
| 8 | `lemma` | [coe_mk](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-mk.md) | 106 | `result-track:562654c512d33246c1417b586947465450bc2b192a7a5464a1ff74ec5867869e` |
| 9 | `def` | [copy](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/copy.md) | 114 | `declaration-track:f834aa4d392e114c6f6378b0704c6b64e9c91a84bc6ec1161fa963b591f354e0` |
| 10 | `theorem` | [coe_copy](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-copy.md) | 124 | `result-track:78a8b0866a1175a0f02fd0c2b61d30a4d3aef94b91cb7ea52b2729705b5fd5c4` |
| 11 | `theorem` | [copy_eq](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/copy-eq.md) | 127 | `result-track:cc91bb1e97499fa22574f553dd42618fc27c31993745a9ef9bd9e7c4054d627c` |
| 12 | `theorem` | [eq_of_empty](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/eq-of-empty.md) | 130 | `result-track:93026cb01ab70a36399728ece7339e0e1f1728d785ea56b717c50aadb06b3911` |
| 13 | `def` | [ContinuousMap.liftZeroAtInfty](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/continuousmap-liftzeroatinfty.md) | 136 | `declaration-track:26547e4641faf6448209e1a2480970a416219294484072b968a318070fb10642` |
| 14 | `lemma` | [zeroAtInftyContinuousMapClass.ofCompact](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/zeroatinftycontinuousmapclass-ofcompact.md) | 144 | `result-track:f718ccb7e58ab47dc03c897882417c789de8c8b5351c7506bd892d5fecbe4d5f` |
| 15 | `instance` | [instZero](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instzero.md) | 163 | `declaration-track:a61018ab4dd86e69dd3cedc79bdaf5e80cd2b927c6b06573de09e3429703edbc` |
| 16 | `instance` | [instInhabited](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instinhabited.md) | 166 | `declaration-track:775b8c6be9eeb59919ea820119a8effc238f2b1437f5e3197dabb1cf68eb3509` |
| 17 | `theorem` | [coe_zero](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-zero.md) | 170 | `result-track:05c971964ab29c7b7ddf04839b8bc5d7d7dab12a4ce71f49101369ad3deee83d` |
| 18 | `theorem` | [zero_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/zero-apply.md) | 173 | `result-track:f045c5d11917d6362aa414488328a7721532eb2212d70e7314529c3ec7d2dcac` |
| 19 | `instance` | [instMul](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instmul.md) | 176 | `declaration-track:2c64f4aeb4a03235b40b6208a5bb24b8ab139a269bbd6f123eab70836b3db2cb` |
| 20 | `theorem` | [coe_mul](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-mul.md) | 181 | `result-track:ffdb430fe27bfcb7075d729e4a34cad993f49ecce9126532b2c8207395c3552b` |
| 21 | `theorem` | [mul_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/mul-apply.md) | 184 | `result-track:43aac3552c8ad8fc2928b61b7661c68aaad767e3d1ff9aa1a354b10145dfac42` |
| 22 | `instance` | [instMulZeroClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instmulzeroclass.md) | 187 | `declaration-track:92ce5e614527a6314233e33167617e4a4d80946fe64c42ae0671d7c0b947a123` |
| 23 | `instance` | [instSemigroupWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instsemigroupwithzero.md) | 190 | `declaration-track:6984ff4d73c7abbe4a9b979a485a26521e18ee12d94f98dbfb4020563a37931b` |
| 24 | `instance` | [instAdd](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instadd.md) | 194 | `declaration-track:67aaacc0c3b73213cea5ca3796b5664104b0aba1a2424f5f659edb372234b5c8` |
| 25 | `theorem` | [coe_add](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-add.md) | 198 | `result-track:163bb913def98001d0e9a0617a28c8cf900a841219b4d1525817c574909b6f62` |
| 26 | `theorem` | [add_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/add-apply.md) | 201 | `result-track:3a97572adf85d240843927017ffbb22931f03abf68be30a9625401fe46f9a407` |
| 27 | `instance` | [instAddZeroClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instaddzeroclass.md) | 204 | `declaration-track:a1becc9c1e84eda6c068acf2a651b2bb5ed8626fea34fcb0a9f27378f408195a` |
| 28 | `instance` | [instSMul](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instsmul.md) | 207 | `declaration-track:1271d25c016bb070a6cbcb74f78831e873d841a51d5e024ccbfa21607e17d7ba` |
| 29 | `theorem` | [coe_smul](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-smul.md) | 212 | `result-track:7ad1a0f4388e30d7dbf61f998f9ec76e373c49ef1624f84a095f51bd03327ef3` |
| 30 | `theorem` | [smul_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/smul-apply.md) | 216 | `result-track:575a691889a78164c525a1ba87089f564b6c00f8829744424b94d3dfd33285d0` |
| 31 | `instance` | [instAddMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instaddmonoid.md) | 224 | `declaration-track:8e2e7162c950c124e2975cc02bad3cfcf377b7d0b271cb4ada8fac59631cf515` |
| 32 | `instance` | [instAddCommMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instaddcommmonoid.md) | 229 | `declaration-track:56433b243e392c6e98ddccfc213709166445cdd5be4933ab3314ca0081bfd9db` |
| 33 | `instance` | [instNeg](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instneg.md) | 236 | `declaration-track:66b5d6a507a55d81b923208216e83d3d69135a5bf59c6a344825827c7fca0bfa` |
| 34 | `theorem` | [coe_neg](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-neg.md) | 240 | `result-track:0cc9d54c848d649a5ff187069e90b6d7619fb85f0c2a526012c270d9ce9247da` |
| 35 | `theorem` | [neg_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/neg-apply.md) | 243 | `result-track:3a336a636d3e5184d2480d1c3b4863975f5ff98808b2c7968700ca9a6a9bc0d9` |
| 36 | `instance` | [instSub](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instsub.md) | 246 | `declaration-track:5aa36152b7c034ceee183099785b45ed1e07b7af9e4c8e73707e2803a7b4c677` |
| 37 | `theorem` | [coe_sub](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-sub.md) | 250 | `result-track:7c65a38c63e486401a03ccbd9a344d1ca16c4fd0bd1f666ea20e0f95283e0e4e` |
| 38 | `theorem` | [sub_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/sub-apply.md) | 253 | `result-track:45f83d47a6501f09909f1036ca2acd4af75a171ff16a4a037260d37156706ee9` |
| 39 | `instance` | [instAddGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instaddgroup.md) | 256 | `declaration-track:7f84f509ecff72113591734de69da887fa3ae3e7d631ac81899a6056c834bc49` |
| 40 | `instance` | [instAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instaddcommgroup.md) | 261 | `declaration-track:e5701facc8f11096be163b3420bc90ff9f48a6b3beed8c94144b9a047fa78dce` |
| 41 | `instance` | [instIsCentralScalar](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instiscentralscalar.md) | 266 | `declaration-track:3e35e40bbc5e4389ea341f6471837daef29fb702e8d53dfc689a1bb6f34dbc9e` |
| 42 | `instance` | [instIsScalarTower'](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instisscalartower.md) | 270 | `declaration-track:24e5d007f8f18d6ac5b1c3c7345aef7dcd26090cd50e9e342193638ad5bf8d75` |
| 43 | `instance` | [instSMulCommClass'](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instsmulcommclass.md) | 275 | `declaration-track:0b8bcc55e83408acd23344be796bca37ed4213f01522692bf528750cf9793cc5` |
| 44 | `instance` | [instSMulWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instsmulwithzero.md) | 280 | `declaration-track:26bc643e2fe0c886f4a85d90150831d24117e873cf9192e44c9452cbe6f7fe41` |
| 45 | `instance` | [instMulActionWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instmulactionwithzero.md) | 284 | `declaration-track:720626f4fd73b3334977e6ff0730a5e861fc8fd37ae9830911896a3dc8e836e2` |
| 46 | `instance` | [instModule](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instmodule.md) | 288 | `declaration-track:cdf999ca10674fe2d3869c9c90e61e7cce5258e43f8150b11ca5a70d64735e5f` |
| 47 | `instance` | [instNonUnitalNonAssocSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalnonassocsemiring.md) | 292 | `declaration-track:04a12da3aa53c8b8ff4d25f21327f541b707943bdb8b063c9d735fbe60ea46d7` |
| 48 | `instance` | [instNonUnitalSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalsemiring.md) | 296 | `declaration-track:3f37b6af9c0d58b5fa53f31bbb52efc56dadc1cea6e6b5a9efa01432453fa260` |
| 49 | `instance` | [instNonUnitalCommSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalcommsemiring.md) | 300 | `declaration-track:16be7298aa7a6343be579b01f4e7957722ae63f58cca472bb6bf0a5055d5842c` |
| 50 | `instance` | [instNonUnitalNonAssocRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalnonassocring.md) | 304 | `declaration-track:c88c3915c7ab668060648adfdc917542397dcf04fdbb769bdc631187e239403f` |
| 51 | `instance` | [instNonUnitalRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalring.md) | 309 | `declaration-track:4926b15c45b7ddfac797d277119cc08d9f67c4e4d51db7d72538a7c32ee238a9` |
| 52 | `instance` | [instNonUnitalCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalcommring.md) | 314 | `declaration-track:05daa9c0d70944c9fc6e17d1f8065022946e89254170f8a99fd325f365796722` |
| 53 | `instance` | [instIsScalarTower](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instisscalartower-source-edition-2.md) | 319 | `declaration-track:65244aba9ada248c1610614d8bd8b7ab05472f73669f3fe26c7512d9029dc6f2` |
| 54 | `instance` | [instSMulCommClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instsmulcommclass-source-edition-2.md) | 327 | `declaration-track:e5ecb949f79a4090df6631696421df9fe898fb71246ebd85087dd07014dfc2b1` |
| 55 | `theorem` | [uniformContinuous](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/uniformcontinuous.md) | 342 | `result-track:d7e3ed035eb02bf52d6921be1be6de87a1f6495369a8f37e70a67db668e2eb0f` |
| 56 | `theorem` | [bounded](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/bounded.md) | 362 | `result-track:65de6df1c1e4eefc99f71872e7a66aa5bc26c120da285530ce16236256da2846` |
| 57 | `theorem` | [isBounded_range](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/isbounded-range.md) | 375 | `result-track:a95bcab294b094f042c386812bba292dcac013c3ce7cbcb03dfa6d02e2bb58fe` |
| 58 | `theorem` | [isBounded_image](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/isbounded-image.md) | 378 | `result-track:6d635a7f91d4646ad57b45984844ac63c1d3cc4a97178c0033ab0dd08c539836` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instance-source-edition-2.md) | 381 | `declaration-track:7eb1268b4ce7abb61421deffae87c64dd73eb172e8a0bf8016151b33803e2159` |
| 60 | `def` | [toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/tobcf.md) | 387 | `declaration-track:53dcc458276aa029b697c72bcbf2278364eb41c1f593c87f93092867d8a262fa` |
| 61 | `theorem` | [toBCF_injective](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/tobcf-injective.md) | 394 | `result-track:fc476d4727575414dd3eba3d98cabeae978ee84ba59501fef2148ef575231de7` |
| 62 | `instance` | [instPseudoMetricSpace](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instpseudometricspace.md) | 404 | `declaration-track:914523a685b361446e7f12e1988add855baad4078cef6f1c54946c2c0022e63d` |
| 63 | `instance` | [instMetricSpace](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instmetricspace.md) | 409 | `declaration-track:6dd5fa87635ec253ae95d576bddbe576449c4b707ed28925a0f532b6846a40e0` |
| 64 | `theorem` | [dist_toBCF_eq_dist](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/dist-tobcf-eq-dist.md) | 414 | `result-track:9d0aa1b31e5e4123dafb9ca8815f3d958608fef73c7f4978c9a21688e70be65c` |
| 65 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/tendsto-iff-tendstouniformly.md) | 420 | `result-track:0f8c82bdc677484103c249d9b105029867779ae881583797d399b05545fbad22` |
| 66 | `theorem` | [isometry_toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/isometry-tobcf.md) | 426 | `result-track:a15f94484fd30eceb426ec097bde2cdb060e6144c9d995026fdd4d7ae07c1226` |
| 67 | `theorem` | [isClosed_range_toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/isclosed-range-tobcf.md) | 428 | `result-track:3fee0ad088326e06ac14de48d9aade429de786df52a3e1b47c75b777f3899ab7` |
| 68 | `instance` | [instCompleteSpace](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instcompletespace.md) | 445 | `declaration-track:fd7cc83e6b5f8371c887665cd56f3361c87143a53fb2685806d39d8baec76f76` |
| 69 | `instance` | [instSeminormedAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instseminormedaddcommgroup.md) | 463 | `declaration-track:9d032ec9556564913887f57da4456b439ca8fde8c0763a58d9dfc6c84fa4432e` |
| 70 | `instance` | [instNormedAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnormedaddcommgroup.md) | 467 | `declaration-track:f74c95cf6201d46cb5078b852d890a206a6aced2610b2b4899a22e0f65a3b46a` |
| 71 | `theorem` | [norm_toBCF_eq_norm](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/norm-tobcf-eq-norm.md) | 475 | `result-track:5ecec3bbffb18be182c4699b0d5ae89afe44a333b0a5bbb90b0a5d00ffa49c80` |
| 72 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instance.md) | 478 | `declaration-track:32e1beb17c67328edb97904b403c48e49bdac8381be0bae675aa22b314b4b25c` |
| 73 | `instance` | [instNonUnitalSeminormedRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalseminormedring.md) | 485 | `declaration-track:f55dcd5a052b3f2c9e5bd583e3b390465c407b488865dc042a3949cc94a74d57` |
| 74 | `instance` | [instNonUnitalNormedRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalnormedring.md) | 490 | `declaration-track:5974e7480d51c70a5721fe3e0c02e9ac13b624d996ccd424fe6fe7981f5644fb` |
| 75 | `instance` | [instNonUnitalSeminormedCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalseminormedcommring.md) | 494 | `declaration-track:01a850ec64d841643e5e0db96530d7d88565925b1ef238fd904ed3d167138cd4` |
| 76 | `instance` | [instNonUnitalNormedCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnonunitalnormedcommring.md) | 498 | `declaration-track:0517c8472e70858c2ebd7baddc8161e65fb4a77be9dff7d36f7aac06e16d2a58` |
| 77 | `instance` | [instStar](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/inststar.md) | 521 | `declaration-track:3ae5ec057f636ce8f23b002b6869c818f2c8f8396d942a363e6aa5d8a0a8d117` |
| 78 | `theorem` | [coe_star](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-star.md) | 529 | `result-track:e936316a223d9cb49cdde21c6565d57aad1fa79458ee365ee59ecc635c38867a` |
| 79 | `theorem` | [star_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/star-apply.md) | 532 | `result-track:d4d66402fbcefaeb8d6b2a8bae588d1ef7f89b925f2df08b9529c60a4ec1e1e2` |
| 80 | `instance` | [instStarAddMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/inststaraddmonoid.md) | 535 | `declaration-track:4ab00091439489ada22645d98a277affe1b9f0190f57b8849b2851958e5d351d` |
| 81 | `instance` | [instNormedStarGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instnormedstargroup.md) | 545 | `declaration-track:14aacb2e2f641be65cc8805665e7121e0e4abff9aa934701279a8b321ba8310e` |
| 82 | `instance` | [instStarModule](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/inststarmodule.md) | 555 | `declaration-track:eceabfd81e9a9b8bffaaf8620251f2a25aa76ba4204237541f90a54ff0905262` |
| 83 | `instance` | [instStarRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/inststarring.md) | 565 | `declaration-track:8848b4c454cc61894d60d35fa69c4b28812f0baa3b2c1c9d258ab5ecdf1abef3` |
| 84 | `instance` | [instCStarRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/instcstarring.md) | 573 | `declaration-track:d42d96212274c93502dd16d41100cc2dcb5922d64888e3629f0e05ce415bb14c` |
| 85 | `def` | [comp](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/comp.md) | 595 | `declaration-track:bbc205fc95d7382372bb90e65ec6166c891b3a72010a5dfc2a0b2c98d52f13f0` |
| 86 | `theorem` | [coe_comp_to_continuous_fun](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/coe-comp-to-continuous-fun.md) | 600 | `result-track:7301e214d927e60cba7e5001d12148a6cb571210dc9f37e10911c008845d0da2` |
| 87 | `theorem` | [comp_id](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/comp-id.md) | 604 | `result-track:30d25d9ff2fd2a6565c4ac9916a4c85b7adda048e92ff09333401ae96b1ca676` |
| 88 | `theorem` | [comp_assoc](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/comp-assoc.md) | 608 | `result-track:4e26327b84585d397d4258c44e592515b26e0c3266bfe1dba5a58a42f92b9136` |
| 89 | `theorem` | [zero_comp](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/zero-comp.md) | 613 | `result-track:2effed920bd63da3268f34c6fdf2e1013d1d04810624f5c3daba1e3b30c58243` |
| 90 | `def` | [compAddMonoidHom](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/compaddmonoidhom.md) | 619 | `declaration-track:81cc5a6c943dc3b2d785bb0441b3b8cf5e551f75d953ed0b8347ea4809f762c3` |
| 91 | `def` | [compMulHom](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/compmulhom.md) | 625 | `declaration-track:8b42258daf0a99e54bcaa74aa27c41404fd3b31e39eaf82842c6f8147a55d2dd` |
| 92 | `def` | [compLinearMap](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/complinearmap.md) | 630 | `declaration-track:7fd84fa18c7f6979afd942ff436beb990ba79c5a263b320a538ead0c5f2470d4` |
| 93 | `def` | [compNonUnitalAlgHom](../../../../GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/declarations/compnonunitalalghom.md) | 637 | `declaration-track:802d35b6d21874da8ef57bce818974afab48974707c30bae0f45bbdac82d6cbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65f09414c37600239a5510ef315455e3f04dbf7df28599601d37e827ce2aa3da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
