# Verification target: Solvable Namespaced Derived Series Succ Eq Top Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cd27e94c4e937952d6f0f6481d77d6beeb16d5b",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cd27e94c4e937952d6f0f6481d77d6beeb16d5b`.

Source path: `GRWTSK/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.BaseChange` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.FaithfullyFlat.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeriesOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal.md) | 61 | `declaration-track:d80395a6c38cf75e5a5e0bb9fbbfafc9c52973103fb7ac447ac836c841021196` |
| 2 | `theorem` | [derivedSeriesOfIdeal_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-zero.md) | 65 | `result-track:549a14e5f664dcacd2759d234b726274bbda3c9ff8ffc8c519743d9b4f3511b6` |
| 3 | `theorem` | [derivedSeriesOfIdeal_succ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-succ.md) | 69 | `result-track:2c628291187f8c9670ad150131585309f2eab61ec38b07e9fbd9bc5eef237b8a` |
| 4 | `abbrev` | [derivedSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries.md) | 75 | `declaration-track:89002cd06fc4d4f21a09a9de86ee3ea646f4e596a04e8f9612195d683b5ff8a9` |
| 5 | `theorem` | [derivedSeries_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-def.md) | 78 | `result-track:d6fb9683df5b48aef3b7307a90fff37e8c7e4f30095c9ce1545b5050f2ed1de6` |
| 6 | `theorem` | [derivedSeriesOfIdeal_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-add.md) | 85 | `result-track:5d4a14a203665751f242e73bc3e026e78e0098edca97cfa84c0f1a60ec008e94` |
| 7 | `theorem` | [derivedSeriesOfIdeal_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-le.md) | 91 | `result-track:b230664cf95524063b202144af3774936d84f76d05f48d007823ea7fcb8cb5a1` |
| 8 | `theorem` | [derivedSeriesOfIdeal_succ_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-succ-le.md) | 101 | `result-track:747582aa9b1c5e00ba28587de26eb58fae9f46efbf7f7ef1cf260b48de37eb11` |
| 9 | `theorem` | [derivedSeriesOfIdeal_le_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-le-self.md) | 104 | `result-track:9bfdd6d872e5369ba9dfe8b149c9e1fd4c73530ab33b46fca0e967fc5bdc5c98` |
| 10 | `theorem` | [derivedSeriesOfIdeal_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-mono.md) | 107 | `result-track:29149e7b0a82362e9ded36da9f13f8c078f0999f1089a0c836ba74bcd909e3f3` |
| 11 | `theorem` | [derivedSeriesOfIdeal_antitone](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-antitone.md) | 110 | `result-track:5abc48c2ed424b4732d6d41bf76052e9f41138dc74ff60b11465bd7c1535b3b9` |
| 12 | `theorem` | [derivedSeriesOfIdeal_add_le_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-add-le-add.md) | 113 | `result-track:a4d53b5aa81b5dbc1f0dc2922cd57bba06f9ac4ff95e6405746ef4c84a2134aa` |
| 13 | `theorem` | [derivedSeries_of_bot_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-of-bot-eq-bot.md) | 123 | `result-track:5b6cb7b61926c7b6e94414c3c699ab80b548149f8a3cba28b9f29f2ac7d50a59` |
| 14 | `theorem` | [abelian_iff_derived_one_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/abelian-iff-derived-one-eq-bot.md) | 126 | `result-track:ddc39c6be6812701e700e84f864f829c7130c2a86ffdcc2b9b21bced4ad5d948` |
| 15 | `theorem` | [abelian_iff_derived_succ_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/abelian-iff-derived-succ-eq-bot.md) | 130 | `result-track:81e2d44ad319009261276ef1747c8ab85fc59bb57584bcd1d007f16957b16c3c` |
| 16 | `theorem` | [derivedSeriesOfIdeal_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseriesofideal-basechange.md) | 135 | `result-track:818ff330f33ca1eb244add320a646e61134fb2d46dc24e978f06fa25f5b320fe` |
| 17 | `theorem` | [derivedSeries_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-basechange.md) | 144 | `result-track:4dc0d22def8ef603211f859ef0e6bf1371c73a98c512b72ca313077cbd354916` |
| 18 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-eq-derivedseriesofideal-comap.md) | 157 | `result-track:149bc8aaa959f7af21797218868fd1ae94a3e4f6fdd865226fdf626b3815eebb` |
| 19 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-eq-derivedseriesofideal-map.md) | 166 | `result-track:ec4799f0da76e12ff7d73b6e8fd09a8e2bae9411360de0761f9b786d672e75c9` |
| 20 | `theorem` | [derivedSeries_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-eq-bot-iff.md) | 171 | `result-track:d40150ffaac2d5f0ba9c989c6d6004f32423c9dec79095b2d89de2227e791b6a` |
| 21 | `theorem` | [derivedSeries_add_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-add-eq-bot.md) | 175 | `result-track:39c49714710fd8a5d567e0d639e17d36be2e3e3def87906d04023ae957d1a79e` |
| 22 | `theorem` | [derivedSeries_map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-map-le.md) | 184 | `result-track:2bbc5640310425c232b75370cd637aaa3f2165cd82785dc4e47553a7634b2579` |
| 23 | `theorem` | [derivedSeries_map_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-map-eq.md) | 191 | `result-track:18ddc9d492987dbeefde13c63496598b1499b194732c77749bccce5d3832a816` |
| 24 | `theorem` | [derivedSeries_succ_eq_top_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-succ-eq-top-iff.md) | 200 | `result-track:b926ecaceacf050d1a95e081de86c39346bdc59f0128cd884d1d705916e4ca3a` |
| 25 | `theorem` | [derivedSeries_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-eq-top.md) | 212 | `result-track:a4873bf0df66bf526b1c8484780e3a5b51b25b771df66eda0e9bc211f6d318c3` |
| 26 | `theorem` | [coe_derivedSeries_eq_int_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/coe-derivedseries-eq-int-aux.md) | 218 | `result-track:901214d7b2766a111f3587b89ef9e5cdf22056dbbbc8936854aeccfe6df87483` |
| 27 | `theorem` | [coe_derivedSeries_eq_int](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/coe-derivedseries-eq-int.md) | 235 | `result-track:a42f52c5230472fc3109ef38862f69c277895ad1c8845b468ffec2cd4e0c2dae` |
| 28 | `class` | [IsSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/issolvable.md) | 259 | `declaration-track:698756aa6a6690acc5080feddc4b5579aabf539a5c291c0c597888377ce1b8ac` |
| 29 | `instance` | [isSolvableBot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/issolvablebot.md) | 263 | `declaration-track:bb9b5ae277ef4f48b1379dfe91d3d05b0ea07b114282f740007c795f43d2e0fd` |
| 30 | `lemma` | [isSolvable_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/issolvable-iff.md) | 266 | `result-track:9da7c6d77ab35ce0052cd2e0020575f06e01141432b92d0a466b9b134d6f8076` |
| 31 | `lemma` | [IsSolvable.solvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/issolvable-solvable.md) | 269 | `result-track:35f1b915cb09c0717cc19ac92036774e504d7fa80e59c53bf025e9e4866fde18` |
| 32 | `lemma` | [IsSolvable.mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/issolvable-mk.md) | 273 | `result-track:a1778361aadd1d331ad3f6c4af79c41f867a86f3b2e9ec05d013f4dd14a7fc4e` |
| 33 | `instance` | [isSolvableAdd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/issolvableadd.md) | 276 | `declaration-track:c4076c15a59e03bd2dc5849c6ec5e26c6106a370681e41230e6ee262ebe78aef` |
| 34 | `theorem` | [derivedSeries_lt_top_of_solvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-lt-top-of-solvable.md) | 282 | `result-track:f2091f6c8bbd04f594d06cdc0489afbebd6ed2f7eb3887bfa00087470ef64a38` |
| 35 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/instance-source-edition-2.md) | 291 | `declaration-track:2a9351e1c42aa89099ea4446476f6c4451f7943b5ce014d4d4025a104178a3f8` |
| 36 | `theorem` | [isSolvable_tensorProduct_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/issolvable-tensorproduct-iff.md) | 299 | `result-track:fe367741dcf345254e1dd178aef8cad249e440f4b8a4e3b5b5dc231f8784efa6` |
| 37 | `theorem` | [Injective.lieAlgebra_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/injective-liealgebra-issolvable.md) | 319 | `result-track:7a6eaf8b1011fdcd97d7bf2ea63a6991cfbfb277a13563a037db2a1ad4c68fb2` |
| 38 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/instance.md) | 327 | `declaration-track:226afb6f41e29239050459088b0b64f7e6340daa31769d17d84213f24173d88f` |
| 39 | `theorem` | [Surjective.lieAlgebra_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/surjective-liealgebra-issolvable.md) | 330 | `result-track:bcbcdf2a28496d95785888c534b056498fa26a98c0ebeafb4329366a06df25b4` |
| 40 | `instance` | [LieHom.isSolvable_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/liehom-issolvable-range.md) | 340 | `declaration-track:fdf3cc7e69388e303b77bbace35149b8113dfadb93bfd2bfff73216da52a883d` |
| 41 | `theorem` | [solvable_iff_equiv_solvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/solvable-iff-equiv-solvable.md) | 346 | `result-track:f9999ac7ef445fe1e29f2cea7c69b12a72435b51990e41959ddf1cd216ab2220` |
| 42 | `theorem` | [le_solvable_ideal_solvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/le-solvable-ideal-solvable.md) | 351 | `result-track:5f897a3f4e2e373118b564c4b830838be36bd033981e40bd6d46a230edac54b9` |
| 43 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/instance-source-edition-3.md) | 357 | `declaration-track:3b8bfa02dfa41431601ba606bc852b3a27e0023eaf5a646e01c15d2298320452` |
| 44 | `def` | [radical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/radical.md) | 363 | `declaration-track:15cd23135b426d4129e936e7d4c114a0215098e0b27f3fa2bd4acfd3b584ca17` |
| 45 | `instance` | [radicalIsSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/radicalissolvable.md) | 367 | `declaration-track:7ab17c1b5c5be0caecd3212d55b390cacd7b2d471fc8194bfd742de85d92173b` |
| 46 | `theorem` | [LieIdeal.solvable_iff_le_radical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/lieideal-solvable-iff-le-radical.md) | 376 | `result-track:14af1c49b75a87ac83ecf83fa212d5f61a4bf83964e6532b131dcfbcec777708` |
| 47 | `theorem` | [center_le_radical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/center-le-radical.md) | 380 | `result-track:eff795561fc6af46fe079e7b1df30d4127fcbdacf999a64a89e11542b4075738` |
| 48 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/instance-source-edition-4.md) | 384 | `declaration-track:7e1c21354c2e5252327b107b994230b53cea210b5b315aa56e4d350dd75212e9` |
| 49 | `lemma` | [radical_eq_top_of_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/radical-eq-top-of-issolvable.md) | 387 | `result-track:4c63f936fcd8ccec51b35ad9d902d76077fbed212c80154d31b12a63df6fb027` |
| 50 | `def` | [derivedLengthOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedlengthofideal.md) | 397 | `declaration-track:eb8ca043c34e88a0e1a573b3bf9ef0f729676129c07760bc2c6fa1b8a6e204bb` |
| 51 | `abbrev` | [derivedLength](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedlength.md) | 403 | `declaration-track:892f0743727811a477677d8f79e8f55d706021e859b92f31bc1313e083fc2aa5` |
| 52 | `theorem` | [derivedSeries_of_derivedLength_succ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedseries-of-derivedlength-succ.md) | 406 | `result-track:87796238d281c18edb69a7dfcfb3a84024e59cbd72cbfa5bdf7d17500b8b3f0b` |
| 53 | `theorem` | [derivedLength_eq_derivedLengthOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedlength-eq-derivedlengthofideal.md) | 419 | `result-track:d82e4655677ea48f2879a5eb266524bd22c7c3b6cce7d4df695e6de3dbead12b` |
| 54 | `def` | [derivedAbelianOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedabelianofideal.md) | 432 | `declaration-track:4fc396ffb5c22d5437f18f08303899cf313eb8e9e9035419a9c0821071d50567` |
| 55 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/instance-source-edition-5.md) | 437 | `declaration-track:e8d2e6bebe43d94cd6fa78aa0ac82cb382ada4b04b16a5216f4436d54190d945` |
| 56 | `theorem` | [abelian_derivedAbelianOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/abelian-derivedabelianofideal.md) | 440 | `result-track:598befae4a7a438943858312a7dd0e4dc781604ccbb4f03ac7c38ba3bdd5e9e8` |
| 57 | `theorem` | [derivedLength_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/derivedlength-zero.md) | 447 | `result-track:6f319f3414db6d365fcc0fab74912cf496bb325a417f4af6e6d0523d44fa3081` |
| 58 | `theorem` | [abelian_of_solvable_ideal_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedDerivedSeriesSuccEqTopIff.lean/declarations/abelian-of-solvable-ideal-eq-bot-iff.md) | 457 | `result-track:498613cc5632e35eb44ea7da61c3687f63243714620e48f2da8f62591db0e115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f3da6b2998be41055bf3f29246b98899a70c92162dc0dee8f6ad6f5b899cbf2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean","GRWTSK/_verification/specifications/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
