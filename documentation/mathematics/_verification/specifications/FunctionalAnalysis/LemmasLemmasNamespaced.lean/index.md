# Verification target: Lemmas Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8211ac997303c104dfd6961fa29e577f094c8094",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8211ac997303c104dfd6961fa29e577f094c8094`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LiminfLimsup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PartialHomeomorph` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigOWith_principal](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-principal.md) | 47 | `result-track:766b8a6ad740a6190c7dd1f84493def3890281e9109d4a2de6412921d85606bf` |
| 2 | `theorem` | [isBigO_principal](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-principal-source-edition-2.md) | 50 | `result-track:a63379041c55ebdfe4b36e3f04cd40745332898d13917fa692d2d61fb36cf7da` |
| 3 | `theorem` | [isLittleO_principal](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-principal.md) | 54 | `result-track:0bc5478948449d7e8599d464b0ffffe4d1dd66dac2efc9fffd68fd1c11b8ef22` |
| 4 | `theorem` | [isBigOWith_top](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-top.md) | 67 | `result-track:7f6c35df1337b235d940d3ed8dc03a1d7f9f39c2116e69dacf73dac745d3b703` |
| 5 | `theorem` | [isBigO_top](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-top.md) | 71 | `result-track:862da39f0976e9f6b6e8118d87934a0f023e30f006c8e3f2fbf13e2f17d42067` |
| 6 | `theorem` | [isLittleO_top](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-top.md) | 75 | `result-track:aece5d39326d2963a2c5223c808ae8d2896479a715b30e8d363ecbd060cb32ca` |
| 7 | `theorem` | [isBigOWith_const_one](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-const-one.md) | 83 | `result-track:2991693e10b19d0b9c20785514f4ec1a1b983cff5d770a536cf0cb8e7f2b2205` |
| 8 | `theorem` | [isBigO_const_one](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-one.md) | 86 | `result-track:30f3e736e931a90e46f859953acfc23cc44537655de6870c69855622a13d9beb` |
| 9 | `theorem` | [isLittleO_const_iff_isLittleO_one](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-iff-islittleo-one.md) | 89 | `result-track:5e156f41015c8123ccf0709a791effe804dd813e3bcb3444e81985bbd9e54830` |
| 10 | `theorem` | [isLittleO_one_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-one-iff.md) | 95 | `result-track:3d0e13ae198960612ff95f7ffc7389d59f12574ecb0d91b9a5bb6ff97a88d3b7` |
| 11 | `theorem` | [isBigO_one_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-one-iff.md) | 100 | `result-track:e0f2fba3a3e0881c592eaea7d0e4480a35352486b983de5d6218395356d758a4` |
| 12 | `theorem` | [isLittleO_one_left_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-one-left-iff.md) | 107 | `result-track:6c04fd4797a61a85b718eec70ad1ed03c862720ccb7037b1e24b9cef7a3aa5d3` |
| 13 | `theorem` | [Lemmas Lemmas Namespaced](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-one.md) | 116 | `result-track:df0cee266ecef1c05919485bbbe366a65980b9aa8b911c3285c7201d3cd61a12` |
| 14 | `theorem` | [IsBigO.trans_tendsto_nhds](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-trans-tendsto-nhds.md) | 120 | `result-track:72efde0e9e98b7e62eaf09ca90e0db8e5dd7474ed598625686786017e36fd840` |
| 15 | `lemma` | [isBigO_one_nhds_ne_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-one-nhds-ne-iff.md) | 125 | `result-track:0581ae8be788e693c112575b9cac4ef314853fdaab28a9dab3a743fa9938e4a7` |
| 16 | `theorem` | [isLittleO_const_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-iff.md) | 138 | `result-track:af21613ae69ddf98f195ce72f0c58c07b45c577ee7a856ce811e2ab4dafefead` |
| 17 | `theorem` | [isLittleO_id_const](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-id-const.md) | 142 | `result-track:c54b6a010e21aac70d08b115e21b50ed40cc5b44aa9d4af339ff5960ebb62ee6` |
| 18 | `theorem` | [Lemmas Lemmas Namespaced](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const.md) | 145 | `result-track:7cfe5442d204782e490293295401b293f3c34dad952642c32647da92d69bdbb8` |
| 19 | `theorem` | [isBigO_const_of_tendsto](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-of-tendsto.md) | 149 | `result-track:aec0b83a2ed06712366c28e440c2ff2745011cfb226d9a77627c8a6831c9c665` |
| 20 | `theorem` | [IsBigO.isBoundedUnder_le](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-isboundedunder-le.md) | 153 | `result-track:3433d7d2f55278e29c28a94afec63c0f877c66dd081afc43a202b96bcff52069` |
| 21 | `theorem` | [isBigO_const_of_ne](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-of-ne.md) | 158 | `result-track:48495cf0f8107c8e44d1e2148e69650e70a12070d4db079353ff27cee1ea698a` |
| 22 | `theorem` | [isBigO_const_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-iff.md) | 162 | `result-track:5697038305d46ded46caeb5e66ef27a1888dabfe516c9fe08479c37967b98bb0` |
| 23 | `theorem` | [isBigO_iff_isBoundedUnder_le_div](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-iff-isboundedunder-le-div.md) | 169 | `result-track:ebe91f0926059db2767fa89bf430fb02a83cc01c8ff2d4d210627f984875683f` |
| 24 | `theorem` | [isBigO_const_left_iff_pos_le_norm](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-left-iff-pos-le-norm.md) | 177 | `result-track:18c4947c23b6a539042d20291f383b189626d7378d8d22c6b40adab098667417` |
| 25 | `theorem` | [IsBigO.trans_tendsto](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-trans-tendsto.md) | 189 | `result-track:db520cb2a855f8156930efadd5d86864e4ed579dff53ab9d62ef7bf6b3dc1a5f` |
| 26 | `theorem` | [IsLittleO.trans_tendsto](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-trans-tendsto.md) | 193 | `result-track:3b3235105e8d2e5310d7718a3eba5a176b29cb6a16bac1542dc432db976df72d` |
| 27 | `lemma` | [isLittleO_id_one](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-id-one.md) | 197 | `result-track:28b427eaa4d56c74180a5b974c0bd93d3e6d533ddb4b75136a4594b076717748` |
| 28 | `theorem` | [continuousAt_iff_isLittleO](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/continuousat-iff-islittleo.md) | 200 | `result-track:d067376158833cfdd1f924dd4eb30f1e3aff1b062a41cd1d8c2411857cd2808d` |
| 29 | `theorem` | [IsBigO.of_pow](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-of-pow.md) | 207 | `result-track:4bfd0d4d88f06e1de484b11c17ffe709705f615e830c4d97c6c88de040acfdee` |
| 30 | `theorem` | [IsBigOWith.const_smul_self](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-const-smul-self.md) | 220 | `result-track:c6f49f234ae1ff4d170729d9077d29f17d5f9e64aae77cb8581a99788cc79cf8` |
| 31 | `theorem` | [IsBigO.const_smul_self](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-smul-self.md) | 224 | `result-track:01521d555c11730e3f87df3af04720c24bace8fc77b09b6788001c7e171c6b94` |
| 32 | `theorem` | [IsBigOWith.const_smul_left](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-const-smul-left.md) | 227 | `result-track:91e44766b77f8831c713f77ccd923e13df46de7969c45054764510dba81337d4` |
| 33 | `theorem` | [IsBigO.const_smul_left](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-smul-left-source-edition-2.md) | 231 | `result-track:9769965b6e8b78e47376a953cf3163c18f36da2753ac2366028b2e15cd5e24d9` |
| 34 | `theorem` | [IsLittleO.const_smul_left](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-smul-left-source-edition-2.md) | 235 | `result-track:b20ebb744381a829216b8031e1abddd0960540e7d63228f84c7a45c0ff3447ce` |
| 35 | `theorem` | [isBigO_const_smul_left](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-smul-left.md) | 240 | `result-track:54584d9920c19690d293cb3519c6bea6afe7485d270b31c9022b81c7d92b97f8` |
| 36 | `theorem` | [isLittleO_const_smul_left](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-smul-left.md) | 246 | `result-track:083c8bfb3b16c58035f010ed9305768af04b82465f496cbdedbe6e2403459b05` |
| 37 | `theorem` | [isBigO_const_smul_right](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-const-smul-right.md) | 253 | `result-track:4745207f4f89c13978ccaafc686d6c7a9e313f6d938420c49e6c437e9dbe2188` |
| 38 | `theorem` | [isLittleO_const_smul_right](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-smul-right.md) | 260 | `result-track:7df008496fcb9a8827a80adf6125cff2b8f040ea5a7c0d0cb246bf9769b15a80` |
| 39 | `theorem` | [IsBigOWith.smul](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-smul.md) | 274 | `result-track:f36579bd23f192073d1102dbe86b0dfe2f9f8a7580d3a92d00f80d5911d438c7` |
| 40 | `theorem` | [IsBigO.smul](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-smul.md) | 282 | `result-track:fb90d9637aec7909094ad7ca941ed42cae8a8d97503f6a0a4c3636d81ee42946` |
| 41 | `theorem` | [IsBigO.smul_isLittleO](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-smul-islittleo.md) | 288 | `result-track:061efb71721aebcc20ea25ba8e1f80f9f1946083a68732fa02439c453a37d329` |
| 42 | `theorem` | [IsLittleO.smul_isBigO](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-smul-isbigo.md) | 295 | `result-track:05f8e75bac1e9595cdb0cb251369489baa44d996c287cdb5f38682367a145f04` |
| 43 | `theorem` | [IsLittleO.smul](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-smul.md) | 302 | `result-track:67149e86378aa60286c58cfef0d8bae64361981433feef1642f79f23ea5914c1` |
| 44 | `theorem` | [IsBigO.listProd](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-listprod.md) | 311 | `result-track:674381db6f374f4700fda20a0b5dd4ddffb4ad471080880eb11f61ba1dd39e15` |
| 45 | `theorem` | [IsBigO.multisetProd](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-multisetprod.md) | 320 | `result-track:c4241a52d92d3c5db513faa462c472d0d4583051900deb33674b9cb0fb51441d` |
| 46 | `theorem` | [IsBigO.finsetProd](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-finsetprod.md) | 326 | `result-track:59fae5c517d070cee4bd2944cee5d1d85c8bf84b897318b6b287f1c15fbc3e1e` |
| 47 | `theorem` | [IsLittleO.listProd](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-listprod.md) | 331 | `result-track:9aa817e91bf91d78c7e4988c102580f76aa8f9ac95f03ad84bc90fe418a9813a` |
| 48 | `theorem` | [IsLittleO.multisetProd](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-multisetprod.md) | 343 | `result-track:0a38225c6737cec113fa86b5231825c1043a5d4614f4dd4ce2b09d34a78120d6` |
| 49 | `theorem` | [IsLittleO.finsetProd](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-finsetprod.md) | 350 | `result-track:e1895dc3b1e8ddb7652abfca087cef6083d567a38dadaa9760738c9b5bd69c8e` |
| 50 | `theorem` | [IsLittleO.tendsto_div_nhds_zero](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-tendsto-div-nhds-zero.md) | 359 | `result-track:a6c0db76944712db29c24a9588c8fccc8ebaf0a36058ee8397e53446f45cb4eb` |
| 51 | `theorem` | [IsLittleO.tendsto_inv_smul_nhds_zero](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-tendsto-inv-smul-nhds-zero.md) | 367 | `result-track:d6e2239d375ff4a66ed389f1f40abff962005aedf81215c72a8bd371083f2ade` |
| 52 | `theorem` | [isLittleO_iff_tendsto'](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-iff-tendsto.md) | 373 | `result-track:010136bb3e340ebd63a39ceed8b227c3d1481b3cd41761bee63ce5f5ae614c3a` |
| 53 | `theorem` | [isLittleO_iff_tendsto](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-iff-tendsto-source-edition-2.md) | 379 | `result-track:7ba65a71ec73c396b4043b71af31a955af01302beb297df656c8c63b44f8ac5c` |
| 54 | `theorem` | [isLittleO_const_left_of_ne](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-left-of-ne.md) | 387 | `result-track:f138c8ff8b88041f8562e447c245d2e3000878b705c86eb1289afc57778d4a8a` |
| 55 | `theorem` | [isLittleO_const_left](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-left.md) | 394 | `result-track:5578ad46ab0c8a5d6f0f83cc369912c06120cd306a2ab9f3c1acd3083ce114d7` |
| 56 | `theorem` | [isLittleO_const_const_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-const-iff.md) | 401 | `result-track:41e6ea70a365da02caa40d90da56bf35713081b03764d23a38322614096cee3a` |
| 57 | `theorem` | [isLittleO_pure](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-pure.md) | 409 | `result-track:8df16e5fc4558996cd77d668a30399c9164ce83418223af69fbc75ba2c734782` |
| 58 | `theorem` | [isLittleO_const_id_cobounded](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-id-cobounded.md) | 414 | `result-track:19294787b7680078d0d352e378c9be08c616ce8d9576583d2bbf33bb42133e55` |
| 59 | `theorem` | [isLittleO_const_id_atTop](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-id-attop.md) | 418 | `result-track:675b464336266acb824997ba04920d2eb9828ba99e40eafb380a90fef284d39f` |
| 60 | `theorem` | [isLittleO_const_id_atBot](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-const-id-atbot.md) | 421 | `result-track:d1deea08d79193dfc7133dadda97054a3a1078f2eee509a0d3fff04927945655` |
| 61 | `theorem` | [isBigOWith_of_eq_mul](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-of-eq-mul.md) | 433 | `result-track:870a99dae55adfeda181976b86127d4d479d61f43196f72a8cfcc94f6ca9643d` |
| 62 | `theorem` | [isBigOWith_iff_exists_eq_mul](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-iff-exists-eq-mul.md) | 442 | `result-track:fbaac6f0e4ecefa1442aa7973617033a6d9172c454bedc4c1a98698c0ece36d4` |
| 63 | `theorem` | [IsBigOWith.exists_eq_mul](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-exists-eq-mul.md) | 452 | `result-track:0bcac54315aa4357a546dddd0b71fa7f9fd1b7c0ac1867ccc251fbe7e6ac1f9d` |
| 64 | `theorem` | [isBigO_iff_exists_eq_mul](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-iff-exists-eq-mul.md) | 456 | `result-track:621996e21fd4b105719fe3479b33066812e3a46bb3299d59bb0cbb7a719ac564` |
| 65 | `theorem` | [isLittleO_iff_exists_eq_mul](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-iff-exists-eq-mul.md) | 468 | `result-track:8a27ba3456b8c3a25adbe2e36a8a510b9f800848e0fd41b53a3a0661392ee885` |
| 66 | `theorem` | [div_isBoundedUnder_of_isBigO](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/div-isboundedunder-of-isbigo.md) | 483 | `result-track:1fbd2866c3fa562d79ef6057c1138e3d98f0105e3aac4683e5818bdd136468f2` |
| 67 | `theorem` | [isBigO_iff_div_isBoundedUnder](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-iff-div-isboundedunder.md) | 490 | `result-track:16698003fb3c1c1970f3f04b5234a19a47c3cc57078d77d4b2d32d826236d1a2` |
| 68 | `theorem` | [isBigO_of_div_tendsto_nhds](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-of-div-tendsto-nhds.md) | 501 | `result-track:dc2a8e19411885c09594ae84c5500f5de16222f11baafbf61c120689984ea876` |
| 69 | `theorem` | [IsLittleO.tendsto_zero_of_tendsto](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-tendsto-zero-of-tendsto.md) | 506 | `result-track:4ea75d7a52a8ffdbfcad831fb29586155bf549a5992330d5161d09757ce713c6` |
| 70 | `theorem` | [isLittleO_pow_pow](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-pow-pow.md) | 513 | `result-track:33867ce7d573551d9a9c29ed9a0924047ca0721734e354b896add08b4f9b8d87` |
| 71 | `theorem` | [isLittleO_norm_pow_norm_pow](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-norm-pow-norm-pow.md) | 520 | `result-track:03b424c02fade2bef0f00953c03ea891575eccad62f24babc0840a4f41b6c255` |
| 72 | `theorem` | [isLittleO_pow_id](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-pow-id.md) | 524 | `result-track:00aeb90985db4619864e384329ca51e39b7789c704fb247d6fd5f6f3efd1eb02` |
| 73 | `theorem` | [isLittleO_norm_pow_id](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-norm-pow-id.md) | 528 | `result-track:cec8401bf4866c7eff73c2f4782574f6c028cc5cccc4aafe8dff16bc856f9bb9` |
| 74 | `theorem` | [IsBigO.eq_zero_of_norm_pow_within](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-eq-zero-of-norm-pow-within.md) | 534 | `result-track:e4b3d2399b7d5da1277557e3297c674b27cd2648c731e6bdf2a3ca4bde71511e` |
| 75 | `theorem` | [IsBigO.eq_zero_of_norm_pow](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-eq-zero-of-norm-pow.md) | 538 | `result-track:1cda4cc11556dfde306229d0e85dd0976cf9cbb2dc6c93315bf94e13ab9117e5` |
| 76 | `theorem` | [isLittleO_pow_sub_pow_sub](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-pow-sub-pow-sub.md) | 543 | `result-track:60fc07a4810771aa23bb98d93aaa851cbf4a40c7098e6ac201727e688729d1a4` |
| 77 | `theorem` | [isLittleO_pow_sub_sub](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-pow-sub-sub.md) | 551 | `result-track:536537e57117036139e6a2793194ab33bce079706b5873e3e41b5471d06778d6` |
| 78 | `theorem` | [IsBigOWith.right_le_sub_of_lt_one](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-right-le-sub-of-lt-one.md) | 555 | `result-track:71042681f6d1c565d8dbf99c8c9e78e3dad306ea188067e395b7fc2bccaa1f3f` |
| 79 | `theorem` | [IsBigOWith.right_le_add_of_lt_one](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-right-le-add-of-lt-one.md) | 564 | `result-track:65291ea2e3a4c0206ef1cf7cdc27f0ff4f497f50f0eb0b3334d18538de53925f` |
| 80 | `theorem` | [IsLittleO.right_isBigO_sub](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-right-isbigo-sub.md) | 569 | `result-track:d530cdfeeaa3c26823b841025c4dde5aaeb3a0770259b4c6b3c48b70287d17b1` |
| 81 | `theorem` | [IsLittleO.right_isBigO_add](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-right-isbigo-add-source-edition-2.md) | 573 | `result-track:6304b98ac7f02efa9ce8d5577844e992d5d7f94205bcabaf8f4f6087d7e80f3e` |
| 82 | `theorem` | [IsLittleO.right_isBigO_add'](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-right-isbigo-add.md) | 577 | `result-track:136e7342234a3eacffdfc074ab2fe2bdfc8c043387ef6be13558c2d2e9df51c6` |
| 83 | `theorem` | [bound_of_isBigO_cofinite](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/bound-of-isbigo-cofinite.md) | 583 | `result-track:fdbdffd3982751550291de4e3f5e575daad4b547cd234503f4d813418bad0458` |
| 84 | `theorem` | [isBigO_cofinite_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-cofinite-iff.md) | 593 | `result-track:aafcb874cadfbef3192a371dd5cb87cd4d382ab6c88bc5a0d29689e137b8b424` |
| 85 | `theorem` | [bound_of_isBigO_nat_atTop](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/bound-of-isbigo-nat-attop.md) | 601 | `result-track:593b8c9e1ad244d652e51ce440a2960f28af68f274f9fbd55320ff8eb433c7fc` |
| 86 | `theorem` | [isBigO_nat_atTop_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-nat-attop-iff.md) | 605 | `result-track:853198c9fa40ee1084d3d200acad4229eecaa83087a3a8b774885cca80e1725d` |
| 87 | `theorem` | [isBigO_one_nat_atTop_iff](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-one-nat-attop-iff.md) | 609 | `result-track:b96be048945979f72bdb1a6f612eeaa6c800672425f2bed889cea20b31e40ce9` |
| 88 | `theorem` | [IsBigO.nat_of_atTop](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-nat-of-attop.md) | 614 | `result-track:35905ba90bca8fd15a30a931d1d960a8018b70ba1b0814a752af3cc42c65fa5f` |
| 89 | `theorem` | [isBigOWith_pi](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-pi.md) | 623 | `result-track:1fa48d3211e4c4c1b7130b4fa68f78025050a51ee44a86c5d2221f7f9874b714` |
| 90 | `theorem` | [isBigO_pi](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-pi.md) | 630 | `result-track:03da980274829f2b9886f2502d7915723159634613c4a8f3cf5984ca6eddff21` |
| 91 | `theorem` | [isLittleO_pi](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-pi.md) | 636 | `result-track:ab00a47f3adcbadaae3b5dc875623098fb700ac0316b6bcf9614e0cbe885a4fd` |
| 92 | `theorem` | [IsBigO.natCast_atTop](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-natcast-attop.md) | 641 | `result-track:61baeed65ee3171a28f6bf361af37fc44789f128ce1dd5bb8237a0442c9f2beb` |
| 93 | `theorem` | [IsLittleO.natCast_atTop](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-natcast-attop.md) | 647 | `result-track:31fc5899568ec47cbb83112b445ad3c842b372f9a470387a64248a76ed814f11` |
| 94 | `theorem` | [isBigO_atTop_iff_eventually_exists](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-attop-iff-eventually-exists.md) | 653 | `result-track:8f662cb7175e582a2c29a3b52ae206b2f3b24a14a355bac03a819a50e63390bb` |
| 95 | `theorem` | [isBigO_atTop_iff_eventually_exists_pos](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-attop-iff-eventually-exists-pos.md) | 657 | `result-track:c600902cbfa1b075f4a14c265dae184c52921a29ae4a457ffd171640de958cd8` |
| 96 | `lemma` | [isBigO_mul_iff_isBigO_div](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-mul-iff-isbigo-div.md) | 662 | `result-track:9972d55578c09be81bff5ff19bdce9e73d36aa7fbd8736576223766ba54a8afd` |
| 97 | `theorem` | [summable_of_isBigO](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/summable-of-isbigo.md) | 673 | `result-track:0563da8a39ac21ebf399e272e7233977180aed563e8cecfed5c5ee8cc2fbdd60` |
| 98 | `theorem` | [summable_of_isBigO_nat](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/summable-of-isbigo-nat.md) | 678 | `result-track:cba7e619bf72cca4268c6fcc0df277192dea527d6bcb09d773147bbba487ebdc` |
| 99 | `lemma` | [Asymptotics.IsBigO.comp_summable_norm](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/asymptotics-isbigo-comp-summable-norm.md) | 682 | `result-track:c32ac964b04145ee5c4b99ff6ed3741a188f08d71b0750e29bfd2a5b47da9593` |
| 100 | `theorem` | [isBigOWith_congr](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-congr.md) | 694 | `result-track:d27528ce229430481384e9eaae8c7ae00886d933ec78bb580c75e6ccaec42822` |
| 101 | `theorem` | [isBigO_congr](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-congr.md) | 706 | `result-track:dd804ca71cfc65233c59dcd2f759a98506d067193b0dfa96b8c8a4050cd95a28` |
| 102 | `theorem` | [isLittleO_congr](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-congr-source-edition-2.md) | 712 | `result-track:480945c419eeb0429e2a5b4e492b4e19af5264691cd76d26dd33a9e758cf9cef` |
| 103 | `theorem` | [isBigOWith_congr](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-congr-source-edition-2.md) | 727 | `result-track:f6adab57281ede47887d0b7fc9ad38cf3cc29cfc3a497477aa7dd434a889f61c` |
| 104 | `theorem` | [isBigO_congr](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-congr-source-edition-2.md) | 732 | `result-track:f9b70fc6c3e66055d6a8658330f398cc08f56ccd44bb593feac9dc0e89d4367c` |
| 105 | `theorem` | [isLittleO_congr](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/islittleo-congr.md) | 738 | `result-track:387199168d6152378f411782d99d7e76a2ab2164c61c9cf7ea5489c536078228` |
| 106 | `theorem` | [isBigOWith_principal](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-principal-source-edition-2.md) | 753 | `result-track:b19fb7c4606366b467aacd95582b0455671102811de13e7165e5a3a2179648e6` |
| 107 | `theorem` | [isBigO_principal](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-principal.md) | 761 | `result-track:1633905b9e3897a9a0fe4299697a96d9ac059562cfc89b1b11ca2ef02aeefa0d` |
| 108 | `theorem` | [isBigOWith_rev_principal](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigowith-rev-principal.md) | 771 | `result-track:8846b6ad1549423df0b0455505d01c07cbe5054bcbc5c94e994feb0f863d45a5` |
| 109 | `theorem` | [isBigO_rev_principal](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/isbigo-rev-principal.md) | 784 | `result-track:f74023f1443e855b4344d52b7ebd772badb93a27270872af02d2a97c8dbe3305` |
| 110 | `lemma` | [NormedField.tendsto_zero_smul_of_tendsto_zero_of_bounded](../../../../FunctionalAnalysis/LemmasLemmasNamespaced.lean/declarations/normedfield-tendsto-zero-smul-of-tendsto-zero-of-bounded.md) | 793 | `result-track:b98a4e30f2a5abc89c2d25ffa9e28a70f8eeb4f6213ec1f9dd1fa9c64d15f208` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11044738dd4e00a80922c9cea289557d7871f5b7b7f78ec510a4f5a64b6d71b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
