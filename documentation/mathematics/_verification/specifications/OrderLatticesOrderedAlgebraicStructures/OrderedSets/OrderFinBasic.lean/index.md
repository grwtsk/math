# Verification target: Order Fin Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1d597f48e37f2f82ca06957b9e9469a435f59ec",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant21cbcbd4b0c3adf3e21ad1287c45ae151485fa2a0ba7a877df553f8942cd22b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1d597f48e37f2f82ca06957b9e9469a435f59ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant21cbcbd4b0c3adf3e21ad1287c45ae151485fa2a0ba7a877df553f8942cd22b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant21cbcbd4b0c3adf3e21ad1287c45ae151485fa2a0ba7a877df553f8942cd22b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Rev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/instlinearorder.md) | 44 | `declaration-track:7a1a00b0d162bb4003f45f37ba25eefb90ca75b995ae0aedcee31144b6ab8d7c` |
| 2 | `instance` | [instBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/instboundedorder.md) | 49 | `declaration-track:08df45e68f550913a782b2902f196fb5784dc9d6e92160065757571721bdd504` |
| 3 | `instance` | [instBiheytingAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/instbiheytingalgebra.md) | 55 | `declaration-track:f5060f961d21878974cf8012178808732744d4a58223794d50f04a3bf73a7760` |
| 4 | `theorem` | [coe_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/coe-max.md) | 59 | `result-track:954526534af68ab48b3909e9c7ede0f6dba9b3d17658fd16c2ab91051b145699` |
| 5 | `theorem` | [coe_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/coe-min.md) | 62 | `result-track:b2b0e73e9463f0bcd4c415a89c13de0532abee5174df59a68ef7b6de8a5cef1f` |
| 6 | `instance` | [instPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/instpartialorder.md) | 79 | `declaration-track:6dde12eb376d7101977111eceb5fe12592f76afe425a312c1de582e0d964b9c7` |
| 7 | `instance` | [instLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/instlattice.md) | 80 | `declaration-track:5800d20f901bbef3c05307b98d98291b454cbf0f4a9ad016da1eaad442b63863` |
| 8 | `instance` | [instHeytingAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/instheytingalgebra.md) | 81 | `declaration-track:da7b5a29757fcfd8d50d4be2aa481d0b2d771a3b5018295ce128535a89c9a31c` |
| 9 | `instance` | [instCoheytingAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/instcoheytingalgebra.md) | 82 | `declaration-track:107678311b5b65fd38b26e957bbbfeefcd9e3049f8ffac49f0502fde3236fb0f` |
| 10 | `lemma` | [top_eq_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/top-eq-last.md) | 86 | `result-track:21b4af06405c8fd69d38b1a8da8a4afc33135a8d0646e0aba1e1767c6547a601` |
| 11 | `lemma` | [bot_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/bot-eq-zero.md) | 88 | `result-track:38be15f94f979df288097a20921c018194b7f4bef65e8326a0e0bc42f2e3601b` |
| 12 | `theorem` | [rev_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/rev-bot.md) | 90 | `result-track:473d3e4cbcf8c28d264f199218591121b8c8d20b469e0b7601e824a2a4f65bd6` |
| 13 | `theorem` | [rev_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/rev-top.md) | 91 | `result-track:29abce02d78d6b2febdfe6d89bc2ab2d67531560fac58f050ca634d913fb892d` |
| 14 | `theorem` | [rev_zero_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/rev-zero-eq-top.md) | 93 | `result-track:0210438e8340ada5670086c5f995a4e9d2b21e2c10aadaf47630cd485e584592` |
| 15 | `theorem` | [rev_last_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/rev-last-eq-bot.md) | 94 | `result-track:904770601c6a1f2e24eb8beb0e48aadc1f68b9528680d9404a41ab941f963c18` |
| 16 | `theorem` | [succ_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/succ-top.md) | 97 | `result-track:2ee289a420add5c8bf12f0a71ed93d70469d3368c1ef1e39b6ae7edb27fe37e1` |
| 17 | `theorem` | [val_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/val-top.md) | 101 | `result-track:507a6854368b9a36947793a398554d7a15f8663acef5ae826e417f7f44e02a9c` |
| 18 | `theorem` | [zero_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/zero-eq-top.md) | 104 | `result-track:f32583f0b142745aa5c529741121aaf69fe4b4e57fe5943e47d4e364319557c2` |
| 19 | `theorem` | [top_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/top-eq-zero.md) | 109 | `result-track:ec7e44c53972793db251c3679be0df06c14620e90c907da7e346f7f344a4c590` |
| 20 | `theorem` | [cast_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/cast-top.md) | 113 | `result-track:b723094f6f0107aa8fd6423703dd3ef464d7962aa094af7b5637efc77e47910e` |
| 21 | `lemma` | [strictMono_pred_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-pred-comp.md) | 119 | `result-track:9a7fe7fb63066a2b0d4ed68534bb92218a8bc62ea651234293ab025db5fca4af` |
| 22 | `lemma` | [monotone_pred_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/monotone-pred-comp.md) | 122 | `result-track:b208447d6cef22112962fc503149807d902a68b36c31213de652d9c9b36bb9d9` |
| 23 | `lemma` | [strictMono_castPred_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-castpred-comp.md) | 125 | `result-track:04c0f0cc9537952d1cc607ad50c555524046a4fc526ad867103491ddeff6ddcc` |
| 24 | `lemma` | [monotone_castPred_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/monotone-castpred-comp.md) | 128 | `result-track:90dba34d6cd0796471a488c7cd22acef1764401a9c1f34a4467077feef38e557` |
| 25 | `lemma` | [strictMono_iff_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-iff-lt-succ.md) | 138 | `result-track:267022a92f1bc99d57a31b0d158278a41c0ee2f09c2c25db2f0eb0803f6c937f` |
| 26 | `lemma` | [monotone_iff_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/monotone-iff-le-succ.md) | 142 | `result-track:80a4d3c118e1ab610e417b06535bdb56a72f429aa4a5a3fe33dbf36940f38f80` |
| 27 | `lemma` | [strictAnti_iff_succ_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictanti-iff-succ-lt.md) | 147 | `result-track:20ce6205b7a1e11d248b7802dfa8e3596687440b6eb79350fffd48eeeacc6bd1` |
| 28 | `lemma` | [antitone_iff_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/antitone-iff-succ-le.md) | 151 | `result-track:5d5ea4425befcd80727ecc4f2572167a0156c977f275e92a4e220a19ed6b9d83` |
| 29 | `lemma` | [orderHom_injective_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/orderhom-injective-iff.md) | 154 | `result-track:61a3b264f8ee8dc0cdd59e77abdceb86a96dc4261f7212f95183682bcbf5df4c` |
| 30 | `lemma` | [val_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/val-strictmono.md) | 168 | `result-track:7edbc10e92af7b4f27e67a8ef2bc39257dd59752792141d4d752953bcff3090a` |
| 31 | `lemma` | [cast_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/cast-strictmono.md) | 169 | `result-track:08834c62fb2839bf82d25bf224fdf7c395cc1b44d1b229031713e0fd975025df` |
| 32 | `lemma` | [strictMono_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-succ.md) | 171 | `result-track:9bde7b7bc1178cf6e4da01bfdc9c01e652a9e27b0072d85b6314e4d247224127` |
| 33 | `lemma` | [strictMono_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-castle.md) | 172 | `result-track:61e20c8603a442db0f48399bda8221864e2a74db27c795831ca0068d893c7594` |
| 34 | `lemma` | [strictMono_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-castadd.md) | 173 | `result-track:3023f6f1391958cc390721d5984981b9493e432eafc7ec56ed33a9b987a79db0` |
| 35 | `lemma` | [strictMono_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-castsucc.md) | 174 | `result-track:e51152878870803b940e0c142918a3c730a1575e9110e88fd1de992e5b3e8cf7` |
| 36 | `lemma` | [strictMono_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-natadd.md) | 175 | `result-track:5cb6cd567e27704ceaefe7ec62c4b333e130d101fea1399c2ddf7118a32ae567` |
| 37 | `lemma` | [strictMono_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-addnat.md) | 177 | `result-track:e222413095bbd1a92e4b46b0c50284c31650bda9135fa4766b9c690c217b8ecd` |
| 38 | `lemma` | [strictMono_succAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/strictmono-succabove.md) | 180 | `result-track:4bff89ff657045d6b68f450787405d0f3d53f7e7a0bf57a2cdd4fe4a1efd272d` |
| 39 | `lemma` | [succAbove_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/succabove-inj.md) | 188 | `result-track:fd0cc9da042a2c7ab16552e6c4d8420fdaeeff4abb32904cd554dd88c055f8cc` |
| 40 | `lemma` | [succAbove_le_succAbove_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/succabove-le-succabove-iff.md) | 192 | `result-track:1479495b48c5c66efbcf6f7634ceb49d7368744fcceb4ddf54cb73060cc2fa4c` |
| 41 | `lemma` | [succAbove_lt_succAbove_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/succabove-lt-succabove-iff.md) | 199 | `result-track:288b8f921deb1f04637a49544d557b6e2938edc14d6adf21338583efd08616d2` |
| 42 | `theorem` | [natAdd_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/natadd-inj.md) | 206 | `result-track:e340d418d75ee6989a05c3484c20a5673a99d87ce3ed10a0fdab6f80d715df8a` |
| 43 | `theorem` | [natAdd_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/natadd-injective.md) | 209 | `result-track:c136d46a9e021ab84db38be6bc08f70815c2c86a668e1d29ed933ae1fdf79ec7` |
| 44 | `theorem` | [natAdd_le_natAdd_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/natadd-le-natadd-iff.md) | 214 | `result-track:4199305171570a796f0f697078b331bbc4d07b677cb66251c517be5231dedca6` |
| 45 | `theorem` | [natAdd_lt_natAdd_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/natadd-lt-natadd-iff.md) | 221 | `result-track:50d389980bc28f3b2306bb89405e865cc8c372a1d6982b97efb12c84aa36e534` |
| 46 | `theorem` | [addNat_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/addnat-inj.md) | 228 | `result-track:9da0ae3353df13fdc7bf5b463266d1771536ab5583645449862b0c60882c206a` |
| 47 | `theorem` | [addNat_le_addNat_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/addnat-le-addnat-iff.md) | 232 | `result-track:db09a714162c08b661f1da4f9fbfee3fb3db183d4afd36d0e480af9da85a9a54` |
| 48 | `theorem` | [addNat_lt_addNat_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/addnat-lt-addnat-iff.md) | 239 | `result-track:d18ee7e0c5705a91ff1d7a7a8a22f5058d0d21d5ebdbf32aac9c1834b2f4f773` |
| 49 | `theorem` | [castLE_le_castLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/castle-le-castle-iff.md) | 246 | `result-track:7b48cbcb52e45d9fde26d8813ce8b96091f48953f9ad16ac8f87e0906dde5ed5` |
| 50 | `theorem` | [castLE_lt_castLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/castle-lt-castle-iff.md) | 252 | `result-track:7a6ccc7a6607e6a8026f29156da6842330bfb9ed2c5149e763e6208b6ba77134` |
| 51 | `lemma` | [predAbove_right_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/predabove-right-monotone.md) | 257 | `result-track:1b0192d8ffe0a3a59d3036b45c2069c1d2d54ef3e514c4039d5d232c0d2e9d82` |
| 52 | `theorem` | [_root_.GCongr.Fin.predAbove_le_predAbove_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/root-gcongr-fin-predabove-le-predabove-right.md) | 269 | `result-track:1f82df586d905be652dadd00e6f0af0305446566ffd553923172da11e1faf146` |
| 53 | `lemma` | [predAbove_left_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/predabove-left-monotone.md) | 273 | `result-track:30ebbb343b6312c3feb388323aa0489820e88b88a69270e002a1894e7ffcf3d9` |
| 54 | `lemma` | [_root_.GCongr.predAbove_le_predAbove_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/root-gcongr-predabove-le-predabove-left.md) | 283 | `result-track:8ca0657e526d6103c768a4269b11f26d378d818ce5541af85bd61ce5642d0ae3` |
| 55 | `lemma` | [predAbove_le_predAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/predabove-le-predabove.md) | 288 | `result-track:505b45c45063dd805acff13d9e0fde1f894dfe424643c8218bf7dc3609d55c56` |
| 56 | `def` | [predAboveOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/predaboveorderhom.md) | 293 | `declaration-track:098d71c4ae381d85a30595004482f5e052ac050f04d17708b88b1671577a83f7` |
| 57 | `def` | [orderIsoSubtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/orderisosubtype.md) | 300 | `declaration-track:644e336c1448fab79032d356ae9e2ad633ed398fe6b3743b832eec8aa8568461` |
| 58 | `def` | [castOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/castorderiso.md) | 307 | `declaration-track:834f75a15385f343cb72f0c15cbbd03d325f9aaca533437feb875b6713b853ee` |
| 59 | `lemma` | [symm_castOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/symm-castorderiso.md) | 312 | `result-track:ab093055c5d871e36bd9e058bcffe874b2d90c575433f9119f7823232cd5e33d` |
| 60 | `lemma` | [castOrderIso_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/castorderiso-refl.md) | 315 | `result-track:876630cf631417de8bb3a67da9d108be6b44acc8251219d97ca8255829853279` |
| 61 | `lemma` | [castOrderIso_toEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/castorderiso-toequiv.md) | 319 | `result-track:2c9228266dfc3aa3a300185badd0c839f3ca52646420c0365018beab50d73b3a` |
| 62 | `def` | [revOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/revorderiso.md) | 324 | `declaration-track:fb8aa4702057048c8c44aae5c9fd7a964974ce5d67186afa919bc496ae4a6514` |
| 63 | `lemma` | [revOrderIso_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/revorderiso-symm-apply.md) | 327 | `result-track:a768bd0457b43c9c7f2c6cdba0b0c4591c8ef7ac0c67e26cca1a0d32e07f4a42` |
| 64 | `lemma` | [rev_strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/rev-strictanti.md) | 329 | `result-track:2ee1cd59913470c169781abf75556ff8463c2fd47d3f6d69d79c1a6312d0df02` |
| 65 | `lemma` | [rev_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/rev-anti.md) | 331 | `result-track:4966ec1cbaee7b441ad022eaebc48348b648205037d68a0765ae688e07310333` |
| 66 | `def` | [valOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/valorderemb.md) | 337 | `declaration-track:a71db2c4a7f589c24acab958b30a4008a211d86e909f783bb2332dd5703a1161` |
| 67 | `instance` | [Lt.isWellOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/lt-iswellorder.md) | 340 | `declaration-track:c408c8f15eb3c850507d60dc179a0b185a45747c7d43fdfc5352542896edc05b` |
| 68 | `def` | [succOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/succorderemb.md) | 343 | `declaration-track:02642e8087197d5f9241f41b264e513a363bbf9a38698d266b4771c98f1e40a9` |
| 69 | `lemma` | [coe_succOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/coe-succorderemb.md) | 345 | `result-track:7666008ce4d137830bf74d09b2c1f5821af3beebdd3f815745cdee73e643e272` |
| 70 | `lemma` | [succOrderEmb_toEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/succorderemb-toembedding.md) | 347 | `result-track:5233bc05934df053fa04820bdc05fea9fe9b5a8f53d15cdfc621b99117c53657` |
| 71 | `def` | [castLEOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/castleorderemb.md) | 353 | `declaration-track:1aab87289d0719be9ff91bcc756d8a30d35763a38e259458b9393f0149cc5d0a` |
| 72 | `def` | [castAddOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/castaddorderemb.md) | 359 | `declaration-track:39aaa1a91bcbc4396418224d66284b89292187a277e1fc729e5cb62e7f47d914` |
| 73 | `def` | [castSuccOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/castsuccorderemb.md) | 365 | `declaration-track:fe652347239804cc991ec596fb5f0bb9d2de4c7e5b64bb609c09e5dbb0907257` |
| 74 | `def` | [addNatOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/addnatorderemb.md) | 371 | `declaration-track:40b53c1b6f4ded72290c4a1aa16ad3b7a8ad32871d5bfab48ad7f61b6157d61f` |
| 75 | `def` | [natAddOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/nataddorderemb.md) | 377 | `declaration-track:f87624ce6759faddd3a543fa881128a6768a7cbe9ac16e51efc465528245efae` |
| 76 | `def` | [succAboveOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/succaboveorderemb.md) | 381 | `declaration-track:e50f77a9b453ca38bac656cd48ba5c4dda0161cec7297a44dbff5cd7615f0512` |
| 77 | `lemma` | [coe_orderIso_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasic.lean/declarations/coe-orderiso-apply.md) | 390 | `result-track:d126e40a965e8ffa9ee9f270fd874efd42fa3b2e2ddf56b6e40b8c2af38b2b50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99fde5311d80322fbbf6768d786a20d5458f40b0cde913f4b927338d20fd21fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant21cbcbd4b0c3adf3e21ad1287c45ae151485fa2a0ba7a877df553f8942cd22b4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant21cbcbd4b0c3adf3e21ad1287c45ae151485fa2a0ba7a877df553f8942cd22b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
