# Verification target: Centroid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "947b9b644116196537fa012be81e4e49deb6559d",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Centroid/Variant3fedf94fcd609672ec71720d49b7fb4bf9594b096d4c8ebac4d90811b3e65bdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `947b9b644116196537fa012be81e4e49deb6559d`.

Source path: `GRWTSK/Algebra/Centroid/Variant3fedf94fcd609672ec71720d49b7fb4bf9594b096d4c8ebac4d90811b3e65bdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Centroid/Variant3fedf94fcd609672ec71720d49b7fb4bf9594b096d4c8ebac4d90811b3e65bdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupInstances` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CentroidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/centroidhom.md) | 49 | `declaration-track:96ed19d914676e83d246f736ce1d2ad58e9f104816b416847ea8d41f8795b677` |
| 2 | `class` | [CentroidHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/centroidhomclass.md) | 61 | `declaration-track:5a5bd9604cbf760b4e1a2d368cc777af622ea2f8c39dac757a3cca817eb14641` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-13.md) | 72 | `declaration-track:e9ce32145c87dce738733f71563f7fa69c406ea574a326133a74531a872357de` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-12.md) | 88 | `declaration-track:c6c549222e089943b8dd403f52f39a8c0340f5b62e07077703caf8e8f47dccc4` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-10.md) | 105 | `declaration-track:c04c31bb97c0bd2dd258a122f54ee01a60d791ff184448fefc048d1be156307a` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/tofun-eq-coe.md) | 110 | `result-track:1cbf70366e5f270a633cb1cd08e079d42686240bdf3fc69e33a8ba0cf93f30bb` |
| 7 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/ext.md) | 114 | `result-track:3ac078532c5fa02a0620e3d8a1d6392e2d341eab3128ff29c6675f0737890b26` |
| 8 | `theorem` | [coe_toAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-toaddmonoidhom.md) | 119 | `result-track:fdfa4041b0ac8c13f9c56141823586607daa53a42d6e1c9b1e08f95ac579290c` |
| 9 | `theorem` | [toAddMonoidHom_eq_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toaddmonoidhom-eq-coe.md) | 124 | `result-track:30daa84b10ddde1eeb443af07835ceeedcbc44b8a8ac4d1af058877213997b91` |
| 10 | `theorem` | [coe_toAddMonoidHom_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-toaddmonoidhom-injective.md) | 128 | `result-track:4195c6a482036658db1d7b55937d21de800638a776201668fd6a734c0420e234` |
| 11 | `def` | [toEnd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend.md) | 135 | `declaration-track:f0cd58e80aeadc7270cb68e5b8fc8993b88ad86f4e81aeab002d46dc178237d1` |
| 12 | `theorem` | [toEnd_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-injective.md) | 139 | `result-track:28a3ddcb9ee2d6810830fcfcd7ccd95488d927bc992f33ba4f3a518edbae48cb` |
| 13 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/copy.md) | 145 | `declaration-track:a2c319286918545aa971025cd45009c8999fcd5e92be7874fc32d78cfa3f9111` |
| 14 | `theorem` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-copy.md) | 153 | `result-track:84790258724e4b177670d29ce7dd7601cbe22b177e1dc3ede96b0de39096e605` |
| 15 | `theorem` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/copy-eq.md) | 157 | `result-track:705d885b006c4733bd0beb30f24065b47136284964af8ffe22b1392cfd1f56a6` |
| 16 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/id.md) | 164 | `declaration-track:bb5ed06ec16bf68c959ba0bcf3dc61674d5684f9b82073edfb1473178abcdc8a` |
| 17 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance.md) | 170 | `declaration-track:059697c371d278669cd596715943e39e6dea772685a375e61e341b6da4b05d00` |
| 18 | `theorem` | [coe_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-id.md) | 174 | `result-track:9f6e330d3113eb5cf2bbcdd0b4b5b5ce56ed843ba081220e782536aacf184bb3` |
| 19 | `theorem` | [toAddMonoidHom_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toaddmonoidhom-id.md) | 179 | `result-track:c12933719af5166ca4124a912ec454fc8652550d7d62b3ff1a879899a1489c2d` |
| 20 | `theorem` | [id_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/id-apply.md) | 186 | `result-track:dce4a4ecf2a7dce52ea13bcb2104e92a0a674f580503d913e51816be4b17fc71` |
| 21 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/comp.md) | 191 | `declaration-track:7419c0b6c4dee7cd58b87dc4c80af0d332faaa9c8ab8802591de338fa6119ae3` |
| 22 | `theorem` | [coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-comp.md) | 199 | `result-track:5139eff8d94ba941f3392badcc9905c02a141f9ca1d4585e33371c8246cb813c` |
| 23 | `theorem` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/comp-apply.md) | 204 | `result-track:455d95cf9d6264e0f38065a7972d31368f92d0121c9a927afb64ed11423a55d9` |
| 24 | `theorem` | [coe_comp_addMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-comp-addmonoidhom.md) | 209 | `result-track:cb53a6ef9b5872824b349f43da7b2937c78a903c6e83a81d50ae5bb00df124c0` |
| 25 | `theorem` | [comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/comp-assoc.md) | 214 | `result-track:6f2e48867f3f9bc7e47fab6b3ffa36f16772ca3f805dd583eef2b83b63fb14d4` |
| 26 | `theorem` | [comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/comp-id.md) | 219 | `result-track:5665177259201d2cf98896a3a9f4192bf5a615ca25223462dfea91ee7dcbf905` |
| 27 | `theorem` | [id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/id-comp.md) | 224 | `result-track:621ae55d902b7e9d4d877ed54ae6e2985c56d36b4ea31c454b8db747acc9851d` |
| 28 | `theorem` | [cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/cancel-right.md) | 228 | `result-track:05cfaeac95059d7792626ad42676b6950d944bddc01c6bccb76d44287741274a` |
| 29 | `theorem` | [cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/cancel-left.md) | 233 | `result-track:765b80e5d2ee30e9d5da51494e9d34e3502ca171c7e7a8d45941d3f2589368dd` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-15.md) | 238 | `declaration-track:fd1a0ed32f49380a9d5ea4a5790abf523ed1db5dd7697067d306ea013af3b320` |
| 31 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-6.md) | 243 | `declaration-track:96af80f07bb58639ff8967cc05a1cc95f2aa59b8d3cafa15076f3e905bf36ba2` |
| 32 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-7.md) | 246 | `declaration-track:9de0837bb5dff694df8975d0675bbb37d7a1a4c737f8eff2e3fa68ce0a8d65a5` |
| 33 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-4.md) | 256 | `declaration-track:858a469247d6f1582be0b2ad155d9bb322be7ef1157ac5f565e26a9fb3304791` |
| 34 | `instance` | [hasNsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/hasnsmul.md) | 259 | `declaration-track:86ef784b341f99a14e7a84ce4c7e91d4851c0f2aeab50c6a51ceaa5e5320b016` |
| 35 | `instance` | [hasNpowNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/hasnpownat.md) | 270 | `declaration-track:3dfdaea891e4cece01ea2c885267ebd05c9470ce0291578777e19e99e7ec23c9` |
| 36 | `theorem` | [coe_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-zero.md) | 288 | `result-track:4ce4e716a33fe9c9b117afba2b56610265a5dc6a0cb90d595b7dfbd3afafa3d0` |
| 37 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-one.md) | 293 | `result-track:5f8f7042525f479894301ef893c6401bb0647bfc8e322066e276723c67a2ddc0` |
| 38 | `theorem` | [coe_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-add.md) | 298 | `result-track:08721322b307e96edfc9da6fc1f34d0f3da63e285b69293f26aef968333e9ab4` |
| 39 | `theorem` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-mul.md) | 303 | `result-track:81ad9bc52153d88021f565d775e6c706bdb2ec72a1b29769551b34e3d60d030e` |
| 40 | `theorem` | [coe_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-nsmul.md) | 309 | `result-track:ce70cbfa0b13d4dd5e05f9fbe47c9d90e83323f1dfe65e67b9c9f06171d52e1d` |
| 41 | `theorem` | [zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/zero-apply.md) | 314 | `result-track:217f1216797546911709522f8452c246cfbd2c63afda59a36fc8044d1d574e70` |
| 42 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/one-apply.md) | 319 | `result-track:790d92d93d5402d513dc1bf8da7035b8b4d12619dd1476865441ea3cce5960b4` |
| 43 | `theorem` | [add_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/add-apply.md) | 324 | `result-track:af09f30e4524f0e6a3234da3343e681fd82f0f1ccceec16eaa57830d23e42180` |
| 44 | `theorem` | [mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/mul-apply.md) | 329 | `result-track:06e5d31e63a880519438b56d157257bd6dc9dd0a9751cfd6d2ba7e9ac4695df4` |
| 45 | `theorem` | [nsmul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/nsmul-apply.md) | 335 | `result-track:32c97e7c7adcd5dd024e02a6d41aa0d063a08b403f1b47aaba43fe2c20f1d30e` |
| 46 | `theorem` | [toEnd_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-zero.md) | 340 | `result-track:35dcb8777f6f6bb6522e341967673aaa59e6256c1bba7e94af9d16ff75224692` |
| 47 | `theorem` | [toEnd_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-add.md) | 345 | `result-track:4c426119feb2370a184867e05071aec3ee5bfca950faafdc7b31ca08c73d90ce` |
| 48 | `theorem` | [toEnd_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-nsmul.md) | 349 | `result-track:18f69b1f66178d8db69ffab9cb6a05fb96ed8dda227aa808af1963006f04cabe` |
| 49 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-8.md) | 355 | `declaration-track:b26417db77a2d4c6bd4eefe70448993eb45e9b422ce405b8481dc69d6dfc20f3` |
| 50 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-11.md) | 358 | `declaration-track:c413a5f5633d5a1e428430e15ddd2728997ed2ce236d2119b6747c2befa8368d` |
| 51 | `theorem` | [coe_nat_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-nat-cast.md) | 362 | `result-track:4b5dc47dcab70a2f8b9cb3d5173e4df4cc980d50cf3903cffb33cf749caa6904` |
| 52 | `theorem` | [nat_cast_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/nat-cast-apply.md) | 366 | `result-track:63f12a1a61d37b933eb6c25ff1f4b97bd3a5f95bc50db0b5aad7af99ff257ee8` |
| 53 | `theorem` | [toEnd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-one.md) | 371 | `result-track:1769f0e89c21bb4c8f86406343078d5dbda1f6dcc4f612791044a0e4eb6068a5` |
| 54 | `theorem` | [toEnd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-mul.md) | 376 | `result-track:0fb94a52f5a4a94c320c09b125cd9a5f73a1fb74bc74643eb597dc933a84d828` |
| 55 | `theorem` | [toEnd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-pow.md) | 381 | `result-track:e2e103f344cf752774112478c0dc410ac82f5e977fc09d324742b70064c38649` |
| 56 | `theorem` | [toEnd_nat_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-nat-cast.md) | 386 | `result-track:e8b06ad393c7de1ee4832667f36a038ddc0faa0121e09cf0b40f953cd07a1b4f` |
| 57 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-5.md) | 391 | `declaration-track:8d5d6d91a06b5d2ed0701f152031c3cea965e3e9047890d8c78bffc4794c31d8` |
| 58 | `theorem` | [comp_mul_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/comp-mul-comm.md) | 395 | `result-track:ba0511705c561074d08adcd067789321eb54a3c7524f996b63424d6cd02d3f4e` |
| 59 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-2.md) | 407 | `declaration-track:23187eb57839b152f69b9bd4db64017c1617b6a6839a938231fb28b9bd4e104e` |
| 60 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-9.md) | 417 | `declaration-track:b6ec0c47661201cb5178fe13bd71af08a1201c60a9d7101cf9ad2dc0f5e6d693` |
| 61 | `instance` | [hasZsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/haszsmul.md) | 427 | `declaration-track:ad8de029d988688dd11f954bbf44c47ad31044afe656cb78b6f91c584b6b247d` |
| 62 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-3.md) | 438 | `declaration-track:3cb094640832890bcd3038d94f76923a8f037f4d8043ccb3ca974baec77c1908` |
| 63 | `theorem` | [coe_int_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-int-cast.md) | 442 | `result-track:a5184301c7b2a625c208d524a529d40c4c769ff5b81cff1bf1b8c5676a54c047` |
| 64 | `theorem` | [int_cast_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/int-cast-apply.md) | 446 | `result-track:50c397781c2b5b6b18aa9712ec54db5be3be2cc6970efbc8999380ae810a97f8` |
| 65 | `theorem` | [toEnd_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-neg.md) | 451 | `result-track:f6acb814738ca705ef9b08147c757739fb4dc895a5912fdd148f768ac79c6429` |
| 66 | `theorem` | [toEnd_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-sub.md) | 456 | `result-track:88a5f3b03c9bc43f9194e096de302f2df4e615b392cb8a76d15b6e0dd53bf886` |
| 67 | `theorem` | [toEnd_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-zsmul.md) | 460 | `result-track:d689e9041e0f1b7579cf8590334b7397bac35c99d98c6c8b50a5c18b20ab156c` |
| 68 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instance-source-edition-14.md) | 464 | `declaration-track:ed1e58a097693b92942c8cb6c71ea206fc80ec42f738f06c6caaac49afb9da09` |
| 69 | `theorem` | [coe_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-neg.md) | 468 | `result-track:355f9be8e0aa443fbb5dca38e5630999bcd8c0d346a2ade87e3ce35672ca0ec9` |
| 70 | `theorem` | [coe_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/coe-sub.md) | 473 | `result-track:8a349fe9c3d159b4399e325d90a38184d9544b191b214f84f8fdf6c81f57cb46` |
| 71 | `theorem` | [neg_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/neg-apply.md) | 478 | `result-track:f9027f671585e411b7d04c5d550b8a7c50bf40fb0e8772f1b8fe13f29a0fc3fa` |
| 72 | `theorem` | [sub_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/sub-apply.md) | 483 | `result-track:9e6793a956f0ea3f798010845808f9e214de41db91f8264dd0a8d9b406bf4f92` |
| 73 | `theorem` | [toEnd_int_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/toend-int-cast.md) | 488 | `result-track:e7ebda9037a3e2c1d223fc07ea473550cc8be49dffcb169cee404ffc4dce8891` |
| 74 | `instance` | [instRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/instring.md) | 492 | `declaration-track:b6880667913d1aba4433c457d94848fc2a93fdd7a1e17efdacfde8157774ff24` |
| 75 | `def` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Centroid.lean/declarations/commring.md) | 506 | `declaration-track:386429de63d1961e11fa08d384cfec3b14111739888679769bbb73e815ba714f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f77c749dd6eca37dcec642e53ff71e2b2556552485f56ccdc80d73a04022699d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Centroid/Variant3fedf94fcd609672ec71720d49b7fb4bf9594b096d4c8ebac4d90811b3e65bdc.lean","GRWTSK/_verification/specifications/Algebra/Centroid/Variant3fedf94fcd609672ec71720d49b7fb4bf9594b096d4c8ebac4d90811b3e65bdc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
