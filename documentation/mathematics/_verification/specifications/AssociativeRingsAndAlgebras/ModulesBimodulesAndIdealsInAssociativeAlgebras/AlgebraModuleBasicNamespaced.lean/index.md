# Verification target: Algebra Module Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62d340abd45db6f4ac8c04623a3f4201783ff816",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62d340abd45db6f4ac8c04623a3f4201783ff816`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.SMulWithZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Group` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module.md) | 63 | `declaration-track:e9161ca24f7ae4aebca4ea347e2d590a6ce2f8e93749a17fa3bc324d7a3ede65` |
| 2 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/instance.md) | 79 | `declaration-track:1fbbcbfad0bc38da4ca415f4619d0e515645ebe119450b5338b042a59d210902` |
| 3 | `instance` | [AddCommMonoid.natModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/addcommmonoid-natmodule.md) | 85 | `declaration-track:9e8de7be8ffb674467d0258fef845df2953add835d2482763e5f4944b7f1c5af` |
| 4 | `theorem` | [AddMonoid.End.nat_cast_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/addmonoid-end-nat-cast-def.md) | 94 | `result-track:e9786dede797956fb2aee0a921b077a6d4271df54cb431a8a79f8b6f4786ef4f` |
| 5 | `theorem` | [add_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/add-smul.md) | 99 | `result-track:dee67f7707ddd1e968183b53615b95b37522f82b130d2f36fdfb2a2f0eea660a` |
| 6 | `theorem` | [Convex.combo_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/convex-combo-self.md) | 103 | `result-track:4d2c363c9cd21e14ddddc76839679bd8180fd0440f829671a9137b0024a41046` |
| 7 | `theorem` | [two_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/two-smul-source-edition-2.md) | 110 | `result-track:ca91347edfc04f488e2e8984f7ceef4f5caa3caa867b4fbae0e5a9fd9bc2d50b` |
| 8 | `theorem` | [two_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/two-smul.md) | 114 | `result-track:89159460165f07a0bd9831a95709d5584eb8d724009754e281b665e580b92b78` |
| 9 | `theorem` | [invOf_two_smul_add_invOf_two_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/invof-two-smul-add-invof-two-smul.md) | 119 | `result-track:ded7de9a6637f79ed1febec550b0c7a2721c285dc835f66c19d8bc506423356e` |
| 10 | `def` | [Function.Injective.module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/function-injective-module.md) | 127 | `declaration-track:a71f901eb0b07e281dd83e7c24f99a136e15497d441fdc9fe03980cd4a1ea57a` |
| 11 | `def` | [Function.Surjective.module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/function-surjective-module.md) | 135 | `declaration-track:c50e46e878944bc9da50dd8ac6c9c6921c15beacde87a2e6f4bf70ca6a70ca5e` |
| 12 | `def` | [Function.Surjective.moduleLeft](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/function-surjective-moduleleft.md) | 151 | `declaration-track:7f92c101be016ce62a481cabdc50e4ea4e8b3063309efab4d0713cca5126450f` |
| 13 | `def` | [Module.compHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-comphom.md) | 165 | `declaration-track:69af3e33bff38772e9a5d65df4d2ecca04c3d68a372222c26f9d3a80aa8718cf` |
| 14 | `def` | [Module.toAddMonoidEnd](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-toaddmonoidend.md) | 181 | `declaration-track:88f403dcaffe78aa791c46be45a8d2f2adb328f9f4a8c8e5b4d1dbb5a4de2696` |
| 15 | `def` | [smulAddHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smuladdhom.md) | 195 | `declaration-track:756bb74d56ff8de7404141bd2dae54a4bc09a90267a178ad2efc3d85dca51006` |
| 16 | `theorem` | [smulAddHom_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smuladdhom-apply.md) | 202 | `result-track:699c9f0274674ca1cc3b9fe4f3211439c93e0292b8a6922166c005b664d9270b` |
| 17 | `theorem` | [Module.eq_zero_of_zero_eq_one](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-eq-zero-of-zero-eq-one.md) | 206 | `result-track:8212399cefe013e78560cf50496c00b648108f09c31b1296fd79af78b18c6a38` |
| 18 | `theorem` | [smul_add_one_sub_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smul-add-one-sub-smul.md) | 211 | `result-track:e17fad349ea3226e8000b42752c7b308d3e6b75ffd25306ad48f58254b1812f2` |
| 19 | `instance` | [AddCommGroup.intModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/addcommgroup-intmodule.md) | 222 | `declaration-track:7d307adf2d2aa73e0258658a2d5478b0a3f255fff1d0fda5b9d44faea8e4c53e` |
| 20 | `theorem` | [AddMonoid.End.int_cast_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/addmonoid-end-int-cast-def.md) | 231 | `result-track:d83fba042662105d9f70cce00a712670cf9e87d62a5af0ed00c213a11d3d69d4` |
| 21 | `structure` | [Module.Core](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-core.md) | 241 | `declaration-track:32c03832ae79f9b29ed1d15bb61d0a71274d9f21925f81b07a8d4aa5ad572915` |
| 22 | `def` | [Module.ofCore](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-ofcore.md) | 256 | `declaration-track:72e7ba21aa3c5fa7cb7701e279ec6bdff68c1a2239dccfef35c9315226b147f6` |
| 23 | `theorem` | [Convex.combo_eq_smul_sub_add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/convex-combo-eq-smul-sub-add.md) | 264 | `result-track:a82c19a52c6d2ac066ecbc511f6067896407a38feec6f60efcaf85410072f4f5` |
| 24 | `theorem` | [Module.ext'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-ext.md) | 275 | `result-track:72d7571c7f7c82660df4ab6dc9af6346fdb8194db8524a73cfff4bba16f2ea53` |
| 25 | `theorem` | [neg_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/neg-smul.md) | 287 | `result-track:b7bb1d0b7d2587890855da2cabd291ff58031401bbe58614800db3dd6af58335` |
| 26 | `theorem` | [neg_smul_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/neg-smul-neg.md) | 293 | `result-track:f339aa4ca980b2b6399773fc1b40e62db915408d0df878190830d826389b9edc` |
| 27 | `theorem` | [Units.neg_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/units-neg-smul.md) | 297 | `result-track:03439332614093ed07a3da7921d5364f4eb7c7bcc2b9698b12f009796a96fd69` |
| 28 | `theorem` | [neg_one_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/neg-one-smul.md) | 303 | `result-track:3434246d4b9c65cff00711c1c41fef5fdd3248852f63a568c942ab8581ba6265` |
| 29 | `theorem` | [sub_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/sub-smul.md) | 308 | `result-track:564525e3383a144bc992a35e991788cbd7f0d90486e91c558f608624a57fd840` |
| 30 | `def` | [Module.addCommMonoidToAddCommGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-addcommmonoidtoaddcommgroup.md) | 320 | `declaration-track:91e1b82d51e09764442c6c27834a1f56e327944c0355b0b0d6b9d6fbe63daa4e` |
| 31 | `theorem` | [Module.subsingleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-subsingleton.md) | 337 | `result-track:28105989e008852e9c389440ba86a2144db9e2e11cc656c0ed6656ccfdc36e87` |
| 32 | `theorem` | [Module.nontrivial](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/module-nontrivial.md) | 343 | `result-track:59d9f08739571eb4077a194666326f3b29bbd245b649bfd2110fc5eacad67b5b` |
| 33 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 349 | `declaration-track:e5bcfeb31b3cb1436f987c7080ed3373cd304bc1f7fafc414cef472e749cd24a` |
| 34 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 358 | `declaration-track:3f30de7b44b035219b7445b1abc001e8b3258b036f33b18b3392c523542c9886` |
| 35 | `def` | [RingHom.toModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/ringhom-tomodule.md) | 365 | `declaration-track:eb5229aa5d1cb6cd79ffe730d289dbd0191f9568835cda7e9a39ec36187761cc` |
| 36 | `instance` | [RingHom.applyDistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/ringhom-applydistribmulaction.md) | 372 | `declaration-track:5305b3942356bde2d61b88d356d0f9854f275deacaa4cc7d13e47db1b13e60f4` |
| 37 | `theorem` | [RingHom.smul_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/ringhom-smul-def.md) | 381 | `result-track:1aa740bebc053c1789ce988896e490c5f928aab5909ca019af44d0f95a81d90a` |
| 38 | `instance` | [RingHom.applyFaithfulSMul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/ringhom-applyfaithfulsmul.md) | 386 | `declaration-track:1a56175be71fd6be943b996a60628c883c8529dd2e83b99d3f8cd1b3a3060817` |
| 39 | `theorem` | [nsmul_eq_smul_cast](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/nsmul-eq-smul-cast.md) | 399 | `result-track:3390f08adfcf26eaa42d5ac63b4866c42857753e5ee41fe87e412d3951f92d88` |
| 40 | `theorem` | [nat_smul_eq_nsmul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/nat-smul-eq-nsmul.md) | 410 | `result-track:fc910fa48800af3d7da866e5d994f54bfbd699e6271289c22a42b6b2235edb7d` |
| 41 | `def` | [AddCommMonoid.natModule.unique](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/addcommmonoid-natmodule-unique.md) | 416 | `declaration-track:62e56c14b2353ac1c59d9fb2eca4f363ef11de845fb0648f85f6377abf0aea1a` |
| 42 | `instance` | [AddCommMonoid.nat_isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/addcommmonoid-nat-isscalartower.md) | 421 | `declaration-track:86aea42c1cd53312ebef7fa02d0dd1da94fe48943df75ad3a4a5568ed45e287f` |
| 43 | `theorem` | [zsmul_eq_smul_cast](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/zsmul-eq-smul-cast.md) | 438 | `result-track:a196f10bf1161c1bc7e7a31ac6d1dc3d824d6c7e986138281436bbe54cdb8081` |
| 44 | `theorem` | [int_smul_eq_zsmul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/int-smul-eq-zsmul.md) | 449 | `result-track:2c64f07f06c379fb93b2ae5806577dfbde83bf540f3b769a131a6e81756e835b` |
| 45 | `def` | [AddCommGroup.intModule.unique](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/addcommgroup-intmodule-unique.md) | 455 | `declaration-track:e132f2f2e55578a9c7e00ebd752a5d66b025a3586c447223b118972fa8372940` |
| 46 | `theorem` | [map_int_cast_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/map-int-cast-smul.md) | 462 | `result-track:7f1539d7061f8b29b84d3854f45d9580f73e4611d054af5675bd768e727f0af2` |
| 47 | `theorem` | [map_nat_cast_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/map-nat-cast-smul.md) | 467 | `result-track:dce7bbf2147444c623280a1c60e2b5fda73d310e7974b14214024ed9afe542a9` |
| 48 | `theorem` | [map_inv_nat_cast_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/map-inv-nat-cast-smul.md) | 473 | `result-track:fea944ffe3fd3ef3bf1d110c392c483ca524dc3f6a6af6551a98e1f379e35a0b` |
| 49 | `theorem` | [map_inv_int_cast_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/map-inv-int-cast-smul.md) | 491 | `result-track:e1fe8130bf409eea46df13a1dc6f04efb306528e1715fd6289dced87866fcfee` |
| 50 | `theorem` | [map_rat_cast_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/map-rat-cast-smul.md) | 500 | `result-track:c97763e451e5398c3726f141fd4c17b383f3280945e85e7226fce788ceefafa0` |
| 51 | `theorem` | [map_rat_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/map-rat-smul.md) | 507 | `result-track:bf68415998d6b7ede14596b44505d93af7e30b6d346c0447437bb6366ba49378` |
| 52 | `instance` | [subsingleton_rat_module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/subsingleton-rat-module.md) | 513 | `declaration-track:9b9ff2f50df70959baaec4276e945e0a4b769dd0779a6cb80c3ca2918d8aef3c` |
| 53 | `theorem` | [inv_nat_cast_smul_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/inv-nat-cast-smul-eq.md) | 519 | `result-track:1cddf0a099ada6bfb23141b00c09cc1b18448d5b34b3e47a45e2723efd2d630a` |
| 54 | `theorem` | [inv_int_cast_smul_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/inv-int-cast-smul-eq.md) | 527 | `result-track:4d7b33737f778ed0e8e6264c9fdb795221b0f2cbc1e8a59c42fe8a0a07b34850` |
| 55 | `theorem` | [inv_nat_cast_smul_comm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/inv-nat-cast-smul-comm.md) | 534 | `result-track:9725330dd325d24d9f94fa99bb5a92baa88d6bc8de1cb3e89720b1c256b4d47f` |
| 56 | `theorem` | [inv_int_cast_smul_comm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/inv-int-cast-smul-comm.md) | 542 | `result-track:c377ccb1e33e964c2826ee1f720f6858697c303b2fbe4ea9197678438ef0ab4a` |
| 57 | `theorem` | [rat_cast_smul_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/rat-cast-smul-eq.md) | 550 | `result-track:5b911c1bac4dcfe766406b63c6c1c32a31c7c5633904bf1faa038e04b8b0d92d` |
| 58 | `instance` | [AddCommGroup.intIsScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/addcommgroup-intisscalartower.md) | 555 | `declaration-track:f8218c6dd0cdb823fae68a5fde7b94415e812b4ae87154c4f316eda6f1ff46d2` |
| 59 | `instance` | [IsScalarTower.rat](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/isscalartower-rat.md) | 560 | `declaration-track:785263b2a3100a4a1910d1e228bd2c045733900b29976866ddb537124ea6da03` |
| 60 | `instance` | [SMulCommClass.rat](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smulcommclass-rat-source-edition-2.md) | 565 | `declaration-track:daa279cfcaf83b7bf3e28b49c61927e00a61a8f490654e4a2af327b54f38bf91` |
| 61 | `instance` | [SMulCommClass.rat'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smulcommclass-rat.md) | 570 | `declaration-track:77de3ab5c9b0d1335818dbc15aa886832ab596c2739bdd3480e3ae33667328ad` |
| 62 | `class` | [NoZeroSMulDivisors](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/nozerosmuldivisors.md) | 592 | `declaration-track:61228117ac363b149ab5c75c6b199c2f0ba5b48bbbfcfef85a8d4867ab72699d` |
| 63 | `theorem` | [Function.Injective.noZeroSMulDivisors](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/function-injective-nozerosmuldivisors.md) | 600 | `result-track:8d0b399f021104790646f774ea9774a6c5c8a420847171a3ecabd4c497254861` |
| 64 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 608 | `declaration-track:ac49404bb382f76faf15ed214a6feae5c84b48ff20ce10554dab6e8a0986c984` |
| 65 | `theorem` | [smul_ne_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smul-ne-zero.md) | 613 | `result-track:495a1933717ef766e0c41eb7e38486afa7e0b709a25881cd320afe66c431e258` |
| 66 | `theorem` | [smul_eq_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smul-eq-zero.md) | 623 | `result-track:d27a7d48be57758ddb0983098fcbfb2e0f668da21b277d0eee4ff9395ecc484f` |
| 67 | `theorem` | [smul_ne_zero_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smul-ne-zero-iff.md) | 628 | `result-track:2b612b38f30b923ee1cda135be961ed8834d35ef2c573c04b16529acd7d81239` |
| 68 | `theorem` | [Nat.noZeroSMulDivisors](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/nat-nozerosmuldivisors.md) | 644 | `result-track:84daa5bdbd958d9656fb9d21df37b555fe6194674e0cada2847ed0c36bbb7238` |
| 69 | `theorem` | [two_nsmul_eq_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/two-nsmul-eq-zero.md) | 653 | `result-track:75f3eb5864c01e28f8442fb3335d7c89eacb39b9ccf2693e9588d72434b11f7c` |
| 70 | `theorem` | [CharZero.of_module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/charzero-of-module.md) | 664 | `result-track:04cf5091adc02aa4b066f357634c2939bd164025f6729ea5c413a49d748da808` |
| 71 | `theorem` | [smul_right_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smul-right-injective.md) | 680 | `result-track:6e4e66462fc0c12f4261fa87b198ecb94510ebca028add10a9a5428c88ae62ab` |
| 72 | `theorem` | [smul_right_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smul-right-inj.md) | 687 | `result-track:585517eda0a856f3f36a8508a886b1e7fea9e42f56354524e2a8db80df0561db` |
| 73 | `theorem` | [self_eq_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/self-eq-neg.md) | 700 | `result-track:c866c93f9fdd06cacff08a9b08f6a6f127fdb3a39c2af270dad467dd0f3d933c` |
| 74 | `theorem` | [neg_eq_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/neg-eq-self.md) | 704 | `result-track:784145f5c63114fb27c691eb6763e4f471f8c2fb4b07e8bb510e1fd6b1a30887` |
| 75 | `theorem` | [self_ne_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/self-ne-neg.md) | 707 | `result-track:c2e312460c260009db2e7a06d445215ac7ef8606cd1a43300772fb75b33324b6` |
| 76 | `theorem` | [neg_ne_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/neg-ne-self.md) | 711 | `result-track:7ddd5583650fb0dc1e798032008cf6a57e3184b474777afb8ceb2486ef0e8315` |
| 77 | `theorem` | [smul_left_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/smul-left-injective.md) | 727 | `result-track:09b6e852063c9055d381f481b37bfb304d4f58f7322aaa80eeb6fd3825b78438` |
| 78 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 748 | `declaration-track:b4c9d4f1def93148f24777289e1cdd04b1050bb0e4865e1f934028ca40e37224` |
| 79 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 755 | `declaration-track:a6a0d2784d07e6be540b8c400926c14df7512c602cf427a290939972536ba799` |
| 80 | `theorem` | [Nat.smul_one_eq_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/nat-smul-one-eq-coe.md) | 767 | `result-track:37e3ef5be874276088c4280104267cbe07aa74fe85e461317b82cf0d918c778c` |
| 81 | `theorem` | [Int.smul_one_eq_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/AlgebraModuleBasicNamespaced.lean/declarations/int-smul-one-eq-coe.md) | 773 | `result-track:b4c69838e7a34e98cbd426163e58b1c16c71eae66667a9f27a0fa6e28dd535d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17635edc0cb06512601f8c580946a642e4af300ffad4b9a59a0b9f66b6542afc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
