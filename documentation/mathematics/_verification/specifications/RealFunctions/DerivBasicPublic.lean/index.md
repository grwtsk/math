# Verification target: Deriv Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81c0bb8469435c02cc0c950659d790e1a01dc92e",
  "lexical_observation_count": 178,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf4c0077cb0e87c857f1fcfea2c9c6263d1a3dee9fa8403893e00debf28a4356b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivBasicPublic.lean/index.md) · [Full source](../../../../RealFunctions/DerivBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81c0bb8469435c02cc0c950659d790e1a01dc92e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf4c0077cb0e87c857f1fcfea2c9c6263d1a3dee9fa8403893e00debf28a4356b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf4c0077cb0e87c857f1fcfea2c9c6263d1a3dee9fa8403893e00debf28a4356b.lean.json)

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
| 1 | `def` | [HasDerivAtFilter](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter.md) | 116 | `declaration-track:1470f7e056f12243ca978c9db6131580f7ec57393d53cdcdbb8eaee9dd9b0891` |
| 2 | `def` | [HasDerivWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat.md) | 123 | `declaration-track:ca57ed37fd5098f9ad3a32b255ffa930cc1588c08cac81a75d9076ce10bf0efa` |
| 3 | `def` | [HasDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat.md) | 130 | `declaration-track:9df3207ee17393a7aa2233a3fe67da768fc2863211db3ae42b402677effd6bd6` |
| 4 | `def` | [HasStrictDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat.md) | 136 | `declaration-track:a443a69911888cb46fdd81f79342878417b239fe8b681f43f75578cd6bc73d7d` |
| 5 | `def` | [derivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin.md) | 145 | `declaration-track:4ef03652e1899742a4b925b296dacb28e296c81cad382c63a781d3fb05e575f1` |
| 6 | `def` | [deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv.md) | 153 | `declaration-track:3a76bbfe3747120110d653bdb6f1522ebe233dab595c471e4cf52c963f75f9fa` |
| 7 | `theorem` | [hasFDerivAtFilter_iff_hasDerivAtFilter](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasfderivatfilter-iff-hasderivatfilter.md) | 165 | `result-track:dd2fcef7726797c2f3989f241a3d73810a335ff30b373c57f7b2e9280c3f8faa` |
| 8 | `theorem` | [hasDerivAtFilter_iff_hasFDerivAtFilter](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-iff-hasfderivatfilter.md) | 170 | `result-track:ae49b05e03c840a8af8e75cb80b38d893d40dc6598dd0afe5a87b95dbbf19307` |
| 9 | `theorem` | [hasFDerivWithinAt_iff_hasDerivWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasfderivwithinat-iff-hasderivwithinat.md) | 177 | `result-track:43e586d6daa9e715a2793c26e8913b37732f0293ce9409964cf08db4f8bdb1a1` |
| 10 | `theorem` | [hasDerivWithinAt_iff_hasFDerivWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-iff-hasfderivwithinat.md) | 184 | `result-track:6b4e459c32174339a025d188302ce7e51617ec59c3e835327a42449ac92bc0a8` |
| 11 | `theorem` | [hasFDerivAt_iff_hasDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasfderivat-iff-hasderivat.md) | 192 | `result-track:f215f31caaecae55ab899d385cc8707440ffea2e45ba3b50f8614e24895b538e` |
| 12 | `theorem` | [hasDerivAt_iff_hasFDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-iff-hasfderivat.md) | 198 | `result-track:f19bf490eb79d4a1d0af4a38258b7a18ed440a0edd3711cb58b1950ad760767b` |
| 13 | `theorem` | [hasStrictFDerivAt_iff_hasStrictDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictfderivat-iff-hasstrictderivat.md) | 204 | `result-track:fac27bccd84d18d66def1d2f1170c7506be361ab49881ad39aa21fd49099bae6` |
| 14 | `theorem` | [hasStrictDerivAt_iff_hasStrictFDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-iff-hasstrictfderivat.md) | 211 | `result-track:7f285000e2105db6baa8d5be15f1216b5f54f48b0d000fa5b5ad07bb23b38a3f` |
| 15 | `theorem` | [derivWithin_zero_of_not_differentiableWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-zero-of-not-differentiablewithinat.md) | 219 | `result-track:31917957852a7eff0068d006eba7ec0e775e44ef566b877262e194adb15de989` |
| 16 | `theorem` | [differentiableWithinAt_of_derivWithin_ne_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiablewithinat-of-derivwithin-ne-zero.md) | 225 | `result-track:8822bb6ba60d3a9b6301e26eb34bbfd08bfccbf9729deb3194c369a1952cb808` |
| 17 | `theorem` | [derivWithin_zero_of_not_accPt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-zero-of-not-accpt.md) | 240 | `result-track:1a160a48b1bd9815dc5d8b7d9de0d947a414ba1b565855f9cfd7151dbb30acc1` |
| 18 | `theorem` | [derivWithin_zero_of_not_uniqueDiffWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-zero-of-not-uniquediffwithinat.md) | 243 | `result-track:76bc71685ae74e777a5ba8c82141b6a44f77a9a444e5c070856a651449bf0720` |
| 19 | `theorem` | [derivWithin_zero_of_notMem_closure](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-zero-of-notmem-closure.md) | 247 | `result-track:270c5c60448f36c9c7e4cd0c34dea56f6cb498e6820709b6b8c7bb6ef8189c43` |
| 20 | `theorem` | [deriv_zero_of_not_differentiableAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-zero-of-not-differentiableat.md) | 250 | `result-track:a66eb89282fce7b06c772f1f99252e70fe55a6be5e6849a472462c9b4df5ca51` |
| 21 | `theorem` | [differentiableAt_of_deriv_ne_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiableat-of-deriv-ne-zero.md) | 255 | `result-track:5d8e27349e695b389d7378239bdea6c35148cddfda8acde07cedee0252a3cbd3` |
| 22 | `theorem` | [UniqueDiffWithinAt.eq_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/uniquediffwithinat-eq-deriv.md) | 258 | `result-track:c8cb1482e651059f4f9e5293fa7ee7a0415d24352e64871a91eef8102df0739d` |
| 23 | `theorem` | [hasDerivAtFilter_iff_isLittleO](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-iff-islittleo.md) | 262 | `result-track:442ac77aa74c6b3629f126a8876def1b0461b5e037da178f3e42aacd6c8b995c` |
| 24 | `theorem` | [hasDerivAtFilter_iff_tendsto](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-iff-tendsto.md) | 267 | `result-track:8f27567e9555f709a2fdc8e88cd417317b515bc788f0b10b5ded13131c74e6a1` |
| 25 | `theorem` | [hasDerivWithinAt_iff_isLittleO](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-iff-islittleo.md) | 272 | `result-track:f9bb06e6df0edcbde5a63056f66c310ca4a1bbfab70d90ffa12b5feeb0ea7829` |
| 26 | `theorem` | [hasDerivWithinAt_iff_tendsto](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-iff-tendsto.md) | 279 | `result-track:4c6cbaaf8ec3f7e2a602abceffb11d979fdfe2648ffa1d846578b0d1ed3619af` |
| 27 | `theorem` | [hasDerivAt_iff_isLittleO](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-iff-islittleo.md) | 284 | `result-track:ed227c9fdf922de422ad86377928fd4f968ef54150d4b5295c0199058f87308e` |
| 28 | `theorem` | [hasDerivAt_iff_tendsto](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-iff-tendsto.md) | 290 | `result-track:80546b6153b39b824b3a4f7a711afc571fd51a116d04f3107b3dffdbaed247db` |
| 29 | `theorem` | [HasDerivAtFilter.isBigO_sub](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-isbigo-sub.md) | 294 | `result-track:f851a3da64bfd2ded05154da8f908aed311e412efa4b6751edfc3f701aac8101` |
| 30 | `theorem` | [HasDerivAt.isBigO_sub](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-isbigo-sub.md) | 298 | `result-track:2eee295f11c166d26da6132da3c0b43665010404679a37b20f242fc6c7227e70` |
| 31 | `lemma` | [isInducing_toSpanSingleton](../../../../RealFunctions/DerivBasicPublic.lean/declarations/isinducing-tospansingleton.md) | 306 | `result-track:fe0bcce95eafe5a5bed62361ccf650262cbcffd27c5b4e7334cda515cecf6853` |
| 32 | `theorem` | [HasDerivAtFilter.isEquivalent_sub](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-isequivalent-sub.md) | 311 | `result-track:18e5af0a7fb482726a0bd41a5c327ae2734a2ad778bb5fc85faf99043b877e2c` |
| 33 | `theorem` | [HasDerivAtFilter.isTheta_sub](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-istheta-sub.md) | 315 | `result-track:34ed202aaa9a937a8a4fb015a78ab53372aed297e8f946aae843d9665c465c8c` |
| 34 | `theorem` | [HasStrictDerivAt.hasDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-hasderivat.md) | 319 | `result-track:14e6c7293ac866d823041aa6df00a0a24bd769add67ef41d55bbba56aff1b12d` |
| 35 | `theorem` | [hasDerivWithinAt_congr_set'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-congr-set.md) | 322 | `result-track:135dc70a51fdb93fb2627d5015865e26b7a3267020b0322e02f18b3d93a3aa6d` |
| 36 | `theorem` | [hasDerivWithinAt_congr_set](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-congr-set-source-edition-2.md) | 326 | `result-track:4fbf6678166a933ccbbf250058c02785309f5076dc51fc2bbc21c0642db9e05c` |
| 37 | `theorem` | [hasDerivWithinAt_sdiff_singleton](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-sdiff-singleton.md) | 333 | `result-track:b2f5c1a23a0081269638f9e3be67f197b781ea1770ee783a5a5746178e0d972a` |
| 38 | `theorem` | [hasDerivWithinAt_Ioi_iff_Ici](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-ioi-iff-ici.md) | 341 | `result-track:8f9e9fd8bdfdd58e8b2c1d4421c04fdea958e142a1bfea93ed18392a2ab4777d` |
| 39 | `theorem` | [hasDerivWithinAt_Iio_iff_Iic](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-iio-iff-iic.md) | 348 | `result-track:f42e51855d7b8772bae9e8132d64fef24c8b5b60d95d68c5c75588b7fdea4a4c` |
| 40 | `theorem` | [HasDerivWithinAt.Ioi_iff_Ioo](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-ioi-iff-ioo.md) | 354 | `result-track:dbe40304696537bc95ba5e4b5ed917ab6176aadf1368aaf926e10ae5a1d503c8` |
| 41 | `theorem` | [hasDerivAt_iff_isLittleO_nhds_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-iff-islittleo-nhds-zero.md) | 360 | `result-track:a144d8252824abb9b3ae62f9e28c7018ff744d8ad684a0f8d84b46ccf51f7ebe` |
| 42 | `theorem` | [HasDerivAtFilter.mono](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-mono.md) | 364 | `result-track:2afe555b8aa55ca32ae8de0cedc0aecedfaea918a5f6061e8d33765b86894ea2` |
| 43 | `theorem` | [HasDerivWithinAt.mono](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-mono.md) | 368 | `result-track:8ee16b949c3034b5ed8d55cc85879b735713d2231e3839a46c1612b833fbd0d0` |
| 44 | `theorem` | [HasDerivWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-mono-of-mem-nhdswithin.md) | 372 | `result-track:47b00e2d0f36b7f04abc3aa53b218939a035f40720edd4a6b79a4eec79d23f48` |
| 45 | `theorem` | [HasDerivAt.hasDerivAtFilter](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-hasderivatfilter.md) | 376 | `result-track:aabee0ee7c0c78877ef9ca674603876c573b0ed6f7999fc24586a95f860e5b7a` |
| 46 | `theorem` | [HasDerivAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-hasderivwithinat.md) | 380 | `result-track:b9f63c4ec893c14a97f802ca25ab6da76ac0103c694a63296203b33233f0137a` |
| 47 | `theorem` | [HasDerivWithinAt.differentiableWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-differentiablewithinat.md) | 383 | `result-track:970baae40bd7815a19306fd08eb53a4270c084e96e79271592cdcc6957466888` |
| 48 | `theorem` | [HasDerivAt.differentiableAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-differentiableat.md) | 387 | `result-track:95e2a49216b08fd92ea9f3c156d29f794ad0504aee20da899353c028eda8f91c` |
| 49 | `theorem` | [hasDerivWithinAt_univ](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-univ.md) | 391 | `result-track:d66202276feb72b52fab5c0b87f34a33c87abe8a3db034686d2a2abc7bf2531c` |
| 50 | `theorem` | [HasDerivAt.unique](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-unique.md) | 394 | `result-track:6ac86dd58867a2b589164c300f99432325892567a40b714f02c5fc361f78f777` |
| 51 | `theorem` | [hasDerivWithinAt_inter'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-inter-source-edition-2.md) | 397 | `result-track:9545656a7e00e115daa06e3f7ae9ebf4c85508c98b9c44445e450c8ce5dd5655` |
| 52 | `theorem` | [hasDerivWithinAt_inter](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-inter.md) | 401 | `result-track:60dd487e918be6da2e0992f8da14621de87b2659921d2092c832daa1134646ef` |
| 53 | `theorem` | [HasDerivWithinAt.union](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-union.md) | 405 | `result-track:001f4f55a9c0a2ada8232d7d2c773f6f2b1b308062868ec552ac1a56a9f695f1` |
| 54 | `theorem` | [HasDerivWithinAt.hasDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-hasderivat.md) | 409 | `result-track:20fdc16100ad0d26fc9ae5450cb42b80ad7d579b55b5fc0204b33fe89d4d02f5` |
| 55 | `theorem` | [DifferentiableWithinAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiablewithinat-hasderivwithinat.md) | 413 | `result-track:4dd9cfc891b3e9f03ccc9c5e6274455893c89bdf8dc5b9bad3a327a99ece2589` |
| 56 | `theorem` | [DifferentiableAt.hasDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiableat-hasderivat.md) | 417 | `result-track:21580476f67b8e33bb8535a35ee8754a405df7aa76a2d54b1fbfeed8eeb151ca` |
| 57 | `theorem` | [hasDerivAt_deriv_iff](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-deriv-iff.md) | 421 | `result-track:0452f001ba0223d1a3fc3984af48e3c236678530d898043aed648801606fe1f9` |
| 58 | `theorem` | [hasDerivWithinAt_derivWithin_iff](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-derivwithin-iff.md) | 425 | `result-track:9014bcf76f24e99130e3535cf5ae3543a657be1ed811aa9efa460309e7fb887a` |
| 59 | `theorem` | [DifferentiableOn.hasDerivAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiableon-hasderivat.md) | 429 | `result-track:27fd88300cd46f4f4b031677491be6f3dc400660c15cfcc8b5b222679a03bcdf` |
| 60 | `theorem` | [HasDerivAt.deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-deriv.md) | 433 | `result-track:ebf2af55e6ef74c7f0a813e5835eafac6a353ae82d272041308c970da58a3bc9` |
| 61 | `theorem` | [deriv_eq](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-eq.md) | 436 | `result-track:983907f385ac3bb2c042acb98d291d989e8002daf82567a093a89f2e916bb8ff` |
| 62 | `theorem` | [HasDerivWithinAt.derivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-derivwithin.md) | 439 | `result-track:13199aeefd80ad23de11b8080ddf4670448d4dfb598b5b483e57267d43f263fa` |
| 63 | `theorem` | [fderivWithin_derivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/fderivwithin-derivwithin.md) | 443 | `result-track:920779f67e261929f42fd9d0c5ba6432a7af762eca7354bcc688f5ac610f7d58` |
| 64 | `theorem` | [toSpanSingleton_derivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/tospansingleton-derivwithin.md) | 446 | `result-track:715c6607d6449b0aeada3db7a4a50e0eb0161a4ecc16efd9b9e7009db4345b5f` |
| 65 | `theorem` | [norm_derivWithin_eq_norm_fderivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/norm-derivwithin-eq-norm-fderivwithin.md) | 449 | `result-track:26c99330c21333666c7136d98fbbd22570f0c336c9a62815cc8cc472b23148f3` |
| 66 | `theorem` | [fderiv_apply_one_eq_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/fderiv-apply-one-eq-deriv.md) | 452 | `result-track:16f8bf5d44005a402aae8ffe84acc62b94d8b9cd066dff5ae9e47af12d418e14` |
| 67 | `theorem` | [fderiv_eq_smul_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/fderiv-eq-smul-deriv.md) | 455 | `result-track:dceafd3b494f1adb8c353b112580de12a3c93c2a61640c31047a0a9f52c11fa8` |
| 68 | `theorem` | [toSpanSingleton_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/tospansingleton-deriv.md) | 459 | `result-track:7b9033731f3db812efda456d1db6a3b1d83e88b4866b3fe6ca8a110d83034feb` |
| 69 | `lemma` | [fderiv_eq_deriv_mul](../../../../RealFunctions/DerivBasicPublic.lean/declarations/fderiv-eq-deriv-mul.md) | 462 | `result-track:abfd78e954796c37b3e25b695281cbc05b1b5e9672d19c2d871a640d5ed6cb3d` |
| 70 | `theorem` | [norm_deriv_eq_norm_fderiv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/norm-deriv-eq-norm-fderiv.md) | 465 | `result-track:a1fb716639499647fdb5e252484ebaaa9b25a7568935fa5869344d8226b00524` |
| 71 | `theorem` | [DifferentiableAt.derivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiableat-derivwithin.md) | 468 | `result-track:c45587726c64ed97b9c36ff4bceeb798f5855a248f3321fa2f7e62dc9a886487` |
| 72 | `theorem` | [HasDerivWithinAt.deriv_eq_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-deriv-eq-zero.md) | 473 | `result-track:160a71222aaf8103af6966113316fe7adb28639d69afc2ebf49f71d71a147a8d` |
| 73 | `theorem` | [derivWithin_of_mem_nhdsWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-of-mem-nhdswithin.md) | 478 | `result-track:f6623d8ce7bf1e9252aa52aacf5ffce77fd85e3164b78f5347d1f54749317e45` |
| 74 | `theorem` | [derivWithin_subset](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-subset.md) | 482 | `result-track:711d3003d774927c6bcd5b12fa621ab35c530e6f821f36ce8eb961a2c74257d6` |
| 75 | `theorem` | [derivWithin_congr_set'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-congr-set.md) | 486 | `result-track:478d0acf6ecfc64896467210fd13747f9e5e1279acbd7ffb00def7a543e583fb` |
| 76 | `theorem` | [derivWithin_congr_set](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-congr-set-source-edition-2.md) | 489 | `result-track:a96aa41fb9165d8f810437b9ee19fb60707ad172cd6962d1b0855d64aeef0d22` |
| 77 | `theorem` | [derivWithin_univ](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-univ.md) | 493 | `result-track:b0960204ac0b3b2ca2deef717c9120658c507c4b2932dc0023b58e2ab9f10d83` |
| 78 | `theorem` | [derivWithin_inter](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-inter.md) | 498 | `result-track:089e923813f9bdd78299da5ff203d6cfb3f46ff1ba02fcdf095d897ec656dc47` |
| 79 | `theorem` | [derivWithin_of_mem_nhds](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-of-mem-nhds.md) | 502 | `result-track:0f8c91751d3598de5eac0e9546921dea6613707fa4b2a174a65771da3d58d5b0` |
| 80 | `theorem` | [derivWithin_of_isOpen](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-of-isopen.md) | 505 | `result-track:22997b1a164c1fa8802f6b6b312b5d279c151fd180dc5dc59dd08fde7453b140` |
| 81 | `lemma` | [deriv_eqOn](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-eqon.md) | 508 | `result-track:b321f795b6e98b5b16485673185163d679c56495802213643f7b862d1c851a0e` |
| 82 | `theorem` | [deriv_mem_iff](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-mem-iff.md) | 512 | `result-track:5ece8c1d2d119f2083f2a590f716167b3366c0b1f65062e3cf5636dcc91eda34` |
| 83 | `theorem` | [derivWithin_mem_iff](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-mem-iff.md) | 517 | `result-track:b18e7ed9e5c4f16f27df2c64425bc56fa7526659e5643528e54c00997b1e2f33` |
| 84 | `theorem` | [differentiableWithinAt_Ioi_iff_Ici](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiablewithinat-ioi-iff-ici.md) | 524 | `result-track:8e2e9354c27b4a7c29f79a22dd3ea0dc5a704b48ac3b280c9c990fc1fb62f94f` |
| 85 | `theorem` | [derivWithin_Ioi_eq_Ici](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-ioi-eq-ici.md) | 530 | `result-track:20674c241c6bd23f1b7ebac724fb0bfc49d19ba32aceed2e8910ee60689637af` |
| 86 | `theorem` | [Filter.EventuallyEq.hasDerivAtFilter_iff](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-hasderivatfilter-iff.md) | 544 | `result-track:825275a63e20eef68659289f3cac84f07280fb9045de3210fba73183da635340` |
| 87 | `theorem` | [HasDerivAtFilter.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-congr-of-eventuallyeq.md) | 548 | `result-track:084509370e73aaee00494c57fa36c06733d9afc8c89b11cb56bf96a1aff4e106` |
| 88 | `theorem` | [HasDerivWithinAt.congr_mono](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-congr-mono.md) | 553 | `result-track:7af3f2bc725081fd456d90a50cf701f27d47d16bb0d0c6b0066c18843bbbf164` |
| 89 | `theorem` | [HasDerivWithinAt.congr](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-congr.md) | 557 | `result-track:fd2a155e7534e3a3d57b6936cfc2c1f8f790ed41d914f796c1a1eb7e75777916` |
| 90 | `theorem` | [HasDerivWithinAt.congr_of_mem](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-congr-of-mem.md) | 561 | `result-track:3a7ff14c5bcd6dbbee5a8bb6e6443e82633418746d38b5b82a4c1e0550b8745d` |
| 91 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-congr-of-eventuallyeq.md) | 565 | `result-track:8f7f4c90af88dffd52b2fd78c93496a6df095e9422284432788d33c4b65340e8` |
| 92 | `theorem` | [Filter.EventuallyEq.hasDerivWithinAt_iff](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-hasderivwithinat-iff.md) | 569 | `result-track:fb62372456e80ce863ad150dfcb4c1ac6040af8c1ac26b9b99204aa744fce774` |
| 93 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq_of_mem](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-congr-of-eventuallyeq-of-mem.md) | 573 | `result-track:e670980b948a2d32645d8506566064d4721ec204ed87c5d620d9a97e45d19a79` |
| 94 | `theorem` | [Filter.EventuallyEq.hasDerivWithinAt_iff_of_mem](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-hasderivwithinat-iff-of-mem.md) | 577 | `result-track:5474fe7abec1d3e14b25ba65567a89378884a04c126c9ac3d3b3725e3368e39e` |
| 95 | `theorem` | [HasStrictDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-congr-of-eventuallyeq.md) | 589 | `result-track:0e43bb78d97601538f769c3172ae7acdb87a69ad56b5080f544b0c56be9c4e73` |
| 96 | `theorem` | [HasStrictDerivAt.congr_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-congr-deriv.md) | 593 | `result-track:8123004b1fd4638ddc2f073319471c9cf1fecc96983ce4e5a69e247b9c6ca0a3` |
| 97 | `theorem` | [HasDerivAt.congr_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-congr-deriv.md) | 597 | `result-track:f87b3920890ca251f7653ae9e4f1e8a7f7a69de8073a3d532d66577e189ed41b` |
| 98 | `theorem` | [HasDerivWithinAt.congr_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-congr-deriv.md) | 600 | `result-track:d895ec8a8a3b5410a511ad41c10778d49fc76324f481b4d73c5971f1ef2df4a1` |
| 99 | `theorem` | [HasDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-congr-of-eventuallyeq.md) | 604 | `result-track:54a7a30eea3c1459afb8f09a891cb48c949c83847cfd780b6e36d0c9a3e9edaf` |
| 100 | `theorem` | [Filter.EventuallyEq.hasDerivAt_iff](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-hasderivat-iff.md) | 608 | `result-track:7f904eee88bd32308621db193cc70dc5a07b4a428d3d241c8b027691e0939f68` |
| 101 | `theorem` | [Filter.EventuallyEq.derivWithin_eq](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-derivwithin-eq.md) | 612 | `result-track:9df8f53191b8b24fdaf0d81b55a90bc4fa6d78a348432ec006dd2e72506c5281` |
| 102 | `theorem` | [Filter.EventuallyEq.derivWithin_eq_of_mem](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-derivwithin-eq-of-mem.md) | 617 | `result-track:aef88f08ee7509058fbe0fe207681dc704b1fc251d1e1b77b5282cea6df2f7a9` |
| 103 | `theorem` | [Filter.EventuallyEq.derivWithin_eq_of_nhds](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-derivwithin-eq-of-nhds.md) | 621 | `result-track:95387067f2b9845482884afe134d2773a2e8a236cd41c85f252269e1073a17aa` |
| 104 | `theorem` | [derivWithin_congr](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-congr.md) | 625 | `result-track:e601db82dfe840045264fa6bd632e402e9907964d3d8351537506cf2dfd9c36c` |
| 105 | `lemma` | [Set.EqOn.deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/set-eqon-deriv.md) | 630 | `result-track:9d315de0cf1b237c5095ec66c73d4c6c91076e062084f22b873483a5677c3293` |
| 106 | `theorem` | [Filter.EventuallyEq.deriv_eq](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-deriv-eq.md) | 636 | `result-track:eef3070b23b7e45671ce1691a6afd37aba38d74919c3fd70a2e5060780640208` |
| 107 | `lemma` | [Filter.EventuallyEq.derivWithin'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-derivwithin.md) | 640 | `result-track:050a65413b5711c6e4f5875ddb9ed9a1d8138be0910eeb7adaa11ae09a35db9c` |
| 108 | `lemma` | [Filter.EventuallyEq.derivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-derivwithin-source-edition-2.md) | 645 | `result-track:19df71e9884dab7367deb308000290e4722cd64bb5e5dc7183a215676deaeee8` |
| 109 | `theorem` | [Filter.EventuallyEq.deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-deriv.md) | 648 | `result-track:2907a950715cb0ded7c722ff8b9cf00cdbe2a4e8a8032e3bb40e518d33e769e9` |
| 110 | `theorem` | [Filter.EventuallyEq.nhdsNE_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-nhdsne-deriv.md) | 651 | `result-track:db96069a91e5436671a8ecf105bd49a5de9b15775d892c9fd505d011ca291c41` |
| 111 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_derivWithin'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-codiscretewithin-derivwithin.md) | 660 | `result-track:0270350f77939a116702fdd71221dd9d25fe1e93dfc5c4ae2bdb1cf4d99bfc3e` |
| 112 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_derivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-codiscretewithin-derivwithin-source-edition-2.md) | 669 | `result-track:4f9142674de33db9136ba30071f93d19869f0f6c7563de4bc1c2237ceef6dd6a` |
| 113 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-codiscretewithin-deriv.md) | 677 | `result-track:eb5fb5b51d062c260f19c37957d2a7971cd4a8729b94388757f3ec2aeff7ab43` |
| 114 | `theorem` | [Filter.EventuallyEq.codiscrete_derivWithin](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-codiscrete-derivwithin.md) | 685 | `result-track:ddd078f5e1cb8517b57860c121f0507593fe38f125c334004e1a8874f70ad9c7` |
| 115 | `theorem` | [Filter.EventuallyEq.codiscrete_deriv](../../../../RealFunctions/DerivBasicPublic.lean/declarations/filter-eventuallyeq-codiscrete-deriv.md) | 691 | `result-track:4354c4935ebb9f96046e29d02087666005a9797671d57fbfccf31c2cd2fa40b6` |
| 116 | `theorem` | [hasDerivAtFilter_id](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-id.md) | 704 | `result-track:295d5e09091238da545dd8177352c6f242087a696b4500e4be00e8e9710dbc31` |
| 117 | `theorem` | [hasDerivWithinAt_id](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-id.md) | 707 | `result-track:ef3405ff68d86e8492e662b83ffaa7584641ac1c70d7bb02fe8cfb84e06efa6e` |
| 118 | `theorem` | [hasDerivAt_id](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-id-source-edition-2.md) | 710 | `result-track:f5c8074061a2980e3153c563d3090a72846d3ddcebd13a95996cd53c2865fc67` |
| 119 | `theorem` | [hasDerivAt_id'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-id.md) | 713 | `result-track:4719a8d73dfcaedfcd58bb86399f3e3b7180081bb1e14b5374b0e9b6df3ef7a2` |
| 120 | `theorem` | [hasStrictDerivAt_id](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-id.md) | 716 | `result-track:a4c181230b2691fadf9ebdc37631cb3e96c9086e86559345985e291d9746d3df` |
| 121 | `theorem` | [deriv_id](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-id-source-edition-3.md) | 719 | `result-track:b2938ddb80ac71969a2b6d46866d0c56cc37ee463b55d552fb2c8eadaa9c804f` |
| 122 | `theorem` | [deriv_id'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-id-source-edition-2.md) | 723 | `result-track:4ca1bb353cd1257acfa7abfd7600565db0f0e9a26b0bc7438e2911aa784ee1ba` |
| 123 | `theorem` | [deriv_id''](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-id.md) | 728 | `result-track:2b95e66be0a5fff4964d290a59410996f25d85105d91c2f33541986cb631c3aa` |
| 124 | `theorem` | [derivWithin_id](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-id-source-edition-2.md) | 731 | `result-track:d1145a5dd543f453c7f30b3aa95c71b2fe1ea0ccc1ab1e93b6d83fedd9b6c839` |
| 125 | `theorem` | [derivWithin_id'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-id.md) | 735 | `result-track:06c5a2e13948bee57651dbb4b3fe325dd11a2cc893fd6534f8c9d52ef8a3885a` |
| 126 | `theorem` | [hasDerivAtFilter_const](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-const.md) | 749 | `result-track:886f42b84c7b695420e4355d6611542a229e710b37fbb4b6f9ba34b8f99f0635` |
| 127 | `theorem` | [hasDerivAtFilter_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-zero.md) | 752 | `result-track:e1836caf925d2f181f4adaf5557427953c29e8e642eaf53dd76aee3b6bcb1542` |
| 128 | `theorem` | [hasDerivAtFilter_one](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-one.md) | 755 | `result-track:9e8222f76ba5c060e79706fc2dc226ffe0ae1a26ad9a6c45e19708e143c069f9` |
| 129 | `theorem` | [hasDerivAtFilter_natCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-natcast.md) | 758 | `result-track:83636e53b28aeb701cf10c77f64cbe5be177746c101baad0cc7b753dd1cab722` |
| 130 | `theorem` | [hasDerivAtFilter_intCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-intcast.md) | 761 | `result-track:9920b3cc51dfb6dea58a120659a7389a0f5fccb2470de6c4f0b491fe27584254` |
| 131 | `theorem` | [hasDerivAtFilter_ofNat](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-ofnat.md) | 764 | `result-track:2c1746abb8fa0a3e9e71bdbb64d2071887b891d62493bab80372c1e153f757a6` |
| 132 | `theorem` | [hasStrictDerivAt_const](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-const.md) | 767 | `result-track:c19256af3a9ca368b475d042ebd9e588351b7e0d490e72c04d84e685b67246f4` |
| 133 | `theorem` | [hasStrictDerivAt_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-zero.md) | 770 | `result-track:3b787942a01bf1d2ad3221a2d342370cb4f582999d468268718bfe5df6fad434` |
| 134 | `theorem` | [hasStrictDerivAt_one](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-one.md) | 773 | `result-track:02800a8d0a6427ded39ed5db22f19d85c85d47b2e02a8529a42ab9f9dc324133` |
| 135 | `theorem` | [hasStrictDerivAt_natCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-natcast.md) | 776 | `result-track:e6f8d5cb76c32947a24a718ffeeaf25903b5e2d2e7cca848c2a2ca8e96fc8ebb` |
| 136 | `theorem` | [hasStrictDerivAt_intCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-intcast.md) | 779 | `result-track:87ba9db614ab8155d9865db7b333caf7f86d664a1e2488e174dde0850468affc` |
| 137 | `theorem` | [HasStrictDerivAt_ofNat](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasstrictderivat-ofnat.md) | 782 | `result-track:d95a2c6f5022483acb9fc59a1dfcad3fd1c0bc5290f762c0a4b4ac4866e1bed4` |
| 138 | `theorem` | [hasDerivWithinAt_const](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-const.md) | 785 | `result-track:eb8f256635ccf1a3ed8eb8f824e66801d367d3f5c1d585bf2d30f88ba500661e` |
| 139 | `theorem` | [hasDerivWithinAt_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-zero.md) | 788 | `result-track:1ba47f3c1d60789f708c2597cd5fe054f72b8ab5672207600c9cf8494f904ca2` |
| 140 | `theorem` | [hasDerivWithinAt_one](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-one.md) | 791 | `result-track:40c82e5ac8336a20b65f6437a5da0cfd936ee0e7a7a308c61394720692956d5f` |
| 141 | `theorem` | [hasDerivWithinAt_natCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-natcast.md) | 794 | `result-track:44146cfcaae79f235cff77d8c34445e6dba43b3f116f3a1b0f8d6ab807348201` |
| 142 | `theorem` | [hasDerivWithinAt_intCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-intcast.md) | 797 | `result-track:91d29b54bc28c6c629d3221e161b4c746d23ef2bfe3bbf319c1295fcb01a3076` |
| 143 | `theorem` | [hasDerivWithinAt_ofNat](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-ofnat.md) | 800 | `result-track:851ea49d1f5629d75ea56cef3ba61b5c4447ef738f81cab6d499883954a5d6ae` |
| 144 | `theorem` | [hasDerivAt_const](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-const.md) | 803 | `result-track:6c66cb229372282714afe9716929f5f26b047166908d4c3ac99256813ed670b2` |
| 145 | `theorem` | [hasDerivAt_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-zero.md) | 807 | `result-track:a20bad4f5880dbd96a574d8bcaaaccdbd238def05e1fecf79bfae9d63fec7855` |
| 146 | `theorem` | [hasDerivAt_one](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-one.md) | 810 | `result-track:bb16557e6c6ce2113ff68d1fbf1e4920ba7195bf4c57b55b94984324d10f7e4d` |
| 147 | `theorem` | [hasDerivAt_natCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-natcast.md) | 813 | `result-track:2ac7d35e85a3d7bf9d5acf865fd4d4d0b18ce25881495da1deba47f7e1b32249` |
| 148 | `theorem` | [hasDerivAt_intCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-intcast.md) | 816 | `result-track:9363adbbaeda4e61ee8f7d7d0a85dae2e14defcc3ed2cba428413bc5ae0bbe79` |
| 149 | `theorem` | [hasDerivAt_ofNat](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-ofnat.md) | 819 | `result-track:b91691b57d2bf16dd448e37763350b6dbb8d081f944da365303e24f70b0dfc16` |
| 150 | `theorem` | [deriv_const](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-const-source-edition-2.md) | 822 | `result-track:fa8d7ad4b38effd55be3b3b239e3d1dec22ecf1336d44298bc13c60c92872a3a` |
| 151 | `theorem` | [deriv_const'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-const.md) | 826 | `result-track:bd95df4bc7ff29447bb7b761c30f537f9406010e61ec7a86e17d805cb45b5dee` |
| 152 | `theorem` | [deriv_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-zero.md) | 830 | `result-track:0488c36daf6fea8b9235641e6b2b7ff4bb414ff4e1504c58b4ac6b38edfe4fdb` |
| 153 | `theorem` | [deriv_one](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-one.md) | 833 | `result-track:a6fae9d6a0a956895a1c23a8605414207b69c5f0f13aa3e75455140b2d87244f` |
| 154 | `theorem` | [deriv_natCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-natcast.md) | 836 | `result-track:1ae0c90669ddd1d64f064445dc535dc8da932d57d99f56a0f02a831d06b178cf` |
| 155 | `theorem` | [deriv_intCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-intcast.md) | 839 | `result-track:3be80273d1c817c77a4ae65762e15c9b492d83fa9747ae9ea2806d29297da436` |
| 156 | `theorem` | [deriv_ofNat](../../../../RealFunctions/DerivBasicPublic.lean/declarations/deriv-ofnat.md) | 842 | `result-track:475ae75874e8bd37deb6ebebd9403fc760b5b25479d352441d243d90fdf4b09a` |
| 157 | `theorem` | [derivWithin_fun_const](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-fun-const.md) | 846 | `result-track:d5d34c56c54509ad1dc2aad260a616730bfb87ab0c9fb179846690ba8704e57d` |
| 158 | `theorem` | [derivWithin_const](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-const.md) | 850 | `result-track:24b3c72ba414368c0afa81a72f1e00b281974f2f34357b285a19bbbef42f03e8` |
| 159 | `theorem` | [derivWithin_zero](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-zero.md) | 854 | `result-track:6333d82a5daa9c7efe87f030ff4954d4046b766be3a2216a41c98beeb494e5ad` |
| 160 | `theorem` | [derivWithin_one](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-one.md) | 857 | `result-track:0a1fba6a62250e1dd0b64be77cc81c15c23e46185a47ae71aff90f89e8c4c968` |
| 161 | `theorem` | [derivWithin_natCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-natcast.md) | 860 | `result-track:855db2313f6102be7f5839bc88127df56607028a3d172f548e6ea8e2e1384baa` |
| 162 | `theorem` | [derivWithin_intCast](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-intcast.md) | 864 | `result-track:8326b698b804295364e079fcd3aca648b0d391c6fc5a79ed69b7ba6d74cd4647` |
| 163 | `theorem` | [derivWithin_ofNat](../../../../RealFunctions/DerivBasicPublic.lean/declarations/derivwithin-ofnat.md) | 868 | `result-track:00339807a4c3fa7b388cad952cf0415e9fefbc20ee100833ad8f9baa27638500` |
| 164 | `theorem` | [HasDerivAtFilter.tendsto_nhds](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivatfilter-tendsto-nhds.md) | 877 | `result-track:70c42ecee8dc851c23d8e2abea1e0c0a916411f77ca7b92e941e848cb26f53d8` |
| 165 | `theorem` | [HasDerivWithinAt.continuousWithinAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-continuouswithinat.md) | 882 | `result-track:f5800e46ab33538e747508ed6d46c0a8b449e8f8518a92d3b5b950b50fc50b67` |
| 166 | `theorem` | [HasDerivAt.continuousAt](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-continuousat.md) | 886 | `result-track:6c6d930dd634cf084ce7a9dfa1dfead5e0619592adcc8c06a264be09dc18e244` |
| 167 | `theorem` | [HasDerivWithinAt.continuousOn](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivwithinat-continuouson.md) | 889 | `result-track:174594f7a810bacb125cdb22028f734ded7481576d082083bd1da4528ea6e67f` |
| 168 | `theorem` | [HasDerivAt.continuousOn](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-continuouson.md) | 892 | `result-track:738141dccb286c23f8a70ed009b6e33ddd4c9bd8bfc820014737fa9c6bf93a81` |
| 169 | `theorem` | [HasDerivAt.le_of_lip'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-le-of-lip.md) | 902 | `result-track:50a6f1e6867ea2c714bc0e4c8762edfadf43a9408855577a42c1272061d1aa8b` |
| 170 | `theorem` | [HasDerivAt.le_of_lipschitzOn](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-le-of-lipschitzon.md) | 909 | `result-track:2221d374bcd079e697f5812487525c79e6125fccf40cd641d4eaffccc56a27db` |
| 171 | `theorem` | [HasDerivAt.le_of_lipschitz](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-le-of-lipschitz.md) | 915 | `result-track:081352091234dcabf2030f0150222354b535ef180d8d061b60a34d17fccdd344` |
| 172 | `theorem` | [norm_deriv_le_of_lip'](../../../../RealFunctions/DerivBasicPublic.lean/declarations/norm-deriv-le-of-lip.md) | 922 | `result-track:533d1607ac748fe0f2a472ce9eec1d8dea5dc430e0b9ebf20f3164e95b4a9c7e` |
| 173 | `theorem` | [norm_deriv_le_of_lipschitzOn](../../../../RealFunctions/DerivBasicPublic.lean/declarations/norm-deriv-le-of-lipschitzon.md) | 930 | `result-track:ff8acacd531ef3cf16d21b656f647bf477f7386f7cbe196c9a112ee581c18e7d` |
| 174 | `theorem` | [norm_deriv_le_of_lipschitz](../../../../RealFunctions/DerivBasicPublic.lean/declarations/norm-deriv-le-of-lipschitz.md) | 937 | `result-track:0d9f11e5273275ca9a694e85490ec4addc16fd7abb5935b7546f70a330c23bee` |
| 175 | `lemma` | [HasDerivAt.comp_semilinear](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-comp-semilinear.md) | 953 | `result-track:9bac7c45f452087dde13ebd8096240d7c85d8f9cb08596ff6a0965d6db64cf3d` |
| 176 | `lemma` | [DifferentiableAt.comp_semilinear₁](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiableat-comp-semilinear.md) | 966 | `result-track:3716d8a92caab2a5776345e81e8ec9e60aa0eb1075aedba90cff9c0fd2ad25cb` |
| 177 | `lemma` | [HasDerivAt.comp_ringHom](../../../../RealFunctions/DerivBasicPublic.lean/declarations/hasderivat-comp-ringhom.md) | 974 | `result-track:94e31a32535914b042a6fdd4e9a82fe8ea2f30add2cfdadb4c0dd0f3d3e0d276` |
| 178 | `lemma` | [DifferentiableAt.comp_ringHom](../../../../RealFunctions/DerivBasicPublic.lean/declarations/differentiableat-comp-ringhom.md) | 979 | `result-track:ae9f62cb42cc62ae152c4358d6803e56f38fc28427fb53e1e7bec5734605a0d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8be50fed3ce948138763564987851b94d1e5ac2a30d6ef46cfa9f76c9a7c0325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf4c0077cb0e87c857f1fcfea2c9c6263d1a3dee9fa8403893e00debf28a4356b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf4c0077cb0e87c857f1fcfea2c9c6263d1a3dee9fa8403893e00debf28a4356b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
