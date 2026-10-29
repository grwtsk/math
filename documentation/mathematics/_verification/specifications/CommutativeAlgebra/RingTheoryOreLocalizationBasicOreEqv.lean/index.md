# Verification target: Ring Theory Ore Localization Basic Ore Eqv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78cee56c17c6fec54af0c6b06992ae39ae350b14",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78cee56c17c6fec54af0c6b06992ae39ae350b14`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonZeroDivisors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.OreSet` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oreEqv](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/oreeqv.md) | 50 | `declaration-track:88783cf1b2506e7603a1bbee2b4b1e8cf727f9447ca76a4c31e56c83bdec4d11` |
| 2 | `def` | [OreLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/orelocalization.md) | 74 | `declaration-track:f459f4b0341903953ae91bb0129389e8f7d934e2c0dedd970a928923c08bedf3` |
| 3 | `macro_rules` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/macro-rules.md) | 88 | `declaration-track:7d666f932085254b78c7a3a1b23ff19818895652877d4606d21c30e7c615caa5` |
| 4 | `def` | [oreDiv](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/orediv.md) | 95 | `declaration-track:68126ea731c4a318f7fa74aa46bd1a132b403a191566f7e671d227509cf7cbe1` |
| 5 | `theorem` | [ind](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/ind.md) | 104 | `result-track:c32cbe61b6c008f248cf1ca6f2e2e3506f90948e20f9b7088e7a38c7d398b3ee` |
| 6 | `theorem` | [oreDiv_eq_iff](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/orediv-eq-iff.md) | 110 | `result-track:77ebfcc21b66f3cfe4e83f96c47c4e55ee97bee3f45d9d052d1b2f5d28520535` |
| 7 | `theorem` | [expand](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/expand.md) | 116 | `result-track:2a8869860319079f2f77569d06e072ca6508c605df2c86cc074e93ce67b4784f` |
| 8 | `theorem` | [expand'](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/expand-source-edition-2.md) | 123 | `result-track:6dcd27eb8ac02b592ea7fdda083f788457732b6a4ab92a45b759a0c45779735d` |
| 9 | `theorem` | [eq_of_num_factor_eq](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/eq-of-num-factor-eq.md) | 129 | `result-track:24e155152a0671886aa74493e5e619b1e09843c8c56ec282f8b04e60eeb4281c` |
| 10 | `def` | [liftExpand](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/liftexpand.md) | 147 | `declaration-track:f25c7fecdc901537b13828c727e26b02ac79fa363a13336dde812ee1141c9a16` |
| 11 | `theorem` | [liftExpand_of](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/liftexpand-of.md) | 161 | `result-track:68c8967f8bd7f3ead753a8f9ee3f945170503f96226ead4cf3646b706b906f8e` |
| 12 | `def` | [lift₂Expand](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/lift-expand.md) | 169 | `declaration-track:e06187a09c098037d09e8c999611a00b5e416c2b6ce42ed5d9f1d6b241e9afb7` |
| 13 | `theorem` | [lift₂Expand_of](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/lift-expand-of.md) | 186 | `result-track:e88a5a2fd2369c1e77ef062396cc1c78ddc77ef779f3c5551ba6775fd4a03c70` |
| 14 | `def` | [mul'](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-source-edition-2.md) | 195 | `declaration-track:6fb6ce7687cae615a19952cab12fa46c2705e23e73d199d884ba69f86fb96085` |
| 15 | `theorem` | [mul'_char](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-char.md) | 198 | `result-track:862a789b7a24f17215a7cbd9299d34bf42f7990fb48ef52dc9b6edb513c29e45` |
| 16 | `def` | [mul](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul.md) | 218 | `declaration-track:4cbce97cf63186f1299bc7fbebec6c09ff314aeddf588d6a112cd4a153cf4394` |
| 17 | `instance` | [instMulOreLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instmulorelocalization.md) | 249 | `declaration-track:da6643053fa4ce6f22acf5dd4bf0ba031b2cd568b87b906b70c84afdea3ceb89` |
| 18 | `theorem` | [oreDiv_mul_oreDiv](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/orediv-mul-orediv.md) | 252 | `result-track:7e6bc31d22e838c9bec7f38e33ad663ef3f805cb6f60cc0b292a7132423c2565` |
| 19 | `theorem` | [oreDiv_mul_char](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/orediv-mul-char.md) | 259 | `result-track:ab54c67c9bc489fda74dfcfbc43581a64a9a1abaa80c8cb9c9d4324caefd4c9e` |
| 20 | `def` | [oreDivMulChar'](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/oredivmulchar.md) | 266 | `declaration-track:faad8758a0eee5f6c3df18364074087837d9fae75ddded4965515feb3f601cbb` |
| 21 | `instance` | [instOneOreLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instoneorelocalization.md) | 271 | `declaration-track:e8675455e9755298cafc4c1d9e1003e29c8bc29edbf35daad71025449ca8656c` |
| 22 | `theorem` | [one_def](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/one-def.md) | 274 | `result-track:189bbe1b397953b3f9df6d8d395af69df80d38815df0662dab3ffda039264859` |
| 23 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instance-source-edition-3.md) | 278 | `declaration-track:9e7cbd3129fc4a0f6f5d7eab35b9b42863b13452369ec1a3b7c062b665dea181` |
| 24 | `theorem` | [div_eq_one'](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/div-eq-one-source-edition-2.md) | 282 | `result-track:71f6c478305ca57f23b1d667c09cd8b3cc0687591cad17934561a190b60d32be` |
| 25 | `theorem` | [div_eq_one](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/div-eq-one.md) | 288 | `result-track:1e2eea5a9aef47f32f30be0a3490d5ec426c5c2bc19c5692a66189770b41e2aa` |
| 26 | `theorem` | [one_mul](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/one-mul.md) | 292 | `result-track:048901d1cbfc81a35e9ba5df2f3a65f12fddcda5c4c6557c19ce6efbc85fe72a` |
| 27 | `theorem` | [mul_one](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-one.md) | 297 | `result-track:1cd604a609dd0839ef19dced33275b45e535e570894c0d8c3ae09b0dee7dd625` |
| 28 | `theorem` | [mul_assoc](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-assoc.md) | 302 | `result-track:9627c17b2765755976423aa23d0395e6cc8229706b7c703af143a2816e40827c` |
| 29 | `instance` | [instMonoidOreLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instmonoidorelocalization.md) | 319 | `declaration-track:15dcb9176782c19c95cf5e2abd025345a34169c7865cd25e5c01d77e61862c73` |
| 30 | `theorem` | [mul_inv](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-inv.md) | 326 | `result-track:d3fc6e4ee8f688f13cd107a0b6112c09e1c6ecd3a2012c443b0a3af6480fbec7` |
| 31 | `theorem` | [mul_one_div](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-one-div.md) | 331 | `result-track:9fba7fe8e700d642a53100965deaf74e234b703853fbb9207d0e5e67950a3f36` |
| 32 | `theorem` | [mul_cancel](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-cancel-source-edition-2.md) | 336 | `result-track:d0e5101bd378bfcf403c8ec60793d377078b2a322d2d56677d06fedeefc50f0e` |
| 33 | `theorem` | [mul_cancel'](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-cancel.md) | 341 | `result-track:c8a08b85b5f7088332fffe5a53484dc8245d2ba7598b5c036b2d0e45fd913dcb` |
| 34 | `theorem` | [div_one_mul](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/div-one-mul.md) | 347 | `result-track:8ada9c41ba7de838af433584a5388b38eabfcd1298156c3ce9b14776d1ab79c1` |
| 35 | `def` | [numeratorUnit](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/numeratorunit.md) | 353 | `declaration-track:c90a8d2653d561baa8168f5b9da4fbe1c0d5e9e28ccdc2db2c4e0ee478e307d6` |
| 36 | `def` | [numeratorHom](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/numeratorhom.md) | 362 | `declaration-track:636b164594a31cae6fd57008665701a2b37bed0bb7ddce80e38641d3875c5fa2` |
| 37 | `theorem` | [numeratorHom_apply](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/numeratorhom-apply.md) | 368 | `result-track:b67d48b2298439e23f377d9dc72fb560b85da9683dd2e922368fd4f27a313d98` |
| 38 | `theorem` | [numerator_isUnit](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/numerator-isunit.md) | 372 | `result-track:6a61f5ec06314a327de208d4c8f2df1de30172e5455cf4af396d18121625e3fd` |
| 39 | `def` | [universalMulHom](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/universalmulhom.md) | 386 | `declaration-track:f1e3405c7488e0cff1e618b7ab28d95f34337409a489cc5fd5d6f5ac44bab137` |
| 40 | `theorem` | [universalMulHom_apply](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/universalmulhom-apply.md) | 415 | `result-track:83d07d9a59874fb153b3b42e46c3060bd445ad73bb8159af419be59141c6af50` |
| 41 | `theorem` | [universalMulHom_commutes](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/universalmulhom-commutes.md) | 420 | `result-track:54877aca3f9562399445810f9880c29b4166f502d7edd199b5abd342122ac610` |
| 42 | `theorem` | [universalMulHom_unique](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/universalmulhom-unique.md) | 425 | `result-track:97239456e0ce3b1352142d551c7b1555e4d57562a4b4ebcf91011e80991b94d9` |
| 43 | `theorem` | [oreDiv_mul_oreDiv_comm](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/orediv-mul-orediv-comm.md) | 441 | `result-track:1fb69b36aee6600afc5a00b57eb5fc59a2250ac7d15e1874a0afbaa2642e0674` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instance-source-edition-2.md) | 446 | `declaration-track:9907e8d24ad789f657977e05f547b7f8bc040560bde21adbe81c4cff1e3d39e8` |
| 45 | `def` | [localizationMap](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/localizationmap.md) | 456 | `declaration-track:b79d0d253275578d8247ce648c08d4c171f554f5007732a015b01cc48688a930` |
| 46 | `def` | [equivMonoidLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/equivmonoidlocalization.md) | 484 | `declaration-track:23b5a59122fc5e3d5a98b79a16f6c6f469bac21ee7ca6b4e32f5878de9556a33` |
| 47 | `def` | [add''](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add-source-edition-2.md) | 494 | `declaration-track:8e8299a0264e8c52d212d5ca62277e9a079e6cd740e82ccfcba4bdf0cb324548` |
| 48 | `theorem` | [add''_char](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add-char.md) | 497 | `result-track:a8b1698ace23bf04a9e2b5c892e12fc80b2020785c58a6655cb2bdfebafbb380` |
| 49 | `def` | [add'](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add.md) | 530 | `declaration-track:6d6d0845bff9c0e436f1c726a8bac7a18f49fe0d7be8085acd7a73c07f476758` |
| 50 | `theorem` | [add'_comm](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add-comm-source-edition-2.md) | 557 | `result-track:bcf756bf4d97c3663ce6479ab6d30bd10ea8af172073f14316c2a65719155378` |
| 51 | `def` | [add](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add-source-edition-3.md) | 589 | `declaration-track:c8b6367bc72ef2814f1e9671ccd7c3b3767094330e87cb9dc938dbd43628be03` |
| 52 | `instance` | [instAddOreLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instaddorelocalization.md) | 598 | `declaration-track:1c9c5c630ac5e28a5d99d53a2eeb977e67258bc6a5aa074e689a096b9ef8c048` |
| 53 | `theorem` | [oreDiv_add_oreDiv](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/orediv-add-orediv.md) | 601 | `result-track:c6b16775f8468bb279c706a9ffb68b12acf23425c61c5cccc1d5f5f87ef0dca2` |
| 54 | `theorem` | [oreDiv_add_char](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/orediv-add-char.md) | 609 | `result-track:a00f22073f6a2830b8161511c42cc7a3387bcc17b92edeb411a3c9ed948aabd6` |
| 55 | `def` | [oreDivAddChar'](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/oredivaddchar.md) | 616 | `declaration-track:f16709869c9083979f6ed88b51c23ce6fc20b45d53e6cbcc89a867a3a0b65a0b` |
| 56 | `theorem` | [add_oreDiv](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add-orediv.md) | 623 | `result-track:0a6b98d024a61f17951d1260c38cc914154ff652884093d66036dd17c58bd215` |
| 57 | `theorem` | [add_assoc](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add-assoc.md) | 627 | `result-track:98adc5fa276b1234edb6786a9f0f28a326a515205e2dcc6b15c2efa587d8d74f` |
| 58 | `def` | [zero](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/zero.md) | 655 | `declaration-track:5991638fedb882de46987586d26c331e8b91f29a19967fc7335d012998f26176` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instance.md) | 658 | `declaration-track:0ba8ad3105edee9ed8db65853a88e00aa92602b393455dd202fe6b8338cb6266` |
| 60 | `theorem` | [zero_def](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/zero-def.md) | 661 | `result-track:30545eb69914f2eb03535fac1a65384549856194d4335f9b471a05f9e635543c` |
| 61 | `theorem` | [zero_div_eq_zero](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/zero-div-eq-zero.md) | 666 | `result-track:e3a5a8e4fd9daa72198e945016edeaaa940161191d3f1ef6e509adfad3575dde` |
| 62 | `theorem` | [zero_add](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/zero-add.md) | 671 | `result-track:a392dfd99631406273411168188ac6c27453a7fd9c61720a5e353de0b27464ab` |
| 63 | `theorem` | [add_comm](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add-comm.md) | 676 | `result-track:26181165f1d187f0c583ba34f49134e6aa09f454074510ccd9539fd16daf4706` |
| 64 | `instance` | [instAddCommMonoidOreLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instaddcommmonoidorelocalization.md) | 682 | `declaration-track:19cb636078cfb388f508cb19facd0aaa42e297f6a6194750f7db07f1edf7418e` |
| 65 | `theorem` | [zero_mul](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/zero-mul.md) | 690 | `result-track:2dec80a64d3156f2a802525d033056280b272ca1bfd9f6cacc5f0fdf9220c4b0` |
| 66 | `theorem` | [mul_zero](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-zero.md) | 695 | `result-track:11e4ef84461debff0ccf64018b7c2bb4362c10f7d8264544391c5a3ec9dcd0ac` |
| 67 | `theorem` | [left_distrib](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/left-distrib.md) | 700 | `result-track:4c5d9ed839d78049133f01021b50d14d1195d522df02fa777f9a484e164aa1fc` |
| 68 | `theorem` | [right_distrib](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/right-distrib.md) | 731 | `result-track:b7902530b2073117e3cb5f62823e355afe2fb0f79e8ab39df2edf5ec5e99f7ba` |
| 69 | `instance` | [instSemiringOreLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instsemiringorelocalization.md) | 743 | `declaration-track:1e69b0d857e0e763d8badc162845f0a80d44ab7186deb880b74cc4781e3309b4` |
| 70 | `def` | [universalHom](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/universalhom.md) | 762 | `declaration-track:4a5517f43264f448a69094ad6e4fc30ca8415c7d9b08f33c253b8b3d4e57b945` |
| 71 | `theorem` | [universalHom_apply](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/universalhom-apply.md) | 811 | `result-track:9719fad120e4ee431b233d46dadc37dc0ad64d297b3d3cc2166e78dac2dbf828` |
| 72 | `theorem` | [universalHom_commutes](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/universalhom-commutes.md) | 816 | `result-track:c21878c37cf9d6993c75952273c8611475a8d1d1ab5511ec512c912e79b6a2dc` |
| 73 | `theorem` | [universalHom_unique](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/universalhom-unique.md) | 820 | `result-track:4046354074aae79e976b264eedc9b821cd4b4235341c0a31e7de3f3fb334bd9a` |
| 74 | `def` | [neg](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/neg.md) | 834 | `declaration-track:21c7f12a1b74ce93ad60e87140520409f97935bf8450abb8147f51918268eb71` |
| 75 | `instance` | [instNegOreLocalization](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/instnegorelocalization.md) | 841 | `declaration-track:8e49f99232802ccf7eb72cbf2d1268e2f6ed459a2ad7ef5c45e2a19ba77f8b1d` |
| 76 | `theorem` | [neg_def](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/neg-def.md) | 845 | `result-track:ef6f37ec7fad29190543b093348d96c3562c552a447f58779eedbedfd17a4f1d` |
| 77 | `theorem` | [add_left_neg](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/add-left-neg.md) | 849 | `result-track:66d1753f74f150dfa5b703f2e50438e3eb30b8721cd208826b2d302cc1baba84` |
| 78 | `instance` | [ring](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/ring.md) | 853 | `declaration-track:f86e713f9bfc09dac813dc0748c251a888ad0933c2931be6bd4255fefb8b87e0` |
| 79 | `theorem` | [numeratorHom_inj](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/numeratorhom-inj.md) | 860 | `result-track:4a1a7c20749f5c18665e24f676518f47686e9d747a6aed610cf9d2589cc4cb56` |
| 80 | `theorem` | [nontrivial_of_nonZeroDivisors](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/nontrivial-of-nonzerodivisors.md) | 868 | `result-track:30a03ea3dd9b112be3fa177f396143e65ffc30944d781fe9f1c0ed54eddfd667` |
| 81 | `instance` | [nontrivial](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/nontrivial.md) | 884 | `declaration-track:63128645924331a00dadb7f3a4fc37f498b008d6d5241967f098296da94371b5` |
| 82 | `def` | [inv](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/inv.md) | 891 | `declaration-track:da80508e9e37edb56bdadc795fb30fa68713f44ca20c16e6a312d2f2d3935adb` |
| 83 | `instance` | [inv'](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/inv-source-edition-2.md) | 908 | `declaration-track:dbb4058cbb1740159b1a69c59ad2777142289dbb5a199564e9b572216c2e5890` |
| 84 | `theorem` | [inv_def](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/inv-def.md) | 911 | `result-track:ed198595e80b2b5b646f48328688076bc19e715d5eeb0b8e28a5fef40f0ba902` |
| 85 | `theorem` | [mul_inv_cancel](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/mul-inv-cancel.md) | 918 | `result-track:93fc13383f18b56b1257d703857d63373ccdb5a84e8e19d704e1b8d20e567368` |
| 86 | `theorem` | [inv_zero](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/inv-zero.md) | 929 | `result-track:1d81429881682bf36a3247976df1d88d204892e0c6d8dc88143339eabe2d28e0` |
| 87 | `instance` | [divisionRing](../../../../CommutativeAlgebra/RingTheoryOreLocalizationBasicOreEqv.lean/declarations/divisionring.md) | 934 | `declaration-track:21ca226ef480b157518864f06bc1f3e5e4a64a679f1d8a7cf5e93aae4f706e56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91b2e188009e120cef0cfe150d54e7c8e1726d9191c27809567fa8a45a330b21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
