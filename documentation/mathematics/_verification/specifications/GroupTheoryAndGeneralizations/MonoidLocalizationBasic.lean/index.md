# Verification target: Monoid Localization Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6ad4d45fb75bf6e2fb813747fdaf3b4f3d74e39",
  "lexical_observation_count": 163,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6ad4d45fb75bf6e2fb813747fdaf3b4f3d74e39`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OreLocalization.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/localizationmap.md) | 86 | `declaration-track:4502db510e4ed14f2090611885cbabf3a158eec582d90cd8ec9b645ad8dc699b` |
| 2 | `structure` | [LocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/localizationmap-source-edition-3.md) | 109 | `declaration-track:ea95d34e1c2e2c5206bf16d7ccebeab08529cbadfe110bc9d9068ca7374a564a` |
| 3 | `def` | [r](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/r.md) | 142 | `declaration-track:1945911cf17fc1475fd127873e01334211dbaab276461ef27610e990ea7be872` |
| 4 | `def` | [r'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/r-source-edition-2.md) | 150 | `declaration-track:b0dfec458a580dd46f6c571a8a038efb11041e034f0be1c35249c510bb9b2925` |
| 5 | `theorem` | [r_eq_r'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/r-eq-r.md) | 176 | `result-track:e15d07f55d62deab2e6f0aacaca4293298d98091da3447d7bd13b6c1253269d0` |
| 6 | `theorem` | [r_iff_exists](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/r-iff-exists.md) | 188 | `result-track:81f6d0439ed71c01e27f0eaf114e92b2e296793cdd800e951786e6fadb444ca9` |
| 7 | `theorem` | [r_iff_oreEqv_r](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/r-iff-oreeqv-r.md) | 192 | `result-track:0e8f486759ef34ff79544f2c3374451bfceed66ca11c3773570bd93a728658cc` |
| 8 | `abbrev` | [Localization](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/localization.md) | 206 | `declaration-track:3aa20760055c2c7ab8987b31a322a6552d8e48c6351cc27b653afd61495c2fce` |
| 9 | `def` | [mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk.md) | 217 | `declaration-track:363d42ed292a1e1297742ee83f2bc653ff717bca0332afbf84170b1f7c6d04ca` |
| 10 | `theorem` | [mk_eq_mk_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-mk-iff.md) | 220 | `result-track:539f71373158ab7a3dbd0ef442e9eead2f28bd7de2e54f1e8cf99731da987f6e` |
| 11 | `def` | [rec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/rec.md) | 232 | `declaration-track:51244584fbb9780fc9883861017e074cf6188dee77e9718cf84a4f63408f445b` |
| 12 | `def` | [recOnSubsingleton₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/reconsubsingleton.md) | 240 | `declaration-track:fe49b37b99ea1f5cc4479ac25ea10211cee3ed2742ed65db141dd838d364bde5` |
| 13 | `theorem` | [mk_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-mul-source-edition-2.md) | 247 | `result-track:72df42cd82197981e06c8f5199fe549247c6b46505a4f9bdf2e13802c19531e3` |
| 14 | `theorem` | [mk_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-one.md) | 252 | `result-track:5d29fe8d53aff335a40eec9bad38d08d706c29626e49a5c53087acbfae412863` |
| 15 | `theorem` | [mk_pow](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-pow.md) | 255 | `result-track:6af40220efd5c3fb5e00d78bd448faa75d8dbbbd2a77eb227db75e83510cddf6` |
| 16 | `theorem` | [mk_prod](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-prod.md) | 259 | `result-track:123c31d1f49f69a936fb37fd50308b9d05c19eb8bedb87033be19924cebdfdd4` |
| 17 | `theorem` | [ndrec_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ndrec-mk.md) | 265 | `result-track:131ed9683b619888c0528d72af5959377a5b52bdc9bd770aefcec928217010b9` |
| 18 | `def` | [liftOn](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lifton.md) | 275 | `declaration-track:271cac2fb34ce552981cf82b4658a857db5f482d7084f915a21fe868ec22fcfe` |
| 19 | `theorem` | [liftOn_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lifton-mk-source-edition-3.md) | 280 | `result-track:ac99cd478c35255fae4f9cbfcf30a2a8f41d34b98aef41bdd1f731477a353b9d` |
| 20 | `theorem` | [ind](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ind.md) | 284 | `result-track:ce7d0ea1284d33d6a7a42d92f24141025f4f4ad58fd429522f298109fd3358d2` |
| 21 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/induction-on-source-edition-3.md) | 288 | `result-track:db67b59765ae322a90b47f3a8c60cc7549098668a4f0bd02ae8dd44576b8d21e` |
| 22 | `def` | [liftOn₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lifton-source-edition-2.md) | 298 | `declaration-track:d31223366b968ad56af9d07ca2443e01ca31bdf9c7c741f8f3efb1d7084d56e3` |
| 23 | `theorem` | [liftOn₂_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lifton-mk-source-edition-4.md) | 305 | `result-track:e2ab9d69e70cad398ca25f9e95dabcdd29134b249bf5b5c91525408cbdddcaef` |
| 24 | `theorem` | [induction_on₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/induction-on.md) | 309 | `result-track:b911a6d6c0e40032218d22d75f2d477bb550684eadc6862d715f7f0316220487` |
| 25 | `theorem` | [induction_on₃](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/induction-on-source-edition-2.md) | 314 | `result-track:c5d0b78520da0e22bfecd004959630c47c696f001bbed4f469b553a48734a3a6` |
| 26 | `theorem` | [one_rel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/one-rel.md) | 319 | `result-track:9c414efbd4e61826ccfaa53049cdf8a2f1d0e0d76004dbb1565155715e815533` |
| 27 | `theorem` | [r_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/r-of-eq.md) | 322 | `result-track:96fb812c2169a259e11cfc572f1206fe1ac5dba3f7eb002889a81f918a387b1a` |
| 28 | `theorem` | [mk_self](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-self.md) | 326 | `result-track:0c01089341e4e948c57ca20d93f2900c599394765bcdc0010d32d5e201c62951` |
| 29 | `lemma` | [mk_self_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-self-mk.md) | 332 | `result-track:e21eea655a3e117896af7f3ac4ce72efe72016af0b3b1d466460073c512327e0` |
| 30 | `def` | [mkHom](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mkhom.md) | 337 | `declaration-track:a52412cf66f213549929696b3a085ee3f3af403bdd28f2145c0fa63a7d5e4a20` |
| 31 | `lemma` | [mkHom_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mkhom-surjective.md) | 343 | `result-track:4321e02be1f8d56ab25d7dadebe9ef830f2e2dac84cd6964aba206177b5f73b8` |
| 32 | `theorem` | [smul_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/smul-mk.md) | 349 | `result-track:b9a847beb488ce8b1804ced76d3e32bdb753a64d5ba4406c76455c559268a737` |
| 33 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/instance.md) | 356 | `declaration-track:8a80bc43e753e5215029aceb02a84f9762f0cab32b02a372a9093dc945292255` |
| 34 | `def` | [toLocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/tolocalizationmap.md) | 374 | `declaration-track:25cf84325e01bee6e393880e6658deec81637468711763e2925b3d999f638b36` |
| 35 | `abbrev` | [toMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/tomap.md) | 390 | `declaration-track:d47dad54e90902fbeaa3b035feecb21bcd6a48f66d30e0e577f72c814e26fe49` |
| 36 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ext.md) | 393 | `result-track:455850f69e3230ee027090d70613010e36b336e29f1724a8825ba4b89913c640` |
| 37 | `theorem` | [toMap_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/tomap-injective.md) | 400 | `result-track:8ac6aa745aee3c49b16d7d465dd76993add1fffb9e0f1991944ff7028ff31af8` |
| 38 | `theorem` | [map_units](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-units.md) | 404 | `result-track:2e1b0d99b0447d749598025cdff1caaa6a35769edab94ecf1cec215d2999c9c9` |
| 39 | `theorem` | [surj](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/surj-source-edition-2.md) | 408 | `result-track:c586e114ea1e6ecb4c3a17b039fa35e38dcb9976a3836fe862712a1955966df8` |
| 40 | `theorem` | [surj₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/surj.md) | 416 | `result-track:318180042e9e2a45937e73f8e93b33e21a6f2cc0e0119de08db461feafc8898e` |
| 41 | `theorem` | [eq_iff_exists](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/eq-iff-exists.md) | 427 | `result-track:ac797052dd75c4922076e3f3461e5be6171d803f66c05b90ae0772088a1d5365` |
| 42 | `def` | [sec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/sec.md) | 439 | `declaration-track:9ca6735a0726c31b19a8506d2b47bba647914b75bb0e22b34e92689c808d2f66` |
| 43 | `theorem` | [sec_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/sec-spec.md) | 442 | `result-track:0a48b9824e1610f9de66bbf83af4e5233d22baf70fda954c5e337156996a7a74` |
| 44 | `theorem` | [sec_spec'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/sec-spec-source-edition-2.md) | 446 | `result-track:e3c53eb6bc6f4c48bca57fce3f5ea1e921f64bea6ccc229c2adba3b8d88b666f` |
| 45 | `theorem` | [mul_inv_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mul-inv-left.md) | 454 | `result-track:5ffa12e23ec82c11308efc42564ad2c198ab5652c208e82e0179a47c0e56da55` |
| 46 | `theorem` | [mul_inv_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mul-inv-right.md) | 464 | `result-track:ef7d8b473951b69e79a3ee56395206037030993918a206918e5837c1dc46e599` |
| 47 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mul-inv.md) | 475 | `result-track:601e194194f9edc148326220115b9a0b5e1ba19c718ce014e816b6d0e0142bbf` |
| 48 | `theorem` | [inv_inj](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/inv-inj.md) | 487 | `result-track:b80dd0321b68e23d4a05e054078c3e04b08b298d943d976753443df9925a8107` |
| 49 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/inv-unique.md) | 498 | `result-track:c50d8957dd82b081fed868254c4e6cdc075879791fed426183860eff74ebc7ef` |
| 50 | `theorem` | [map_right_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-right-cancel.md) | 506 | `result-track:c995b70c746d4b4c04668a5deff6a9ddd01d1e7b4fbd5a6975d2cc29fe2b365e` |
| 51 | `theorem` | [map_left_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-left-cancel.md) | 514 | `result-track:d79298c9f6485f89e520c2f8f42f20442b3184425f1c04263a8fb29cf2042518` |
| 52 | `def` | [mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-source-edition-2.md) | 523 | `declaration-track:64415bbb8ca7b1456e17aa952b01c6f8ee8c1d1777986963bee8cc5f239e55fd` |
| 53 | `theorem` | [mk'_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-mul.md) | 527 | `result-track:715d5fd3dd27e13223ae82f3e867c914278962d3cad5583cbf0d09330c341771` |
| 54 | `theorem` | [mk'_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-one-source-edition-2.md) | 536 | `result-track:c1614432b905ee071d61740ccb2a29af718f8a3156be5167263b6bcc8455254b` |
| 55 | `theorem` | [mk'_sec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-sec.md) | 545 | `result-track:9b669cd55817fe87de15c063c45a30581a756bf7289c179db59620d5bd20f1c9` |
| 56 | `theorem` | [mk'_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-surjective.md) | 549 | `result-track:8762c227c5b0e2a91c9f722d54ae75a02af95ec49f9072e2ec0aca6348f44131` |
| 57 | `theorem` | [mk'_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-spec.md) | 553 | `result-track:775b2f45b6539d4feea902ea37145b5d21786a5c9ce0968f36c483379224e975` |
| 58 | `theorem` | [mk'_spec'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-spec-source-edition-2.md) | 557 | `result-track:b7d91ca333af1c548ae921f50be260272adbdd235a48dd436e858bb2933ee98c` |
| 59 | `theorem` | [eq_mk'_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/eq-mk-iff-mul-eq.md) | 560 | `result-track:a1263676774ce889b59a99c5f4005bbfd8b7f3d046fff36727529636c7238017` |
| 60 | `theorem` | [mk'_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-iff-eq-mul.md) | 564 | `result-track:47584d30030e0199a7452707ae9b3b48cefd5aea9bfdab23de061ed5a981a746` |
| 61 | `theorem` | [mk'_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-iff-eq.md) | 568 | `result-track:60536e540d150926d2c110f715ab6615150abaf7631f76a72fdb169dcce18eb5` |
| 62 | `theorem` | [mk'_eq_iff_eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-iff-eq-source-edition-2.md) | 579 | `result-track:85b97d286f85f1d9334f58162c67c3cecbf1c482dd87412d55d119a4ad9f54ce` |
| 63 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/eq.md) | 584 | `result-track:7b9b04ce06330161d994a97d739e42c28e85a342568ac252e77852c93d6b131b` |
| 64 | `theorem` | [eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/eq-source-edition-2.md) | 589 | `result-track:ceaef71df14b9685343ba2df03830ce6d345130976525836df0157821efcfb4a` |
| 65 | `theorem` | [eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/eq-iff-eq.md) | 594 | `result-track:e70a67fa7108cd0ab825d54d2eacacc0d1a4a7b7e61e79c4fdefc217d241651f` |
| 66 | `theorem` | [mk'_eq_iff_mk'_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-iff-mk-eq.md) | 598 | `result-track:57279b9579a7949598235ef6d4c3e073bb5c34644a69329bafd5e65fa733ab2a` |
| 67 | `theorem` | [exists_of_sec_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/exists-of-sec-mk.md) | 609 | `result-track:9a5fa6c5b76f5b5459968b0161ae0fe47f5546ba9f753f97be81d22797f91ad9` |
| 68 | `theorem` | [mk'_eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-of-eq.md) | 614 | `result-track:d7d26135a8aa8932b991db2705611fb9f0d14c891fc1ee721b29c7e57c2bad29` |
| 69 | `theorem` | [mk'_eq_of_eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-of-eq-source-edition-2.md) | 619 | `result-track:e09d9412a338cad816b467e394e60abb3a39666fb4674c0be3b799c4611bddc4` |
| 70 | `theorem` | [mk'_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-cancel.md) | 624 | `result-track:e9c53989f01156255b7646fa508be730c453d16a27a2330f392aa02e78933b54` |
| 71 | `theorem` | [mk'_eq_of_same](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-of-same.md) | 629 | `result-track:35a924b8298e99de5318df3b7c7a2698ef358bd3f14677b194c0ef4e07672175` |
| 72 | `theorem` | [mk'_self'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-self-source-edition-3.md) | 635 | `result-track:bb2d89045ec110e6a7da179608592ae580dd6b3b4ab61a7d1cb93c9f766351ce` |
| 73 | `theorem` | [mk'_self](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-self-source-edition-2.md) | 639 | `result-track:8829886a4e0a58ed9b46c37c558741e2ce6b58211d69f5b7b03dfc904a6799cf` |
| 74 | `theorem` | [mul_mk'_eq_mk'_of_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mul-mk-eq-mk-of-mul.md) | 642 | `result-track:525d52ec02b87232662a8390683a8124b7fd9ce78d8df66aa8330ec973fa1ea5` |
| 75 | `theorem` | [mk'_mul_eq_mk'_of_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-mul-eq-mk-of-mul.md) | 646 | `result-track:a3c6ae732acab161bf3fc8b6e23191dd9237a4d5aa2f0302bf8ad53e31bd382d` |
| 76 | `theorem` | [mul_mk'_one_eq_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mul-mk-one-eq-mk.md) | 650 | `result-track:44ef79e2f0006c2646563434cc074ea3b7f7b563d583dc109b70fef6f3e9ba26` |
| 77 | `theorem` | [mk'_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-mul-cancel-right.md) | 654 | `result-track:73856fed365b9cf924d060f529f27da519d76378fbad35a1124f0c8ac2dcbc70` |
| 78 | `theorem` | [mk'_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-mul-cancel-left.md) | 658 | `result-track:ac0e1c0c75c185c5ff18d544be6141e5e53e3da475d5422e99409909f659a942` |
| 79 | `theorem` | [isUnit_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/isunit-comp.md) | 662 | `result-track:8c045466f62c0f0f797c4fb83cc9c793538c39cac0498d1ba2c7b1a4f40dda1f` |
| 80 | `theorem` | [eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/eq-of-eq.md) | 674 | `result-track:157778c412f7859b4fae59e4ebdff4329271917c2ba86a7d91573112d90f720c` |
| 81 | `theorem` | [comp_eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/comp-eq-of-eq.md) | 687 | `result-track:cc08f3e096fb639cddd655695b9d2672ecd3208e9b90ed57fac1d91a0dfd8dd8` |
| 82 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift.md) | 702 | `declaration-track:1ee7baae117abc9e40ae66cac1520c36a6dba0797556b247f9edac903f03d339` |
| 83 | `lemma` | [lift_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-apply.md) | 712 | `result-track:7426af91617f939fe89271cef0a2aeb086e76a7b8626f8286deb6d0de7034349` |
| 84 | `theorem` | [lift_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-mk.md) | 723 | `result-track:04ce0cd97d70d5585d57fd3505c35117c64558efb15e428319c7037d336f37ae` |
| 85 | `theorem` | [lift_localizationMap_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-localizationmap-mk.md) | 735 | `result-track:802ebe0baeb8cbd48a7148485b164742aafc3ce14c5aa7822a29d5ec0246198d` |
| 86 | `theorem` | [lift_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-spec.md) | 747 | `result-track:499559c31ac49b737331ff5c281c0d5a23124baf4690b7d4ef61cdb9ac424ff6` |
| 87 | `theorem` | [lift_spec_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-spec-mul.md) | 759 | `result-track:85376f31436072d3fddcb356b929685cc460f766862ae39c05bc87c0d97b2665` |
| 88 | `theorem` | [lift_mk'_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-mk-spec.md) | 763 | `result-track:1d5c3b4c370bb71b82178ea240c19cae73bfe7bc2e8e8a743f9c3e25602dc4f9` |
| 89 | `theorem` | [lift_mul_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-mul-right.md) | 773 | `result-track:1fa9fd258df692e39a30e0ef5d80fc2fa9c6da55dfc63243fbedbc96518f0df5` |
| 90 | `theorem` | [lift_mul_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-mul-left.md) | 783 | `result-track:f2f5d0842e6406a4826a792e7e3af6e43081c2223d7e991f406621cb8add905c` |
| 91 | `theorem` | [lift_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-eq.md) | 787 | `result-track:4df98f00e89ade349e211a433d4ae493a8a6ae404fbecafbedf528008f1f4189` |
| 92 | `theorem` | [lift_eq_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-eq-iff.md) | 791 | `result-track:eed2fc33b811c8b503873ea37115fdf68dc423fcf4227d9d89537fc271e303f4` |
| 93 | `theorem` | [lift_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-comp.md) | 796 | `result-track:cbc2709a3e94da87d66cc5190efc6338e5eb45455ca76c7941c070eb76bb11a8` |
| 94 | `theorem` | [lift_of_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-of-comp.md) | 799 | `result-track:e0d799f6b8693318c96baabd323b6dcdd8ef20b46f81c3408371dfa5604e7eac` |
| 95 | `theorem` | [epic_of_localizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/epic-of-localizationmap.md) | 804 | `result-track:41b91ed188d130b03a608cb4690d3bcd8a4f4009b8717d982dc90186d42c6b54` |
| 96 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-unique.md) | 810 | `result-track:bb7746f065afb72d32203900e54717d19255ee47ff0b67ccf0a6d13c0552d525` |
| 97 | `theorem` | [lift_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-id.md) | 817 | `result-track:c00afaca0fff85369317e714dbb0a173d06387483d8d9f89929fbf6ab6bb3cb4` |
| 98 | `theorem` | [lift_comp_lift](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-comp-lift.md) | 829 | `result-track:067dbb4f972040dccf3746048965c106af61a0e25578e48bceaa60afdbde4594` |
| 99 | `theorem` | [lift_comp_lift_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-comp-lift-eq.md) | 838 | `result-track:98df6b1341e46847853c196413ab73a4de91390692adb35f4027c030f1b550ea` |
| 100 | `theorem` | [lift_left_inverse](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-left-inverse.md) | 848 | `result-track:aab9d799b75767dc8e5bb279fd096de2a001f65a921e6187a26043701c9b415a` |
| 101 | `theorem` | [lift_surjective_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-surjective-iff.md) | 853 | `result-track:68b3d28553eb7a18e0893818a55e18d7e108cd04ade47e91268f3ba0fc9d2dbd` |
| 102 | `theorem` | [lift_injective_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lift-injective-iff.md) | 868 | `result-track:fe1796eac1b635335038ef4960da60bdacbfa768757ab65bfbbb972bcb497332` |
| 103 | `def` | [map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map.md) | 897 | `declaration-track:3a2b9fac55300afdade14062fe80f7d844c6a509d3a9f5a5245b6a02078f4aea` |
| 104 | `theorem` | [map_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-eq.md) | 903 | `result-track:a92fd2e69c79b1779e3cdb38c9d903e1aef24677038152ef82f092f2087a6e55` |
| 105 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-comp.md) | 907 | `result-track:4113966be6e9d87979e667119b42facd6053b4d7bfb3093b421ef12390a49956` |
| 106 | `theorem` | [map_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-mk.md) | 911 | `result-track:2ce832d3b7954452c3d44b81b15d3b35f0d5fabdbf649cd59f993fd2a5a6a2f9` |
| 107 | `theorem` | [map_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-spec.md) | 926 | `result-track:dbad9d49927d6bec7611949bc171d3894bcaf6c939855cacf2f09c3958a1b9ea` |
| 108 | `theorem` | [map_mul_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-mul-right.md) | 938 | `result-track:0e28cdda6b460c658f1da2149fc7f111397d6bbb3f7598de982c3e2336e8a67b` |
| 109 | `theorem` | [map_mul_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-mul-left.md) | 950 | `result-track:91879f52a3ad411fa81869821f43212bc57b0ef4c8ac658c1417269cc3adbd65` |
| 110 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-id.md) | 954 | `result-track:46aa8c02aa8bccadbd6d2a902c6ce3811659faccbe7ad465636a053beeaa0a1f` |
| 111 | `theorem` | [map_comp_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-comp-map.md) | 962 | `result-track:35b79d95bf5df1e536630f6cd59673754fc97be13d876bcb08e2859867ed7c64` |
| 112 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-map.md) | 980 | `result-track:6314f1aabf19bd278b9fd1eb45888a05070d5b008f6c83b3b2c0f9b22e424142` |
| 113 | `theorem` | [map_injective_of_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-injective-of-injective.md) | 994 | `result-track:9378d218776f7fc12125dfc8ec2d9913c2ed414ab0df2d15101dfe75e51286bd` |
| 114 | `theorem` | [map_surjective_of_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/map-surjective-of-surjective.md) | 1013 | `result-track:52e8b5a7db96f548884446fb625fca62c68d12fcd44df5b263fbdfb19ca49a66` |
| 115 | `def` | [mulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivoflocalizations.md) | 1036 | `declaration-track:f798515b6c4d6f95a74957767d2208fb559015424ac71c1e14af0791909a52f9` |
| 116 | `theorem` | [mulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivoflocalizations-apply.md) | 1044 | `result-track:07146c04b0a73d7f69b24c391f8694b43a2a6baf5a94500dd043c3cb625574af` |
| 117 | `theorem` | [mulEquivOfLocalizations_symm_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivoflocalizations-symm-apply.md) | 1048 | `result-track:25755718d99c1694f2634203a465c2485d66236c3e9e1b257bdaa008c48f0f29` |
| 118 | `theorem` | [mulEquivOfLocalizations_symm_eq_mulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivoflocalizations-symm-eq-mulequivoflocalizations.md) | 1052 | `result-track:77ed9474d5485ba9a9b662e80706d0edd3cf0f5c64e94ab8b38efbc8aa82c344` |
| 119 | `def` | [ofMulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivoflocalizations.md) | 1060 | `declaration-track:5118aecc423df10ef68f67540665e2f983f1e7e4a6171c414ba7557f565c6cb8` |
| 120 | `theorem` | [ofMulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivoflocalizations-apply.md) | 1069 | `result-track:b543fc97ea6ae2bdfe2c2a3eb192905c98f46af8df8192b4f662c60851b72174` |
| 121 | `theorem` | [ofMulEquivOfLocalizations_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivoflocalizations-eq.md) | 1073 | `result-track:8165bae65f2b96f29201f1edf126c98ebd4783d5cb3e8741381894bd69c287c5` |
| 122 | `theorem` | [symm_comp_ofMulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/symm-comp-ofmulequivoflocalizations-apply.md) | 1077 | `result-track:4ac461ce44cd55dc5ec169eb3ed99d635d41258127dbfa6d8152599f565be647` |
| 123 | `theorem` | [symm_comp_ofMulEquivOfLocalizations_apply'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/symm-comp-ofmulequivoflocalizations-apply-source-edition-2.md) | 1081 | `result-track:9672169670771b5360c126f5ef0f2834de0970cd0f16cb56dee5aa0c85a1dba7` |
| 124 | `theorem` | [ofMulEquivOfLocalizations_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivoflocalizations-eq-iff-eq.md) | 1085 | `result-track:17f82f9361463acfe71d7bc4ec21b5c0daa08098a4f040daa203ec2a9d3be400` |
| 125 | `theorem` | [mulEquivOfLocalizations_right_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivoflocalizations-right-inv.md) | 1090 | `result-track:4285bd206feea564648487cb4638e2c8de2047aa31505b0513848b32afcd69f9` |
| 126 | `theorem` | [mulEquivOfLocalizations_right_inv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivoflocalizations-right-inv-apply.md) | 1095 | `result-track:1619415da7443d28cb41a13de4442710857f135a4c7572ddabf25978c0c531ee` |
| 127 | `theorem` | [mulEquivOfLocalizations_left_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivoflocalizations-left-inv.md) | 1099 | `result-track:01e11a903804c95fe8324ac56b52c0a7d6ae7dace31fffae88a9a6b1f71d79b2` |
| 128 | `theorem` | [mulEquivOfLocalizations_left_inv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivoflocalizations-left-inv-apply.md) | 1104 | `result-track:c46a292fe72832c1d63f76ea0cd386a9a403a1921576dcbea97062cc87440c78` |
| 129 | `theorem` | [ofMulEquivOfLocalizations_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivoflocalizations-id.md) | 1108 | `result-track:799569b2b69a0578957beb4b7924d8317ed9c89ad6b248e7da1dd319ae9dbeba` |
| 130 | `theorem` | [ofMulEquivOfLocalizations_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivoflocalizations-comp.md) | 1112 | `result-track:84858b5c71902459e96132602f58c44850c7c4e04d29eebe1473e22ee694a6bd` |
| 131 | `def` | [ofMulEquivOfDom](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivofdom.md) | 1124 | `declaration-track:0104f70fd25bb8fa03c0e9cc0e3ecc79a07ef1bfae5e0854eadce9f0f69fa372` |
| 132 | `theorem` | [ofMulEquivOfDom_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivofdom-apply.md) | 1146 | `result-track:fbcfc2375e23c3de14cef02c86dc8989e24ecd39f1d7de277bb79cd76008aeff` |
| 133 | `theorem` | [ofMulEquivOfDom_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivofdom-eq.md) | 1150 | `result-track:7ae04487c2fb106fd3f73f9482f98443be26a6770faa35e0558e1737fba64a5f` |
| 134 | `theorem` | [ofMulEquivOfDom_comp_symm](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivofdom-comp-symm.md) | 1154 | `result-track:0acd439ee15aaa30798e7359b982187abfcdc4ee18f9b9fe650e33ff65901c33` |
| 135 | `theorem` | [ofMulEquivOfDom_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivofdom-comp.md) | 1159 | `result-track:441388e6ab5db35d904b7a415fad4b22e08a06e07872ad8415601aeb6ec584a5` |
| 136 | `theorem` | [ofMulEquivOfDom_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/ofmulequivofdom-id.md) | 1164 | `result-track:b045224bb76b83806bdbe4fbda0f8d0b373becaf54c2fe6dba55869edef69c99` |
| 137 | `def` | [mulEquivOfMulEquiv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofmulequiv.md) | 1175 | `declaration-track:d65a253d21eaab47fee5f74cdf69de9b98529000fc861e71a44d12664f9a164c` |
| 138 | `theorem` | [mulEquivOfMulEquiv_eq_map_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofmulequiv-eq-map-apply.md) | 1180 | `result-track:2d36404016b673d079515ba875498e64bf907ab6f4c715bbb6763000ad94b9f4` |
| 139 | `theorem` | [mulEquivOfMulEquiv_eq_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofmulequiv-eq-map.md) | 1186 | `result-track:bada7bd6c48e05e1c0138aee8325aee9d06f5b6e08364f0a5d05b889cb785913` |
| 140 | `theorem` | [mulEquivOfMulEquiv_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofmulequiv-eq.md) | 1192 | `result-track:350e8d64fe4235070ebee3e9d271a4cbfa4ebc8e10ca2080af20d595df8391f6` |
| 141 | `theorem` | [mulEquivOfMulEquiv_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofmulequiv-mk.md) | 1198 | `result-track:481a9945750fa85b65e47432693ae9b9f9c60e47fb5dd7f57ec57995cce4a30e` |
| 142 | `theorem` | [of_mulEquivOfMulEquiv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/of-mulequivofmulequiv-apply.md) | 1204 | `result-track:753b5138c3ec23d933432c10e83c67091fb0c5cade6fba25cb7c7ad935ace766` |
| 143 | `theorem` | [of_mulEquivOfMulEquiv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/of-mulequivofmulequiv.md) | 1210 | `result-track:4915c3d663031feadacdf14d7a2b1132ee68e5968274d47268eda44bc685355a` |
| 144 | `def` | [monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/monoidof.md) | 1226 | `declaration-track:fa9d00a3fd3a7cd7283e0108e40a03886d3709e35699820eed0bf41d775ba6e7` |
| 145 | `theorem` | [mk_one_eq_monoidOf_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-one-eq-monoidof-mk.md) | 1242 | `result-track:83738cbf44ff1a724283bbb1c5793265d7dbce1f9f8d5f5beb6d20681d31fd7a` |
| 146 | `theorem` | [mk_eq_monoidOf_mk'_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-monoidof-mk-apply.md) | 1245 | `result-track:508c1988495479c016109f695a9fe11e6fa061783c01f45900947cdc26d656db` |
| 147 | `theorem` | [mk_eq_monoidOf_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-monoidof-mk.md) | 1253 | `result-track:30378a2c86eba24089e18d15e78a9008d0693a7e71cf169e4dcb14e38463f4b0` |
| 148 | `theorem` | [liftOn_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lifton-mk.md) | 1259 | `result-track:56d1a01d8b30115be0fe47212702f8a49040594235de09eb78945584eb70b294` |
| 149 | `theorem` | [liftOn₂_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/lifton-mk-source-edition-2.md) | 1263 | `result-track:7961ae9cf567f009bc0032f9bca653e6e8f37a4e206a340eda7f6996f64769e5` |
| 150 | `def` | [mulEquivOfQuotient](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofquotient.md) | 1274 | `declaration-track:de7005e11c2af14b576744096fbe54f5c9e8223b6f5fa797c059fe6f20563d48` |
| 151 | `theorem` | [mulEquivOfQuotient_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofquotient-apply.md) | 1280 | `result-track:aa30d76b20eafa4104e02d41704cebfcf4019e9c53842719503c85dafc692199` |
| 152 | `theorem` | [mulEquivOfQuotient_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofquotient-mk-source-edition-2.md) | 1284 | `result-track:b4be28fa3f85abdcf9f88f0657a439577cd61d667afda219bfd90557153ee6e8` |
| 153 | `theorem` | [mulEquivOfQuotient_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofquotient-mk.md) | 1288 | `result-track:9fbc4e65dcc8c9373110072a3aafd7d6f45dbba3c6938fdba819810c1bfc3218` |
| 154 | `theorem` | [mulEquivOfQuotient_monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofquotient-monoidof.md) | 1292 | `result-track:37850e8da360cc76fed87df316fb69765b09a5bf1a643c84fe68207d8f5f8b93` |
| 155 | `theorem` | [mulEquivOfQuotient_symm_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofquotient-symm-mk-source-edition-2.md) | 1296 | `result-track:aa8adfb31b1e239c383ae37239340ee0227fa03cc7aa08f8f91a5ac1670f9a7c` |
| 156 | `theorem` | [mulEquivOfQuotient_symm_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofquotient-symm-mk.md) | 1301 | `result-track:6de3d46f16351dc2fda5567eeaf872bcb99a72a5ebeb4113f27ecbd2c600b6fc` |
| 157 | `theorem` | [mulEquivOfQuotient_symm_monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mulequivofquotient-symm-monoidof.md) | 1305 | `result-track:2587c73a7503042cbd3a89d3166204b2e7573871660c544ba4e37a9190795a47` |
| 158 | `instance` | [instIsMulTorsionFree](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/instismultorsionfree.md) | 1311 | `declaration-track:99af8ebcb3f4bd676fa5c81d0940d4c0df9504260eb6809f6dde7211d941e81d` |
| 159 | `theorem` | [mk_left_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-left-injective.md) | 1332 | `result-track:2eaac960c23d6c178bab2db6330d3a3daf04cc1b7850039fad6b4f00eb3af914` |
| 160 | `theorem` | [mk_eq_mk_iff'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/mk-eq-mk-iff-source-edition-2.md) | 1336 | `result-track:ac6c1054678c3f5a11a8cd6093e67f8ff1f912c265c63edd1ac66df766eef93c` |
| 161 | `instance` | [decidableEq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/decidableeq.md) | 1340 | `declaration-track:1ff8153d6ac65e89b09b5e46bf6d823401c189a670e5f204f1affa022e29cfd0` |
| 162 | `def` | [localizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/localizationmap-source-edition-2.md) | 1350 | `declaration-track:85495578830a794e42bf7584663e177a0fb6116eba7e643326433d6623ace776` |
| 163 | `def` | [equivMonoidLocalization](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasic.lean/declarations/equivmonoidlocalization.md) | 1353 | `declaration-track:9f4829c702afbe224022f957a3964263a1289e990c87c3a292c339e2719bff3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e3b94e10419a6b4a09f0d9f4dc4cecc5009c26553092ac045793fc61ce26224 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
