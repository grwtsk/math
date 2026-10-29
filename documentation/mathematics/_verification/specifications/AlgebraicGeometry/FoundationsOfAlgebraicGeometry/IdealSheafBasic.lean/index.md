# Verification target: Ideal Sheaf Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fce5dd422aa2b418b7a04d1ca6a8d56487a994d6`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Properties` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IdealSheafData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/idealsheafdata.md) | 60 | `declaration-track:996d6ef2d48f99ce87973655f265334d950b668458c988f34e5ba4c38bedb3e1` |
| 2 | `lemma` | [ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ext.md) | 74 | `result-track:8bdc38f28f23d7a3f08c21b56ba454fa0b057cfa8f35ec59cc11a595ae226a87` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:6b572fcd67e9d610b9074874544d7a022e10220f36fec8c807c06094033edf0e` |
| 4 | `lemma` | [le_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/le-def.md) | 85 | `result-track:74dc71e0cc088a38040f36ee1c70a7dca65808746599f08d1fafc468ddbeec4e` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/instance-source-edition-3.md) | 87 | `declaration-track:580afd25cb6d1a545041142e599ef000482e076ca6889d2f2f18164ba9f2dc07` |
| 6 | `def` | [ofIdeals](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ofideals.md) | 99 | `declaration-track:767a839e8cb3ab10b2b8f334791b72f2a51a117482cc06cc9442a328d5a13ff5` |
| 7 | `lemma` | [ideal_ofIdeals_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-ofideals-le.md) | 102 | `result-track:9d57e6134b1af98799c925f1bc3837eeb1a67c67f2dd7bf3df7fd82114856d7d` |
| 8 | `def` | [gci](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/gci.md) | 107 | `declaration-track:15b84ece3e76b602d9c8ac997fd4995a18873a6959c4687657daa8cc08a981ff` |
| 9 | `lemma` | [strictMono_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/strictmono-ideal.md) | 116 | `result-track:9903959e90dbd7d2b00856ae1412cef824c55c53cb7cd915875aad38a265fc54` |
| 10 | `lemma` | [ideal_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-mono.md) | 117 | `result-track:07e6bed7bff2f38a7fc6a186bca97d8ccf3524285e0d1e316534133bd60a591d` |
| 11 | `lemma` | [ofIdeals_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ofideals-mono.md) | 118 | `result-track:ab92a653fb9808e949262636ed5b6063d8b4c2aada2bf8fd028799e81fc0cd32` |
| 12 | `lemma` | [ofIdeals_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ofideals-ideal.md) | 119 | `result-track:361dd2481e96cbaa06703cf723ff41b2be5f3c4509c0385d104e87bd1a047cde` |
| 13 | `lemma` | [le_ofIdeals_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/le-ofideals-iff.md) | 120 | `result-track:555a84262a0cb489d845d3263f9ff463475daedba1e2d54d1d0cbda694eaf033` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/instance-source-edition-2.md) | 123 | `declaration-track:4d3c21d7b179b3d2b81784f7262922d52f7a9b1377c32d9828be19ef681dd0e3` |
| 15 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/instance-source-edition-6.md) | 132 | `declaration-track:a62c191f772743865ce858926cee53065dd1ebfe5c06e7378c0aeb31cebd3b8c` |
| 16 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/instance.md) | 139 | `declaration-track:0304631a138373b2e54b9b45a162c1e221d2dcacc3afc7dee488b9049bbd518b` |
| 17 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/instance-source-edition-5.md) | 160 | `declaration-track:a35cf835eb639688797ee5535ec32bfb54e662a214c40b14665fdef5ed99d5cb` |
| 18 | `lemma` | [ideal_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-top.md) | 168 | `result-track:5c1f72027c2447a0c78292ba01ca31f041954a713f482836c1db82ac451b907c` |
| 19 | `lemma` | [ideal_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-bot.md) | 171 | `result-track:93e01cb7aff35498dc76e478ec957c01a4e5f352021b3cf7e434a21f3ff76dfd` |
| 20 | `lemma` | [ideal_sup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-sup.md) | 174 | `result-track:73690609901dbf96ed4dc9c54c4e66100e08cd0b6cc8f86e44bf887029b73205` |
| 21 | `lemma` | [ideal_sSup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-ssup.md) | 177 | `result-track:72676348cbdb220e482d12e6a49f6dd54def70d1e4adde6bf97d1038643b2c28` |
| 22 | `lemma` | [ideal_iSup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-isup.md) | 180 | `result-track:fa49e74cb1ed7b3622de0e32565fd7428071846aa8eadcae1a4e24370890b1b4` |
| 23 | `lemma` | [ideal_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-inf.md) | 184 | `result-track:65c6d1ce1458116d1f25cbb8e859390cf75a9b9bb082c20ee5888fb587797961` |
| 24 | `lemma` | [ideal_biInf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-biinf.md) | 187 | `result-track:379a37516d8a43b1fb66cea888968a38ff4781db2202c294a16f3ef7177d7ff2` |
| 25 | `lemma` | [ideal_iInf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-iinf.md) | 193 | `result-track:7bc3bd84ee39901a4ec3dd2c1bb3f598450a9cbe9f59cc143c69647a013362b0` |
| 26 | `lemma` | [map_ideal_basicOpen_of_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/map-ideal-basicopen-of-eq.md) | 204 | `result-track:a01666bfb46ac35cdc1c127b4cb82b6866d588145642801ddcbce20745810495` |
| 27 | `lemma` | [map_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/map-ideal-source-edition-2.md) | 211 | `result-track:8e51d89ab37ca98cfc37d6f0b2edfcc7c0d8455a0b81f43b677d98bc7abfbe88` |
| 28 | `lemma` | [map_ideal'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/map-ideal.md) | 224 | `result-track:1f0d7b1965a36de2044f3e3cbd35280798560779ec4025761f95795cb930847c` |
| 29 | `lemma` | [ideal_le_comap_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ideal-le-comap-ideal.md) | 228 | `result-track:cc27b5d757ec98b121011e819910c74288bf2ed037c3955cb5c990d58ea889e0` |
| 30 | `lemma` | [mem_supportSet_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/mem-supportset-iff.md) | 236 | `result-track:80550561d2a7b807344e7dbfa5ff0ac8b8c8574e6f305e6ca252aaceccfb5923` |
| 31 | `lemma` | [supportSet_subset_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/supportset-subset-zerolocus.md) | 240 | `result-track:f51b48e44c39d15b9bf2312a846d2d0fb8f7a4cf53c66823e61600e69b654666` |
| 32 | `lemma` | [zeroLocus_inter_subset_supportSet](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/zerolocus-inter-subset-supportset.md) | 244 | `result-track:5e63e33d31e924ed74117d779037465dbf93749c1c644549b0d1dc1da1ce1085` |
| 33 | `lemma` | [mem_supportSet_iff_of_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/mem-supportset-iff-of-mem.md) | 264 | `result-track:06132f9dbda23eaaea6c4144f7b77e109d269e66afccfd0df8064e91d1751fe1` |
| 34 | `lemma` | [supportSet_inter](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/supportset-inter.md) | 269 | `result-track:117b5bdde3fb7b2f7db48f68184f6e53092120bfa0398508f26aca36dbe5718e` |
| 35 | `lemma` | [isClosed_supportSet](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/isclosed-supportset.md) | 276 | `result-track:296b8b02e4714663ab4605830910d73c22d9545665465708d6020101d69cf3ca` |
| 36 | `def` | [support](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support.md) | 285 | `declaration-track:fd8e8a2e7b9ebefc40964a98842d5389aab9dfe254316252db0255668bd90ef9` |
| 37 | `lemma` | [coe_support_eq_eq_iInter_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/coe-support-eq-eq-iinter-zerolocus.md) | 287 | `result-track:bbcb83a84f911a5f717c976642e7d84ac8595ebad8da5c9c878012a496dae615` |
| 38 | `lemma` | [mem_support_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/mem-support-iff.md) | 291 | `result-track:b22550856494507b08541ddf840e486e637c0822361bcce84d608bea0fb88c2a` |
| 39 | `lemma` | [mem_support_iff_of_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/mem-support-iff-of-mem.md) | 295 | `result-track:bc6701ee09d8de8870800c20b0fe87d0ec4bcd07e337bcfa98e23732f7d03542` |
| 40 | `lemma` | [coe_support_inter](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/coe-support-inter.md) | 299 | `result-track:6e5ba1f403ba6fdce6925c4cd2da051db92e6caa3748830ca3d45647ec319471` |
| 41 | `def` | [Simps.coe_support](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/simps-coe-support.md) | 304 | `declaration-track:d15285d8903c2f70671134780990c317370e388a9d4511328ba03c532ec10467` |
| 42 | `def` | [mkOfMemSupportIff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/mkofmemsupportiff.md) | 311 | `declaration-track:e82778605eb8afde7439960fbccb89d619174b47d218230f03a6ad3883a8308d` |
| 43 | `lemma` | [support_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support-top.md) | 333 | `result-track:585924b0d4e9ef27326135fc77f01407a25769604a0c2c2c0c06274824aa577d` |
| 44 | `lemma` | [support_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support-bot.md) | 336 | `result-track:9019b3618a873395d7a8e896b5f869f58f42f28b24ebfcbcbafd082442fd0c57` |
| 45 | `lemma` | [support_antitone](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support-antitone.md) | 338 | `result-track:4daf256fa73d2c26a3bef8a9f8a6af87ed651b348aa6b57b4e21fe52387781af` |
| 46 | `lemma` | [support_eq_bot_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support-eq-bot-iff.md) | 345 | `result-track:ddf0f2ded9e2caf05964060808c37d3c2dd2d78099c307ebbeb4a5c1a186bec1` |
| 47 | `def` | [ofIdealTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ofidealtop.md) | 358 | `declaration-track:4c290ae7cd23804bb2ec8a0ec688aa7f1cb7e30ecbe9592a9588b54304276a27` |
| 48 | `lemma` | [le_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/le-of-isaffine.md) | 367 | `result-track:851e4d59791eacfa1971a0040ac35075e1d2bcd85af365af7b94b601fe4db025` |
| 49 | `lemma` | [ext_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ext-of-isaffine.md) | 374 | `result-track:60cdb53b34a15c896ed6095ac0f52479a672061116b8c325bdf901e7660a2c55` |
| 50 | `def` | [equivOfIsAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/equivofisaffine.md) | 380 | `declaration-track:72cdb15c28f5ccb002d8b657dd7df32326fbe15abef7e3fb084f07b95292be9b` |
| 51 | `lemma` | [Scheme.zeroLocus_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/scheme-zerolocus-radical.md) | 393 | `result-track:e94475bef7255aa39a169e0c6e37687ff271df939a17d50573ff685e3eb2e25a` |
| 52 | `def` | [radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/radical.md) | 404 | `declaration-track:b36a31ce3ec712812724003f71831bb4bbaa2605e89790732e24cf88a5a5b4e3` |
| 53 | `lemma` | [support_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support-radical.md) | 418 | `result-track:c7623bff286c2e0bdfc14d5482e839ae87908b47d532e4abb1ef27b78e23d4a9` |
| 54 | `def` | [_root_.AlgebraicGeometry.Scheme.nilradical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/root-algebraicgeometry-scheme-nilradical.md) | 421 | `declaration-track:10b9b345cc075d3073794091fa4954ffb5e1a956282225fa7934a42e9458d5eb` |
| 55 | `lemma` | [_root_.AlgebraicGeometry.Scheme.support_nilradical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/root-algebraicgeometry-scheme-support-nilradical.md) | 425 | `result-track:7ed0ac8b0b12e4a3f4ea3841cf766e5bb7ac9b51e5ff7ddc50c98bb228cd6d31` |
| 56 | `lemma` | [le_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/le-radical.md) | 428 | `result-track:ed920022278b4f23967a66789c7dab3f91d2090cbe332c0d645bb439e2230da0` |
| 57 | `lemma` | [radical_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/radical-top.md) | 431 | `result-track:aa675a189f3b53cbc55ea35c2f5a03b8e26f0223cbe5dfcd652bfaacc00667cb` |
| 58 | `lemma` | [radical_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/radical-bot.md) | 433 | `result-track:d41308b9cc62f60806469d2e543a24861598f86decf3790b9cd5f05df9aff5c3` |
| 59 | `lemma` | [radical_sup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/radical-sup.md) | 435 | `result-track:27cddc8cb49d8dff43c64c6eb1ef8476a07188393ed26b82ab7893f1679451d7` |
| 60 | `lemma` | [radical_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/radical-inf.md) | 441 | `result-track:a351393d06526006163228ede101fad7ccf77b20452392c2cdd87fcb6430a4da` |
| 61 | `def` | [vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/vanishingideal.md) | 450 | `declaration-track:6f014bdc2d1296997c3003b1c93bcd58178f8c91bd10a91bce9aafcfffcfb016` |
| 62 | `lemma` | [le_support_iff_le_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/le-support-iff-le-vanishingideal.md) | 495 | `result-track:2eedb29ba2d2575361c175f328162912f7b752e71faa3edd0ceeb7175d03a50e` |
| 63 | `lemma` | [gc](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/gc.md) | 510 | `result-track:69ec58cc1118b7f22de58e330a9edea79b69e96cca3c4c038ef40a1044b6531c` |
| 64 | `lemma` | [vanishingIdeal_antimono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/vanishingideal-antimono.md) | 513 | `result-track:23a8010b3aef63b5fda78bd8d719e07aa6dbd058a1b17ae816d5125790304fbf` |
| 65 | `lemma` | [vanishingIdeal_support](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/vanishingideal-support.md) | 516 | `result-track:9c0118972a48bce624a13a3306891c5b40cc0ab384cfc0c0888b207290320997` |
| 66 | `lemma` | [vanishingIdeal_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/vanishingideal-bot.md) | 526 | `result-track:6199ab4ae4a90c06949f47f5c11f49d20fa955679e690527b5d4187bb7057ba4` |
| 67 | `lemma` | [vanishingIdeal_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/vanishingideal-top.md) | 528 | `result-track:e63325b19460f67d3efdfd8866aee05ce141efe33059509e40ca20c53a36f2de` |
| 68 | `lemma` | [vanishingIdeal_iSup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/vanishingideal-isup.md) | 531 | `result-track:f023cd1d0ca58dedff780a1eaa354da9fd198715f04cc510090eac8ebbdb4e45` |
| 69 | `lemma` | [vanishingIdeal_sSup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/vanishingideal-ssup.md) | 534 | `result-track:a0e92899d448dd8e5b5679f09a7015b173b44a72c82a598503b3c6a1d5c46178` |
| 70 | `lemma` | [vanishingIdeal_sup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/vanishingideal-sup.md) | 537 | `result-track:66cbcc2e42873e9d528405b067da4c1208fe025cc5442e88612bab523e9d5702` |
| 71 | `lemma` | [support_sup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support-sup.md) | 540 | `result-track:1c42d06837d81a2bf2efe00d0e580616c5c9d4e4e1b266bd8954c52badb9a121` |
| 72 | `lemma` | [support_iSup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support-isup.md) | 543 | `result-track:2e81d2b9cea231ad44b27a3fed47e5d65cea79040bdb285bed1473aa6be37762` |
| 73 | `lemma` | [support_sSup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/support-ssup.md) | 546 | `result-track:7c7289af2113d7f3e78fd95b8eb17dd6d26afa7245135a3c8446ee4a3fff0b72` |
| 74 | `lemma` | [nilradical_eq_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/nilradical-eq-bot.md) | 555 | `result-track:37422a41b59785c2958c0aff0c932b4da11848ce7e4cccd22e82f9635bfec182` |
| 75 | `lemma` | [IdealSheafData.support_eq_top_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/idealsheafdata-support-eq-top-iff.md) | 558 | `result-track:b3564aa852fd305bf520266874c6e87ee0e601a21d157999b485f91768bd3da8` |
| 76 | `def` | [Hom.ker](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-ker.md) | 574 | `declaration-track:0fa0b3b227c51bd0fbee215faba26e42ce94845f11c3974cbdddb5902ebfc686` |
| 77 | `lemma` | [Hom.ideal_ker_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-ideal-ker-le.md) | 577 | `result-track:e94e28f6d58226a9de388afedbc0f1217db8e3f60eb5724abfdcbd0363cfce21` |
| 78 | `lemma` | [Hom.ker_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-ker-apply.md) | 582 | `result-track:a355bdf10ffd5eb997008b06266ec606f8c0844a3d72fef771490d82a8c29855` |
| 79 | `lemma` | [Hom.le_ker_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-le-ker-comp.md) | 611 | `result-track:974dc1537fe7b2ec52fe07ac7f9ac3f166ca10d32d8bd0e885ac8c6755285e5f` |
| 80 | `lemma` | [ker_eq_top_of_isEmpty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ker-eq-top-of-isempty.md) | 616 | `result-track:fddeebd2af6e9b5238fca8b3755b0b1e03f940cd2bc19e398aeef9d7998ae70f` |
| 81 | `lemma` | [Hom.ker_eq_bot_of_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-ker-eq-bot-of-isiso.md) | 620 | `result-track:02018fdb02f03ef10ed6437cd4942b48eba948d6b665aecf364836ca2e1b0e95` |
| 82 | `lemma` | [Hom.ker_comp_of_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-ker-comp-of-isiso.md) | 624 | `result-track:79a3e982a8527948fee068be15465346d7adf791c09487fdcfdd937a09ca9209` |
| 83 | `lemma` | [ker_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ker-of-isaffine.md) | 627 | `result-track:def5ea7154360a66b298e244dc92984d74a55758117e56a5bcbb61b6efb8f61f` |
| 84 | `lemma` | [Hom.range_subset_ker_support](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-range-subset-ker-support.md) | 636 | `result-track:901036f50dccb2146d53b135f02190cce607b52d73a76a56912720991630b9c6` |
| 85 | `lemma` | [Hom.ker_eq_top_iff_isEmpty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-ker-eq-top-iff-isempty.md) | 648 | `result-track:63058a05bed46ccfda8a07dc414f5e047bc838a912f40c28002c7bf4186d0fa2` |
| 86 | `lemma` | [Hom.iInf_ker_openCover_map_comp_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-iinf-ker-opencover-map-comp-apply.md) | 651 | `result-track:912e0ee7187de738f54627b043aa9621b7d52b05ca09f7db522f3a4ec4234626` |
| 87 | `lemma` | [Hom.iInf_ker_openCover_map_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-iinf-ker-opencover-map-comp.md) | 670 | `result-track:1c54aa9359ce5a8e72c427b3a566cdf7d9ad3bc7ffc23d15231c3e70c1c05d48` |
| 88 | `lemma` | [Hom.iUnion_support_ker_openCover_map_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-iunion-support-ker-opencover-map-comp.md) | 677 | `result-track:e7c21020cd9fea3e680341848be2c348855b6612d83d916c25026eb45ecef85e` |
| 89 | `lemma` | [ker_morphismRestrict_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ker-morphismrestrict-ideal.md) | 693 | `result-track:adb3230720dd57ec48c251b0ac1c6082afa832ee9dcfb99b1230d6a6aeaf2a11` |
| 90 | `lemma` | [ker_ideal_of_isPullback_of_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/ker-ideal-of-ispullback-of-isopenimmersion.md) | 703 | `result-track:42055bdc512adf66ce225a2bdf3ed6303ed2f0f2c24c72d8bc902e022bed4a52` |
| 91 | `lemma` | [Hom.support_ker](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/hom-support-ker.md) | 723 | `result-track:a0e2e183392694981c3efc163d6230200822645e1f2da37ad8d003ef4249a446` |
| 92 | `def` | [kerFunctor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/IdealSheafBasic.lean/declarations/kerfunctor.md) | 765 | `declaration-track:677e44cdb90d4e296e29be980001deac86a23cf8424a34460afbd9fbfd5aba24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d86e6a1a37f3f82dc8f59e04aa2d828e9c750dd9bee3c1880cf64dcad71f1aa8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
