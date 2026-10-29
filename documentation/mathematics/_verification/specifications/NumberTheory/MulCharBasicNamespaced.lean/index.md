# Verification target: Mul Char Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "164e182669ae5f4557ace7f89a11deef80508f6f",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/MulCharBasicNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/MulCharBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `164e182669ae5f4557ace7f89a11deef80508f6f`.

Source path: `GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MulChar](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/mulchar.md) | 73 | `declaration-track:41c1a645097c368010d110a188fa7590a6a47af90e846c42b998d764abf46689` |
| 2 | `instance` | [MulChar.instFunLike](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/mulchar-instfunlike.md) | 76 | `declaration-track:5175a007cd20b6112a94efbf53f4f587430072ade0d8b3c7c290e3f2293e0ce2` |
| 3 | `class` | [MulCharClass](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/mulcharclass.md) | 81 | `declaration-track:edf0214135bbc28dffd259cede84b7ea554132418102cf7b9e363d1bfaed643d` |
| 4 | `def` | [trivial](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/trivial.md) | 105 | `declaration-track:ef9a2fcc8a645cb0526b42813ce539f77698d666aed1fc934ecec59d34fe7865` |
| 5 | `theorem` | [coe_mk](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/coe-mk.md) | 118 | `result-track:01887cda564d1dd77cca5e5d80e6acc3e464eebcd0a74b02e5b2e2a42ebd5b69` |
| 6 | `theorem` | [ext'](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ext-source-edition-2.md) | 122 | `result-track:b1f6f4e0f4497327170ca7eba34cf5f96547860dffe00f2bef089675288e8b46` |
| 7 | `instance` | [(anonymous)](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/instance.md) | 128 | `declaration-track:8e9f7a721c7f053c2baab4b5c3042a975e470e487b93701bc646994d19563f41` |
| 8 | `theorem` | [map_nonunit](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/map-nonunit.md) | 133 | `result-track:7e6b2f3108aa792c0914ca1d0ccfd18837446df557e216c9b99d942ad56bd7b9` |
| 9 | `theorem` | [ext](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ext.md) | 139 | `result-track:633f34afdd42ec9d3eac6a587b0998934fd6d68afc4dc0ab955a20e56c63c703` |
| 10 | `def` | [toUnitHom](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/tounithom.md) | 155 | `declaration-track:98becddcfb0c7fc0d2fe4c86a9bb26a1c19a70a781015ebaf45fc45f68e55022` |
| 11 | `theorem` | [coe_toUnitHom](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/coe-tounithom.md) | 158 | `result-track:add3cdd1ffb3b64ee517e5fcf816642291624242c1fd8e63af50f44ad2df67cc` |
| 12 | `def` | [ofUnitHom](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ofunithom.md) | 162 | `declaration-track:0530951bd3059b16b261f6fd81ecb3dac13b942432c0d934bf795713d27fad8d` |
| 13 | `theorem` | [ofUnitHom_coe](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ofunithom-coe.md) | 183 | `result-track:195cd8e555ccb96dd222fe89d22f7ff94da2374a9875371a086e23a52eace29c` |
| 14 | `def` | [equivToUnitHom](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/equivtounithom.md) | 186 | `declaration-track:2babb271e6da395dcfbb9eedc50df46e002b40df1874d6b71ca990c8afb145c4` |
| 15 | `theorem` | [toUnitHom_eq](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/tounithom-eq.md) | 199 | `result-track:cd8e11a611f142e48642b6e3d9aa454259041ef0bb84569df3c651e483dcc3cf` |
| 16 | `theorem` | [ofUnitHom_eq](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ofunithom-eq.md) | 203 | `result-track:0e1318af0339fc21a979ba954f69337491ad5d867acc7ac55ff64c281ffe24d4` |
| 17 | `theorem` | [coe_equivToUnitHom](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/coe-equivtounithom.md) | 207 | `result-track:d99febdbdab8b0e0ef62c42d945582a2d10ad3b760196abdc80d92a1eaa4530d` |
| 18 | `theorem` | [equivToUnitHom_symm_coe](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/equivtounithom-symm-coe.md) | 211 | `result-track:bfa1bf28254630a115d7b7f1bf6d65373d37b9090ce759488fdee8948818ca2d` |
| 19 | `lemma` | [coe_toMonoidHom](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/coe-tomonoidhom.md) | 215 | `result-track:012db140a9c10c853003049fa5c49903760e40b75a84c8ca0fa95c7e120137a5` |
| 20 | `theorem` | [map_one](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/map-one.md) | 225 | `result-track:45f3e6904ea0fa5f97ba1ba08ff87ae4ad7453fd2a9fc449c46c9ffe064e627e` |
| 21 | `theorem` | [map_zero](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/map-zero.md) | 229 | `result-track:55250fdcc5c015744e583341b9959b69f9e544deaf323a692fd23ac51c2724a8` |
| 22 | `def` | [toMonoidWithZeroHom](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/tomonoidwithzerohom.md) | 235 | `declaration-track:8b7f6928941c1c144874a75901d1151b509cd6eddf3cca3798daa282d16c2ec5` |
| 23 | `theorem` | [map_ringChar](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/map-ringchar.md) | 243 | `result-track:ebc1773a9b05675c2c3af782f1f6206bfba65ab680f5e568a82ff69bd7d6e70a` |
| 24 | `instance` | [hasOne](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/hasone.md) | 246 | `declaration-track:4c457ea3fa50162f2df23487ab1f9851a9a5d79b4508c66be7be3b03293cb5a4` |
| 25 | `instance` | [inhabited](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/inhabited.md) | 249 | `declaration-track:3c5c30d8a4317f212c85701b6dece1ccb57e39684e2f6fba83bdd99a073703d7` |
| 26 | `theorem` | [one_apply_coe](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/one-apply-coe.md) | 254 | `result-track:35b31633c3136081c109c5ce6eee982b216a567de2e7be861c62fc314f9c5406` |
| 27 | `lemma` | [one_apply](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/one-apply.md) | 257 | `result-track:9aee5c0222c65ddf2d9f40305dd73fca3640f0e197fc90188f4928344d4daa6b` |
| 28 | `def` | [mul](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/mul.md) | 260 | `declaration-track:761bfee3ee2434438fb91d4effb69b2207e6c0749a057bc0b25c1a9b85baa2ea` |
| 29 | `instance` | [hasMul](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/hasmul.md) | 265 | `declaration-track:c3d2da1ffc1f1d2a85b15addd787f09f04750a7203a427a381ff06a4b0e97669` |
| 30 | `theorem` | [mul_apply](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/mul-apply.md) | 268 | `result-track:93c3e8e91735ba9088311cc4b7b6862db102403003bd16be23b469b939e9e412` |
| 31 | `theorem` | [coeToFun_mul](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/coetofun-mul.md) | 272 | `result-track:e2a228d874c1a2fc3269955a325cafd9ba5b2ed529253206bebf5830802356ab` |
| 32 | `theorem` | [one_mul](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/one-mul.md) | 275 | `result-track:5287b480e39a9bf58acdde2c90d40be7bc7448ff9f69192bb222650eed3861f6` |
| 33 | `theorem` | [mul_one](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/mul-one.md) | 279 | `result-track:e734347bb899a59ef30841025f95dd1e92296a5ea16569d3a4b9be33b8d7b797` |
| 34 | `def` | [inv](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/inv.md) | 284 | `declaration-track:c3a003cc05b5d9106757c1c993bb6a68629fbc8fc8f7cd127bcc9069a1d9627f` |
| 35 | `instance` | [hasInv](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/hasinv.md) | 289 | `declaration-track:a2943cf0b54f39d9046cee2e6afbaaad404d3636074d5d1a58ef0d887cd0df91` |
| 36 | `theorem` | [inv_apply_eq_inv](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/inv-apply-eq-inv-source-edition-2.md) | 293 | `result-track:889d3f1365c0272e8f35dcc6e60264ac7f7ca38935d56fe23d8b3bca6aa7f950` |
| 37 | `theorem` | [inv_apply_eq_inv'](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/inv-apply-eq-inv.md) | 298 | `result-track:31892430541313a5b780640b077dc75704d3bd587756f14b3dcfd696ee80afb8` |
| 38 | `theorem` | [inv_apply](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/inv-apply-source-edition-2.md) | 304 | `result-track:fde749539010e9945fbb0a38c7936dc407c0c34b9a966e4a28186dcabd7940ca` |
| 39 | `theorem` | [inv_apply'](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/inv-apply.md) | 320 | `result-track:a1388d813b634657817d5c4bef443305c6690df5feaf2aa4dd827df2e42c5dd7` |
| 40 | `theorem` | [inv_mul](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/inv-mul.md) | 324 | `result-track:691c9029e336be157e33c17159e550aa205b522bef519a70aca482ba9406323b` |
| 41 | `instance` | [commGroup](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/commgroup.md) | 331 | `declaration-track:7225ff867ef58743b4adf842361bdb84a503efd024dc516750978fcdd7ab619c` |
| 42 | `theorem` | [pow_apply_coe](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/pow-apply-coe.md) | 348 | `result-track:0bb6650a1a2296d7498f10af50d2b452ef9287fc0344d216367b275cd78563c9` |
| 43 | `theorem` | [pow_apply'](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/pow-apply.md) | 354 | `result-track:3f7bb21d375d96eb5c4d27a5ea65d8b657671eb340691c5c4a9ec3b92ac733f6` |
| 44 | `lemma` | [equivToUnitHom_mul_apply](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/equivtounithom-mul-apply.md) | 359 | `result-track:42062caeab782ff81412604bd7d8f6145bb5c4ef3e3172bf35ed52709a248a12` |
| 45 | `def` | [mulEquivToUnitHom](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/mulequivtounithom.md) | 368 | `declaration-track:2c75775619b2b7440665d71b708c7a34e14e8be186fb50f891650307ab6366d1` |
| 46 | `lemma` | [eq_one_iff](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/eq-one-iff.md) | 396 | `result-track:c9e03f06d1fbaf155f18e4a2e728be3435641e96f5040d6ee33e2b47d211e690` |
| 47 | `lemma` | [ne_one_iff](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ne-one-iff.md) | 399 | `result-track:9b9149a2d997bfbbe0021c58ee43e44ab67aefd7c5467ec1a45754836270d1c5` |
| 48 | `def` | [IsQuadratic](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic.md) | 409 | `declaration-track:6a8cbab0f68eb338578f771de0a12b5c54c5883f1183075cf4be22b9f7b10f8d` |
| 49 | `theorem` | [IsQuadratic.eq_of_eq_coe](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic-eq-of-eq-coe.md) | 414 | `result-track:cf6cec4896948d8a876f8510550729390dace6237ea71efad5a2fdc3532f3535` |
| 50 | `def` | [ringHomComp](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ringhomcomp.md) | 421 | `declaration-track:30aa2ae53d3cca732d0fe5346fec1ecd42e0dbd6bfef7be7dec34c1ae6967482` |
| 51 | `lemma` | [ringHomComp_one](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ringhomcomp-one.md) | 427 | `result-track:b7afbb2eebccc63a589c243ef145307e979b11419553d965acf9f3fffb42e262` |
| 52 | `lemma` | [ringHomComp_inv](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ringhomcomp-inv.md) | 431 | `result-track:a5e1478a520ac2df8a94b1dacafe76f5e0603f8f270827c40b971aa5e57c19d6` |
| 53 | `lemma` | [ringHomComp_mul](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ringhomcomp-mul.md) | 436 | `result-track:f3812c7e98ad988b07014270673c85bc896de2cf2fc4b9c94f75d931915c4b29` |
| 54 | `lemma` | [ringHomComp_pow](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ringhomcomp-pow.md) | 441 | `result-track:c764dcf19fad4967b99d4eecd4a1299b3e6d153ae07b163fefe48fb46b2ebd12` |
| 55 | `lemma` | [injective_ringHomComp](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/injective-ringhomcomp.md) | 447 | `result-track:b9d65e4bfc4368c3b346a577a414976882b0b7e88a01f948802dff54fe82291a` |
| 56 | `lemma` | [ringHomComp_eq_one_iff](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ringhomcomp-eq-one-iff.md) | 453 | `result-track:2eca91f9ca9b0cc19090f31858965f9f285512a2202942ca880514051f571d03` |
| 57 | `lemma` | [ringHomComp_ne_one_iff](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/ringhomcomp-ne-one-iff.md) | 458 | `result-track:8dcaee3474e0d8fe8db2cdc8558ee7b6797583aa0c029c122dd1e7456ca29ce0` |
| 58 | `theorem` | [IsQuadratic.comp](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic-comp.md) | 463 | `result-track:3f130859ecec00b12cd54a4c5b87930a835f903bd05b9d9b1d28198b3076517f` |
| 59 | `theorem` | [IsQuadratic.inv](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic-inv.md) | 469 | `result-track:6055d15f4b85910557e0f607ef6971a99bddc42bdb225a0c657a99af8942edc8` |
| 60 | `theorem` | [IsQuadratic.sq_eq_one](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic-sq-eq-one.md) | 481 | `result-track:e6e49f1968249ba4330ccab9785dfdf9298addfff3e1d5b1d9aeeb207bb1997c` |
| 61 | `theorem` | [IsQuadratic.pow_char](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic-pow-char.md) | 486 | `result-track:26ae5bdc774bd75f03457c80470e154b8ac67ba5175222c3d949805309d7841a` |
| 62 | `theorem` | [IsQuadratic.pow_even](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic-pow-even.md) | 496 | `result-track:13db22f7c48770d4d71d930c7a13f4fcabc54d61a08232abe786caed78c1f0f6` |
| 63 | `theorem` | [IsQuadratic.pow_odd](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic-pow-odd.md) | 502 | `result-track:ea86345caedce03319cbc9a52ecc16d3d0352b5d134d4a5d53c7cfa52e1ff261` |
| 64 | `lemma` | [isQuadratic_iff_sq_eq_one](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/isquadratic-iff-sq-eq-one.md) | 509 | `result-track:0b3c61b9459f8908c72204657c488f6a58053db3191556d9f52c1be2dcc13c56` |
| 65 | `lemma` | [pow_card_eq_one](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/pow-card-eq-one.md) | 538 | `result-track:a1cf28d242ac1091a3f378b9249b918ff0da8a507f2b4be7a73d1934cc6e8bd6` |
| 66 | `lemma` | [orderOf_pos](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/orderof-pos.md) | 545 | `result-track:181cbbce4178d0eb24f6c2e81c3bac57cb66d647a57e01b992e160a69cd6312c` |
| 67 | `theorem` | [sum_eq_zero_of_ne_one](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/sum-eq-zero-of-ne-one.md) | 558 | `result-track:0d174eec314d36c769729d9f0d1f9ec029c423518a7c150397f9d263303cddbf` |
| 68 | `theorem` | [sum_one_eq_card_units](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/sum-one-eq-card-units.md) | 565 | `result-track:74500986d6ccc0d77885eb5d9dfd31f4f19707ec30904257b6fcbf363a5b16ce` |
| 69 | `lemma` | [val_neg_one_eq_one_of_odd_order](../../../../NumberTheory/MulCharBasicNamespaced.lean/declarations/val-neg-one-eq-one-of-odd-order.md) | 592 | `result-track:01a9ed0e2d596431275f6f1b4f4df59dea69cd6fe9bb98e1807109905ee4fe42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=715cd8b588fbfac37d47bcb9acd9bff456649cce99e9e880899d4a9bf3958b89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean","GRWTSK/_verification/specifications/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
