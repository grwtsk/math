# Verification target: Het TPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f552c724111d0d844b28249e77a93cd0ce497af5",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f552c724111d0d844b28249e77a93cd0ce497af5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ComputableSmall](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/computablesmall.md) | 21 | `declaration-track:e270a7badbd5058ab3ca699e495d8932947ae055733520b51b72fde18b88f5cc` |
| 2 | `class` | [Small](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/small.md) | 28 | `declaration-track:ac2d106b64d80a4e6090528e1fbf5060a65c93a1902b6bebff8ddc9705a41949` |
| 3 | `def` | [ComputableSmall.choose](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/computablesmall-choose.md) | 32 | `declaration-track:2e02047355b903de356955add412cd9d8c7b6d5596f37583aebd067341f9e630` |
| 4 | `structure` | [USquash](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/usquash.md) | 38 | `declaration-track:7f0448d05f1bbf190b6b2a9e700333c6f82aea0982cc8b5141722b13d1cd1e55` |
| 5 | `def` | [USquashOrUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/usquashorunit.md) | 42 | `declaration-track:57232df92bb94a3dddf127a76124d987e5fa847af1badb95b4b2ce8f41b45b44` |
| 6 | `theorem` | [uSquash_eq_uSquashOrUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/usquash-eq-usquashorunit.md) | 44 | `result-track:00e7873e32cd9f5818f5921d04cf6b90844bbbc9bb4c277922acf7a2ba1cc759` |
| 7 | `def` | [USquash.deflate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/usquash-deflate.md) | 47 | `declaration-track:89ca24a9861f9c7a8af72054285f9bae7714bd3e0b13ce1b0cda2176b89ebbe2` |
| 8 | `def` | [USquash.inflate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/usquash-inflate.md) | 49 | `declaration-track:deb1f31a85f1841c39a7d5e930ae65f8d760c0f5d9a6847205c0aa24551532b3` |
| 9 | `theorem` | [USquash.deflate_inflate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/usquash-deflate-inflate.md) | 52 | `result-track:7155ac9de9065eec5619dc9fb191637182f297e3191ff60ccad56a28964b249a` |
| 10 | `theorem` | [USquash.inflate_deflate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/usquash-inflate-deflate.md) | 57 | `result-track:f3387fa5e1ad795cb83892f0720defd42ab06553ca30f1bbf3fb597cfd1acc07` |
| 11 | `theorem` | [USquash.inflate.inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/usquash-inflate-inj.md) | 61 | `result-track:dfe40612bb8161b2a2e8a571b57e883c79f0c981c2264f55bc7c6292cf69d9e4` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-8.md) | 64 | `declaration-track:95061f8378f69d016c788f5eb6327c680b4974e87f5dbe44acc0803d5af61913` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:26ee226d5afeee0769d3e129253e7b912a02fda5f02aa06c6e2a8ee082831ca2` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:04349a392ae2c6619190334ae9b5500c30694a5f8fc41a5f9fe21b861da11a46` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-5.md) | 88 | `declaration-track:65feffeda6ac177afa6758d54d7be504436668af35a288cd16611b321bd4febc` |
| 16 | `theorem` | [Small.of_surjective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/small-of-surjective.md) | 97 | `result-track:2335297a0997a5dbf8118730c2afff6869365ad08872fc656fe835f7fa581d44` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-6.md) | 110 | `declaration-track:6ac9692b33190e0959a08ec41a9ca822e29a50ab0027e601f1e3d171934b5e42` |
| 18 | `theorem` | [Small.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/small-map.md) | 114 | `result-track:6cca91c4acfe64caea614723ac9ee19e6eb92e7cb5ed5ee01cc2881102e90a38` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-9.md) | 123 | `declaration-track:cee20ae96dc0962e571fc443a38f4f3dda72fb5d096368358b25eab2a2678061` |
| 20 | `theorem` | [Small.pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/small-pbind.md) | 130 | `result-track:719dafc60c36c04a21c0a49aac1fcb76418474c6186f771cb2bffadfde349b95` |
| 21 | `theorem` | [Small.bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/small-bind.md) | 137 | `result-track:d94f6f72f31988fc6b5e4d01cf17e955939338b837099e48925d04175947aaa4` |
| 22 | `structure` | [HetT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett.md) | 169 | `declaration-track:ee74d8d1473c15e78cd627ab31ed789106ecda95a17afce3887ae12388090c1d` |
| 23 | `def` | [HetT.ofPostconditionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-ofpostconditiont.md) | 191 | `declaration-track:98243edd5d76c41ad041cc9eb4f2bae9b5190a3834a26ceedc3260e6e00e348c` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-10.md) | 194 | `declaration-track:fd9d197973c7468c586bea13ac0f6cc5e1b41ab98b88c74d8a5f701b09f2b6a9` |
| 25 | `def` | [HetT.lift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-lift.md) | 203 | `declaration-track:e293de1d3506721162e974a95e4278bf255f99552504613fc3242d98b3397776` |
| 26 | `def` | [HetT.pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-pure.md) | 211 | `declaration-track:ffc1950283288c7152dd2e484ebea0f433f6e840cc37dc1ff18bd0e59b8d49e2` |
| 27 | `def` | [HetT.pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-pmap.md) | 218 | `declaration-track:ad028bf6f52e01d82b5e7c44e9bd0c175675d551f5d4b58eb824a4eac0c1eae1` |
| 28 | `def` | [HetT.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-map.md) | 227 | `declaration-track:fc810fd062744326470a38274f128f8f054c829e520e8c4beeec0821eaa83c76` |
| 29 | `def` | [HetT.pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-pbind.md) | 235 | `declaration-track:ca9a05122b29d85b88e1432eebb66676f2ce0e1713862026aac5769d97ccaa57` |
| 30 | `def` | [HetT.bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-bind.md) | 247 | `declaration-track:57ec7c40142133135fd3c71538f3ca796ca91afac8eb1096603cdc455132a856` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance.md) | 256 | `declaration-track:02eb262d8898d3134c51e8ac98f902d849b5438461466c463be6d5d44170f870` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-4.md) | 259 | `declaration-track:6146bba7a18131c3e186f60f086fcb25bddbec5c4ebc3b3c61fc3d4064340686` |
| 33 | `def` | [HetT.prun](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun.md) | 267 | `declaration-track:ebd9f5340edd3e7b8348a2da717ca85e62d0b1e3464b76729022bdec9dbf8e97` |
| 34 | `theorem` | [HetT.property_lift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-property-lift.md) | 272 | `result-track:6dbb98903138bc84ad3f0ed4e4c38b976cf6ba5afff8ef3481ae58bb67080c22` |
| 35 | `theorem` | [HetT.prun_lift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun-lift.md) | 277 | `result-track:d4fdd393d0ded2a7a3446c0b76818177e66505fbe70301c9a3d4a89706a514ac` |
| 36 | `theorem` | [HetT.property_ofPostconditionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-property-ofpostconditiont.md) | 283 | `result-track:46d7e32c7fbc445879f6bb6d72460e046a74eb10d4de1ef3c989603582d44869` |
| 37 | `theorem` | [HetT.prun_ofPostconditionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun-ofpostconditiont.md) | 288 | `result-track:bd3cf1c7c7d202a18da3b7364b4ebbb6aa44462546816839d16f70f812ed6487` |
| 38 | `def` | [HetT.liftInner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-liftinner.md) | 297 | `declaration-track:e27e16ef1b60e4bbac01a96320ae838b7f226cd74ae48854de7a839c0a0fa255` |
| 39 | `theorem` | [HetT.property_liftInner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-property-liftinner.md) | 302 | `result-track:bd015ef0e84f692ee45b47053acbebd85bf77e39ee0bd49db355b88c97c2385c` |
| 40 | `theorem` | [HetT.prun_liftInner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun-liftinner.md) | 307 | `result-track:f2539df2911a386aaac7f2db6eb5476741d20853e2a73461f18c2a7198c8d993` |
| 41 | `theorem` | [HetT.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-ext.md) | 312 | `result-track:66cf4ba63b8779643ac0272191bc23f641ffb8b2b830396fe84911f9ad4c8e0d` |
| 42 | `theorem` | [HetT.ext_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-ext-iff.md) | 324 | `result-track:7171f730956bbce255a79078340c55a031d3a1228fc8806d3377c8261138d88c` |
| 43 | `theorem` | [HetT.map_eq_pure_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-map-eq-pure-bind.md) | 336 | `result-track:7c03b4e2118ee873d9c11185dfa03db25007adb2526f24098504386f98a8a711` |
| 44 | `theorem` | [HetT.property_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-property-pure.md) | 342 | `result-track:a90ea6ab8fd151e9975def50c4e8b5a1dc51e6964d266ffdba167c1927f77d1e` |
| 45 | `theorem` | [HetT.prun_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun-pure.md) | 347 | `result-track:c6edb6dbfd7aa4285769187f13a1cc67a491863388384ce4ad3da65fce6dd728` |
| 46 | `theorem` | [HetT.property_pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-property-pbind.md) | 353 | `result-track:7b2c29637f614fefb04d112e7bd4e1acf24c7d3cb9c745bcad796aabbde516dc` |
| 47 | `theorem` | [HetT.prun_pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun-pbind.md) | 359 | `result-track:f281d77c779c340abfe59cc4aaf3923124c045080aa1e7f899ac91002611d4f5` |
| 48 | `theorem` | [HetT.property_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-property-bind.md) | 365 | `result-track:31172bcf9ccccde63953cb572f0779824913d58d37280a9161f3e1948588cc91` |
| 49 | `theorem` | [HetT.prun_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun-bind.md) | 371 | `result-track:4b1ee6bdd78a8061da448222bbc0154681e9b9d70b4e2c664937af92d5331713` |
| 50 | `theorem` | [HetT.bind_eq_pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-bind-eq-pbind.md) | 376 | `result-track:ffd36fd1de1d7d9ad24d57ec0d17b7652ee4f3d355b351be1432919275434ed4` |
| 51 | `theorem` | [HetT.property_pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-property-pmap.md) | 382 | `result-track:c8871fab3e388b68ef85e97fa8facd467f7bc8f622269339e41bc9801d6b562a` |
| 52 | `theorem` | [HetT.prun_pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun-pmap.md) | 388 | `result-track:2163bc3c61fe1c931fc2a15a5cee908bb2f0dbb62b7067de8429ae0a17a036ba` |
| 53 | `theorem` | [HetT.pure_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-pure-bind.md) | 394 | `result-track:d758f74ef245eb80331d9b43909cbc78ba669570ab2b20f88a2f811995dc0790` |
| 54 | `theorem` | [HetT.bind_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-bind-pure.md) | 400 | `result-track:5956502465b99d89f56568928271702ad39ad3393ef483f1aa0676923e092500` |
| 55 | `theorem` | [HetT.bind_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-bind-assoc.md) | 406 | `result-track:e516234860c7c419f65096f8a1e0f63ad148f028653fb13e07e263fa48bc438d` |
| 56 | `theorem` | [HetT.map_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-map-pure.md) | 418 | `result-track:3a737613a8833ea1c2bd562c066330ed746828a4b17bc1cb3cb7d020b868f9f5` |
| 57 | `theorem` | [HetT.comp_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-comp-map.md) | 424 | `result-track:684e98c6f36b62cbb150c26f7ab176ff848b70196dac2aa597ff296f235585b4` |
| 58 | `theorem` | [HetT.prun_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-prun-congr.md) | 430 | `result-track:032320ff458e41abfc4103c2e22910a8a4295a572c88fe5b5530b4a9fa67b0e8` |
| 59 | `theorem` | [HetT.pmap_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-pmap-congr.md) | 437 | `result-track:8c487559d2116b74be0c51acffb2d5bac4f4fabfd5254759219e6ca33c2fac7c` |
| 60 | `theorem` | [HetT.pmap_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-pmap-map.md) | 443 | `result-track:d474deeea50fd2310acf911378deba412ba332497a46bdf17fecd2fba85f9407` |
| 61 | `theorem` | [HetT.map_pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-map-pmap.md) | 456 | `result-track:a751246287abe70dfa8faedc33003dfbf088708150ca485c703f8d94415a9021` |
| 62 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/instance-source-edition-7.md) | 469 | `declaration-track:76ea01eb9a258cf93dab5d12e02ff2394216e88019a6f469377cb593ece09405` |
| 63 | `theorem` | [HetT.property_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-property-map.md) | 482 | `result-track:91afcc97eda57c11690f16426ac8afabc685626bf52fb2833b032c71a0966836` |
| 64 | `theorem` | [HetT.liftInner_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTPublic.lean/declarations/hett-liftinner-bind.md) | 493 | `result-track:dd390bb21398f62957c1564ff249b094e7499c1758c43bd1fbcc162a22fc297e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23b7fa5ce4c4efd26a7f2415a8a2211969238f852418876eb0c71702edadf6a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
