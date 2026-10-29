# Verification target: MFDeriv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
  "lexical_observation_count": 268,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/MFDeriv.lean/index.md) · [Full source](../../../../DifferentialGeometry/MFDeriv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79e199bd0574779cf65ad0ca6c87251b12a8c06f`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.VectorBundle.Tangent` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DifferentiableWithinAtProp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/differentiablewithinatprop.md) | 128 | `declaration-track:68b4df17b845023fb0c56234f20baece53d9841cc18b4a90951876a94d953164` |
| 2 | `theorem` | [differentiable_within_at_localInvariantProp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/differentiable-within-at-localinvariantprop.md) | 134 | `result-track:430e1b66deabbad082c56291ca64dad33f6aaf356dcd8c78fe3778ab1ccbfd4a` |
| 3 | `def` | [UniqueMDiffWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat.md) | 182 | `declaration-track:fc46c035bfdd7060015d37d0320f7595465ce57607dfc9a7756e3f51e0523dd6` |
| 4 | `def` | [UniqueMDiffOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon.md) | 187 | `declaration-track:5d5e40cc6380c36f341dc3cc4f30a5c255f9325617a66baf5b60c0b802e27e3a` |
| 5 | `def` | [MDifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-source-edition-3.md) | 199 | `declaration-track:f3b0e8efb7149df61ea61656a38aa569051653e857f8848b4f0f1e0a13ba17e5` |
| 6 | `theorem` | [mdifferentiableWithinAt_iff_liftPropWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-iff-liftpropwithinat.md) | 205 | `result-track:cf47109288352cdd02383c62cd0db4113d3fe5d11e5d6a41426033320b8879db` |
| 7 | `def` | [MDifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-source-edition-5.md) | 218 | `declaration-track:faea214b47b728684ecb8d5dfe851f6344d34f0beb0e0d542cd20412f42344c5` |
| 8 | `theorem` | [mdifferentiableAt_iff_liftPropAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-iff-liftpropat.md) | 223 | `result-track:498a7013d7edf2fff279fd483a6a0c49441bd1843fd69a1df9d5cf1f4430b57e` |
| 9 | `def` | [MDifferentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-source-edition-3.md) | 234 | `declaration-track:95761cb20070223a9502febc0886467b7543c25a329b9c4805decd0da28494d9` |
| 10 | `def` | [MDifferentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable.md) | 241 | `declaration-track:506a0dda588a65e7b3810d3f01ba20cf18b6ac12ccb2bd38c5b86cf5cbdcddbf` |
| 11 | `def` | [LocalHomeomorph.MDifferentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/localhomeomorph-mdifferentiable.md) | 246 | `declaration-track:ab9a5985d96a7824ff167f53d11cc931c1a5ffc24640b43019140aa1b81d40cd` |
| 12 | `def` | [HasMFDerivWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-source-edition-2.md) | 263 | `declaration-track:3de5ecafae0472809c4654924f286ab84f7417a7cd13fdcdb56a22405b1da8dd` |
| 13 | `def` | [HasMFDerivAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat.md) | 278 | `declaration-track:068d2f399d45af664994d1832816bf41f819cdf8b7ee3e8f36b758534748befd` |
| 14 | `def` | [mfderivWithin](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin.md) | 286 | `declaration-track:e3fa9c1d6272fd90ad78ea63de9cb9691735d5e8039b9439e14bfb9dfc4c0396` |
| 15 | `def` | [mfderiv](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv.md) | 297 | `declaration-track:10051981bcbda75f70ba976cb29819bbadc3da7dafef720995d688b5b8a54973` |
| 16 | `def` | [tangentMapWithin](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin.md) | 304 | `declaration-track:f94075c57b1363c8841fd2332a42874e6452092e32c640571cb68e6e303ae3e8` |
| 17 | `def` | [tangentMap](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap.md) | 309 | `declaration-track:925891b9a080a3086df17e9efbea0bb49c80ec54fc6f5e9e892f53b90567ffb1` |
| 18 | `theorem` | [uniqueMDiffWithinAt_univ](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-univ.md) | 330 | `result-track:7e3f6684554ea7bae4efd3aa3b33bc70bf3068e9e0274f1673666797def3a02a` |
| 19 | `theorem` | [uniqueMDiffWithinAt_iff](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-iff.md) | 338 | `result-track:4f39ca4db0b7f58b0d547bf7ca509254b88e63ab2451d30a7527bc014ac2097e` |
| 20 | `theorem` | [UniqueMDiffWithinAt.mono_nhds](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-mono-nhds.md) | 346 | `result-track:f659964a3bb45e6d8828ed75058f1e7ca927fdacc3b6c1b4c9c88aa7685f8a93` |
| 21 | `theorem` | [UniqueMDiffWithinAt.mono_of_mem](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-mono-of-mem.md) | 350 | `result-track:67fb84c1b0c4fb233d075dfe237f2b161a8adfc370f86a1afab340b8e2152e32` |
| 22 | `theorem` | [UniqueMDiffWithinAt.mono](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-mono.md) | 354 | `result-track:7f4c445063071fc10e824a9111d5926757593b611ae7c209a44183fdc4018000` |
| 23 | `theorem` | [UniqueMDiffWithinAt.inter'](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-inter-source-edition-2.md) | 359 | `result-track:518ef45ebe0ccad91a884cec4407025edb502283acbc4d1a20c3d709f8d66cbb` |
| 24 | `theorem` | [UniqueMDiffWithinAt.inter](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-inter.md) | 364 | `result-track:0fb6f252f1585454c77cb5ad1522daad3fd859ce549ea27693351c7016708981` |
| 25 | `theorem` | [IsOpen.uniqueMDiffWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/isopen-uniquemdiffwithinat.md) | 369 | `result-track:2d07453114592ed5ba25449a5aedbd6a32f44c9bcf3e891a74975325c5ac15e9` |
| 26 | `theorem` | [UniqueMDiffOn.inter](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-inter.md) | 373 | `result-track:00383b41baca0b3691c1d905891b284351725a3dd3335f66f84a3e6d608cc8d2` |
| 27 | `theorem` | [IsOpen.uniqueMDiffOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/isopen-uniquemdiffon.md) | 377 | `result-track:9fb24220335e1ee4f9668d28f46e209382773cba499904cce0b11204aceca6af` |
| 28 | `theorem` | [uniqueMDiffOn_univ](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-univ.md) | 381 | `result-track:efbb7de491b6d689e5bf3ca57b01b370aae1bc1845d6187e65f44801fce99dea` |
| 29 | `theorem` | [UniqueMDiffWithinAt.eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-eq.md) | 394 | `result-track:b7afb744dedd9c90c818518df98da963406dce32bbb3504388078238d4654cd5` |
| 30 | `theorem` | [UniqueMDiffOn.eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-eq.md) | 400 | `result-track:169ba87d1090ebda87d5180f5603dea0ee51a57dd5ee11610cff827ae5e6d1d2` |
| 31 | `theorem` | [UniqueMDiffWithinAt.prod](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-prod.md) | 405 | `result-track:20733a5dd650de7755b8a563a887b03670db35756f823afe310eac1d7c89d59e` |
| 32 | `theorem` | [UniqueMDiffOn.prod](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-prod.md) | 411 | `result-track:6998e8f6a4f54bd36ab7e0f3773e6fb5627b69a54f758e95554b0d080300a24b` |
| 33 | `theorem` | [mdifferentiableWithinAt_iff](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-iff.md) | 421 | `result-track:4456461ddba4f5f27a6e65a93903d13d03c3015ad4363e47b26b17d1e2095f15` |
| 34 | `theorem` | [mdifferentiableWithinAt_iff_of_mem_source](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-iff-of-mem-source.md) | 433 | `result-track:03edd45b4796877da3223a9b0686e7271bc988efe9b8eb650109a9f9e5661489` |
| 35 | `theorem` | [mfderivWithin_zero_of_not_mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-zero-of-not-mdifferentiablewithinat.md) | 444 | `result-track:31df3130cad00d41cca49c952f1e154b74847f13dc3e5d6742c2c1acd5bffc04` |
| 36 | `theorem` | [mfderiv_zero_of_not_mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-zero-of-not-mdifferentiableat.md) | 449 | `result-track:1e50bca45502a4e69c081660145a34d4ad674d82906590b1b16d3bc8960b4772` |
| 37 | `theorem` | [HasMFDerivWithinAt.mono](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-mono.md) | 453 | `result-track:d8861894c5cddda8ffa49d22a5feb318459c5c70404fbd4e7738c319487b2f66` |
| 38 | `theorem` | [HasMFDerivAt.hasMFDerivWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-hasmfderivwithinat.md) | 459 | `result-track:70e59139e314dc878e6e9702da8731015b541b3baec09b49218ee9cc8b6adb5b` |
| 39 | `theorem` | [HasMFDerivWithinAt.mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-mdifferentiablewithinat.md) | 464 | `result-track:fedc2277f959170124934a2b993b9a7217ed71f24cc3e530db49bd878ea0e1f8` |
| 40 | `theorem` | [HasMFDerivAt.mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-mdifferentiableat.md) | 469 | `result-track:0ea83d40f0a7995b2e42244c54e24d339c12b4c57ad9f8cd615c936f2236b989` |
| 41 | `theorem` | [hasMFDerivWithinAt_univ](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-univ.md) | 475 | `result-track:67e3560e7fe50da932fe6625cb80b886cdeea493b5dcf184735b2255e00a7d92` |
| 42 | `theorem` | [hasMFDerivAt_unique](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-unique.md) | 479 | `result-track:bd0b1cc12b262351430ab2945d16710b71eab6b1bd2f8eda94bde3e34d968ae0` |
| 43 | `theorem` | [hasMFDerivWithinAt_inter'](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-inter-source-edition-2.md) | 485 | `result-track:554d2ee7fabbadb5447f77d48a5be943304c00cfb87ba0bfdb27d2c430647450` |
| 44 | `theorem` | [hasMFDerivWithinAt_inter](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-inter.md) | 492 | `result-track:420455d0c2548e559e4deadf29f9a5ce8f43cfc657f0a0cadb6be09bec2fa504` |
| 45 | `theorem` | [HasMFDerivWithinAt.union](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-union.md) | 499 | `result-track:24df4767081a1a5b313416263ad43ed04068a83664f8f0396668b87b1a79a2da` |
| 46 | `theorem` | [HasMFDerivWithinAt.mono_of_mem](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-mono-of-mem.md) | 507 | `result-track:a996bab2915ed3665639a450069ca99fb4dd79840d13163b60be9d9267ffcee8` |
| 47 | `theorem` | [HasMFDerivWithinAt.hasMFDerivAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-hasmfderivat.md) | 512 | `result-track:766feeb2f28d18992bd1bf085ac8b917ee448c92ec9778190b794c89c7b7207c` |
| 48 | `theorem` | [MDifferentiableWithinAt.hasMFDerivWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-hasmfderivwithinat.md) | 517 | `result-track:4bdb1610c26354cd455809e0d8c32d0a0df66d31cd91ee3ef4b9f9c00b674ba2` |
| 49 | `theorem` | [MDifferentiableWithinAt.mfderivWithin](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-mfderivwithin.md) | 524 | `result-track:ce2f684982b8dae7961aabe1c182f58c0273f0a1e9752c97829f8346f2fdcd5f` |
| 50 | `theorem` | [MDifferentiableAt.hasMFDerivAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-hasmfderivat.md) | 531 | `result-track:b2ee154fb2f0fdaa05323f9fb2b43491a10aa83ccf2013c33db44f5c5203723a` |
| 51 | `theorem` | [MDifferentiableAt.mfderiv](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-mfderiv.md) | 538 | `result-track:9f2bdef102aeff8a355ee956f0c2c2577a06b660958e56a7eef74fc585740ebd` |
| 52 | `theorem` | [HasMFDerivAt.mfderiv](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-mfderiv.md) | 544 | `result-track:f805afd8570fbf7e7118ee6a4bb0ba21e684cf8c338c8faf1104b0c266f45e88` |
| 53 | `theorem` | [HasMFDerivWithinAt.mfderivWithin](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-mfderivwithin.md) | 548 | `result-track:24438aaef443ea2d79d37eb9d0c9319791d9f7d0dfbc04130b903eb7974f111b` |
| 54 | `theorem` | [MDifferentiable.mfderivWithin](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-mfderivwithin.md) | 554 | `result-track:58115d76ae310c7dcf0890b13efed9f0c167d06c70f0c0449c83dac52455c307` |
| 55 | `theorem` | [mfderivWithin_subset](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-subset.md) | 560 | `result-track:1b1fdc237dfd603945f73dac12fc1562c13b5ec8326203e15874c7efd2565027` |
| 56 | `theorem` | [MDifferentiableWithinAt.mono](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-mono.md) | 566 | `result-track:4c5c450e82811fec8c61aa463354ac57952a7b155c1a5f67c34281d2c80b3de5` |
| 57 | `theorem` | [mdifferentiableWithinAt_univ](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-univ.md) | 572 | `result-track:7f0db58169daff0e4059c382cb9402134e2479f421c2dbb2f344c092b1359289` |
| 58 | `theorem` | [mdifferentiableWithinAt_inter](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-inter-source-edition-2.md) | 577 | `result-track:9cf7b8a303a349a16e92728d1e41ddcaaa66bc5117ab3d0ed2132626a712b95d` |
| 59 | `theorem` | [mdifferentiableWithinAt_inter'](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-inter.md) | 584 | `result-track:416f0cb7e0260b6cb1fed2667a52bd8ad2d04468043a0e1c11ab19936caf1611` |
| 60 | `theorem` | [MDifferentiableAt.mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-mdifferentiablewithinat.md) | 591 | `result-track:1811a1f2866a228619df1582ca23c30a9a03f4e8b749564fdd95d16b2124cf0d` |
| 61 | `theorem` | [MDifferentiableWithinAt.mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-mdifferentiableat.md) | 596 | `result-track:a5547d7f5202c6fb58bf64974786e3236bf4be41cf7286acf24ee8e40e911585` |
| 62 | `theorem` | [MDifferentiableOn.mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-mdifferentiableat.md) | 602 | `result-track:390dfe9bcd71d9294043950669efcf79317061ab0d25e82a53e4a042f71b662e` |
| 63 | `theorem` | [MDifferentiableOn.mono](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-mono.md) | 606 | `result-track:14e437eaff702236e36702de8f5efc25ee5a036c63e8350bd3f4a58b6695f44c` |
| 64 | `theorem` | [mdifferentiableOn_univ](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-univ.md) | 610 | `result-track:ffbd5d7ea7e63d9f8fd302fddfa083bf2964cae8b707daeac67ae44bf55b2093` |
| 65 | `theorem` | [MDifferentiable.mdifferentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-mdifferentiableon.md) | 614 | `result-track:55e7d0a98fdda47c06ebb240c32cb27d582bd8e9579204b4cbbf554497b0ec25` |
| 66 | `theorem` | [mdifferentiableOn_of_locally_mdifferentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-of-locally-mdifferentiableon.md) | 619 | `result-track:a1950505e91239b7cca2fc0bb207d405f824ea0200a766079f138c5847c499ad` |
| 67 | `theorem` | [mfderivWithin_univ](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-univ.md) | 628 | `result-track:71a06aeba7057184730d6fd7e6ef8f3714d4bf746c8a1d24d28be14c4c94ec0a` |
| 68 | `theorem` | [mfderivWithin_inter](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-inter.md) | 634 | `result-track:5af51f1de75d50648dfb8baee3565a692e4d51bdd3a369b29f4b484c3a4aa02a` |
| 69 | `theorem` | [mdifferentiableAt_iff_of_mem_source](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-iff-of-mem-source.md) | 640 | `result-track:e1baa558957bb54ab54bae80e05c2a523854139b6f3654115a3a481d5e96259a` |
| 70 | `theorem` | [ContMDiffWithinAt.mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/contmdiffwithinat-mdifferentiablewithinat.md) | 655 | `result-track:174dc229a2b55ce953749205e9138099c4e1ddb53296c9af25768c2a9154b405` |
| 71 | `theorem` | [ContMDiffAt.mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/contmdiffat-mdifferentiableat.md) | 665 | `result-track:81634e3f9fdf4757f7cdf7fdfdb2626427600affc2fb18668bd563de3c0091e3` |
| 72 | `theorem` | [ContMDiffOn.mdifferentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/contmdiffon-mdifferentiableon.md) | 670 | `result-track:4c0da1337cbf982af5c178d07f5012b3dc64c5eb1edfb708529d448d4ca52d32` |
| 73 | `theorem` | [ContMDiff.mdifferentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/contmdiff-mdifferentiable.md) | 674 | `result-track:27e366d50ed618fbf98bb5929846d950caeaa1ac4825a9c0ecec037475cafa14` |
| 74 | `theorem` | [SmoothWithinAt.mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/smoothwithinat-mdifferentiablewithinat.md) | 678 | `result-track:1ed9b83330d0c809ae2a57db512bc8013b189a2e6d74d70c77b8801336d7e902` |
| 75 | `theorem` | [SmoothAt.mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/smoothat-mdifferentiableat.md) | 683 | `result-track:bcf052b0945df635e02c6461fe3406fb9f14b206eccb5bcd54c402a43624f2e6` |
| 76 | `theorem` | [SmoothOn.mdifferentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/smoothon-mdifferentiableon.md) | 687 | `result-track:f7142ad69c1f0aea3c7b40624f2e20041512bf78ee43dc5dec3e6d5f37ca5f88` |
| 77 | `theorem` | [Smooth.mdifferentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/smooth-mdifferentiable.md) | 691 | `result-track:152ce40352eab3952959da3fb8331239b3ad66644ffb2efc8f814aa84a91b6a9` |
| 78 | `theorem` | [Smooth.mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/smooth-mdifferentiableat.md) | 695 | `result-track:0a75a41caf76947b4c67aed251a0752ee0dd74c2fe2b88466d6c51a43db8b839` |
| 79 | `theorem` | [Smooth.mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/smooth-mdifferentiablewithinat.md) | 699 | `result-track:4e1a07802378ab25df10df49c01412616398a54c005993ef7678bac8f25f8c64` |
| 80 | `theorem` | [HasMFDerivWithinAt.continuousWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-continuouswithinat.md) | 705 | `result-track:7a03efd3ba61e6326867af9271aa73f00cd79ee7b37093058f46772c3dd6721b` |
| 81 | `theorem` | [HasMFDerivAt.continuousAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-continuousat.md) | 710 | `result-track:e462085072ad7a028c733f50cc1de176cde0c059448ffaa67a7f9dd4f974bf9c` |
| 82 | `theorem` | [MDifferentiableWithinAt.continuousWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-continuouswithinat.md) | 714 | `result-track:a8e403d4b1d56807b84452ffd14a5ccc24e59c55fe19546782254a2405eeda58` |
| 83 | `theorem` | [MDifferentiableAt.continuousAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-continuousat.md) | 719 | `result-track:93fd67d8b24ddde7c58adbb41e5a853560ace7da8321ab7b58d790ded47dbc3d` |
| 84 | `theorem` | [MDifferentiableOn.continuousOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-continuouson.md) | 723 | `result-track:b90722e16e4681e109a6ae524b3aa4728c03790bb198d8afea4cdf6b93709fe0` |
| 85 | `theorem` | [MDifferentiable.continuous](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-continuous.md) | 727 | `result-track:224c2cbc9da53e8f09d9c78e80f184ff2c541828b42756ca49189d850c63b4c2` |
| 86 | `theorem` | [tangentMapWithin_subset](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-subset.md) | 731 | `result-track:cef6e989d0230b4cc70c4d3d6a3a856989d68f1132d33b357534a921a66d2fa3` |
| 87 | `theorem` | [tangentMapWithin_univ](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-univ.md) | 738 | `result-track:aabec81b90ea0c7d525dd98626f86ee64648b74b1b56d7b597f7c3a02f30b203` |
| 88 | `theorem` | [tangentMapWithin_eq_tangentMap](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-eq-tangentmap.md) | 743 | `result-track:2273f918c4a82d50e61413babf43efe77479a6e864734a88acaffaadfd3312fd` |
| 89 | `theorem` | [tangentMapWithin_proj](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-proj.md) | 751 | `result-track:fdc82b7691bb7a9dd7982b98d1860d7c8b3c036dab99c5d1d00136797564a39d` |
| 90 | `theorem` | [tangentMap_proj](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap-proj.md) | 757 | `result-track:d8bab70cfbb09ca1bb880d35f5eb634d636c69c4f7a78ef6e2892dca17d17813` |
| 91 | `theorem` | [MDifferentiableWithinAt.prod_mk](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-prod-mk.md) | 761 | `result-track:6bdc7330563a42b95e7381bb12d0ed4687a7386737d35df595c2e073fbb6c6dd` |
| 92 | `theorem` | [MDifferentiableAt.prod_mk](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-prod-mk.md) | 767 | `result-track:85c45917f0a7a006dc4ad737dc6ad55941993b195c025f8398c1cb54deb2e91d` |
| 93 | `theorem` | [MDifferentiableOn.prod_mk](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-prod-mk.md) | 773 | `result-track:56d834ea8d756b122c0dc8302202f20138eb883596db6388e3159569ee3b74c7` |
| 94 | `theorem` | [MDifferentiable.prod_mk](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-prod-mk.md) | 779 | `result-track:00a6e70eefbb11ce262a7e785eaf46625fb365d54d5c01487a39d2ce8cbdfbee` |
| 95 | `theorem` | [MDifferentiableWithinAt.prod_mk_space](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-prod-mk-space.md) | 784 | `result-track:6f8c2904577808df8568f5744f810b5d44eb22f42543d9de7bb694f4d5a0daf0` |
| 96 | `theorem` | [MDifferentiableAt.prod_mk_space](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-prod-mk-space.md) | 791 | `result-track:11cb7cdb5000a3928a891077b79dd3bb822c11a4802f0315d5a087c56b92a4f4` |
| 97 | `theorem` | [MDifferentiableOn.prod_mk_space](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-prod-mk-space.md) | 797 | `result-track:f7e9014d2e166e73fc4198660cf1a95ad4d08ea825571c256bc8e9aa6044d8d3` |
| 98 | `theorem` | [MDifferentiable.prod_mk_space](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-prod-mk-space.md) | 803 | `result-track:07f510470f1b43dc3c2e937a7ad6fda5b1ba453820f13a0ffc7486dad084632a` |
| 99 | `theorem` | [HasMFDerivWithinAt.congr_of_eventuallyEq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-congr-of-eventuallyeq.md) | 811 | `result-track:fb86e9b4517337c4707ae317c0805949dfbd456deffd6c808099deb1a64e5595` |
| 100 | `theorem` | [HasMFDerivWithinAt.congr_mono](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-congr-mono.md) | 824 | `result-track:74eb220c25244c729916c89c53978e520b43e3c1a3221114a4e0206b7538bc9b` |
| 101 | `theorem` | [HasMFDerivAt.congr_of_eventuallyEq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-congr-of-eventuallyeq.md) | 829 | `result-track:d93ffed9bf67294b6798a7ab78ce280ebdaeff74cdc81b4bac97b11d1abf1bb8` |
| 102 | `theorem` | [MDifferentiableWithinAt.congr_of_eventuallyEq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-congr-of-eventuallyeq.md) | 836 | `result-track:b0752419c3e913dc1da6e8fe02efb8fed655ed66f0c39db524577a88c45310d6` |
| 103 | `theorem` | [Filter.EventuallyEq.mdifferentiableWithinAt_iff](../../../../DifferentialGeometry/MFDeriv.lean/declarations/filter-eventuallyeq-mdifferentiablewithinat-iff.md) | 843 | `result-track:ebed5eede8045b0bf9c75aead712b780b3bbbb82dfb18ea5c143463424634fbc` |
| 104 | `theorem` | [MDifferentiableWithinAt.congr_mono](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-congr-mono.md) | 857 | `result-track:1b6fb47b103ed26344ed4c3c2ee558c5af7d7d39e350b4d9836dfc98f8a8c28b` |
| 105 | `theorem` | [MDifferentiableWithinAt.congr](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-congr.md) | 863 | `result-track:1f60ff2a76cbf2ce099d6d123390190798e7259f666106a1944f3328e607f148` |
| 106 | `theorem` | [MDifferentiableOn.congr_mono](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-congr-mono.md) | 868 | `result-track:d80493100dfe3f4c54c7eae9b8729f1ff7213c96a34ce591a18f4ef4766e30be` |
| 107 | `theorem` | [MDifferentiableAt.congr_of_eventuallyEq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-congr-of-eventuallyeq.md) | 873 | `result-track:1906ed78e911c53ef652a26067086a74ff6676951cf5080440c4aadf98b74e69` |
| 108 | `theorem` | [MDifferentiableWithinAt.mfderivWithin_congr_mono](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-mfderivwithin-congr-mono.md) | 878 | `result-track:533f88ccbc1ec3991909d358e76fc0d6d20229f7c3dce1efc81555fc18949266` |
| 109 | `theorem` | [Filter.EventuallyEq.mfderivWithin_eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/filter-eventuallyeq-mfderivwithin-eq.md) | 884 | `result-track:3a73d0c6304881e564d7afb7095664a5fd5b4d0b97335c45b3cf8cc7e40e79e6` |
| 110 | `theorem` | [mfderivWithin_congr](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-congr.md) | 893 | `result-track:97d997ee24f4d0a03bac4abe548628cf1092c0f290531408ee0b1cbbec62bf93` |
| 111 | `theorem` | [tangentMapWithin_congr](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-congr.md) | 898 | `result-track:db89572801f7fa8213ecda75fba6ce56c1b71e8b5a3d94a452660980999e6cda` |
| 112 | `theorem` | [Filter.EventuallyEq.mfderiv_eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/filter-eventuallyeq-mfderiv-eq.md) | 905 | `result-track:11d9553d7ca11653eac606ed0c038d905d270031167ac194eeae365163e26d51` |
| 113 | `theorem` | [mfderiv_congr_point](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-congr-point.md) | 915 | `result-track:ecb7b9f4b1c04fd2353faf4da65a8043d9ae03f05778c35e71b59fac0fa695bf` |
| 114 | `theorem` | [mfderiv_congr](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-congr.md) | 921 | `result-track:827adbd4aa08395197b593a013c60845ab184271ff32e20ad7fb24714dc5cb6d` |
| 115 | `theorem` | [writtenInExtChartAt_comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/writteninextchartat-comp.md) | 927 | `result-track:56fa31f8c30b00c7df9f520ad96e0c2a86287f25355ec4431d5a741cd5b1aa8e` |
| 116 | `theorem` | [HasMFDerivWithinAt.comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-comp.md) | 940 | `result-track:3926e495302373bd340ecb869a940ac9d45c0358148ad0494a949424645d70ec` |
| 117 | `theorem` | [HasMFDerivAt.comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-comp.md) | 968 | `result-track:d649e0f0c263451cb4209505f233f8ddb6fdc1be6c68f60ca67fad9fa6e21346` |
| 118 | `theorem` | [HasMFDerivAt.comp_hasMFDerivWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-comp-hasmfderivwithinat.md) | 974 | `result-track:efc7d67f5677950475dd1111231c6c82ab82a001eeb9088eb78dc05b1ca98b81` |
| 119 | `theorem` | [MDifferentiableWithinAt.comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-comp.md) | 981 | `result-track:d8d819c33fb723b98ded1bdc899302d15a5a781b804f354a207dda6dc45fedf4` |
| 120 | `theorem` | [MDifferentiableAt.comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-comp.md) | 991 | `result-track:90515352f81464e71a383de652f5b069be1525c32a47288014ba6a953639b1c8` |
| 121 | `theorem` | [mfderivWithin_comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-comp.md) | 996 | `result-track:5ae6c22feec6742efc0b0f7e8259190c3024cb1ae05efb7dd1489567915d5184` |
| 122 | `theorem` | [mfderiv_comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-comp.md) | 1004 | `result-track:b650df49a386a1a9d9c2b3f6a89fdb6198a4e80162372ba476a7d578be29c6a8` |
| 123 | `theorem` | [mfderiv_comp_of_eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-comp-of-eq.md) | 1010 | `result-track:4b702f4de35faab45467737a53b4addda6f66ac8ebbfa7ed19b16228695f68a7` |
| 124 | `theorem` | [MDifferentiableOn.comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-comp.md) | 1016 | `result-track:7ce78b17a6d64451122cf5df2014f8f591de00787b974aec02bff2ff323527fa` |
| 125 | `theorem` | [MDifferentiable.comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-comp.md) | 1021 | `result-track:49b5a54c0228cb3b3af5ba9605d5aa365748195bbeea59aa991d652593de63f3` |
| 126 | `theorem` | [tangentMapWithin_comp_at](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-comp-at.md) | 1025 | `result-track:32c08fcb83aea82d5ce24e7c5148629ad5a69e4cb019e46883dffe3cccd2004a` |
| 127 | `theorem` | [tangentMap_comp_at](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap-comp-at.md) | 1035 | `result-track:a1ee2c6f7850354e12208dd2084184cbc758548ba5564bbbe19ac2f219cce629` |
| 128 | `theorem` | [tangentMap_comp](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap-comp.md) | 1043 | `result-track:a27a7e024ffc5283051073b7461682c9aa00bb86c7f109d50bc93a9768f74523` |
| 129 | `theorem` | [uniqueMDiffWithinAt_iff_uniqueDiffWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-iff-uniquediffwithinat.md) | 1065 | `result-track:4b5799107fea3700df9829e57cee6904968a07a9c23d2a8daa146767e7dea63f` |
| 130 | `theorem` | [uniqueMDiffOn_iff_uniqueDiffOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-iff-uniquediffon.md) | 1075 | `result-track:05310b8f2722d1598c0a80653a5421b9fabd80b897c6128a5307462c0171f24f` |
| 131 | `theorem` | [writtenInExtChartAt_model_space](../../../../DifferentialGeometry/MFDeriv.lean/declarations/writteninextchartat-model-space.md) | 1084 | `result-track:4c519f4cd33263c33f952a727c9a98f272f957218ac21d789488c31737e45b4b` |
| 132 | `theorem` | [hasMFDerivWithinAt_iff_hasFDerivWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-iff-hasfderivwithinat.md) | 1088 | `result-track:9de4af318ac167bab1c85991031c162ba7e03fdcdbfb51c86bed2e6015b4a875` |
| 133 | `theorem` | [hasMFDerivAt_iff_hasFDerivAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-iff-hasfderivat.md) | 1099 | `result-track:e8e48b90a779e5945db5fdd4c916617b09ef37f4ddd65b160c0fd8209577fb25` |
| 134 | `theorem` | [mdifferentiableWithinAt_iff_differentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-iff-differentiablewithinat.md) | 1110 | `result-track:ea7227993d4cf747fc5f3c8ea1fab9b0bbce6ab3596f00cd2575c9c961d8f877` |
| 135 | `theorem` | [mdifferentiableAt_iff_differentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-iff-differentiableat.md) | 1123 | `result-track:212294c9bdedf8260da510e4276ddab0595de9fdb1d94fb0326f7bfda401f4f8` |
| 136 | `theorem` | [mdifferentiableOn_iff_differentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-iff-differentiableon.md) | 1135 | `result-track:477c0e3aaa42e2e12e65452c9c878650be38d3b7d1369c813c6500874b123201` |
| 137 | `theorem` | [mdifferentiable_iff_differentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-iff-differentiable.md) | 1147 | `result-track:72c83dd3275700a8b32e05af342d1c0ffe16d89e68f5073b172db96a1fa1dfcb` |
| 138 | `theorem` | [mfderivWithin_eq_fderivWithin](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-eq-fderivwithin.md) | 1159 | `result-track:c66c319fc915498ef319d466395295bbc7aa7d1df371ed987fd4f7a80c70e56a` |
| 139 | `theorem` | [mfderiv_eq_fderiv](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-eq-fderiv.md) | 1170 | `result-track:ef20d78d943524b757500afac6a9baf014b3cf74d302b7b8579ffeec4df43327` |
| 140 | `theorem` | [hasMFDerivWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat.md) | 1195 | `result-track:0dc0d3f8afd75a72cf33b916255869c1bd37debea7839ed333b9ccb9c86143f0` |
| 141 | `theorem` | [hasMFDerivAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-source-edition-2.md) | 1199 | `result-track:8f884d145f505a44e377f490a3fb4f3bab3b06b99ad52ef102234b68a9fd56fe` |
| 142 | `theorem` | [mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-source-edition-2.md) | 1203 | `result-track:9ff87770e96f918d562b7e65ce4db0e4d1e792f246cf76d51279f40f37331061` |
| 143 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-source-edition-2.md) | 1207 | `result-track:89d4ae84f76517949f7e3faf62ff0cfe9055f180fbd4161571b9537e0c678292` |
| 144 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-source-edition-2.md) | 1211 | `result-track:264ca4bda35efe1b540c68f9e6331b35544c59d6c1742300032f0e5141b8d4d8` |
| 145 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-source-edition-2.md) | 1215 | `result-track:87b15d831c21f4cc05c16b9b296608640b237561b8a27af16a9a04e13f412559` |
| 146 | `theorem` | [mfderiv_eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-eq.md) | 1219 | `result-track:3af8b0d5930e022cb2a4dbaf8df5d745935d7258e689a680784b9bcb1338d4dc` |
| 147 | `theorem` | [mfderivWithin_eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-eq.md) | 1223 | `result-track:3cff33ae11e856b69dc7ca0a10513d489f17d496f7eeb1ee07751b6c44bd4b28` |
| 148 | `theorem` | [hasMFDerivWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-source-edition-3.md) | 1234 | `result-track:6c831726f14978b23abe7b89c8174a5d6b186547200277eec293b7bfa6e0e427` |
| 149 | `theorem` | [hasMFDerivAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-source-edition-4.md) | 1238 | `result-track:e7729cdc1129bfc9dd4bed94b04e8f50e9ee2bbf0b3f651cf05063d806d4a48e` |
| 150 | `theorem` | [mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-source-edition-4.md) | 1242 | `result-track:f9394a54cbf034aba9d704bd77befbdc48cd3642e2928ad08c9da819c746e5e7` |
| 151 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-source-edition-4.md) | 1246 | `result-track:b86117183fddb40779182899dd58c84e722165bc32a4ae4d6ce26ef9370f5dcf` |
| 152 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-source-edition-3.md) | 1250 | `result-track:898fe152fed4ac008dcf12b26631a4ae21829ce04c8d9f0e0c5faa058d93cd78` |
| 153 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-source-edition-3.md) | 1254 | `result-track:c2e7096661be669d0c29a93b0d6c9e6ab4993ecffd8f041caa93b38e202d671f` |
| 154 | `theorem` | [mfderiv_eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-eq-source-edition-2.md) | 1258 | `result-track:7f6df8d32f6d753b53fcda71b7dd84e43ab17aa000582a3c5521154e1ffb419b` |
| 155 | `theorem` | [mfderivWithin_eq](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-eq-source-edition-2.md) | 1262 | `result-track:735436aced4809bc81f50ee2d8b32f3e666f5f5a2cbce0c1a564ffc06b08618e` |
| 156 | `theorem` | [hasMFDerivAt_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-id.md) | 1275 | `result-track:73cb7cad51915194446916ee7a7aacd382c0cafa4218063768e5fb1ee915dc10` |
| 157 | `theorem` | [hasMFDerivWithinAt_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-id.md) | 1285 | `result-track:2a5c26803a6bb9d706fb8efa850ccdeba1b1e4cfae84ff6585cae7fa1e8c3bf8` |
| 158 | `theorem` | [mdifferentiableAt_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-id.md) | 1290 | `result-track:4dd71941ee99f6bc94b0f040ed5038f9cebf0c9b7bf9bb43b9df939bfaf4b155` |
| 159 | `theorem` | [mdifferentiableWithinAt_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-id.md) | 1294 | `result-track:0baba440f2f490521a303d9efb6b4854895091f19c636c68360dc1bf7f3b5a4b` |
| 160 | `theorem` | [mdifferentiable_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-id.md) | 1298 | `result-track:f4dce26a0e4ea8e81adefa39c50fc13db8fd800a97cddc93ce74b8a518197e94` |
| 161 | `theorem` | [mdifferentiableOn_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-id.md) | 1301 | `result-track:41cdedb745c7317eb5a08df7f7d17e88839a08867f179d16d3a2f9bf49132c12` |
| 162 | `theorem` | [mfderiv_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-id.md) | 1306 | `result-track:e3dde96a92bac0dc82265faf94ce2e0523074f5f7101a5af9e4738addea273ef` |
| 163 | `theorem` | [mfderivWithin_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-id.md) | 1310 | `result-track:d2df44e80ea8315431a38d18a700914450f8f26e09d4abc775027398d3333120` |
| 164 | `theorem` | [tangentMap_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap-id.md) | 1317 | `result-track:561b83b840a43139358c0ee0dedd5ca758d0fb0fef5143867daca298df2c8489` |
| 165 | `theorem` | [tangentMapWithin_id](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-id.md) | 1320 | `result-track:9aa575dcdf2a1f228e3a43f8b0254cd72e9b14870e03b76c0c55cb0b98ee9f1e` |
| 166 | `theorem` | [hasMFDerivAt_const](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-const.md) | 1337 | `result-track:abf1c18ab8e3977d1b4e2cb48c520aae9010d58cc022c9c0d9fbcff1dac41ad5` |
| 167 | `theorem` | [hasMFDerivWithinAt_const](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-const.md) | 1343 | `result-track:b750ed86639bc39af56e5041f5435a946146837d2ca5bb0ef1bb2ea2d680b31e` |
| 168 | `theorem` | [mdifferentiableAt_const](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-const.md) | 1348 | `result-track:f9e1b003ac4d75b0be2e599e40d416fe32dc7815740d37cfd86f929c17e065bb` |
| 169 | `theorem` | [mdifferentiableWithinAt_const](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-const.md) | 1352 | `result-track:3f748073a9d1711508b6d4d86b318b5e4953e7cae4c43ed1a60eb3ec25a60c13` |
| 170 | `theorem` | [mdifferentiable_const](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-const.md) | 1356 | `result-track:7671407747d5c73845bd3d9956182fe9dd92f75c94abea4c12b3add324bafc50` |
| 171 | `theorem` | [mdifferentiableOn_const](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-const.md) | 1360 | `result-track:d69294bae70cedca65a2f7cc3d1bd6bcf8682187b3c93082420f3ac7249a3223` |
| 172 | `theorem` | [mfderiv_const](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-const.md) | 1365 | `result-track:562834bb666f2cc2925774c33c16d12fc80ef0b79b1174d0f2c556b716927b45` |
| 173 | `theorem` | [mfderivWithin_const](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-const.md) | 1370 | `result-track:7fbe3dffc1dc2f0c443cf5a76a875ac0bc2be8cee437abc186293b2ac44b1327` |
| 174 | `theorem` | [hasMFDerivAt_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-fst.md) | 1381 | `result-track:c2b6de5456c96c0d7858bc0bbfb541892665e49bd92c305eef5598b7ad04c381` |
| 175 | `theorem` | [hasMFDerivWithinAt_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-fst.md) | 1400 | `result-track:3e80b5a8d23c32c492f603b33e6ebdbe41b992333fdd5724d2caf50f7b0fb41d` |
| 176 | `theorem` | [mdifferentiableAt_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-fst.md) | 1406 | `result-track:29294a3ea785ade4e20a52b357428418d270959172b24421d168869009f09ab2` |
| 177 | `theorem` | [mdifferentiableWithinAt_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-fst.md) | 1410 | `result-track:bc197a8d840193fd42e4add8a2f62337553207ac106bbc883d2dd7f2e28c61ec` |
| 178 | `theorem` | [mdifferentiable_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-fst.md) | 1415 | `result-track:559de61aaea75d171439d4a1a4474ee2388c768b123cdd7f54e45d1fdde2f50b` |
| 179 | `theorem` | [mdifferentiableOn_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-fst.md) | 1419 | `result-track:d38b0bceef88940388ba76fc5f78fbb76a1c40d2d4c77654827358e0a0aae6d4` |
| 180 | `theorem` | [mfderiv_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-fst.md) | 1424 | `result-track:69f5939cf995410f023dbc01a3a46126ee6ec1dcc39e65fbe381aabaf4707e36` |
| 181 | `theorem` | [mfderivWithin_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-fst.md) | 1430 | `result-track:80e81d6f4f564f900552fc103c3e995badf44d1ccc105e98e6203a7fcd705c58` |
| 182 | `theorem` | [tangentMap_prod_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap-prod-fst.md) | 1438 | `result-track:b296343b3eecd76395813fc16c7bab0d7ed7915af8a068b0cc900537c1cdc607` |
| 183 | `theorem` | [tangentMapWithin_prod_fst](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-prod-fst.md) | 1444 | `result-track:0b67dcb3e7ef2b066844e410d8bda7ab8b4f3e325b85375a7da808a4ad22f04d` |
| 184 | `theorem` | [hasMFDerivAt_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-snd.md) | 1453 | `result-track:f94ee9c7042e1decf1cff14b0c68d647f00b5023ccdbd6fc580cee4f6f619537` |
| 185 | `theorem` | [hasMFDerivWithinAt_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-snd.md) | 1472 | `result-track:f77ba8f415876dcee1570960a3a4c4ebf6a9e85f1b60d74764df6a3710708fca` |
| 186 | `theorem` | [mdifferentiableAt_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-snd.md) | 1478 | `result-track:f684c9d71cda34715afb392120d14701cb3c7db4b053ac4889bec57b8ad42258` |
| 187 | `theorem` | [mdifferentiableWithinAt_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-snd.md) | 1482 | `result-track:414ff8f9c7af4877b8c0c9a6a23fc4ea329dc2f28e1703b99b85ab23fd8e5ac1` |
| 188 | `theorem` | [mdifferentiable_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-snd.md) | 1487 | `result-track:acc3802fc4809265427e5e048b3c50b4a7b2faf7d6b556cfea07473164b6cdab` |
| 189 | `theorem` | [mdifferentiableOn_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-snd.md) | 1491 | `result-track:85b27bff023e9d8b828cba5b6e189cb86e709c329ec98db43fff4ceffa59c6e5` |
| 190 | `theorem` | [mfderiv_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-snd.md) | 1496 | `result-track:6d714aa1472316f2f965d9a53cf8dbefc481270ae8c7588b6f5fc3fd20a18e4a` |
| 191 | `theorem` | [mfderivWithin_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderivwithin-snd.md) | 1502 | `result-track:1a3a21c975534df8af1eea232bdafcaa15b8ac0fedc94ccb01d5eef8ae0b3c43` |
| 192 | `theorem` | [tangentMap_prod_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap-prod-snd.md) | 1510 | `result-track:b3c7b94a3b02a0fa479f9ebd6e119758be0fa67b65893afb6e7a2ad00e57bd19` |
| 193 | `theorem` | [tangentMapWithin_prod_snd](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmapwithin-prod-snd.md) | 1516 | `result-track:ed03ebfcfc3e039f78cbdc97e6d3ef8ae1a8570de187ba3934e25508d7a95600` |
| 194 | `theorem` | [MDifferentiableAt.mfderiv_prod](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-mfderiv-prod.md) | 1527 | `result-track:ff0c99106fe27ef0e6c47155efe711451eeb9f8758b2ae197dc6e46e3411a8bd` |
| 195 | `theorem` | [mfderiv_prod_left](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-prod-left.md) | 1538 | `result-track:fe7f7a58ed2cc5fe4df2ec8a997b49d286cf9ba3ba9d740ddaa246d8e4875965` |
| 196 | `theorem` | [mfderiv_prod_right](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-prod-right.md) | 1545 | `result-track:bdf795a25ad54ea4b02929c6bc5351dd30a416be301c4be281421f6de805651d` |
| 197 | `theorem` | [mfderiv_prod_eq_add](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-prod-eq-add.md) | 1555 | `result-track:ea33baf3d1a413046844743bd0fbfc9718a116e8e4713414d1d3203c7275efa2` |
| 198 | `theorem` | [HasMFDerivAt.add](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-add.md) | 1590 | `result-track:31ee97c79bf29b0e3ac8f60ad381b050e85e465267988369680bce80316c0f42` |
| 199 | `theorem` | [MDifferentiableAt.add](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-add.md) | 1595 | `result-track:45e771ee5c46fd7ae23435f30ca46d3b550214ba5fcfe621f3cb104185a0ef4c` |
| 200 | `theorem` | [MDifferentiable.add](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-add.md) | 1600 | `result-track:b56d623d127666b0ce354555d21b55a4c32c2aec99c69a31556186d7c1777690` |
| 201 | `theorem` | [mfderiv_add](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-add.md) | 1606 | `result-track:0d880de4534cd2f06e5e43e33ed7ebb6c11e74a7496c76fd9a4ba579167295e2` |
| 202 | `theorem` | [HasMFDerivAt.const_smul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-const-smul.md) | 1613 | `result-track:3fe50637748b6c8b4a80888eb30169f5c20c9a9563342ea597f6620b2282cf8a` |
| 203 | `theorem` | [MDifferentiableAt.const_smul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-const-smul.md) | 1618 | `result-track:85efcd402a9d4fd295e7dd8dc4e698883cb541a44c88132ae19c0e3034a407db` |
| 204 | `theorem` | [MDifferentiable.const_smul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-const-smul.md) | 1623 | `result-track:65d25c8a8157533aa01329d83c0bdbf68248bf3cf87d2e58ca1c937f87afe2bb` |
| 205 | `theorem` | [const_smul_mfderiv](../../../../DifferentialGeometry/MFDeriv.lean/declarations/const-smul-mfderiv.md) | 1627 | `result-track:399410da8770f0b8150c1a67aba644eac89089db5d00a54616aa2a678f635846` |
| 206 | `theorem` | [HasMFDerivAt.neg](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-neg.md) | 1633 | `result-track:cafa4b9c5192ab7bdbc1aa571ba814a7d8211230fd55c54ded02167cac7173e9` |
| 207 | `theorem` | [hasMFDerivAt_neg](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-neg-source-edition-2.md) | 1638 | `result-track:fa65e89d97a7b24ea46ada2b41c451a9eada443e2f4d44b8ce380b25152419ab` |
| 208 | `theorem` | [MDifferentiableAt.neg](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-neg.md) | 1642 | `result-track:0f1d93c757d2d2e48533f9a4493a57b4cb414c353bff854c4005005bb3384b38` |
| 209 | `theorem` | [mdifferentiableAt_neg](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-neg-source-edition-2.md) | 1647 | `result-track:1341241149a9a9ad59131d66710a4413018fd3ec319ec4e16f9c645098f0674d` |
| 210 | `theorem` | [MDifferentiable.neg](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-neg.md) | 1652 | `result-track:bcfbd330bf8e128c77aec7393c56f05f487d85d19f7f772cde79afc609fbaeea` |
| 211 | `theorem` | [mfderiv_neg](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-neg.md) | 1656 | `result-track:14753029efc106a2b494e0d8299388603c86e6e8b71e8ef221d8a1647e8d3e2d` |
| 212 | `theorem` | [HasMFDerivAt.sub](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-sub.md) | 1665 | `result-track:81f49b608127d86441c10df61cf7b762d27afe2e483014725ad8286b3b74451e` |
| 213 | `theorem` | [MDifferentiableAt.sub](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-sub.md) | 1670 | `result-track:b943ba5757047717d92413a6c953ec03a1eb96298fad75fa31f3474598852efe` |
| 214 | `theorem` | [MDifferentiable.sub](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-sub.md) | 1675 | `result-track:8a62f0f48640efee3b7880f054ecccf9bb14921c7a21e38f8559c5c5ed2e6eef` |
| 215 | `theorem` | [mfderiv_sub](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-sub.md) | 1680 | `result-track:cd125caacc40029415ceba49c96fdf3129cbd0a64687cf6e994deaacd1678949` |
| 216 | `theorem` | [HasMFDerivWithinAt.mul'](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-mul-source-edition-2.md) | 1694 | `result-track:fdc00808bffe584f6053ec7e807466bae098e2ff676a32e5f538c252fb3e195e` |
| 217 | `theorem` | [HasMFDerivAt.mul'](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-mul-source-edition-2.md) | 1700 | `result-track:ba470785496d8853a9879066057b13cb16c988f6fba8ae9b4efa3491551f690a` |
| 218 | `theorem` | [MDifferentiableWithinAt.mul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat-mul.md) | 1706 | `result-track:acd1cf22f17fc616178620a4c903ea10049ae7dac90eeb5efbdaec413051735e` |
| 219 | `theorem` | [MDifferentiableAt.mul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-mul.md) | 1712 | `result-track:7ecc27f64f4346019944ff80d351570852bddd6b609829c7a2033d2603d18f80` |
| 220 | `theorem` | [MDifferentiableOn.mul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-mul.md) | 1717 | `result-track:dfc921c7e7fc0b8a824a461a1288744d7755dc2216cec092b9744e8281913c6a` |
| 221 | `theorem` | [MDifferentiable.mul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-mul.md) | 1722 | `result-track:2cdc7fa7f1fc9238bbebc487425af50a0d991edccc3ac4bf37f40603632219d3` |
| 222 | `theorem` | [HasMFDerivWithinAt.mul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-mul.md) | 1734 | `result-track:92cf3687d38855abb73cdc73de72b87808069e7fa95a542b236f150940430bc6` |
| 223 | `theorem` | [HasMFDerivAt.mul](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-mul.md) | 1740 | `result-track:35fd4ab5c0e57cd257c578dfbf5c38147ee09d4c6f2f27059cf5460cc1805de0` |
| 224 | `theorem` | [hasMFDerivAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-source-edition-3.md) | 1755 | `result-track:b4a59dc32534abc15e17b061ed4f50e927f102181292f3b25b559fabedeca0c2` |
| 225 | `theorem` | [hasMFDerivWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-source-edition-4.md) | 1759 | `result-track:ec32ca3d0eb248572e906b982668eba0047e137b89dac16a2b943bee0ff4635d` |
| 226 | `theorem` | [mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiablewithinat.md) | 1764 | `result-track:8e237c90c5a254d6fc02a4fc6de40a78a844168c284abc76614c6413686ba48f` |
| 227 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-source-edition-4.md) | 1768 | `result-track:af33baae407b232990d7884d32a2d96f0c87201fd8d30c01aca9d2c528b71e4a` |
| 228 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon.md) | 1772 | `result-track:4ea95c7bb5a98fd41055764dfcc3d3cea8cfd0cfc29fd7c744bfda96308c0f77` |
| 229 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-source-edition-4.md) | 1776 | `result-track:f262d4987344ef717ca92a26a33e87676c56f843e0dc264da0cc746f16675352` |
| 230 | `theorem` | [hasMFDerivWithinAt_symm](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-symm.md) | 1779 | `result-track:e5a645ef118d6c3d0bc81dda43102b2e35f93672a75700c8ee5b445fec61a1c3` |
| 231 | `theorem` | [mdifferentiableOn_symm](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-symm.md) | 1785 | `result-track:aeb9b2e6a607c6be3d9a289e3dcd44655f6f0d6ac682b062568a8f2822f092a8` |
| 232 | `theorem` | [mdifferentiableAt_atlas](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-atlas.md) | 1795 | `result-track:ff5168a680666067ab0893f1b278b39491ac4fd50f4be66ab6ea8c4809521a3d` |
| 233 | `theorem` | [mdifferentiableOn_atlas](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-atlas.md) | 1814 | `result-track:634f95efb7d6c81b1c94d026bee2cea9d0e389dba55798f292bb52cbd0d8d8e7` |
| 234 | `theorem` | [mdifferentiableAt_atlas_symm](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-atlas-symm.md) | 1818 | `result-track:5791c1a9f4ee11db9c0d685af25ed2f4b92351d9f9e5949fb6e07641750e988f` |
| 235 | `theorem` | [mdifferentiableOn_atlas_symm](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-atlas-symm.md) | 1836 | `result-track:3f67ef9a9e8e0364288003f8a12d7aadba5b71e7c12b59408287f18bc8ee215c` |
| 236 | `theorem` | [mdifferentiable_of_mem_atlas](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-of-mem-atlas.md) | 1840 | `result-track:d83ad499728b9f233197bdc0fd3cccac213dbb0e9e8f7b41f6fa2a4327e9318f` |
| 237 | `theorem` | [mdifferentiable_chart](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiable-chart.md) | 1844 | `result-track:56eb3683cb4f1e6dd1940c2d429f51feb058ea312d352e1a44c113deb8580125` |
| 238 | `theorem` | [tangentMap_chart](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap-chart.md) | 1850 | `result-track:24e18c75e6911e02b1969f6dab895dec15277bc4983a5f621d4e9d06f5898c98` |
| 239 | `theorem` | [tangentMap_chart_symm](../../../../DifferentialGeometry/MFDeriv.lean/declarations/tangentmap-chart-symm.md) | 1863 | `result-track:25cf28cb296f86476f4c975a65ae8f853ba444cc1ede6683568bed1a68f12648` |
| 240 | `theorem` | [symm](../../../../DifferentialGeometry/MFDeriv.lean/declarations/symm.md) | 1893 | `result-track:b14508b0bb116ba4951718b7b371cbbc6423638be7a73a648b51967b36574ca3` |
| 241 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat.md) | 1896 | `result-track:0ce80a9b843611859e4f878b6879aa4709774e2b5aca2acaeb5b3951ce1b291a` |
| 242 | `theorem` | [mdifferentiableAt_symm](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-symm.md) | 1900 | `result-track:81debd29dbd33f42c854c1a1028575d3cb743282bb4d25e01951f84f49e9c120` |
| 243 | `theorem` | [symm_comp_deriv](../../../../DifferentialGeometry/MFDeriv.lean/declarations/symm-comp-deriv.md) | 1907 | `result-track:a73e2bc66d43f35f196d9797fef62746f33f509819c0ac618c5467783b0c9d32` |
| 244 | `theorem` | [comp_symm_deriv](../../../../DifferentialGeometry/MFDeriv.lean/declarations/comp-symm-deriv.md) | 1920 | `result-track:d0af89960d2dd4532c6eec8eef8ee363426fa60730fed087a3757295a164176c` |
| 245 | `def` | [mfderiv](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-source-edition-2.md) | 1928 | `declaration-track:b19f18ce3abd9163df3d038902f8c8ab066bc8d7e8e5b4f814b16a52d9e1ecf4` |
| 246 | `theorem` | [mfderiv_bijective](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-bijective.md) | 1945 | `result-track:cf92bcc3dfc8d2a79a34a83f03f4ddc70a08752bc82b3584787bdd3eaad8df99` |
| 247 | `theorem` | [mfderiv_injective](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-injective.md) | 1949 | `result-track:cc544e54f2ae10b28ff0d28197d0f3e84112daa818ddd369ac1d3c2f2f10e74c` |
| 248 | `theorem` | [mfderiv_surjective](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mfderiv-surjective.md) | 1953 | `result-track:974f4135532a14828ebd29950a87cad11df591b24d3d6a5bb2290941923d8d54` |
| 249 | `theorem` | [ker_mfderiv_eq_bot](../../../../DifferentialGeometry/MFDeriv.lean/declarations/ker-mfderiv-eq-bot.md) | 1957 | `result-track:cb7ce6aa20158bd1953656d011a39c158a7579a984f90347fb139cfad0c69a2c` |
| 250 | `theorem` | [range_mfderiv_eq_top](../../../../DifferentialGeometry/MFDeriv.lean/declarations/range-mfderiv-eq-top.md) | 1961 | `result-track:bc21f6256e1bb912b861420d033926ea69ad0e944121626b05520f61ac911c44` |
| 251 | `theorem` | [range_mfderiv_eq_univ](../../../../DifferentialGeometry/MFDeriv.lean/declarations/range-mfderiv-eq-univ.md) | 1965 | `result-track:0c24bf9cc5dd8e20ff1a5f9e71f652af8a482fe48fd5421ec50c0b86ea2382f4` |
| 252 | `theorem` | [trans](../../../../DifferentialGeometry/MFDeriv.lean/declarations/trans.md) | 1969 | `result-track:2276ebebe2a261f30bf90c8a94350ea0674742218d6a82e792101895e6684fc8` |
| 253 | `theorem` | [hasMFDerivAt_extChartAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivat-extchartat.md) | 1992 | `result-track:4cf5397810e816e76b4886ff60c8d3e77a2002713f3e8720b06c2ac8241b99c3` |
| 254 | `theorem` | [hasMFDerivWithinAt_extChartAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/hasmfderivwithinat-extchartat.md) | 1997 | `result-track:9dff5656f119f7be9032efbf0c075fcdcbb2fff92469dfc0917bb9fc98414859` |
| 255 | `theorem` | [mdifferentiableAt_extChartAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableat-extchartat.md) | 2002 | `result-track:2f926f17e7567fb20ab4815bc4a28f4476fd67a11171230e6fd50bf076cbcdee` |
| 256 | `theorem` | [mdifferentiableOn_extChartAt](../../../../DifferentialGeometry/MFDeriv.lean/declarations/mdifferentiableon-extchartat.md) | 2007 | `result-track:67291888e4ed5e3087ace583bc88664e077a6508155a8c7bb84820ec5eb28b45` |
| 257 | `theorem` | [UniqueMDiffWithinAt.image_denseRange](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-image-denserange.md) | 2027 | `result-track:c739630a97e37a394391befd67d1cda0aec3820ca530d86503856a98442bd6e7` |
| 258 | `theorem` | [UniqueMDiffOn.image_denseRange'](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-image-denserange.md) | 2042 | `result-track:61b3ccc397f3bf0229f2bc246723b4732285a33005794c38fac57ca94d5d11c2` |
| 259 | `theorem` | [UniqueMDiffOn.image_denseRange](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-image-denserange-source-edition-2.md) | 2050 | `result-track:a1e3acd3ebd0c9556ede1178de45d9ab8e8ad6c2657ade4f7e581a0e3b992e5c` |
| 260 | `theorem` | [UniqueMDiffWithinAt.preimage_localHomeomorph](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-preimage-localhomeomorph.md) | 2055 | `result-track:8fdefb7be257a3f00f057ff6ba834419a0a874562bf024a74ae6546634e5a949` |
| 261 | `theorem` | [UniqueMDiffOn.uniqueMDiffOn_preimage](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-uniquemdiffon-preimage.md) | 2065 | `result-track:8e897ef18e5fc17ab1337fec8feda27833ab1c347e3fdc363f9a561222bbd05f` |
| 262 | `theorem` | [UniqueMDiffOn.uniqueDiffOn_target_inter](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-uniquediffon-target-inter.md) | 2072 | `result-track:b09df0b48fc4a6ebad17088d38e802407868213351bdde1fa03e2709367841ff` |
| 263 | `theorem` | [UniqueMDiffOn.uniqueDiffOn_inter_preimage](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-uniquediffon-inter-preimage.md) | 2086 | `result-track:b65d69e4144854765a22aa0ddbd4252e73eb4f8c1227bdc5ab5dc57402002296` |
| 264 | `theorem` | [Trivialization.mdifferentiable](../../../../DifferentialGeometry/MFDeriv.lean/declarations/trivialization-mdifferentiable.md) | 2104 | `result-track:86fb761b15db31ca97031d71d1bb843863375302b4b823fce2555ab27c35c49f` |
| 265 | `theorem` | [UniqueMDiffWithinAt.smooth_bundle_preimage](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-smooth-bundle-preimage.md) | 2108 | `result-track:a042f1e3b65673f19d2f5edf7355e77bbe2a67c30cc149ea175973e57327d927` |
| 266 | `theorem` | [UniqueMDiffWithinAt.smooth_bundle_preimage'](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffwithinat-smooth-bundle-preimage-source-edition-2.md) | 2123 | `result-track:f227830e546a119bcaca8fbd13a92ad13e560873246b76c9b4dba6e3dd7c4eb8` |
| 267 | `theorem` | [UniqueMDiffOn.smooth_bundle_preimage](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-smooth-bundle-preimage.md) | 2129 | `result-track:7c9ce9750e44848cd22131012398d9463e01905c57d5a559e13ec1b65c4db6f4` |
| 268 | `theorem` | [UniqueMDiffOn.tangentBundle_proj_preimage](../../../../DifferentialGeometry/MFDeriv.lean/declarations/uniquemdiffon-tangentbundle-proj-preimage.md) | 2136 | `result-track:9138a98cf7a37d70ea6298a399f5dcc6c6fa7b1ee7db603f9a45647a9b15922c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72f883009dd78148c0716a1bb3344e6ad587e764eacbc11888e48d5f0cfbca6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
