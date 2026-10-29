# Verification target: Ring Equiv Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "291edc877528b5edfc8d4536327f4605a1d4bca8",
  "lexical_observation_count": 124,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `291edc877528b5edfc8d4536327f4605a1d4bca8`.

Source path: `GRWTSK/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NonUnitalRingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/nonunitalringhom-inverse.md) | 47 | `declaration-track:153228ebfb0f293917d3db209e670c846328c597bdfda2e3e690e2d7ae29ae1e` |
| 2 | `def` | [RingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ringhom-inverse.md) | 54 | `declaration-track:12425a7ccc6b136e0945a4a4c5121bc839f87a2e9bc77565195e92321f81def3` |
| 3 | `structure` | [RingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ringequiv.md) | 63 | `declaration-track:8a3e3e41fbf5ed45feacb2c5b1ce57a408a95ed85f89efebee4a096030945ce5` |
| 4 | `class` | [RingEquivClass](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ringequivclass.md) | 84 | `declaration-track:dcfe42e340c6f4549a76c1c0f489282ac52bc5d8597fe33978ff412549b2adf6` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/instance-source-edition-5.md) | 93 | `declaration-track:80ea6313d8e3917f745c2d39bdac940e8b4276e240e45093f32cd8585c21af4b` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/instance-source-edition-6.md) | 99 | `declaration-track:a85f9552ac715f2902c6b54268f948c2c9c088fc5a1f9637fcf6d8fe76b69f08` |
| 7 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:50fd9524f3c080c230804098d70df191698c593a2708acf2febbb7421278f457` |
| 8 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringequiv-source-edition-3.md) | 120 | `declaration-track:f8889ef9c2b833b1fc5520d048cdb95a8267b7150db0394793dd50dca38aa030` |
| 9 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/instance.md) | 128 | `declaration-track:4ada7aece7587fe83a68c5f8fd4a77771ec0fb63af7073be5446e088ea8c6520` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/instance-source-edition-7.md) | 137 | `declaration-track:d88af663faf85bc07fb9ea71a744115f928f6531d1d3c73b021c9530fd3ebcae` |
| 11 | `theorem` | [toEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toequiv-eq-coe.md) | 151 | `result-track:6bfcf4774324b21f7af66ebdcb4e8635f221dbd910cba14cbed52de7301e236f` |
| 12 | `theorem` | [coe_toEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-toequiv.md) | 159 | `result-track:847e6bb2d6ae0ef3d073aef6b758d39a7183f7ad307f8d7c9bf71407307ba6d2` |
| 13 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-mul.md) | 164 | `result-track:0f311a61ebda709a3141d7f29a29dcc515c6c8bd195194fc0bc5700559561c64` |
| 14 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-add.md) | 169 | `result-track:8c7565db4e498265e57bdc476b94e887af183f84928d4e9fccd09243bad3a412` |
| 15 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ext.md) | 176 | `result-track:32cab27e063008065387d559afc698d6033c532d3b55f0863c485a06a2a3e9ae` |
| 16 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-mk.md) | 181 | `result-track:beb4aae0c42a77ab4b50e576764f4aa424910d6a24554b58966716c037716077` |
| 17 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/mk-coe.md) | 189 | `result-track:0c81d1af63cfd5e16fabbaccd5282ebf99ba934e9b161ae288bd49b5b9244b2a` |
| 18 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/congr-arg.md) | 193 | `result-track:a7738091877dc18935ab9ad28871cf54b4fcfba127d7704df343251c9569940f` |
| 19 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/congr-fun.md) | 197 | `result-track:a44440da6efaa452df01997362167b292aa25582a2b236c1a524848bf3378b0e` |
| 20 | `theorem` | [ext_iff](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ext-iff.md) | 201 | `result-track:8cf54477a2a96ef260a75071b7343ca04102a4aa6455edc4a95e9408bc196c1e` |
| 21 | `theorem` | [toAddEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toaddequiv-eq-coe.md) | 206 | `result-track:40d760f8e8bbc7d27238b4f1a9ff5f6873fcc352375e0dbfe8628565c25ff140` |
| 22 | `theorem` | [toMulEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tomulequiv-eq-coe.md) | 211 | `result-track:a75ee431ecf145c12a7fe8d8db80516c366787a5352a40fb285cc753b1a467c8` |
| 23 | `theorem` | [coe_toMulEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-tomulequiv.md) | 216 | `result-track:59c9df437cfcef7ac493a501c137f04d7ebbb93b6b609057d71d4d0c83f36176` |
| 24 | `theorem` | [coe_toAddEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-toaddequiv.md) | 221 | `result-track:62e76047139fd2f2faaa6c9dbcf2b0c7d562c66d3d9ba2db0b04a0c4853987a4` |
| 25 | `def` | [ringEquivOfUnique](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ringequivofunique.md) | 226 | `declaration-track:d34ff687c9067e0656f5454d7c7a307d91560e66c6a006003abe76649b6fbdbf` |
| 26 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/instance-source-edition-3.md) | 230 | `declaration-track:620ac19233b4bbc0805a652b28acf95f37f804806c5d28043efc5d9d32ea1054` |
| 27 | `def` | [refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/refl.md) | 239 | `declaration-track:67ef3c2c429767f14029dd31defa54eac730e9a37a06f79a5d36432b86852640` |
| 28 | `theorem` | [refl_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/refl-apply.md) | 244 | `result-track:b0d5f13c3c60583219e5955272b2411e49243fd92d7b29c5ead08980bfa2c6d6` |
| 29 | `theorem` | [coe_addEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-addequiv-refl.md) | 249 | `result-track:baf5fc177c06ab71b9bb6b3b233832be98411a90edb8c7d2cde048a2e3b59952` |
| 30 | `theorem` | [coe_mulEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-mulequiv-refl.md) | 254 | `result-track:eeb22c5852059a59e6a292d7e97fd445e518251d16555f73f2baf9858e2d1ea7` |
| 31 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/instance-source-edition-4.md) | 258 | `declaration-track:74af1cdb3fdf35952a637b45533c6c547fa005fe280406f52085523207707547` |
| 32 | `def` | [symm](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm.md) | 265 | `declaration-track:9bef6ed9719fa3c99f7a29b8434866ce260375babe27c67a2b64a9e29aef40ce` |
| 33 | `def` | [Simps.symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/simps-symm-apply.md) | 270 | `declaration-track:771ef3f0c379c7534548ad52792b0157dff9df208554c5e0bdf463c2877bd6d2` |
| 34 | `theorem` | [invFun_eq_symm](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/invfun-eq-symm.md) | 277 | `result-track:e2792c768d73a93870c9b8fb132d305b3e1fd44b4a276bfbd9122f9abed7092a` |
| 35 | `theorem` | [symm_symm](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-symm.md) | 282 | `result-track:8b5edf8b9a365a0b8aa54020b191f9c9e611ca827269ea8e01885ba264ecb72b` |
| 36 | `theorem` | [symm_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-refl.md) | 288 | `result-track:3b135db40950300e801ce9a77704dcb18fa90a0de0b443def13efd92b3de9322` |
| 37 | `theorem` | [coe_toEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-toequiv-symm.md) | 292 | `result-track:b1c5312146049cae740326132d7eb622013d5bfd21b130ec94ee096bba30c5a8` |
| 38 | `theorem` | [symm_bijective](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-bijective.md) | 296 | `result-track:365d077b07d6af8bbcd16fd1131a106347c85276808de6eb483d79e4122eda8e` |
| 39 | `theorem` | [mk_coe'](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/mk-coe-source-edition-2.md) | 301 | `result-track:f7205b52e37933fdda59c105e2d66ffbd8a8267a1ea692f3f5d52b6f994051ae` |
| 40 | `theorem` | [symm_mk](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-mk.md) | 307 | `result-track:e0ecfedec8371eb1bc9f07f7470ebf2de57a33d29255dce4be220094841f0ce7` |
| 41 | `def` | [trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/trans.md) | 317 | `declaration-track:506728723d1ed2aa6ee952e6e80ad8798de519b5092be097304e520579bb19a0` |
| 42 | `theorem` | [trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/trans-apply.md) | 321 | `result-track:56b5a3f8da9b7a0ffb3b4a372871ba1a75336fe50f88adc143efb12ffef4524e` |
| 43 | `theorem` | [coe_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-trans.md) | 326 | `result-track:2b8dc64515828c0437d2effc907ffcfb48e5426cc1ccf4f047dffc9b08a71141` |
| 44 | `theorem` | [symm_trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-trans-apply.md) | 331 | `result-track:804bd817b3a08382f04a6eb53725ee7df867ece40c551b6ff8a98fa2582412da` |
| 45 | `theorem` | [symm_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-trans.md) | 336 | `result-track:aa94c798bc249052873a30da3348a39bfb75ddf36d9bb0b5917d445fb2d1fd4f` |
| 46 | `theorem` | [bijective](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/bijective.md) | 340 | `result-track:75ed197d0ccc6e24e9722ae0d1d4eb637c524d6bf7b8dc61b43cecfda21e4afb` |
| 47 | `theorem` | [injective](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/injective.md) | 344 | `result-track:982b555154cb15da15f25739cc41a3c0b23b6561cc0de04c55b94388d092277d` |
| 48 | `theorem` | [surjective](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/surjective.md) | 348 | `result-track:d941d43395d492afc0d33a1cbc6dd559e6c434c0f9106d15d040607d9bade493` |
| 49 | `theorem` | [apply_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/apply-symm-apply.md) | 353 | `result-track:5e308f119cb83e0435f51b7a72ad59290786e17d4516d990444167bad4dc41fe` |
| 50 | `theorem` | [symm_apply_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-apply-apply.md) | 358 | `result-track:8e8b2b12bc0c700a1d2ef58ac7f50f6e18fed9856f44d984277e7486b395c8cb` |
| 51 | `theorem` | [image_eq_preimage](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/image-eq-preimage.md) | 362 | `result-track:948609e6e959f2f80462ceafdfe07f1ad7ae10115eea4f57ff90b92bd145dee1` |
| 52 | `theorem` | [coe_mulEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-mulequiv-trans.md) | 367 | `result-track:e385f3a666c1dd045f53b81195e67ca1d0fc9b313af43b5f5b524a670c2b97ae` |
| 53 | `theorem` | [coe_addEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-addequiv-trans.md) | 373 | `result-track:b5c9e492afacd967fe4258b324a4866a716e5fc01f1bc1707eb64225ef03a7f2` |
| 54 | `def` | [op](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/op.md) | 386 | `declaration-track:e801b4ebc6e08879b5a7316e93c3e98e4b3b764386e2832b46bc9db8f051afd8` |
| 55 | `def` | [unop](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/unop.md) | 402 | `declaration-track:cc4efab73faa0ef7707a9e8dffaab9f22f7d527464620c0c7a41abd5bb4b1fc7` |
| 56 | `def` | [opOp](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/opop.md) | 408 | `declaration-track:65e8556cdd6b2ccff306a4de06e30f2a6b7f7b77ff4abfcd498241b6c1d71e98` |
| 57 | `def` | [toOpposite](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toopposite.md) | 417 | `declaration-track:9bf9f98f0be80192af780623313df32ae56fcc312bb17cbf77ef700ff5e9bbb2` |
| 58 | `theorem` | [toOpposite_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toopposite-apply.md) | 424 | `result-track:f16aa6ef7f7d8f9a72eace0991763dfa9d25fa8337a38d125078866079ac35dd` |
| 59 | `theorem` | [toOpposite_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toopposite-symm-apply.md) | 429 | `result-track:9529566719aa79bbfc90bd2b05c35a4548927d5e20eb58dee8087a9f3d421905` |
| 60 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-zero.md) | 442 | `result-track:c6d1868001a8dc2018099ee39d0a05eec41c41ac40706abb773e7d6e79db7332` |
| 61 | `theorem` | [map_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-eq-zero-iff.md) | 448 | `result-track:514fe37868765318b034729c862760c96011508df48c206a169733b8e0914528` |
| 62 | `theorem` | [map_ne_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-ne-zero-iff.md) | 452 | `result-track:ded4a3fa2bcb44dd7bddca6cc4f9fd8ca5034377d93daed285a9cad608240be6` |
| 63 | `def` | [ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ofbijective.md) | 457 | `declaration-track:b8384db2d702f7023347a2b22f62ff8cfbb3de5a4a815a61a2556e29aedc5519` |
| 64 | `theorem` | [coe_ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-ofbijective.md) | 465 | `result-track:0779736e79779546ff2abe742f6cfde780f1e4bdf4d7f6f617e8d8b802537df5` |
| 65 | `theorem` | [ofBijective_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ofbijective-apply.md) | 470 | `result-track:4f75a0f5846d8fed75f57ee7e574f2b447d8d92c712a9c7f3eebcab52a7f3c5c` |
| 66 | `def` | [piCongrRight](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/picongrright.md) | 482 | `declaration-track:870a9259a1b377350ff386ab62a732ffee628c903edb021eac1ec2ef21f14f42` |
| 67 | `theorem` | [piCongrRight_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/picongrright-refl.md) | 492 | `result-track:5e6d85c746d5d08545581ffacf9180c03a32aa6586d2f9540c5db527919f23f9` |
| 68 | `theorem` | [piCongrRight_symm](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/picongrright-symm.md) | 498 | `result-track:df159388402cf1b82e2177bbe9fa637ef65b95fd9d9b86b32ba319450ff01467` |
| 69 | `theorem` | [piCongrRight_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/picongrright-trans.md) | 505 | `result-track:a6620b35a1652a9498384b35cb5b147b9777e09dacdb52c6c5cac929b0d89664` |
| 70 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-one.md) | 519 | `result-track:408f59fdfcff8811e76b2844b6749848f4962edd4af90d58e9aad01fc7f5040d` |
| 71 | `theorem` | [map_eq_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-eq-one-iff.md) | 525 | `result-track:0761dd2ecd0172d85744b1ba8f39d67f894b3236637fae97d1bc83a5c897df75` |
| 72 | `theorem` | [map_ne_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-ne-one-iff.md) | 529 | `result-track:689d55e239d68b826bcb3e065440dc8034a9f4a8c62c4641b64fe912bcfe15b8` |
| 73 | `theorem` | [coe_monoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-monoidhom-refl.md) | 533 | `result-track:703833a344d632e9abf1b32ebba21dfab55af9b8a320c2d17462c3907e75c750` |
| 74 | `theorem` | [coe_addMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-addmonoidhom-refl.md) | 538 | `result-track:51a1683bc6e4205e90923ac6e3ca6c14fdb8d1bdd5631b326ea8594ab9c3ca2d` |
| 75 | `theorem` | [coe_ringHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-ringhom-refl.md) | 547 | `result-track:0944e76177a3b072e9c81aaeb0799087f92c4aaaa5b6d446eba26fbb44f3ac69` |
| 76 | `theorem` | [coe_monoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-monoidhom-trans.md) | 552 | `result-track:e64e57593e6320128b42b60bb04ab28d8c7172eddbd4d8e2ae658c2cd4251890` |
| 77 | `theorem` | [coe_addMonoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-addmonoidhom-trans.md) | 558 | `result-track:c5dc909c3620656b0ee8e99e90a6dae738d73feb62474b73eaa6a21e4cdf7a89` |
| 78 | `theorem` | [coe_ringHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-ringhom-trans.md) | 567 | `result-track:49cdf2a0ad6e5b7004974b1438a4b42ef68a7e5fbbff15e0a5de4dac92378540` |
| 79 | `theorem` | [comp_symm](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/comp-symm.md) | 573 | `result-track:d9ab7bd351c380db7a71fc715c350edc0edf6688a99fe5dace371a518c01bebc` |
| 80 | `theorem` | [symm_comp](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-comp.md) | 578 | `result-track:475b4f1b5b0ca3870102ecffe062d3314d28e8b6f46ee9c4efeba3a9b915ed44` |
| 81 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-neg.md) | 588 | `result-track:db7facc20e6a3222e2a863cbe94a99692b4935a53d0a35db6d13f2220e1f5b8d` |
| 82 | `theorem` | [map_sub](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-sub.md) | 592 | `result-track:ec6343a9a07a50c79f01ef74ccb272ae125f32cbb93adb1ab1c555a4aa829b84` |
| 83 | `theorem` | [map_neg_one](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-neg-one.md) | 603 | `result-track:82fef69350a555daf6cf0a41c97a01a4420d2d65765514229dc3e7fd9f28e7ab` |
| 84 | `theorem` | [map_eq_neg_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-eq-neg-one-iff.md) | 607 | `result-track:3c1c564ca74f969e8167b0b89036c2b85af41d02f17bd9e54bb0a1a8da62d642` |
| 85 | `def` | [toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tononunitalringhom.md) | 618 | `declaration-track:bfbc951fb517d5006f41164315b46409b0e2d4f2266ed85b88c6e6c9f91c0147` |
| 86 | `theorem` | [toNonUnitalRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tononunitalringhom-injective.md) | 622 | `result-track:f1130a7140ee9fd0e9e8ca05a8b4e664a18e00b95f7d1894baf1a3d7532352e9` |
| 87 | `theorem` | [toNonUnitalRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tononunitalringhom-eq-coe.md) | 627 | `result-track:8274ce19329b602c9a255812048937f44891232bc561fe751a05515827c18939` |
| 88 | `theorem` | [coe_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-tononunitalringhom.md) | 632 | `result-track:776d509bbd5966b5615da2620b09260fc98584084b5890fcc3b7d8ee5f96d3bc` |
| 89 | `theorem` | [coe_nonUnitalRingHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-nonunitalringhom-inj-iff.md) | 636 | `result-track:4e9d40cb9e82117da4c46bd37ab67ea70975c99e2e2cbec019cd708f9bede640` |
| 90 | `theorem` | [toNonUnitalRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tononunitalringhom-refl.md) | 642 | `result-track:4ccdd989b9b68a0cf1c4401b637c5d55b9033174497a27028c80401146dd8d73` |
| 91 | `theorem` | [toNonUnitalRingHom_apply_symm_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tononunitalringhom-apply-symm-tononunitalringhom-apply.md) | 648 | `result-track:d1c25abff8d4c1d68d5888eb1adca066d8befe9ea3e98892d83695d84ee371ea` |
| 92 | `theorem` | [symm_toNonUnitalRingHom_apply_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-tononunitalringhom-apply-tononunitalringhom-apply.md) | 654 | `result-track:c03d8701e59f07fb464dcb40d3f97e13a48ba9d3c869b6215a07db6f949e7d33` |
| 93 | `theorem` | [toNonUnitalRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tononunitalringhom-trans.md) | 660 | `result-track:4b4e16b26a0ed000f5aa24286a23c6165d20bb4260adca2e5b5305c834c26ec8` |
| 94 | `theorem` | [toNonUnitalRingHomm_comp_symm_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tononunitalringhomm-comp-symm-tononunitalringhom.md) | 666 | `result-track:9aa249d7cdbe64d848137ead47f93cac8a5f749950783a9d3f851351b6a91562` |
| 95 | `theorem` | [symm_toNonUnitalRingHom_comp_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-tononunitalringhom-comp-tononunitalringhom.md) | 673 | `result-track:1689bdf4e29888ae39cac80e0fa9a93e04efadf5e7607b60564140934f398674` |
| 96 | `def` | [toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringhom.md) | 686 | `declaration-track:7353a9b8d7f16ca86ab26f9f3980f6288f4f651156f4d870eaed51e93df593de` |
| 97 | `theorem` | [toRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringhom-injective.md) | 690 | `result-track:9252306f658910efd81342c2fbe8a4b7145e8fb601030a58b19846cfbec83b63` |
| 98 | `theorem` | [toRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringhom-eq-coe.md) | 694 | `result-track:044492d2a6eb9124c59f6cb185c3e05e7d42a59b221b444df3977ad4cd9cc1f4` |
| 99 | `theorem` | [coe_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-toringhom.md) | 699 | `result-track:7e17b957c02fd33b2bbc38f6cf3c8113630dab3b39e4eefaa82009624a5ca4ba` |
| 100 | `theorem` | [coe_ringHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/coe-ringhom-inj-iff.md) | 703 | `result-track:37d0567f78ad221e8471541ab5344f60390c1c8ad1858eecbd46ebad8579cb10` |
| 101 | `theorem` | [toNonUnitalRingHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tononunitalringhom-commutes.md) | 710 | `result-track:42ad9fec5535b1abb3943db9c9cd4dc044d76286f5f6b2fa7c34219e24ec3606` |
| 102 | `abbrev` | [toMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tomonoidhom.md) | 716 | `declaration-track:8b7a3fe21425e056cd8eb98da12a298dca5b39678f5ea7f32f442b34b3958631` |
| 103 | `abbrev` | [toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toaddmonoidhom.md) | 721 | `declaration-track:5ff11e5dd4a72f020c14dc06efae46f67956c704e212915c0247900314907172` |
| 104 | `theorem` | [toAddMonoidMom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toaddmonoidmom-commutes.md) | 726 | `result-track:a84697b341894f0359cee434a4094ff0ccd84e5f8d22698972b8f4604f7e2867` |
| 105 | `theorem` | [toMonoidHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tomonoidhom-commutes.md) | 732 | `result-track:2763b8b4256b1c344708f4a36d72bd71935faf5d14f7fe718f83eed89e38231d` |
| 106 | `theorem` | [toEquiv_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toequiv-commutes.md) | 738 | `result-track:eea65f0ee94896b95a15d740c1817460d8a99179c93dfb634dbbcd4c916861d8` |
| 107 | `theorem` | [toRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringhom-refl.md) | 743 | `result-track:d773a0749de61be635fdd0a1f07a48f9cb20b9c6fb85aa16d95173fbc27e7699` |
| 108 | `theorem` | [toMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/tomonoidhom-refl.md) | 748 | `result-track:5df16502aa7ec53c14f47a64d5d8cd8c30c7184fc5ec7d4219bdb429040f769c` |
| 109 | `theorem` | [toAddMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toaddmonoidhom-refl.md) | 753 | `result-track:9bc2112504c0a897ac68cf02dbb3f59265f6101ab50cbdd5b88fbfe508dd982d` |
| 110 | `theorem` | [toRingHom_apply_symm_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringhom-apply-symm-toringhom-apply.md) | 758 | `result-track:ca95e92e046a0c5e646fa93443cbb75663a35d0576beec959ee6d063872c6886` |
| 111 | `theorem` | [symm_toRingHom_apply_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-toringhom-apply-toringhom-apply.md) | 764 | `result-track:cf7de09165201c322b0533f02adf1ab34f93f5f9bcdc72fcfc5b22c044ac4093` |
| 112 | `theorem` | [toRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringhom-trans.md) | 770 | `result-track:711bcef333bd7835b4d401d6d86812e6aba93ca3bb0b904281a17518a23ceb75` |
| 113 | `theorem` | [toRingHom_comp_symm_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringhom-comp-symm-toringhom.md) | 776 | `result-track:cc755431cb55d208da42a2588e54e0971c38615d94e5eae854d4e881e9a22ca2` |
| 114 | `theorem` | [symm_toRingHom_comp_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-toringhom-comp-toringhom.md) | 783 | `result-track:d26d2490ffb8334e9a6e080c067273199dd26bffbe1182006f04724d004aae0c` |
| 115 | `def` | [ofHomInv'](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ofhominv.md) | 792 | `declaration-track:12154af1e155ec35456accd3a0dafaf8bb3665eef521ed1f5f5f4f3f1e747067` |
| 116 | `def` | [ofHomInv](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/ofhominv-source-edition-2.md) | 811 | `declaration-track:cf1275d4a185a5af404c2ce1dbced9fcc0911f5183bb884db11bb6f2b8bc5d05` |
| 117 | `theorem` | [map_pow](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/map-pow.md) | 832 | `result-track:f68cffb537b5d238b29da8e842cd500e9dca8dc91c665f3210ca0104bdc1ea57` |
| 118 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringequiv.md) | 843 | `declaration-track:7f9cdbdef73d9a2881f24427802f47b19312a1e19de372cd886f019655a2d61b` |
| 119 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/toringequiv-source-edition-2.md) | 853 | `declaration-track:cbce93b4080059766a26369897da1734b389bfbd1ca92062a13b46440bca9d1e` |
| 120 | `theorem` | [self_trans_symm](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/self-trans-symm.md) | 865 | `result-track:a63c7695ba7d296298ee92c3de299655395a207f8bd8782e42404d9455152e05` |
| 121 | `theorem` | [symm_trans_self](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/symm-trans-self.md) | 870 | `result-track:c5998a33e81b40e98610f3074fba19a1aa03fcded72f3e4c0360702e4f2aa643` |
| 122 | `theorem` | [noZeroDivisors](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/nozerodivisors.md) | 880 | `result-track:939346707fbf0a2d8d370fa5318f0b71835ae2b808df3d2da19a2e8c94a5dbb8` |
| 123 | `theorem` | [isDomain](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/isdomain.md) | 886 | `result-track:1d17429cd1c33ad6340dd33127a36cb868c0cfc2774ece03d8f1298ca6c910b5` |
| 124 | `theorem` | [isField](../../../../AssociativeRingsAndAlgebras/RingEquivExtIff.lean/declarations/isfield.md) | 893 | `result-track:65e79a79fda20acc3c0386f5078c6b6c22d13a40817dfc8c6f049f02af4f95a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=243c2a9e3f5088bc4cf3d9594e1b6afb46070d1d29e63a1e16bbfc5c9743efd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
