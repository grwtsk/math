# Verification target: Nilpotent Is Decending Rev Series Of Is Ascending

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1408797175d66cebe86309621d6063bfdcba86d4",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1408797175d66cebe86309621d6063bfdcba86d4`.

Source path: `GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Solvable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.PGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Sylow` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperCentralSeriesStep](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseriesstep.md) | 92 | `declaration-track:86316c42cce43d989e8bc90754108101c238e3964f46ca00eef405061d7c1bf4` |
| 2 | `theorem` | [mem_upperCentralSeriesStep](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/mem-uppercentralseriesstep.md) | 104 | `result-track:7de5e3cb2a297a477469338ea22075a7779c7f15e1225171a08626d667a29b9c` |
| 3 | `theorem` | [upperCentralSeriesStep_eq_comap_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseriesstep-eq-comap-center.md) | 112 | `result-track:7b56dafd1eccf0e91ae21ea069fabb4bed55957cc7fc4d48e134928ea89a04d9` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/instance.md) | 122 | `declaration-track:4e265250f5dc9184c94c6f48a62181d93b6323432e93443112cb2d8126190310` |
| 5 | `def` | [upperCentralSeriesAux](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseriesaux.md) | 130 | `declaration-track:0bdfaffb4ebdd017954087e373d290c114ef97ed3fcb48566a42a8f37cc81fcf` |
| 6 | `def` | [upperCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries.md) | 139 | `declaration-track:f62c65213139ef813287b03adf1371cd32f8b90509b8f5f89a94a92eacc67e24` |
| 7 | `instance` | [upperCentralSeries_normal](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries-normal.md) | 143 | `declaration-track:117ce1f75d127d11f49faf564b349be433d74611fc7270a48bf2274668634876` |
| 8 | `theorem` | [upperCentralSeries_zero](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries-zero.md) | 147 | `result-track:c007feeeb4f95e7a30d5d8692c0fec082579e4e5ddf9c1bd3f9c5ea7bc837977` |
| 9 | `theorem` | [upperCentralSeries_one](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries-one.md) | 151 | `result-track:2eea02afd62d16aad90824c61d1eee12013e45cf4a3822978f756953b30ee78c` |
| 10 | `theorem` | [mem_upperCentralSeries_succ_iff](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/mem-uppercentralseries-succ-iff.md) | 160 | `result-track:b5f7e29cfb611e3b1ad223ee7cc0d2e202a191e100d66d19b6e8830ee411e9ee` |
| 11 | `class` | [Group.IsNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/group-isnilpotent.md) | 168 | `declaration-track:1732f5d0663881060e129d2fec8936843d62fbb166c0e3cc7f94bb400ed108b0` |
| 12 | `lemma` | [Group.IsNilpotent.nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/group-isnilpotent-nilpotent.md) | 173 | `result-track:224ce032d62acbb90000da824a98fd0221fe6a9917e6bb76eb241171bff91532` |
| 13 | `def` | [IsAscendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/isascendingcentralseries.md) | 182 | `declaration-track:a99f174fb115a4d5c25ee30ae3c1292b449497e37e63a21533cc93c29e1d911d` |
| 14 | `def` | [IsDescendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/isdescendingcentralseries.md) | 188 | `declaration-track:a3711118e1fba1867cb2446a2f0e07a3ade441390c52c3c4b55414d81c253ed7` |
| 15 | `theorem` | [ascending_central_series_le_upper](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/ascending-central-series-le-upper.md) | 193 | `result-track:0c0f52ebb2a4f783d494d8fccd23234233ef03758c364378601b877b2a8d3121` |
| 16 | `theorem` | [upperCentralSeries_isAscendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries-isascendingcentralseries.md) | 205 | `result-track:326d5fd432610676e0d61796486551eab7e38467094f7df43defac98a6df669b` |
| 17 | `theorem` | [upperCentralSeries_mono](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries-mono.md) | 210 | `result-track:465ae90f98d7aea7257ac88ed283794e627d4346797dc4e89de8859a3eef690f` |
| 18 | `theorem` | [nilpotent_iff_finite_ascending_central_series](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotent-iff-finite-ascending-central-series.md) | 219 | `result-track:770833a9028e48c2afee0f74e2cd8a6669c8a341a0fb73cf951f64c58763737a` |
| 19 | `theorem` | [is_decending_rev_series_of_is_ascending](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/is-decending-rev-series-of-is-ascending.md) | 230 | `result-track:863497b3913d047091a2acc6c837fc6afa60156a64597f4a8fa8ee8ca61b75f2` |
| 20 | `theorem` | [is_ascending_rev_series_of_is_descending](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/is-ascending-rev-series-of-is-descending.md) | 246 | `result-track:f0205c28128b3d6cacc746baac55cb27f940db74efd277f3b63a52436c66bde9` |
| 21 | `theorem` | [nilpotent_iff_finite_descending_central_series](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotent-iff-finite-descending-central-series.md) | 262 | `result-track:71d125dee5720b39cd3e67f5bb52a5f893ddb8809c5fc6e3e29bb807255d5457` |
| 22 | `def` | [lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries.md) | 280 | `declaration-track:516735ab0488bee89679c130146f059d02dea89d042eb7f36d0230aaeb5aef17` |
| 23 | `theorem` | [lowerCentralSeries_zero](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-zero.md) | 288 | `result-track:ce5c59d0d09bef3bf69be067bf29900355fa5d4fc7c9a70b5846a53ab908def3` |
| 24 | `theorem` | [lowerCentralSeries_one](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-one.md) | 292 | `result-track:6164ae15fbc0042ccc193e91144dd12073c1796df068a6d44ed230b2238ee48c` |
| 25 | `theorem` | [mem_lowerCentralSeries_succ_iff](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/mem-lowercentralseries-succ-iff.md) | 295 | `result-track:00e25e1cebbc8efe2c710e06c3b3572d0cdf5c11df19e874c9c6c4ffd451bb77` |
| 26 | `theorem` | [lowerCentralSeries_succ](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-succ.md) | 301 | `result-track:6390089573fea271491831a63ec3b6a4c777218cfcdb8a03257089e5b621cce4` |
| 27 | `instance` | [lowerCentralSeries_normal](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-normal.md) | 307 | `declaration-track:16577e5aaabff7649edc42df46929bed5afa400361aef718ba454eb6f94472b3` |
| 28 | `theorem` | [lowerCentralSeries_antitone](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-antitone.md) | 312 | `result-track:d55cf798d7461190642af146d8648a7bd35cd806552913c9c16c25da270f4b9c` |
| 29 | `theorem` | [lowerCentralSeries_isDescendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-isdescendingcentralseries.md) | 324 | `result-track:0ffb71abf0e12db5036011acb5456b645a5d17688f2f68b704e81ef30f4f38d9` |
| 30 | `theorem` | [descending_central_series_ge_lower](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/descending-central-series-ge-lower.md) | 332 | `result-track:76ff510a7d2bb678655f31e3818febeaced870eb2bc05978ff2bd6ee00ce24e4` |
| 31 | `theorem` | [nilpotent_iff_lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotent-iff-lowercentralseries.md) | 341 | `result-track:129d66806598323910f0ad6b5de611c785352f236c66c5ee2901939b4e9e973a` |
| 32 | `def` | [Group.nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/group-nilpotencyclass.md) | 362 | `declaration-track:a2aba086b2fd28f876cd67fa62a4aac0b89237d2e0c74c73be33e270a164622c` |
| 33 | `theorem` | [upperCentralSeries_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries-nilpotencyclass.md) | 368 | `result-track:40c4109b5feb14ab23eb112c33178641ec1774d1f9b26b44cc32bceb328488f8` |
| 34 | `theorem` | [upperCentralSeries_eq_top_iff_nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries-eq-top-iff-nilpotencyclass-le.md) | 372 | `result-track:f1a5413062e234c84962384c2dd8c02a87da3d77c850f40c334c2878fc454a6c` |
| 35 | `theorem` | [least_ascending_central_series_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/least-ascending-central-series-length-eq-nilpotencyclass.md) | 385 | `result-track:942e212e63af858ef9d71571645d38108405190908c152c27d993577ceb819bb` |
| 36 | `theorem` | [least_descending_central_series_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/least-descending-central-series-length-eq-nilpotencyclass.md) | 398 | `result-track:f65652f17792e6f5e61e044d258893f83c3d82024e804d98e7bebf281cbe9c8a` |
| 37 | `theorem` | [lowerCentralSeries_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-length-eq-nilpotencyclass.md) | 416 | `result-track:dde13586ce8152344a45af1eb36e94b079a6758f7b5b47e8bbd4716c5fb5e5f5` |
| 38 | `theorem` | [lowerCentralSeries_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-nilpotencyclass.md) | 428 | `result-track:3c35aff918226ac390d789fd71635eb9150fa55b2990757499a06cae08754d08` |
| 39 | `theorem` | [lowerCentralSeries_eq_bot_iff_nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-eq-bot-iff-nilpotencyclass-le.md) | 434 | `result-track:2ccb84eaac95572e669daab2b94dc0f22dd1631e690fa65be60ee64529258160` |
| 40 | `theorem` | [lowerCentralSeries_map_subtype_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-map-subtype-le.md) | 448 | `result-track:1e58bd1daf56388a213f2e332f3d635608dd72cf6f0ad85ed4540933396ebf20` |
| 41 | `instance` | [Subgroup.isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/subgroup-isnilpotent.md) | 459 | `declaration-track:ab3b28318d3653d293032882d63bbec224cf69d8484080b5962c3dc13f5b5748` |
| 42 | `theorem` | [Subgroup.nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/subgroup-nilpotencyclass-le.md) | 469 | `result-track:facbe231933b3cea35ace0a3cba05115585f18dcd10b8b5297f567734c5045aa` |
| 43 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/instance-source-edition-3.md) | 480 | `declaration-track:bcd27a118735fe4bf7c134521295e3df29b5e5498f3162746782dd307966fd4e` |
| 44 | `theorem` | [upperCentralSeries.map](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/uppercentralseries-map.md) | 484 | `result-track:e9138c1fa2e8e3de5216a03172657107e63c702a25a919e52d0c5b87d772dd0f` |
| 45 | `theorem` | [lowerCentralSeries.map](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-map.md) | 493 | `result-track:f0bf0e36928449932c97efadd3f8e591f4b3b2bbaa0f64e1781cef3351cc9efb` |
| 46 | `theorem` | [lowerCentralSeries_succ_eq_bot](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-succ-eq-bot.md) | 506 | `result-track:3bc0389b96a696427473dc035431768e40e3d73e5cf0297833cae9e0343c90cf` |
| 47 | `theorem` | [isNilpotent_of_ker_le_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/isnilpotent-of-ker-le-center.md) | 516 | `result-track:980c5993ba7fe5edd5836c99d73d32db8952f4e2c93673a0672385b0538795df` |
| 48 | `theorem` | [nilpotencyClass_le_of_ker_le_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotencyclass-le-of-ker-le-center.md) | 525 | `result-track:593b2b6cf1f986227ec3d54e5b450e2e47629bf0a792abbabf2d8e37ce8bf4a9` |
| 49 | `theorem` | [nilpotent_of_surjective](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotent-of-surjective.md) | 540 | `result-track:44ffc186f521dde42a49f310a048fc6c571f768b5063a10c59a8b980bcf9a120` |
| 50 | `theorem` | [nilpotencyClass_le_of_surjective](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotencyclass-le-of-surjective.md) | 555 | `result-track:4b058922a4c0fd5c2e52b973af967e13f7b7eade85f45babe3eecd571c3ebe91` |
| 51 | `theorem` | [nilpotent_of_mulEquiv](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotent-of-mulequiv.md) | 571 | `result-track:ea979e3c6dfdc88d52579d526476229e5dc990302a4d397e6f3b96d4171f6248` |
| 52 | `instance` | [nilpotent_quotient_of_nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotent-quotient-of-nilpotent.md) | 577 | `declaration-track:345a4e33403889eb6bd60bbd806e31a7514751e93732b40187370b6028510020` |
| 53 | `theorem` | [nilpotencyClass_quotient_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotencyclass-quotient-le.md) | 583 | `result-track:dd84acb513e37cecd7fff1fa411c15e62682c6653c1e1521abc2d9264703d876` |
| 54 | `theorem` | [comap_center_subst](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/comap-center-subst.md) | 589 | `result-track:52a8fcc826875cce58dbb4ad9c83157cb3c7648ecaaa50a3adb6939af2c1c5d6` |
| 55 | `theorem` | [comap_upperCentralSeries_quotient_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/comap-uppercentralseries-quotient-center.md) | 592 | `result-track:dc0efb50dd157b65b3da21fe4a9c058906be139672068bf66ef3c068d859af69` |
| 56 | `theorem` | [nilpotencyClass_zero_iff_subsingleton](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotencyclass-zero-iff-subsingleton.md) | 611 | `result-track:1aa5584ef827ed0cafda5e5ca39ffcced6191a812d7e8eb1c856cd5aaf803985` |
| 57 | `theorem` | [nilpotencyClass_quotient_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotencyclass-quotient-center.md) | 619 | `result-track:9f73ed25e8f50802d98234a5c665e79b341c3493e008e917e252eacfa120c986` |
| 58 | `theorem` | [nilpotencyClass_eq_quotient_center_plus_one](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotencyclass-eq-quotient-center-plus-one.md) | 641 | `result-track:23b31799d77f0cc72e3021beba56f10419532bbdcb74455c823cedb0d86320c5` |
| 59 | `theorem` | [of_quotient_center_nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/of-quotient-center-nilpotent.md) | 652 | `result-track:674827d7cc42e5bc3bfc2f2a3d26f503c306f0abdeac24c9bf4927501d2d9fe5` |
| 60 | `theorem` | [nilpotent_center_quotient_ind](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotent-center-quotient-ind.md) | 662 | `result-track:3cb225f2411484143b9edc5e6717ffa058b4538041b246dca19c53e4c9016048` |
| 61 | `theorem` | [derived_le_lower_central](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/derived-le-lower-central.md) | 675 | `result-track:c1253613e6d88ba5691df246d734cde654f4ebdb3db0954b983924ceae690676` |
| 62 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/instance-source-edition-2.md) | 683 | `declaration-track:a83be8b02817322a51f2e35df9776271c49024e629c29ebb35a88fecc8751344` |
| 63 | `theorem` | [CommGroup.nilpotencyClass_le_one](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/commgroup-nilpotencyclass-le-one.md) | 690 | `result-track:8f136b8e2322afd47b0fdb18a49aa8eeaa5b5bfc5f36791fea8d1cc68790e49d` |
| 64 | `def` | [commGroupOfNilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/commgroupofnilpotencyclass.md) | 698 | `declaration-track:88d8d8c0678a76bede745c3e1f8bf1c33ea4525ff4f1e936124e02e2380e76e8` |
| 65 | `theorem` | [lowerCentralSeries_prod](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-prod.md) | 708 | `result-track:8f39f91e077c7fe267c99b21a42f8084777be229a217f6d462ade5f470636674` |
| 66 | `instance` | [isNilpotent_prod](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/isnilpotent-prod.md) | 724 | `declaration-track:140c3db112013d70819a77c1e321be4b82174368dbe5c9a35764310f2887ac81` |
| 67 | `theorem` | [nilpotencyClass_prod](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotencyclass-prod.md) | 733 | `result-track:d0e7ec9cbe55e68cf3f9d05b3474d21bd19fccddf39e8c54e9a72d8f84bc6228` |
| 68 | `theorem` | [lowerCentralSeries_pi_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-pi-le.md) | 748 | `result-track:5f2c08d22efd5c142e898c33e4773881aeb9e73348a7f0db736ef474e9aef185` |
| 69 | `theorem` | [isNilpotent_pi_of_bounded_class](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/isnilpotent-pi-of-bounded-class.md) | 764 | `result-track:8b887ab07c82dfbc5223f10463b3d25c667bda77ca2429e279ad3b3f86cded3f` |
| 70 | `theorem` | [lowerCentralSeries_pi_of_finite](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/lowercentralseries-pi-of-finite.md) | 782 | `result-track:eec482c35a9ca9bdded8640bd56736263c5c01888de603f820539320834d888c` |
| 71 | `instance` | [isNilpotent_pi](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/isnilpotent-pi.md) | 798 | `declaration-track:e32af77948850425e4f6a572804f158b60638fcbd0bf761614de7ebab2c94aa2` |
| 72 | `theorem` | [nilpotencyClass_pi](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/nilpotencyclass-pi.md) | 810 | `result-track:5ef515360e6faeaf59939af6d39544a6b7f50c08d7cd63c800f9a2f72eefcf6d` |
| 73 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/instance-source-edition-4.md) | 821 | `declaration-track:e8129198fd7fdc0f75648a7e3af4e8eb4c71f9f68f8f56cf4ff972c8e747d1c8` |
| 74 | `theorem` | [normalizerCondition_of_isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/normalizercondition-of-isnilpotent.md) | 828 | `result-track:d9ff25a99ed98c88dacbd7eebaf8a37065eb1a70223eeb9342b9d61fc1e8d7bd` |
| 75 | `theorem` | [IsPGroup.isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/ispgroup-isnilpotent.md) | 856 | `result-track:8aeca32de1247b30ad5bb663be323a2edffb5367e8229f69adb2f9e14d2f8ed6` |
| 76 | `theorem` | [isNilpotent_of_product_of_sylow_group](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/isnilpotent-of-product-of-sylow-group.md) | 877 | `result-track:2029bd75ea7489dbfbf9cbdb7e009b17e055421e16effabe12698e1ae7b35228` |
| 77 | `theorem` | [isNilpotent_of_finite_tFAE](../../../../GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/declarations/isnilpotent-of-finite-tfae.md) | 892 | `result-track:85b291dd03fd408fa4d21765934bd2bd456be9135cd79a91c01a377744a914bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1f24bc30d636a3845482e787080813bbde5cb7a99926f50da20927d7809e659 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
