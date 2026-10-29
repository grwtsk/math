# Verification target: Rank Cardinal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a04736db6d95382d1f7821cde07f570306d2c8b3",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a04736db6d95382d1f7821cde07f570306d2c8b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Map` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matroid.Rank.ENat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matroid.Rank.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cRank](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crank.md) | 84 | `declaration-track:fd23e0af2800f7b361fffc358761edc54a5be95d8dee81a5cce37c1e13bce689` |
| 2 | `def` | [cRk](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk.md) | 88 | `declaration-track:dd557d5f4c13417762732e0689da67f99993a4b80bd3494f1d9793da08144422` |
| 3 | `theorem` | [IsBase.cardinalMk_le_cRank](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbase-cardinalmk-le-crank.md) | 90 | `result-track:5f4ee5d33c13055cdaf64d040f6056f213a92bdc2e52e56f3903d803857e2a4d` |
| 4 | `theorem` | [Indep.cardinalMk_le_cRank](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/indep-cardinalmk-le-crank.md) | 93 | `result-track:99c0aecf71d95a0e8dfd05c88c9d04b192ffc934b2bb9539fd6b0b1709f18fb1` |
| 5 | `theorem` | [cRank_eq_iSup_cardinalMk_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crank-eq-isup-cardinalmk-indep.md) | 97 | `result-track:1505db0c4d4bc2324c5082f80442d8d6c0ba32604fb9a7c2677649cafac59c80` |
| 6 | `theorem` | [IsBasis'.cardinalMk_le_cRk](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbasis-cardinalmk-le-crk-source-edition-2.md) | 103 | `result-track:631e3245d7d10d5e3f8fd9380d5fa58a1cfabb5ce9bd396aac07133af42ab1ef` |
| 7 | `theorem` | [IsBasis.cardinalMk_le_cRk](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbasis-cardinalmk-le-crk.md) | 106 | `result-track:146c8e7bb1d0122ba989b63382af29af06071cb3035a74b60fcbd8d862af844d` |
| 8 | `theorem` | [cRank_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crank-le-iff.md) | 109 | `result-track:f348394eabec4dbfc3c6a4ec7f53b1fb1c0fb3521531e100f015824387c50e93` |
| 9 | `theorem` | [cRk_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-le-iff.md) | 112 | `result-track:fd9ebb024275525d78ff1270f36a41a5e0588c211db0b01c13c1219f418ad273` |
| 10 | `theorem` | [Indep.cardinalMk_le_cRk_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/indep-cardinalmk-le-crk-of-subset.md) | 115 | `result-track:4893cfdf553cf0bb50f7b3a3d4a46ff2f5f71bceb048f488d9e1a8f42b3ced16` |
| 11 | `theorem` | [cRk_le_cardinalMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-le-cardinalmk.md) | 119 | `result-track:b8941bef649fd50578bbdc97f8738f3ea0a8ccd9f3cca38c9683ea3d88475668` |
| 12 | `theorem` | [cRk_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-ground.md) | 122 | `result-track:4a9eeb386a72db6bc7e5dc78e54803ce2734c90148321f2b3112fe56ad7879ef` |
| 13 | `theorem` | [cRank_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crank-restrict.md) | 125 | `result-track:ffc12a5a2165fdbb001079df0929c1bad4826cda9966df3cab9a00371c3582fb` |
| 14 | `theorem` | [cRk_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-mono.md) | 127 | `result-track:4b10244ce3eb79305c26b18f86f134037bf981878846616c92c31be74467f2c5` |
| 15 | `theorem` | [cRk_le_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-le-of-subset.md) | 133 | `result-track:bf91fc9995c65cb68d462a9acfd042cc73bcdb4659a42932f1e3e6778f660554` |
| 16 | `theorem` | [cRk_inter_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-inter-ground.md) | 136 | `result-track:066541648a5bf079344f43637e8318fb980ca0bd1b2cc4788282d25464b8d57d` |
| 17 | `theorem` | [cRk_restrict_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-restrict-subset.md) | 140 | `result-track:18483dc6abe4673c97f2a095105c3512c8f25799ddf8a7631d489d69a4ac0a7a` |
| 18 | `theorem` | [cRk_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-restrict.md) | 147 | `result-track:b7c60e595944e5626188b6c8fe84599ff4a9415e3107b86f68ed09ec6d06d030` |
| 19 | `theorem` | [Indep.cRk_eq_cardinalMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/indep-crk-eq-cardinalmk.md) | 151 | `result-track:742c48fb347baddce7cceddefe058942e23714820b7b380855efe4dd1f2aab83` |
| 20 | `theorem` | [cRk_map_image_lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-map-image-lift.md) | 154 | `result-track:1a1b3112abf04f361f306d7fb2f4fc1e5d617c9f3c8d125be9fff58496b0dbc8` |
| 21 | `theorem` | [cRk_map_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-map-image.md) | 168 | `result-track:001f5f77e349edb2326bd4dff8540a1629ff90823afe07b190446bc6c7269dd4` |
| 22 | `theorem` | [cRk_map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-map-eq.md) | 172 | `result-track:c6e557e530574d835d476b80fc9104beb622d01c5d5642c7684c876695471b9d` |
| 23 | `theorem` | [cRk_comap_lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-comap-lift.md) | 177 | `result-track:042b4d4ee50725a5fdea5be73c57ca9087f5efaa3442fb15ed43d328a2b782fa` |
| 24 | `theorem` | [cRk_comap](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-comap.md) | 193 | `result-track:908cbe2f77db3351feb5e43380bb72afae4b805795c697fdc18bb8d4c51922f4` |
| 25 | `class` | [InvariantCardinalRank](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/invariantcardinalrank.md) | 205 | `declaration-track:b82ad0aa04409b31d711a8cc1d56c8a1fa5fa2529e321e729a6603071e05884f` |
| 26 | `theorem` | [IsBasis.cardinalMk_diff_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbasis-cardinalmk-diff-comm.md) | 211 | `result-track:3009e150bda3f0718bc1b67fbd81e5e35792f5c54e30efce10eeeb1d56e95380` |
| 27 | `theorem` | [IsBasis'.cardinalMk_diff_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbasis-cardinalmk-diff-comm-source-edition-2.md) | 215 | `result-track:a96e4e3bccb8a038a888d7457a522dca8d8ac6d6a3a3cc8a33924bc1f5f88719` |
| 28 | `theorem` | [IsBase.cardinalMk_diff_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbase-cardinalmk-diff-comm.md) | 219 | `result-track:fa5b2fbccdea19c23bd53f82821b73becc928d96b8908e85cdca21a9d9b1673f` |
| 29 | `theorem` | [IsBasis.cardinalMk_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbasis-cardinalmk-eq-source-edition-2.md) | 223 | `result-track:e3bc5136d2355cf32430abad999b9b57f0a83ae0ff873dd8c3e2f99447a09543` |
| 30 | `theorem` | [IsBasis'.cardinalMk_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbasis-cardinalmk-eq.md) | 230 | `result-track:0e20a90bb91fbb896f4fc86a152bbf5b2ac8f30d6322433bd2452ce9796bf489` |
| 31 | `theorem` | [IsBase.cardinalMk_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbase-cardinalmk-eq.md) | 233 | `result-track:e865fd4d843a15e50dea81d476e09a8cea9c12c5c5408fd4cdb6566065e6e66c` |
| 32 | `theorem` | [Indep.cardinalMk_le_isBase](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/indep-cardinalmk-le-isbase.md) | 236 | `result-track:4c0b8c58cd55e14e6a8f0795b442e091d3f39e3ba1be38c599b3992f847ef103` |
| 33 | `theorem` | [Indep.cardinalMk_le_isBasis'](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/indep-cardinalmk-le-isbasis-source-edition-2.md) | 240 | `result-track:9d88e5a699315f886752b4bb37a6684fd1caa520e1e4b5b37df9a20221e2fd9d` |
| 34 | `theorem` | [Indep.cardinalMk_le_isBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/indep-cardinalmk-le-isbasis.md) | 245 | `result-track:4a3a248fb246ba1ebcbd258731c38dc5fe70aa67f62792c50225de8e7b6a9e09` |
| 35 | `theorem` | [IsBase.cardinalMk_eq_cRank](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbase-cardinalmk-eq-crank.md) | 249 | `result-track:92cd6096b69112dea872242d826c994893160f6befb8095ce1b5a6029bac2dff` |
| 36 | `instance` | [invariantCardinalRank_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/invariantcardinalrank-restrict.md) | 254 | `declaration-track:c54389e21f4156f0a775a61996397deae1b996951dc63285505fef231610aa66` |
| 37 | `theorem` | [IsBasis'.cardinalMk_eq_cRk](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbasis-cardinalmk-eq-crk.md) | 260 | `result-track:558b6af60c1481b647db6ed314b7648c1a9c5e8818e34d1a6bdd583878e4b31d` |
| 38 | `theorem` | [IsBasis.cardinalMk_eq_cRk](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isbasis-cardinalmk-eq-crk-source-edition-2.md) | 263 | `result-track:7b91aa41c0748e6831727f6c97e88af7cbccb783198f22953a0353efa89d75d7` |
| 39 | `theorem` | [cRk_closure](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-closure.md) | 266 | `result-track:de8b218beba802fcf75161f4ee2cbbde8fd49d1d401bd1c17f20dcb441adc20a` |
| 40 | `theorem` | [cRk_closure_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-closure-congr.md) | 271 | `result-track:5234c02ad67c09cf3df69dbe200174fdec2ea31c96139c9c9659cd3d267acc89` |
| 41 | `theorem` | [Spanning.cRank_le_cardinalMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/spanning-crank-le-cardinalmk.md) | 274 | `result-track:82de9569eef8263cda04003d474595d5520708ba09e8f365462b185b5c4a82db` |
| 42 | `theorem` | [cRk_union_closure_right_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-union-closure-right-eq.md) | 280 | `result-track:9c334ce03234908a05a565871f7457faddaa8258671a92f8bf2c999131c14edb` |
| 43 | `theorem` | [cRk_union_closure_left_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-union-closure-left-eq.md) | 283 | `result-track:ec924457e90ea6df992b325ba57de60d45d1ead7d0f437fc7c42363446f415ba` |
| 44 | `theorem` | [cRk_insert_closure_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-insert-closure-eq.md) | 286 | `result-track:33af8ac8d2411bdb504959148d2cb16a9b68076c7170b5b63911fd7eb14b7d47` |
| 45 | `theorem` | [cRk_union_closure_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-union-closure-eq.md) | 289 | `result-track:c13375a11871d8628a8c9ddf1c03097eb0b112533201a2343a4f7fdcb6e3a6e8` |
| 46 | `theorem` | [cRk_inter_add_cRk_union_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/crk-inter-add-crk-union-le.md) | 293 | `result-track:e15b656d4b41c5ce87515e7ad064ddd355eb4833f31a88d58a9e7cf2e246ec5e` |
| 47 | `instance` | [invariantCardinalRank_of_finitary](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/invariantcardinalrank-of-finitary.md) | 309 | `declaration-track:48efbde9c46bac3b8abc6a113142da7cf0e789df3f087e2035d384a5c9072660` |
| 48 | `instance` | [invariantCardinalRank_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/invariantcardinalrank-map.md) | 340 | `declaration-track:7743dc5df26ebe0f8725812c58dfcd5f20b886e36e1dc5558b7f4a54f03ed5a5` |
| 49 | `instance` | [invariantCardinalRank_comap](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/invariantcardinalrank-comap.md) | 356 | `declaration-track:becf0841c463f32b725072085180257ce1d07df54a2a886b69ab2224b0e458a3` |
| 50 | `theorem` | [rankFinite_iff_cRank_lt_aleph0](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/rankfinite-iff-crank-lt-aleph0.md) | 371 | `result-track:97116fc5584a694ddfb74e3ff3a11478f96a7f47c063ee377eda14ed5970abbe` |
| 51 | `theorem` | [rankInfinite_iff_aleph0_le_cRank](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/rankinfinite-iff-aleph0-le-crank.md) | 379 | `result-track:9b26314219927332f0cf591e4b7e56dcc67f7b99243e05d1ea88aea7a33f490c` |
| 52 | `theorem` | [isRkFinite_iff_cRk_lt_aleph0](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/isrkfinite-iff-crk-lt-aleph0.md) | 382 | `result-track:1f1826b5a486422715f4524b5812e6f0f40b8463ee97b946c0ebc3eed81617ab` |
| 53 | `theorem` | [Indep.isBase_of_cRank_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/indep-isbase-of-crank-le.md) | 385 | `result-track:2ee4d78a14c615bc210de49e80ae3b41e194eb9b37867a226705f0467b00428e` |
| 54 | `theorem` | [Spanning.isBase_of_le_cRank](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/spanning-isbase-of-le-crank.md) | 390 | `result-track:115fca01148a46cf759a3124effd1d11b2dde454850c68042ebce0d142506dc6` |
| 55 | `theorem` | [Indep.isBase_of_cRank_le_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/indep-isbase-of-crank-le-of-finite.md) | 396 | `result-track:2a21948e9fb52d38a282f4433cee42e88145d074ca973943391f32bdcacd1a14` |
| 56 | `theorem` | [Spanning.isBase_of_le_cRank_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/spanning-isbase-of-le-crank-of-finite.md) | 401 | `result-track:89c8f8e0af3fbb13972f2083ca87ecca0905651703a0f86fa743abf9d7025972` |
| 57 | `theorem` | [toENat_cRank_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/toenat-crank-eq.md) | 408 | `result-track:1a89dd70592383a15376ffac0eb44f9e9af08bbdeccd4ebcc24dfacd9986f8f5` |
| 58 | `theorem` | [toENat_cRk_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/RankCardinalNamespaced.lean/declarations/toenat-crk-eq.md) | 415 | `result-track:e7b8933966a745a5af3db4b2383302bed6fc73aa6731108847bf4f693e66a64f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ea738d59196b94b0b4b8c9761e485dab689432ef2c77012fb0e638342952627 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
