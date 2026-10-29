# Verification target: Nilpotent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fa00367eb3bad43d0c638d420316f801679775a",
  "lexical_observation_count": 121,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fa00367eb3bad43d0c638d420316f801679775a`.

Source path: `GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperCentralSeriesStep](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseriesstep.md) | 100 | `declaration-track:dc694baaf678fcb456586c4936bdb5b6d2658d990b6500f80c1045947dfbd97f` |
| 2 | `theorem` | [mem_upperCentralSeriesStep](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/mem-uppercentralseriesstep.md) | 112 | `result-track:9e9ac6facb7f78ef72ea5598e41a2f2650ac7fe5068a175c2db723eff70d1d45` |
| 3 | `theorem` | [upperCentralSeriesStep_eq_comap_center](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseriesstep-eq-comap-center.md) | 121 | `result-track:89b3273ffd7bdadc58f148712ab34ee8acdc654129a134a199b18009200f45fd` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:44e4c0c9a57a4c46f79bc1003f6d387894f81ad8a56065d65e818df8530c3d5c` |
| 5 | `def` | [upperCentralSeriesAux](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseriesaux.md) | 138 | `declaration-track:ae5f369a0223085ddf6cefad948af6978ccca7e0d9bb269effd79de99c6248e7` |
| 6 | `def` | [_root_.AddSubgroup.upperCentralSeriesAux](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/root-addsubgroup-uppercentralseriesaux.md) | 147 | `declaration-track:3d5aac9c7fed24d2ff016f65d10ecfacf3ef7b264a484e76c2e0db71a488bebf` |
| 7 | `def` | [upperCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries.md) | 184 | `declaration-track:f4a314d57937fcf0e8ab66825621c4ef17febca772549a7226cb75be7b234c60` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/instance.md) | 188 | `declaration-track:305c204b140a8e3760236fee77362422eb8c93fd00c6891282ca423dbf3cae10` |
| 9 | `theorem` | [upperCentralSeries_zero](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-zero.md) | 192 | `result-track:df0ece2c7aa6f8ccfe8429b907d201f1852d1ef5830adf2b6e14fd41cc0ca733` |
| 10 | `theorem` | [upperCentralSeries_one](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-one.md) | 194 | `result-track:38ffdffd797e3828dfab2b10c36b62b46da69d7961c66fb628d56f2c93dc4503` |
| 11 | `theorem` | [_root_.AddSubgroup.upperCentralSeries_one](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/root-addsubgroup-uppercentralseries-one.md) | 201 | `result-track:5e9a37efedd7cdbf0cd28f89f2c5f7935785f95a19a87080c866be63b58ccd99` |
| 12 | `theorem` | [mem_upperCentralSeries_succ_iff](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/mem-uppercentralseries-succ-iff.md) | 219 | `result-track:2e2c6e422ca690990de26efb459822369eb59e3e566d77fc7ae63494630c88e8` |
| 13 | `theorem` | [commutator_upperCentralSeries_top_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/commutator-uppercentralseries-top-le.md) | 225 | `result-track:c190c78969f791a17b0366e2b506c23d150b2e8926bcbe7bcbc9169b2d3d1cf6` |
| 14 | `lemma` | [comap_upperCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/comap-uppercentralseries.md) | 232 | `result-track:4a4351aff087e4526ba53ed3815a41f86027bc95f29038082bf8ca87550cb54d` |
| 15 | `class` | [IsNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent.md) | 249 | `declaration-track:17ebed8c45c797d9bd3ded46a85040516f12211ec5ca2084ec6a5267d7b713dc` |
| 16 | `class` | [_root_.AddGroup.IsNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/root-addgroup-isnilpotent.md) | 257 | `declaration-track:7a3204cff49da65ec28cd71f25d83aa1bc51c4b1863e3b60a9a3d648b65e9608` |
| 17 | `lemma` | [IsNilpotent.nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-nilpotent.md) | 261 | `result-track:a034edc9ca6fddce3cdead33b2087516f73d60c255f19f7003012366119548a1` |
| 18 | `lemma` | [isNilpotent_congr](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-congr.md) | 265 | `result-track:9ceb3d506fc1210bdab271f063efc88ac67959c522caff6c9b6c3d0cdf48055e` |
| 19 | `lemma` | [isNilpotent_top](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-top.md) | 272 | `result-track:82d2e95a4db417748ec580130fafc51e8d78e298696ce751070404ba7027022e` |
| 20 | `def` | [IsVirtuallyNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isvirtuallynilpotent.md) | 279 | `declaration-track:178497d87b8f6dbba6657e9ad7474e923e8d90e9dd082879a9c0cb9d3fd93377` |
| 21 | `lemma` | [IsNilpotent.isVirtuallyNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-isvirtuallynilpotent.md) | 282 | `result-track:aeeab8ca68a2956b17151b8f4dde30a2b2d8e12c525e64fefcb78958026f17df` |
| 22 | `def` | [IsAscendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isascendingcentralseries.md) | 295 | `declaration-track:f36bc3039d08802a2c8ee6d6f0bb8780cedd915ed2c646c8fab5f0d743f4bf79` |
| 23 | `def` | [IsDescendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isdescendingcentralseries.md) | 302 | `declaration-track:1b14d3dd36b3d446233a0a2be24bd8083fe2adeb8438ecd78f285818cf202618` |
| 24 | `theorem` | [ascending_central_series_le_upper](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/ascending-central-series-le-upper.md) | 308 | `result-track:788a5339c3896969392ada9642137e53982b166627e814d9d5a58559bf2430b7` |
| 25 | `theorem` | [upperCentralSeries_isAscendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-isascendingcentralseries.md) | 320 | `result-track:084f48aa4007dc90822746ef8efd5c511546bdf7e9587b35988602e038456e74` |
| 26 | `theorem` | [upperCentralSeries_mono](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-mono.md) | 325 | `result-track:43f832976b8c9704b03127b92936d7b072f1804eb21e9ff6c8f09f53764aabf2` |
| 27 | `theorem` | [nilpotent_iff_finite_ascending_central_series](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotent-iff-finite-ascending-central-series.md) | 335 | `result-track:36a0d0dbce9e4cc4141195ae4d59858a448f1fa68f87b30ab0ff247800e65835` |
| 28 | `theorem` | [is_descending_rev_series_of_is_ascending](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/is-descending-rev-series-of-is-ascending.md) | 346 | `result-track:1fe29413b45b8f1c6a108a038a52dc7c9e40a042e83cca60c26a842fb1cc1658` |
| 29 | `theorem` | [is_ascending_rev_series_of_is_descending](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/is-ascending-rev-series-of-is-descending.md) | 361 | `result-track:ba197fe0ba656f0729eafc2737ab26f3555c0b7db0a97d3795fa98bd178abc38` |
| 30 | `theorem` | [nilpotent_iff_finite_descending_central_series](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotent-iff-finite-descending-central-series.md) | 377 | `result-track:e9dcc95e56e221f9a9d6239ea4669583758c1ffd6a7f0e9b16c0e80fc3627347` |
| 31 | `def` | [lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries.md) | 397 | `declaration-track:57691c97d4053c4343b3b8187f3d647d33adc10073e298f5be5c74f81f71dc61` |
| 32 | `def` | [_root_.AddSubgroup.lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/root-addsubgroup-lowercentralseries.md) | 403 | `declaration-track:c210a0c7fddf863ebc343c3cfca555589efe6c34de59e5da5ede9488ebf52ba7` |
| 33 | `theorem` | [lowerCentralSeries_zero](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-zero.md) | 413 | `result-track:9d4e276fefec88d7978c31466534eab25c48b824890566fe5afed15e74e4f26c` |
| 34 | `theorem` | [lowerCentralSeries_succ](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-succ.md) | 416 | `result-track:ed2f4a061816fd2ebd844bfa214d70c27e17212c247225f677883868808864de` |
| 35 | `theorem` | [top_lowerCentralSeries_one](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/top-lowercentralseries-one.md) | 420 | `result-track:86c58cfcd747ff62d2ad47fc3df022f0fd56e3678062839345f3a213eef45272` |
| 36 | `theorem` | [mem_lowerCentralSeries_succ_iff](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/mem-lowercentralseries-succ-iff.md) | 430 | `result-track:f95ee2cfdb21338c58aaf5ea20cd3ba732e7e7ee354fceac3eabef2b34afbb35` |
| 37 | `instance` | [lowerCentralSeries_characteristic](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-characteristic.md) | 435 | `declaration-track:7f81c81d6d647ff10e45c8827962566b4b8cd81f14af7816fab09c828e257d57` |
| 38 | `theorem` | [self_le_normalizer_lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/self-le-normalizer-lowercentralseries.md) | 442 | `result-track:b82543f6c44ff5ea70928aec43851edf5789486fadc4a07b999ed90635df1e9a` |
| 39 | `theorem` | [lowerCentralSeries_antitone](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-antitone.md) | 450 | `result-track:0e1da9145df1c2fd61b922fb8cf4e117e9e49cc916ee85ac0172294d368060bd` |
| 40 | `theorem` | [lowerCentralSeries_isDescendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-isdescendingcentralseries.md) | 457 | `result-track:da592197e2620eb55783aa36631b4467c26e29ed4b644499f00549c3a8b4ceb2` |
| 41 | `theorem` | [descending_central_series_ge_lower](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/descending-central-series-ge-lower.md) | 467 | `result-track:474f00aef7de2a8ca762503ade43ec976e026090fbe85c280557df069e7730f4` |
| 42 | `theorem` | [map_lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/map-lowercentralseries.md) | 476 | `result-track:efab5e76ba6771f98140479e5ce36b655e62ea62b80ede6b2b4c5c2016a3c5d4` |
| 43 | `theorem` | [top_subtype_lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/top-subtype-lowercentralseries.md) | 489 | `result-track:2ddcbff3b37b21664de294a92da06e7d9a0c11608ff897d81c656b5a593558e8` |
| 44 | `theorem` | [isNilpotent_iff_lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-iff-lowercentralseries.md) | 497 | `result-track:db75fbe49cce11b3b6ce42d848577dc2934a875cf2eced57f1a2ff4b0cd6fae7` |
| 45 | `theorem` | [nilpotent_iff_lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotent-iff-lowercentralseries.md) | 514 | `result-track:964c468c953042ba96de38d453553e08236bfce890c1f5ce789f2babcfe357ac` |
| 46 | `def` | [Group.nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-nilpotencyclass.md) | 530 | `declaration-track:a81efaa7cdcbb9081965017d1e892f45f9103a44fd2b7e8c328914a3d5383da7` |
| 47 | `theorem` | [Group.nilpotencyClass_of_not_nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-nilpotencyclass-of-not-nilpotent.md) | 534 | `result-track:52c6a24f7ae1ad451876059ec11fcd90d07817dee36040c9cf6bf72985830bb0` |
| 48 | `theorem` | [Group.nilpotencyClass_def](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-nilpotencyclass-def.md) | 542 | `result-track:44f21a5689726b4700e0d03dc35eb7e7cbbee3fe4defc3eb77b0f02d85710db0` |
| 49 | `theorem` | [upperCentralSeries_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-nilpotencyclass.md) | 549 | `result-track:4aef1a8db75176eb136ff11f07794af9d1a396f61cf62b5831aa92fa9b92a692` |
| 50 | `theorem` | [upperCentralSeries_eq_top_iff_nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-eq-top-iff-nilpotencyclass-le.md) | 555 | `result-track:ded559b694a98ba9cfc6048f0561cf4a4606146cfe256c9bf46677f8050984cf` |
| 51 | `theorem` | [least_ascending_central_series_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/least-ascending-central-series-length-eq-nilpotencyclass.md) | 571 | `result-track:e437c26f43a33142f70664093c052b1d428f1742612e5d70bcf3f85bb9987a60` |
| 52 | `theorem` | [least_descending_central_series_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/least-descending-central-series-length-eq-nilpotencyclass.md) | 587 | `result-track:194d986438f93d19f702abba39bb5d6ca46e96aa4b6b94a2199abfddb5665e2e` |
| 53 | `theorem` | [lowerCentralSeries_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-length-eq-nilpotencyclass.md) | 607 | `result-track:12420325a112c1b2d71a65dba62d2c81be6a6c931fc53c69d27c858da038dd9b` |
| 54 | `theorem` | [lowerCentralSeries_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-nilpotencyclass.md) | 618 | `result-track:c1f6e399b1358f426275b3da5282af0707e6bc8d1059cf37502f825fd4d83ef8` |
| 55 | `theorem` | [lowerCentralSeries_eq_bot_iff_nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-eq-bot-iff-nilpotencyclass-le.md) | 625 | `result-track:5188ddb2873ac0f80a8d164cc5515fd170f1503a28be58948912a1a74271b47a` |
| 56 | `theorem` | [lowerCentralSeries_eq_bot_iff_upperCentralSeries_eq_top](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-eq-bot-iff-uppercentralseries-eq-top.md) | 638 | `result-track:3df21230aa2d73ce757c4e7860996e4d80b006968b816675d93ab283637a76b4` |
| 57 | `theorem` | [lowerCentralSeries_le_self](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-le-self.md) | 655 | `result-track:cc27cf4f43f398e945d31e57c9bb90603a2400511df2be8a0aecb24d95edbc16` |
| 58 | `theorem` | [lowerCentralSeries_mono](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-mono.md) | 660 | `result-track:a764ab5749453a942bc93e044641d501b4df41b34ddaac3fa4122c093dd9d927` |
| 59 | `theorem` | [lowerCentralSeries_map_subtype_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-map-subtype-le.md) | 668 | `result-track:aa9b742356703a2e9b772470dd74900b05b63435fa60262f30d6df1e418eda1a` |
| 60 | `theorem` | [lowerCentralSeries.map](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-map.md) | 675 | `result-track:88dd98d406175b360c1f2f94b884d9390df5313546d82ec7f7f42096f2d4aae9` |
| 61 | `instance` | [lowerCentralSeries_normal](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-normal.md) | 681 | `declaration-track:c6c368bb91297d957227db07b688ee0c7cc8bc8131259f8f3ef0cc93d30fb15e` |
| 62 | `instance` | [isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-source-edition-2.md) | 689 | `declaration-track:a9f643c37743ddaa561112463587ad6df8a5b09ee7030b02423b3a41622c7791` |
| 63 | `theorem` | [nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-le.md) | 699 | `result-track:882411d2fade84ff1015689e10313cfe9c746ad01717fa7a651b54a7e5210a6e` |
| 64 | `theorem` | [isNilpotent_of_lowerCentralSeries_eq_bot](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-of-lowercentralseries-eq-bot.md) | 708 | `result-track:852a8976846dee5aad3690a83ddd1bb20fe2f835d4ed9412dd6ba8fd874f1e27` |
| 65 | `theorem` | [lowerCentralSeries_eq_bot_of_nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-eq-bot-of-nilpotencyclass-le.md) | 713 | `result-track:ed2f0374d9c72259a7ddf5f1fa96b0d42d3094a23cf1e2171c9c1711d5503ef1` |
| 66 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/instance-source-edition-6.md) | 720 | `declaration-track:abb11e625f55294f4fea8c0dbd7b5c3939f6d9f237da4f9323be2a2a1b10c6ec` |
| 67 | `theorem` | [upperCentralSeries.map](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-map.md) | 725 | `result-track:716614ac18619e5b67c7864804788ea0357f2d56815d1423652016184b477f26` |
| 68 | `theorem` | [lowerCentralSeries_succ_eq_bot](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/lowercentralseries-succ-eq-bot.md) | 735 | `result-track:b5830830c46ec4beb3815a5854929d40e94f536973b02497b135bf3505c6b427` |
| 69 | `theorem` | [isNilpotent_of_ker_le_center](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-of-ker-le-center.md) | 747 | `result-track:051509a9db9c38f0e23a33d6b8e1f4ed7c61bf09c726cad646242a701e11d442` |
| 70 | `theorem` | [nilpotencyClass_le_of_ker_le_center](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-le-of-ker-le-center.md) | 761 | `result-track:78be45a66d67b94073b4348921a80270651d92b4af57b969330f27cdca8ba768` |
| 71 | `theorem` | [nilpotent_of_surjective](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotent-of-surjective.md) | 776 | `result-track:66a59dbfa57728ef3de805c5a99697a611c613fbc14dd6b314a74f07ed243a84` |
| 72 | `theorem` | [nilpotencyClass_le_of_surjective](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-le-of-surjective.md) | 791 | `result-track:57470870142224d58a543f62691ae80162a70bd1fb3d191fb737d6ae06a292a4` |
| 73 | `theorem` | [nilpotent_of_mulEquiv](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotent-of-mulequiv.md) | 807 | `result-track:599a0b9af2c29d7d40a512b3bb1dbb5ce084ecc4898ee51bf0fe05854949ef89` |
| 74 | `instance` | [nilpotent_quotient_of_nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotent-quotient-of-nilpotent.md) | 813 | `declaration-track:c91eb2163ecb55c5b13257a246980f67a03a38b1f753ae0a3266e44c13f37ce5` |
| 75 | `theorem` | [nilpotencyClass_quotient_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-quotient-le.md) | 820 | `result-track:5e523d1fe1ef4a31372a148b3548341be1b1a95bc2244096e5d4f197f804fb15` |
| 76 | `theorem` | [comap_center_subst](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/comap-center-subst.md) | 832 | `result-track:e59b9152b679f79ff212986eb7feb9a0bee5240db99d901b0af80d6c2c48a11c` |
| 77 | `theorem` | [comap_upperCentralSeries_quotient_center](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/comap-uppercentralseries-quotient-center.md) | 836 | `result-track:e5b152fdcbda9a369815d464d767c478157cd3b5f241adf16e5a130fbc6a9c2a` |
| 78 | `theorem` | [nilpotencyClass_zero_iff_subsingleton](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-zero-iff-subsingleton.md) | 860 | `result-track:ee3eb50ca217949170d375ccebd14c97475adf8ff5514f732cd7626a9bd917ea` |
| 79 | `theorem` | [of_quotient_center_nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/of-quotient-center-nilpotent.md) | 868 | `result-track:7f738a7af031a3ff93b7f83c0ef106abf3432cbf1c5ef00e6eef809564def15c` |
| 80 | `theorem` | [nilpotencyClass_quotient_center](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-quotient-center.md) | 875 | `result-track:b1337dcea7433634c9daa35f15e661bb1201fbaab9d77c4153ec8e8b20c75f19` |
| 81 | `theorem` | [nilpotencyClass_eq_quotient_center_plus_one](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-eq-quotient-center-plus-one.md) | 899 | `result-track:67a54858466b80823e356bcdb566c7fdaefd9fab9bd22970646d63810b6633b4` |
| 82 | `theorem` | [nilpotent_center_quotient_ind](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotent-center-quotient-ind.md) | 914 | `result-track:8b7013310d0e3e92085ebcd5cb3c2b9a5092cd42d2bddb72dad443e2681d5ccd` |
| 83 | `theorem` | [Subgroup.derived_le_lower_central](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-derived-le-lower-central.md) | 931 | `result-track:20774f4ac9e81c4d50faa8be589624949ad1e4a228138c41cb19208a3a19e812` |
| 84 | `theorem` | [Subgroup.upperCentralSeries_one_eq_top_iff](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-uppercentralseries-one-eq-top-iff.md) | 938 | `result-track:abd25b94c05b91772b80f4de8f035f8e0923335097360a93e9ed589612b9f24b` |
| 85 | `theorem` | [Subgroup.lowerCentralSeries_one_eq_bot_iff](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-lowercentralseries-one-eq-bot-iff.md) | 944 | `result-track:f27b075ab7acb8aea93f2adb4343598a25ffc4913a5d7390dd2b15bb9b4b564d` |
| 86 | `theorem` | [Group.IsNilpotent.nilpotencyClass_le_one_iff](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-nilpotencyclass-le-one-iff.md) | 950 | `result-track:1b4b4efd44fbfa7fb8a3ce8b36ea77e7a6cafe30875972f109b5e4e1e95eb533` |
| 87 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/instance-source-edition-7.md) | 957 | `declaration-track:cc1c5f8a81ac1dab8fd62d022d41ce1fc2f802203bcff2ed46cdf384c002923b` |
| 88 | `theorem` | [CommGroup.nilpotencyClass_le_one](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/commgroup-nilpotencyclass-le-one.md) | 965 | `result-track:275e5d90ae624af6608a9b493243602d1d14f155cd613563ba47846a29c17c64` |
| 89 | `def` | [commGroupOfNilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/commgroupofnilpotencyclass.md) | 973 | `declaration-track:c9d555658de04ca2d303164bad223f0a81a9ec11db043064acc5dd06382040e8` |
| 90 | `lemma` | [upperCentralSeries.eq_ge_of_eq_succ](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-eq-ge-of-eq-succ.md) | 981 | `result-track:fe62541c1628d5453cf5a045d903c44ac8b95cb07ead5e72f2343ffbf5d001f7` |
| 91 | `lemma` | [upperCentralSeries.eq_ge_of_eq_gt](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-eq-ge-of-eq-gt.md) | 991 | `result-track:7c601d5806cbf973d38150df3dddf46ad01d329dbe36f8a97ec2a7930bdbccf3` |
| 92 | `lemma` | [upperCentralSeries.eq_top](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-eq-top.md) | 1002 | `result-track:b5c1e269513aa9c835e892f4ed3dce257ebcfeff40828737bed8b99ff8f8d265` |
| 93 | `lemma` | [nilpotencyClass_le_of_upperCentralSeries_eq](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-le-of-uppercentralseries-eq.md) | 1009 | `result-track:f226e09e0e0b62f8a67031ff50313ab6c289fe33e23920e5271e64bb6ffb7178` |
| 94 | `lemma` | [upperCentralSeries.StrictMonoOn](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-strictmonoon.md) | 1020 | `result-track:c011404c0360424b1a3ffbb5f98bd4e1088ad81e8fc1eaefc4353b1dbf17629a` |
| 95 | `lemma` | [upperCentralSeries.card_image_eq_of_le_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/uppercentralseries-card-image-eq-of-le-nilpotencyclass.md) | 1033 | `result-track:bbeea97fbe30617864b293619b6d67cf29a9013ca37da681f149e86df0902af2` |
| 96 | `theorem` | [Group.IsNilpotent.inf_center_ne_bot_of_normal](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-inf-center-ne-bot-of-normal.md) | 1047 | `result-track:358f69c0ca188af2f6c85c3d9e1877d454d77fa63731a0d90f91a2fd0455eb0e` |
| 97 | `theorem` | [Group.IsNilpotent.center_ne_bot](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-center-ne-bot.md) | 1061 | `result-track:84a8484e18835c88a7441c0db0c7b1d2074332fb79303406752919140c2df548` |
| 98 | `theorem` | [Subgroup.lowerCentralSeries_prod](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-lowercentralseries-prod.md) | 1069 | `result-track:714289b193a102bf946d2b86a5dbd10c33290c194f68c8b321956a09881e9ee9` |
| 99 | `theorem` | [Subgroup.top_lowerCentralSeries_prod](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-top-lowercentralseries-prod.md) | 1078 | `result-track:ccce6b2a1e070cdb06088bdab1eecac4223da0060a5a8608628184508b83308c` |
| 100 | `instance` | [Group.isNilpotent_prod](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-prod.md) | 1085 | `declaration-track:d3af738925d9250d2df26d68a4f7fc2ff5ed99359686a70663e1a797af3735f4` |
| 101 | `theorem` | [Group.nilpotencyClass_prod](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-nilpotencyclass-prod.md) | 1095 | `result-track:7ff87a30575ef9acfe5db43bde09bf30d44e4f9c831110240d3b952ea82ce9e9` |
| 102 | `theorem` | [Subgroup.lowerCentralSeries_pi_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-lowercentralseries-pi-le.md) | 1110 | `result-track:ebc4fe0d27033f3949188853cdbbfae62f0a30c6df669e0b6b1bd89e05a8c919` |
| 103 | `theorem` | [Subgroup.top_lowerCentralSeries_pi_le](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-top-lowercentralseries-pi-le.md) | 1121 | `result-track:bad3f9be75967aac45744520cd8ae283b13b342c6cf33418b64296add954941c` |
| 104 | `theorem` | [Group.isNilpotent_pi_of_bounded_class](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-pi-of-bounded-class.md) | 1130 | `result-track:d474d1e37e24fb8258d8c8861a95953545cf8fcd9f491b1abbb6a3343a5e56d5` |
| 105 | `theorem` | [Subgroup.lowerCentralSeries_pi_of_finite](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-lowercentralseries-pi-of-finite.md) | 1145 | `result-track:d12f3f69f1fa404a9d60f580b1f9b972a2a21aa44f2b32640576a038ee4c5e67` |
| 106 | `theorem` | [Subgroup.top_lowerCentralSeries_pi_of_finite](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/subgroup-top-lowercentralseries-pi-of-finite.md) | 1154 | `result-track:5a4719bef4fcf033e4adee4e56fb43c9e4ba7c6d7fac782186e9410a762c331e` |
| 107 | `instance` | [Group.isNilpotent_pi](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-pi.md) | 1161 | `declaration-track:9cb73902913647934286be872234a2fe9de05d648732943850aade2eadb32bad` |
| 108 | `theorem` | [Group.nilpotencyClass_pi](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-nilpotencyclass-pi.md) | 1173 | `result-track:3d427a3e1b0a08068a253aad78349853d8a787f1e593705e20fbe347eb947afa` |
| 109 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/instance-source-edition-8.md) | 1183 | `declaration-track:fdbcb7ed38fbd5f601dcb90ab4833fb4bb8d614cad6198c98b52ee7f74459cbc` |
| 110 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/instance-source-edition-4.md) | 1189 | `declaration-track:8d66ecaea6e663b68f17f1a1d93ceb7bc4e88cbb6860df4e6d003952ec5e406c` |
| 111 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/instance-source-edition-5.md) | 1192 | `declaration-track:aaebaf64eb4b0148f0b0649239051246bd6260549a1bdf1e7895a919c74da57b` |
| 112 | `lemma` | [nilpotencyClass_le_one_of_isSimple_of_isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/nilpotencyclass-le-one-of-issimple-of-isnilpotent.md) | 1197 | `result-track:9ab4cbe524bacf1246b31db63eb51545010c65d6840150b0ad7c1dfc244a3968` |
| 113 | `theorem` | [normalizerCondition_of_isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/normalizercondition-of-isnilpotent.md) | 1201 | `result-track:0179483afc5565ab8d19bffadcb785f0a7c8894c85bc2338e9c720fde13cc39b` |
| 114 | `theorem` | [IsNilpotent.commute_of_orderOf_coprime](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/isnilpotent-commute-of-orderof-coprime.md) | 1222 | `result-track:65ea4c93050ab9f7ea3c159f332c375c41abacd7881020f12752b7a36760798d` |
| 115 | `theorem` | [IsPGroup.isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/ispgroup-isnilpotent.md) | 1247 | `result-track:ca84e74d0c5d4acb26fc040121a8356afee1fac069020cf0874de88bdc26c4dd` |
| 116 | `theorem` | [Group.isNilpotent_of_product_of_sylow_group](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-of-product-of-sylow-group.md) | 1262 | `result-track:d1a00035fb27f5229f77848c0ed7a29937ccc592335e6df63e442c554a64f40c` |
| 117 | `theorem` | [Group.isNilpotent_of_finite_tfae](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-of-finite-tfae.md) | 1275 | `result-track:c69a7651f6d1153638b58a01182260de30bd44ca1f7b4ca0ec4d533683169f8d` |
| 118 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/instance-source-edition-3.md) | 1292 | `declaration-track:63d6ed3a6db480d66f26c7f82ac832c0d7b3cc2f4ef12487bf561f831acb4d23` |
| 119 | `lemma` | [Group.IsNilpotent.prime_dvd_card_center](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-prime-dvd-card-center.md) | 1297 | `result-track:ff3c1d3236b9bda9e84c4f278a3dccbf209b3a129bc56b003162579835bb94b4` |
| 120 | `theorem` | [Group.IsNilpotent.exists_normal_index_eq_of_dvd_card](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-exists-normal-index-eq-of-dvd-card.md) | 1305 | `result-track:212334456914c12fbfdbae4b4dd35776ab7d936758fb5c4f2c592be5b8688664` |
| 121 | `theorem` | [Group.IsNilpotent.exists_normal_card_eq_of_dvd_card](../../../../GroupTheoryAndGeneralizations/NilpotentPublic.lean/declarations/group-isnilpotent-exists-normal-card-eq-of-dvd-card.md) | 1327 | `result-track:555c071923a1aa0db5602bf8fe43f635b565bfa4fac3b0cb26a4b2cb3a5f2050` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6f509533eb82555dfc5cc5eaf7b8d623e8b3c99fd69326899d1e281c38ea0bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
