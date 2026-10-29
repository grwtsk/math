# Verification target: Normed Tendsto Nat Cast At Top Cobounded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3ce8658b810edf0d3b6f24e69a5b71a1e4ab488",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3ce8658b810edf0d3b6f24e69a5b71a1e4ab488`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Power` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Bounds` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.ModEq` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_natCast_atTop_cobounded](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-natcast-attop-cobounded.md) | 33 | `result-track:52718d0ff958fd2e46508f1566c1b6f4f4a76665f70f666ff207c155454dcbe2` |
| 2 | `theorem` | [tendsto_intCast_atBot_sup_atTop_cobounded](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-intcast-atbot-sup-attop-cobounded.md) | 40 | `result-track:83bfd5059ba80b2c9b8dba056af5b7f3226be008d44c0ae0c77238f24515f228` |
| 3 | `theorem` | [tendsto_intCast_atBot_cobounded](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-intcast-atbot-cobounded.md) | 48 | `result-track:9714369cd6c8f2c93146c479ae96d933164c7b98db4e97a1d98e00971674150a` |
| 4 | `theorem` | [tendsto_intCast_atTop_cobounded](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-intcast-attop-cobounded.md) | 53 | `result-track:9161954b5ca79ba8ac2009845ea90bde2abdda62cc9422f19f3a5e8d04a1bdb8` |
| 5 | `theorem` | [isLittleO_pow_pow_of_lt_left](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/islittleo-pow-pow-of-lt-left.md) | 60 | `result-track:0d71ba8870e38e2639d386eb7029cdaf200a40e6a36bd0a0a1d72d0dea0cacd4` |
| 6 | `theorem` | [isBigO_pow_pow_of_le_left](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/isbigo-pow-pow-of-le-left.md) | 67 | `result-track:028aa0522c6d53aca09e984cdf356b42fe8c6f46130fd13cfd703b3659c9bc47` |
| 7 | `theorem` | [isLittleO_pow_pow_of_abs_lt_left](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/islittleo-pow-pow-of-abs-lt-left.md) | 71 | `result-track:1cf5eeaab9f9132caa208e382328364c445926a1163339f2887f76559156c864` |
| 8 | `theorem` | [TFAE_exists_lt_isLittleO_pow](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tfae-exists-lt-islittleo-pow.md) | 91 | `result-track:a65a567ed66466d067572f580a670fad70830e481054e76e27d9d44cd2aa1af7` |
| 9 | `theorem` | [isLittleO_pow_const_const_pow_of_one_lt](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/islittleo-pow-const-const-pow-of-one-lt.md) | 141 | `result-track:236ea498c133b500b3af0df5b15b238fbb7c965b7e4753a92b062a3c9fe480d1` |
| 10 | `theorem` | [isLittleO_coe_const_pow_of_one_lt](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/islittleo-coe-const-pow-of-one-lt.md) | 159 | `result-track:e2d8ba025ba9f63b7056dda4f6b691852a62c216157c69ec80fab1ccf9d74b69` |
| 11 | `theorem` | [isLittleO_pow_const_mul_const_pow_const_pow_of_norm_lt](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/islittleo-pow-const-mul-const-pow-const-pow-of-norm-lt.md) | 164 | `result-track:dc3a3d9fa7752ae49b3c9e3891d7eb151d8e6d6c2f124ff49d972fd41ca14bbd` |
| 12 | `theorem` | [tendsto_pow_const_div_const_pow_of_one_lt](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-pow-const-div-const-pow-of-one-lt.md) | 177 | `result-track:86d60f92666bd9a1b52be8159e02e9e2d9c64d177786286da14c77597f6b3562` |
| 13 | `theorem` | [tendsto_pow_const_mul_const_pow_of_abs_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-pow-const-mul-const-pow-of-abs-lt-one.md) | 182 | `result-track:b63709eab504954fc19ccd4266df8dcf56b78791267a845c3cde0bb939572725` |
| 14 | `lemma` | [tendsto_const_div_pow](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-const-div-pow.md) | 192 | `result-track:70d532b997f953629547ad5e74668c65a5cb05e7d62f74bab77b1141129783b3` |
| 15 | `theorem` | [tendsto_pow_const_mul_const_pow_of_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-pow-const-mul-const-pow-of-lt-one.md) | 200 | `result-track:c4b38f8a4ec4a54736dd0f0f0824cdcf4473447cb0c6994b46d375b28208f230` |
| 16 | `theorem` | [tendsto_self_mul_const_pow_of_abs_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-self-mul-const-pow-of-abs-lt-one.md) | 205 | `result-track:ea32e94649963d4c66d8757eee6a886a91c523c0e4cedf2d7774f87b3dd3be81` |
| 17 | `theorem` | [tendsto_self_mul_const_pow_of_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-self-mul-const-pow-of-lt-one.md) | 211 | `result-track:108c7f2a47e84cb2f76278c311fcea595ba9530fa6ffe4865bf100d11221e3c8` |
| 18 | `theorem` | [tendsto_pow_atTop_nhds_zero_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-pow-attop-nhds-zero-of-norm-lt-one.md) | 216 | `result-track:ff9ced959e479194a707fcc66f7e46927c97a402df7addd19a760f7aee3f46e9` |
| 19 | `theorem` | [tendsto_pow_atTop_nhds_zero_of_abs_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-pow-attop-nhds-zero-of-abs-lt-one.md) | 222 | `result-track:d9c53400dd78b9dcb8868cd767555c2006f249992bddaefa7f65d1b3e60c8610` |
| 20 | `lemma` | [tendsto_pow_atTop_nhds_zero_iff_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-pow-attop-nhds-zero-iff-norm-lt-one.md) | 226 | `result-track:6ac0912f7a8ad4bd613222573dd53d92ba5a76a0b5c306ae87baf48b05d0e1a6` |
| 21 | `class` | [HasSummableGeomSeries](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/hassummablegeomseries.md) | 243 | `declaration-track:06018d6aebdbda437ddf37d986228cbdf307a2904e25bc8e62987d5d03db16e3` |
| 22 | `lemma` | [summable_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-geometric-of-norm-lt-one.md) | 246 | `result-track:412d149a11ab86b038f376e6e30cd71620fa4958d783f6886f7344d0a19b25d1` |
| 23 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/instance.md) | 250 | `declaration-track:1984bdc6c442836d252804fb377b1171e6e073664647158a30eb42a825356bba` |
| 24 | `theorem` | [tsum_geometric_le_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tsum-geometric-le-of-norm-lt-one.md) | 264 | `result-track:15dbb7ffb979726bf2d66b73830a1ba335c475fa5ca81bc7979ceda25affb2e8` |
| 25 | `theorem` | [geom_series_mul_neg](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/geom-series-mul-neg.md) | 283 | `result-track:d2a5989a3ef1abcddc05b37093bf3d2cb58778e80419b6fc0f46a8f39ef6b59e` |
| 26 | `theorem` | [mul_neg_geom_series](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/mul-neg-geom-series.md) | 291 | `result-track:41990bb6c070a2e01324ab90b1d39583e939b292296cc83868034a51f6820523` |
| 27 | `theorem` | [geom_series_succ](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/geom-series-succ.md) | 299 | `result-track:383c9d2a29c8100c00a8784d5ab737ecb17fc8704b1f4df2c370611a1eda8a1f` |
| 28 | `theorem` | [geom_series_mul_shift](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/geom-series-mul-shift.md) | 303 | `result-track:362dd09c76b7eaf7bf84b921a92eaf7da986c5eb8db81dda9964ad94f3312372` |
| 29 | `theorem` | [geom_series_mul_one_add](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/geom-series-mul-one-add.md) | 307 | `result-track:27e2d506a87a2095c3f6f881915686582ca04b6a86065511192080ba5e8b94ae` |
| 30 | `def` | [Units.oneSub](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/units-onesub.md) | 314 | `declaration-track:3b800b7966c8e7b64a3faea697f8f352b1bb8c70b568d45143ea6fe45d6ccb8d` |
| 31 | `theorem` | [geom_series_eq_inverse](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/geom-series-eq-inverse.md) | 320 | `result-track:7651a6360fe92b9fa0f1409da11f34f512d4ccb67691b3542805e8d9f4c9f93f` |
| 32 | `theorem` | [hasSum_geom_series_inverse](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/hassum-geom-series-inverse.md) | 326 | `result-track:d5786e5a7cb5852600f9d50926287acac463d8e8eb014a9ec9f112f42aaf48d3` |
| 33 | `lemma` | [isUnit_one_sub_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/isunit-one-sub-of-norm-lt-one.md) | 331 | `result-track:f70fef74f9b6574ff55ba6a521c7e9164a67fd501d3a7aff91111a466d7afcb7` |
| 34 | `theorem` | [hasSum_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/hassum-geometric-of-norm-lt-one.md) | 340 | `result-track:e2f8ad187229c1a8fd3011b2b97f5c110cecc7667da04bbff3bef9032f344c60` |
| 35 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/instance-source-edition-2.md) | 350 | `declaration-track:461d338b43feb558d493b8952295fe042857c0fae4e1ecb389cd5c31a13f3bd6` |
| 36 | `theorem` | [tsum_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tsum-geometric-of-norm-lt-one.md) | 353 | `result-track:e510ac633a7a4e02115db67d53c4dba93d873962da58e6ca2fa3169ac8206a88` |
| 37 | `theorem` | [hasSum_geometric_of_abs_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/hassum-geometric-of-abs-lt-one.md) | 356 | `result-track:4e711319ed0f4aee952dea71329c72e7f991d33ab941875eaf9d2bd006a11bc4` |
| 38 | `theorem` | [summable_geometric_of_abs_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-geometric-of-abs-lt-one.md) | 360 | `result-track:c10513a05f3088ef4b227c6e2c4cfa4b7c3f65d5c84db805442d6b8ab80b5eee` |
| 39 | `theorem` | [tsum_geometric_of_abs_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tsum-geometric-of-abs-lt-one.md) | 363 | `result-track:28be5a2cbe38065186ad37b6d7b12eb68465eff625b9ac69d4dca86ef403a65e` |
| 40 | `theorem` | [summable_geometric_iff_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-geometric-iff-norm-lt-one.md) | 369 | `result-track:2a282fe54816df2403b946e4d3714d533723294057b693b1187f8da429096272` |
| 41 | `theorem` | [summable_norm_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-norm-mul-geometric-of-norm-lt-one.md) | 383 | `result-track:408f2b3351445152209efb9e8d56f67a09cc033eb016a46fc859698b56144050` |
| 42 | `theorem` | [summable_norm_pow_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-norm-pow-mul-geometric-of-norm-lt-one.md) | 404 | `result-track:76209d08c82fdf92364369729e1ede9a880b49965543c37887b78253ed911760` |
| 43 | `theorem` | [summable_norm_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-norm-geometric-of-norm-lt-one.md) | 410 | `result-track:1c2994f34cfe51a1f4e3733ae9d8526381bf28df48995f6e6e2eff9cdc8d73e8` |
| 44 | `lemma` | [hasSum_choose_mul_geometric_of_norm_lt_one'](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/hassum-choose-mul-geometric-of-norm-lt-one-source-edition-2.md) | 416 | `result-track:f81666b64989f7c46a82c5f05dbd41c6419d8de5d75fbfdacf6da78e158050f5` |
| 45 | `lemma` | [summable_choose_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-choose-mul-geometric-of-norm-lt-one.md) | 442 | `result-track:9245655b0913b7004a6396af5159d5c7b3a23ea028b1ad62968ebe68c5cef971` |
| 46 | `lemma` | [tsum_choose_mul_geometric_of_norm_lt_one'](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tsum-choose-mul-geometric-of-norm-lt-one.md) | 446 | `result-track:30421248ec8f27c1f8c73f62036f29ce395c8a0c31396a3975b80022684b3937` |
| 47 | `lemma` | [hasSum_choose_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/hassum-choose-mul-geometric-of-norm-lt-one.md) | 450 | `result-track:bfbaeed9559dde27981054aecb812acf36aae95586e61e10a4c28bdd378e94c6` |
| 48 | `lemma` | [tsum_choose_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tsum-choose-mul-geometric-of-norm-lt-one-source-edition-2.md) | 456 | `result-track:d7c0bccb6f94a448882bc7dd8f0ae067c2c7bc63badc904bc14127bdb007c5a7` |
| 49 | `lemma` | [summable_descFactorial_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-descfactorial-mul-geometric-of-norm-lt-one.md) | 460 | `result-track:639e81279aebf7a8892ba159462b83a839b9b82077152a4846e589961683c639` |
| 50 | `theorem` | [summable_pow_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-pow-mul-geometric-of-norm-lt-one.md) | 467 | `result-track:3dc6d8c7f8ce76df97c3ed022515372ca4e3ffaf0e5291b58727addc345370be` |
| 51 | `theorem` | [hasSum_coe_mul_geometric_of_norm_lt_one'](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/hassum-coe-mul-geometric-of-norm-lt-one-source-edition-2.md) | 496 | `result-track:fdf02dd0d1a1a740995af77150b183958c9e6c98f430832dfe3b17dd827b456d` |
| 52 | `theorem` | [tsum_coe_mul_geometric_of_norm_lt_one'](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tsum-coe-mul-geometric-of-norm-lt-one.md) | 515 | `result-track:dc438600b33ce89b78cf2a72171f8f33d146a0a046bf54935b49c748b2d7bf32` |
| 53 | `theorem` | [hasSum_coe_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/hassum-coe-mul-geometric-of-norm-lt-one.md) | 520 | `result-track:411845aec2bdcce435bf92250a425fcce55ad0dfafec09f10aeeca48bc8a243a` |
| 54 | `theorem` | [tsum_coe_mul_geometric_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tsum-coe-mul-geometric-of-norm-lt-one-source-edition-2.md) | 526 | `result-track:fcdfcfc23d316f8706e277807d40b338557630db2ab79e27174d51ae0d5062cc` |
| 55 | `theorem` | [SeminormedAddCommGroup.cauchySeq_of_le_geometric](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/seminormedaddcommgroup-cauchyseq-of-le-geometric.md) | 536 | `result-track:393eb3e8a929223b28e8ab1498577c53ca78bec1dc35d4ac35230f4a3a458d0f` |
| 56 | `theorem` | [dist_partial_sum_le_of_le_geometric](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/dist-partial-sum-le-of-le-geometric.md) | 540 | `result-track:c672e5a2452a4297c8478849fefeef94f2900e31bc7b896906fed3d5049959a9` |
| 57 | `theorem` | [cauchySeq_finset_of_geometric_bound](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/cauchyseq-finset-of-geometric-bound.md) | 547 | `result-track:163935e8d2981546c1631af24aa0e519281d7a50855bcea9ec1e593bae945d40` |
| 58 | `theorem` | [norm_sub_le_of_geometric_bound_of_hasSum](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/norm-sub-le-of-geometric-bound-of-hassum.md) | 555 | `result-track:2cc73e3f46b02b385669e2a72d03d4bc0d1fda7651e779e512db19ebffa7b11d` |
| 59 | `theorem` | [dist_partial_sum](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/dist-partial-sum-source-edition-2.md) | 562 | `result-track:8d8ddc658d0bd87ee036247e7a4a24785c4b47cb618b90e0e694aaedc6ccb101` |
| 60 | `theorem` | [dist_partial_sum'](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/dist-partial-sum.md) | 567 | `result-track:6efa28d93edf40a0816ab2ea9173b1ce1b36efbd1bbbe97ad02062867efdf07f` |
| 61 | `theorem` | [cauchy_series_of_le_geometric](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/cauchy-series-of-le-geometric.md) | 571 | `result-track:1c6b04dd9b3d69952e2689f55cdd59231f22dc36553f11d80015b16cbca460a2` |
| 62 | `theorem` | [NormedAddCommGroup.cauchy_series_of_le_geometric'](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/normedaddcommgroup-cauchy-series-of-le-geometric.md) | 575 | `result-track:22bd4aed3b0daed7bd9cb6763cf5b4131f31087f20ec98b33580a7ca9b238433` |
| 63 | `theorem` | [NormedAddCommGroup.cauchy_series_of_le_geometric''](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/normedaddcommgroup-cauchy-series-of-le-geometric-source-edition-2.md) | 579 | `result-track:e05c6dadf0433e8f37d77281127f28c7320ed2d7d8346acd58b439af8d85d5f1` |
| 64 | `lemma` | [exists_norm_le_of_cauchySeq](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/exists-norm-le-of-cauchyseq.md) | 600 | `result-track:660c765cce9ba5b62acf996025451e36f44470ab0910a46f583445b9666aa8b4` |
| 65 | `theorem` | [summable_of_ratio_norm_eventually_le](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-of-ratio-norm-eventually-le.md) | 610 | `result-track:ee7fc4338b68ef35e0f9ba991bc9348970b0baf1b23baccb0f568f603045f63c` |
| 66 | `theorem` | [summable_of_ratio_test_tendsto_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-of-ratio-test-tendsto-lt-one.md) | 630 | `result-track:28b0553724949f52a9bd7467deaf6236f22349d6fea51516195f8b80339f5568` |
| 67 | `theorem` | [not_summable_of_ratio_norm_eventually_ge](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/not-summable-of-ratio-norm-eventually-ge.md) | 638 | `result-track:05a68bd2b5ce5e94bc771115777a45ef3e732d6196fd65692b8a7f7a6b4fa362` |
| 68 | `theorem` | [not_summable_of_ratio_test_tendsto_gt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/not-summable-of-ratio-test-tendsto-gt-one.md) | 659 | `result-track:9f412a140705ff3f0ecabb0db1730d039b27acb3911c286872f7ed868a0b1219` |
| 69 | `theorem` | [summable_powerSeries_of_norm_lt](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-powerseries-of-norm-lt.md) | 676 | `result-track:a3fd6c6a0eaef0989e27769f2e87171a6e085dcfe0d4c499b0bf66a9849072ee` |
| 70 | `theorem` | [summable_powerSeries_of_norm_lt_one](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/summable-powerseries-of-norm-lt-one.md) | 689 | `result-track:041cf5a66bc9cd86f470ab81eb13ba32aae094700b69d2db6f0f200a2674fc60` |
| 71 | `theorem` | [Monotone.cauchySeq_series_mul_of_tendsto_zero_of_bounded](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/monotone-cauchyseq-series-mul-of-tendsto-zero-of-bounded.md) | 705 | `result-track:fa10f09af96f2500ee6c00835403cf6d561434c6f5dcc8fd9c5b56e26d25b76f` |
| 72 | `theorem` | [Antitone.cauchySeq_series_mul_of_tendsto_zero_of_bounded](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/antitone-cauchyseq-series-mul-of-tendsto-zero-of-bounded.md) | 724 | `result-track:89c56ca1e1ab47cfb638fc77ec1e9006dc2bcec2973497a05b70dbf5b67d8e2e` |
| 73 | `theorem` | [norm_sum_neg_one_pow_le](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/norm-sum-neg-one-pow-le.md) | 734 | `result-track:7db04df9e8b0cb3b68205f3f1818c439626a1fe770f32cfdaaac9bf90c594ff7` |
| 74 | `theorem` | [Monotone.cauchySeq_alternating_series_of_tendsto_zero](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/monotone-cauchyseq-alternating-series-of-tendsto-zero.md) | 740 | `result-track:fbfb1e5a3a56d8fd5a6ccc071ae575bcb08df28f8c1f7fb2031f64abf93c5e84` |
| 75 | `theorem` | [Monotone.tendsto_alternating_series_of_tendsto_zero](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/monotone-tendsto-alternating-series-of-tendsto-zero.md) | 746 | `result-track:3b067a57d60b316e052ceaa230244311513320f3b3dac2944f4db7fcd8e15af0` |
| 76 | `theorem` | [Antitone.cauchySeq_alternating_series_of_tendsto_zero](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/antitone-cauchyseq-alternating-series-of-tendsto-zero.md) | 753 | `result-track:996872e9833fb965e49391435bdaf25d26aeca121eac35e7fc7ff787fb511edb` |
| 77 | `theorem` | [Antitone.tendsto_alternating_series_of_tendsto_zero](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/antitone-tendsto-alternating-series-of-tendsto-zero.md) | 759 | `result-track:f48bb552c3e6e801049ec2aac55236971414993a11bf7414405285b2045b66f9` |
| 78 | `theorem` | [Monotone.tendsto_le_alternating_series](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/monotone-tendsto-le-alternating-series.md) | 776 | `result-track:a323d072e3f8a2d158c68a160e29ac4efa3eb1e958f2720a09aede9f05aa9bb1` |
| 79 | `theorem` | [Monotone.alternating_series_le_tendsto](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/monotone-alternating-series-le-tendsto.md) | 790 | `result-track:03716e26cdace2e1146fd949444eeb20a58631a98e07d7c3c8a43941c5b52793` |
| 80 | `theorem` | [Antitone.alternating_series_le_tendsto](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/antitone-alternating-series-le-tendsto.md) | 805 | `result-track:f85992500b94ccd68e8bf3ad9469d8e68aa9e4ee57748577a323a35e45dad1f0` |
| 81 | `theorem` | [Antitone.tendsto_le_alternating_series](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/antitone-tendsto-le-alternating-series.md) | 819 | `result-track:87a8a89cdfd0e7dfeb8565d89ffb2caaa86a1503e971dd34aa8741a0537c2b00` |
| 82 | `theorem` | [Real.summable_pow_div_factorial](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/real-summable-pow-div-factorial.md) | 840 | `result-track:4f5e4b0074626565d1355813ce510d9207afa750e2d72b81906ef78135a00b15` |
| 83 | `lemma` | [tendsto_zero_of_isBoundedUnder_smul_of_tendsto_cobounded](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-zero-of-isboundedunder-smul-of-tendsto-cobounded.md) | 863 | `result-track:ab5a1d527bfb8c5dfe2ea2ed80d2829cc746c7266776148fdcb2b4529d5eef85` |
| 84 | `lemma` | [tendsto_smul_congr_of_tendsto_left_cobounded_of_isBoundedUnder](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-smul-congr-of-tendsto-left-cobounded-of-isboundedunder.md) | 886 | `result-track:c70245265d63b5ad104a923d2557735dfe67d914e728209f523ea0a64877b163` |
| 85 | `lemma` | [tendsto_smul_comp_nat_floor_of_tendsto_nsmul](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-smul-comp-nat-floor-of-tendsto-nsmul.md) | 902 | `result-track:8f45011526a571286c3d1a3682995e526a32c9be325fe16379bdca7f0e6b2be3` |
| 86 | `lemma` | [tendsto_smul_comp_nat_floor_of_tendsto_mul](../../../../FunctionalAnalysis/NormedTendstoNatCastAtTopCobounded.lean/declarations/tendsto-smul-comp-nat-floor-of-tendsto-mul.md) | 916 | `result-track:3b26354fa2694339f079501a49917c6fd34d9a681885ed3afb74e8388d7827b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42722ef32378f89367a97b3b95b1e446573f0def0665c705a9758cfb468dc36d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
