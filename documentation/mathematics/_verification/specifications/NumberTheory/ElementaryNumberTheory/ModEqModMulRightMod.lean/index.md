# Verification target: Mod Eq Mod Mul Right Mod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0c05a787a110d01452136b5f4a720b4d3bae893",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0c05a787a110d01452136b5f4a720b4d3bae893`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.GCD` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModEq](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/modeq.md) | 33 | `declaration-track:c9319ee529100fb7b18bac51a7eb65248d67c2a9b018663532dbc613513927af` |
| 2 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/instance.md) | 43 | `declaration-track:2f526e068eb8447d55f2520ae02817ad7c3e3bd45882b3b6990c923c4b082d8e` |
| 3 | `theorem` | [refl](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/refl.md) | 48 | `result-track:f2d07b999f522d351bff19d4428fed258a4d76f9be211ef1dea926c1afc4650c` |
| 4 | `theorem` | [rfl](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/rfl.md) | 51 | `result-track:e2e8ec339a7e2ebbaa31e5b710cc90b47bb010bfc0d69fd0b155f32bd7e79050` |
| 5 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/instance-source-edition-3.md) | 55 | `declaration-track:9e8fed3cd8328a6da38bb884f047d70389a4cada568e739588b3e1f4b1ba009b` |
| 6 | `theorem` | [symm](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/symm.md) | 59 | `result-track:4c5bc91a65f89df83603586b7d2da498402975504505a152c535ba8372dc5881` |
| 7 | `theorem` | [trans](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/trans.md) | 64 | `result-track:812ea087bf472fb54967826fe585c528c1999e0f72939a3e8703b0eb2f310484` |
| 8 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:783ad4031e7ef205551285615de920558d54150a345418704610834f416a76d0` |
| 9 | `theorem` | [comm](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/comm.md) | 71 | `result-track:27d70f66bceaff7f9a2a0bf473027a8ab46f205b13c70ac27f0705af259f08f3` |
| 10 | `theorem` | [modEq_zero_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/modeq-zero-iff-dvd.md) | 77 | `result-track:524eaac09fe7ba709268bb66d2ccd4611acff441829fe37c745b3e36bd03b45f` |
| 11 | `theorem` | [_root_.Dvd.dvd.modEq_zero_nat](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/root-dvd-dvd-modeq-zero-nat.md) | 80 | `result-track:ec3c2208b1e809b71f762cfd47e3d7597de04b1c90235b6e46b40823d713f245` |
| 12 | `theorem` | [_root_.Dvd.dvd.zero_modEq_nat](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/root-dvd-dvd-zero-modeq-nat.md) | 84 | `result-track:5e23a3dc84e8aa38c7d49049b05b1ca48dff170c68b50c20ae868f99845446d7` |
| 13 | `theorem` | [modEq_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/modeq-iff-dvd.md) | 88 | `result-track:61b4f738d19d1c5d55353d415a25a313fe8d2e39c6f34548be790de9b877ddf8` |
| 14 | `theorem` | [modEq_iff_dvd'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/modeq-iff-dvd-source-edition-2.md) | 98 | `result-track:b0c7ad3a306b5032d8352fbbb21e48ee9da6bd7ff82ddb34c30d6b14c0f79105` |
| 15 | `theorem` | [mod_modEq](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mod-modeq.md) | 102 | `result-track:580b5bcf0697f6f6733840ad2afbcc4c782df14db3ef3a59d49bd2be21c59e92` |
| 16 | `lemma` | [of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/of-dvd.md) | 108 | `result-track:f3e42f9f2d31106bbc2f701a786077e16c0be50c762faeebe9e145e8736ebba9` |
| 17 | `theorem` | [mul_left'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul-left-source-edition-2.md) | 111 | `result-track:d8beef58420a955015aea47a672c764a08bbd8405584b3c0198d460da61f9d6b` |
| 18 | `theorem` | [mul_left](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul-left.md) | 116 | `result-track:3e510bdd941119761c06625dc557207d597b3b813b89232a96b0fd4285163e2b` |
| 19 | `theorem` | [mul_right'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul-right-source-edition-2.md) | 120 | `result-track:c5b6dd4d7ae04cbcd500638856638d62409ff6f364818d918889511acb0ca336` |
| 20 | `theorem` | [mul_right](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul-right.md) | 125 | `result-track:4675b309d846bc9c71cd52b6ca01f0c6b42ab8f40006039a583baafac3f2cf23` |
| 21 | `theorem` | [mul](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul.md) | 130 | `result-track:ab5bf72de608d04409044ea0bff559aab4c3cecbebf86147ecdd9d56a65b79cd` |
| 22 | `theorem` | [pow](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/pow.md) | 135 | `result-track:0390506d519434699e45b88f8b46bee1ed4efb721ae00e059a32091b32ecc3dd` |
| 23 | `theorem` | [add](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add.md) | 144 | `result-track:669744352eb9412039e86bfdbb32f9ba0c61be98b04ccf5b43770592c5a89bdf` |
| 24 | `theorem` | [add_left](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-left.md) | 150 | `result-track:5921c771efcb5600f03a0e3f48636f0e856d0f07d09c394eb57311bf88327dff` |
| 25 | `theorem` | [add_right](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-right.md) | 155 | `result-track:ef01df8aea45a116f65cd4ac9cdffa12f0f50c0c3447ed2cf5cf9b623a4d0c25` |
| 26 | `theorem` | [add_left_cancel](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-left-cancel-source-edition-2.md) | 159 | `result-track:b0783aead41bbeda64748a427d0ebb3fb858a0e12eb9833a4f6d491127ed47fd` |
| 27 | `theorem` | [add_left_cancel'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-left-cancel.md) | 167 | `result-track:4afd0740e55a2395417323e813b1ca5fe27b9eafd7a3c34814e67eeb3748324c` |
| 28 | `theorem` | [add_right_cancel](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-right-cancel.md) | 171 | `result-track:ab412d4410019a8ace341b3b93418dc37339dc11adb9552a2299fe68d45d82c3` |
| 29 | `theorem` | [add_right_cancel'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-right-cancel-source-edition-2.md) | 177 | `result-track:d1d4b93a342278e963d539eec72512cf4d2468b45ff4c6baaef9da96d73d3719` |
| 30 | `theorem` | [mul_left_cancel'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul-left-cancel.md) | 184 | `result-track:c0f4f8be1ad6bef78527ebb8fef15b042f633aa58fb87892b9e8be4e18d2ad5f` |
| 31 | `theorem` | [mul_left_cancel_iff'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul-left-cancel-iff.md) | 189 | `result-track:fd4f63cf944814d2e961f05408a4530efbb799c041a26b1950f38287ba92a1d8` |
| 32 | `theorem` | [mul_right_cancel'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul-right-cancel.md) | 197 | `result-track:8723e13a29f514d1d15c6f58cd189e529efea58da0cfcdc26f0f29a012f56cef` |
| 33 | `theorem` | [mul_right_cancel_iff'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mul-right-cancel-iff.md) | 202 | `result-track:541bb81e393feede8d5beb0ef1f17f98c176ab4dbad40236d991f7dd22972554` |
| 34 | `lemma` | [of_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/of-mul-left.md) | 210 | `result-track:10de77699b720c45e9e44df75810b094a89feb1ebeaa3e93075d0cfd5721990c` |
| 35 | `lemma` | [of_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/of-mul-right.md) | 218 | `result-track:70c438a58f6590a21e21b70e5415bd7aeb6e7ae03b649d3f61c0775c17465399` |
| 36 | `theorem` | [of_div](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/of-div.md) | 221 | `result-track:51a49a8a36c57ba4748ccdea67814d2dc129517ee4ea56aed6d5f27a6fb791d0` |
| 37 | `lemma` | [modEq_sub](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/modeq-sub.md) | 227 | `result-track:9946f23e1f8f15e4368379000edd09352d055b07920095154feb64cee72c8a24` |
| 38 | `lemma` | [modEq_one](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/modeq-one.md) | 230 | `result-track:d4e45e74a4999ca405bed421c7635c0cfcad811a06d7d07fbcc5635ac7cb8bfe` |
| 39 | `lemma` | [modEq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/modeq-zero-iff.md) | 233 | `result-track:7d42a7f5613a1d13a43febfebb44c3aa796fc217c69fff445d4162dec9140923` |
| 40 | `lemma` | [add_modEq_left](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-modeq-left.md) | 236 | `result-track:aad31e47a07cdcd3edfc0f7714df11dcc3e412658f8e48208702940534212f3b` |
| 41 | `lemma` | [add_modEq_right](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-modeq-right.md) | 239 | `result-track:67a15ed06d26abaf2512885568b74b0dbb514a83b063a75411828ce1411b07de` |
| 42 | `theorem` | [le_of_lt_add](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/le-of-lt-add.md) | 244 | `result-track:30e69dbd875a1eee91c61bfdacfd3b9524c8eb59c2081342ef2d8af4d3c62b27` |
| 43 | `theorem` | [add_le_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-le-of-lt.md) | 250 | `result-track:0d98fe231aeb1e995b6cc0078c5e6969cf6ea10fe969c54be4f001e964374984` |
| 44 | `theorem` | [dvd_iff](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/dvd-iff.md) | 254 | `result-track:5fc1c9c8add9a6fca9ab801cae1c4d523990b8aacc14c2e5d74f3ba1a390dbab` |
| 45 | `theorem` | [gcd_eq](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/gcd-eq.md) | 260 | `result-track:bfb963eb5cfff0f3885532f586be869d515e016cabbcac3768d1a61efc8504b3` |
| 46 | `lemma` | [eq_of_abs_lt](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/eq-of-abs-lt.md) | 268 | `result-track:4877fab77cc06ceeeb0311f60ef7124633f24e1e74a4c863af2ede6170e2ba44` |
| 47 | `lemma` | [eq_of_lt_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/eq-of-lt-of-lt.md) | 274 | `result-track:4b02fc22578706469d2db29f1366eb3f4b28d41ebe39fdf390cf75f707d323aa` |
| 48 | `lemma` | [cancel_left_div_gcd](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/cancel-left-div-gcd-source-edition-2.md) | 281 | `result-track:9b7527ed048a96d90f9abebf18e49afb2d3fddadbc0ee21d1e0bacbdb2c2b6bb` |
| 49 | `lemma` | [cancel_right_div_gcd](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/cancel-right-div-gcd-source-edition-2.md) | 298 | `result-track:e07f62fcc86913d00d544bae22718faec0f4e29d815058977043e10457a02913` |
| 50 | `lemma` | [cancel_left_div_gcd'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/cancel-left-div-gcd.md) | 303 | `result-track:5ac97c3e25571595a7546fff876a8c566b4407ad4d7b1106d6f44776388707d0` |
| 51 | `lemma` | [cancel_right_div_gcd'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/cancel-right-div-gcd.md) | 308 | `result-track:b982baae557469d0919a495c496c1a3eec19de0a41095c94ee239a4a96638a79` |
| 52 | `lemma` | [cancel_left_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/cancel-left-of-coprime.md) | 314 | `result-track:9031d09deedf2b7cc6f723f176befd0be68fadb69ecf070a7e26998f8212a371` |
| 53 | `lemma` | [cancel_right_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/cancel-right-of-coprime.md) | 324 | `result-track:bcdd641187ba5a14f44c90efb967f7381482465eb6998e31e82b02a9b17b7bef` |
| 54 | `def` | [chineseRemainder'](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/chineseremainder-source-edition-2.md) | 331 | `declaration-track:e67e5e19f7ebfab887fb1df43c864d6cbaa1c21803f9cdd86dcec814c2bf330c` |
| 55 | `def` | [chineseRemainder](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/chineseremainder.md) | 368 | `declaration-track:a46fb39ad2dc7a9b118edca90a058a2eb800768994218288f7bb4972fcb39402` |
| 56 | `theorem` | [chineseRemainder'_lt_lcm](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/chineseremainder-lt-lcm.md) | 372 | `result-track:856679f26b39e7f4a4f2e0f703dcf5d5d3d13b7750bb5046df38f231f1f96283` |
| 57 | `theorem` | [chineseRemainder_lt_mul](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/chineseremainder-lt-mul.md) | 380 | `result-track:44f2f9b4d262ea252c7adaca41d0b10de482c681e17249fe1a8807de7b188251` |
| 58 | `theorem` | [modEq_and_modEq_iff_modEq_mul](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/modeq-and-modeq-iff-modeq-mul.md) | 385 | `result-track:3e6e645a68126d6522bc0b0a47bf0e42f90cb670d9a9bc53cb800619bd83287b` |
| 59 | `theorem` | [coprime_of_mul_modEq_one](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/coprime-of-mul-modeq-one.md) | 395 | `result-track:d22efa6037cba5caef3ec79351fcf77c435af23f50788a6bbfe9a737832af1b4` |
| 60 | `theorem` | [mod_mul_right_mod](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mod-mul-right-mod.md) | 405 | `result-track:2968fe05886a925ae2102da085197aeb1be62d6d98ea9d2422acb92a8b5a6deb` |
| 61 | `theorem` | [mod_mul_left_mod](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/mod-mul-left-mod.md) | 410 | `result-track:9844bfc1b2a3bc18c8d057419d13debe54e7e498c51273e87022fe80bb8eb06c` |
| 62 | `theorem` | [div_mod_eq_mod_mul_div](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/div-mod-eq-mod-mul-div.md) | 414 | `result-track:eb6caa450dba5b3aece36471417dde5b531a0c4e520a9232d271f09a7f4a1f2b` |
| 63 | `theorem` | [add_mod_add_ite](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-mod-add-ite.md) | 423 | `result-track:2d88673d1ed42f5e5f962bf1c72641d501b4eb75653e05c76b02c7ee560c6c9c` |
| 64 | `theorem` | [add_mod_of_add_mod_lt](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-mod-of-add-mod-lt.md) | 443 | `result-track:c7a0362fdfba4cf13bedc1741708f1064096f53f72e28c59dde868f4a2647482` |
| 65 | `theorem` | [add_mod_add_of_le_add_mod](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-mod-add-of-le-add-mod.md) | 447 | `result-track:0ee13fdc5ecc194c2652668127aaff061ce291244645e5498fca100c2bdfffee` |
| 66 | `theorem` | [add_div](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-div.md) | 451 | `result-track:6aff945b7e96a8ebcb81475ba196037afaf64bd96f622f0ef5b34fe8093b7248` |
| 67 | `theorem` | [add_div_eq_of_add_mod_lt](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-div-eq-of-add-mod-lt.md) | 465 | `result-track:29d77a2c0535630252dcb42d2afc12d38ee1a82323a3b497aaf4a6d396d2ebd1` |
| 68 | `theorem` | [add_div_of_dvd_right](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-div-of-dvd-right.md) | 471 | `result-track:90277da294ac476b03bbcb1eb12f968a085beca575724e719b4a4d061a04e998` |
| 69 | `theorem` | [add_div_of_dvd_left](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-div-of-dvd-left.md) | 480 | `result-track:21c697c6fda9ed121a9a6d3ddda801ec88bac2efac12daf6ced0c87c8987a6d6` |
| 70 | `theorem` | [add_div_eq_of_le_mod_add_mod](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-div-eq-of-le-mod-add-mod.md) | 484 | `result-track:2bb609db919f990b8448ba8d65a0a1b66c84d13c519a1ac565e5c9bc24a7b975` |
| 71 | `theorem` | [add_div_le_add_div](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/add-div-le-add-div.md) | 488 | `result-track:3573744bc6bad56cb46f80489e9047fba9d2c3f47555a3608789e520a02a3fcc` |
| 72 | `theorem` | [le_mod_add_mod_of_dvd_add_of_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/le-mod-add-mod-of-dvd-add-of-not-dvd.md) | 493 | `result-track:ff1b32ac3d96fa02128d2337500342ed0dc3923262767d8bd43475b61d3d6bf8` |
| 73 | `theorem` | [odd_mul_odd](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/odd-mul-odd.md) | 500 | `result-track:2d71645024aa4660fdeed5f82cbf6dae0016223c03c766ea28a2a7b8dcc88b4b` |
| 74 | `theorem` | [odd_mul_odd_div_two](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/odd-mul-odd-div-two.md) | 504 | `result-track:d9ee044ba46660edcd3c41c161d2ba52c37425c3eee495cf316a8f421591b045` |
| 75 | `theorem` | [odd_of_mod_four_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/odd-of-mod-four-eq-one.md) | 516 | `result-track:47554c4c4740a32902405eb6b005121a9533f421d851f816b13a6c8f5d1f81a6` |
| 76 | `theorem` | [odd_of_mod_four_eq_three](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/odd-of-mod-four-eq-three.md) | 520 | `result-track:f357e365d024b169b6c4af64211cb86e31450bdcf627e2979a8d81283dfb8add` |
| 77 | `theorem` | [odd_mod_four_iff](../../../../../NumberTheory/ElementaryNumberTheory/ModEqModMulRightMod.lean/declarations/odd-mod-four-iff.md) | 526 | `result-track:65e93b213a5c32bdb7ad4f6ceb31bd9f43f1d948e5a426751dfaf8c8449a3fa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91a06b4fe7ab08518b5d37d114335f7af99d9ec62bfa90ede0c3d18e1fc0cd06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
