# Verification target: Nilpotent Is Nilpotent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e14d4b0d7bafda7bcbc82da04ff2817fef0073a",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e14d4b0d7bafda7bcbc82da04ff2817fef0073a`.

Source path: `GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Solvable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Sylow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Order` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperCentralSeriesStep](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseriesstep.md) | 88 | `declaration-track:b729bb0de0093bf191a77246bca4a281d1cac3cea4189f599befc298125bbb17` |
| 2 | `theorem` | [mem_upperCentralSeriesStep](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/mem-uppercentralseriesstep.md) | 99 | `result-track:e7056652701a502b0bfc50a92f0ac26ea5ff5b9f4af73055aeb64c6ec1dbf756` |
| 3 | `theorem` | [upperCentralSeriesStep_eq_comap_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseriesstep-eq-comap-center.md) | 106 | `result-track:29bffa2aaeb709bb07fbb1c01de4bce5bb75c24ac2d063e611923cc464a1093a` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/instance-source-edition-3.md) | 115 | `declaration-track:804e3c7098be96bab1f8f4593975d863ab05509a5a86c5257dc5a8f1dd5026c9` |
| 5 | `def` | [upperCentralSeriesAux](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseriesaux.md) | 123 | `declaration-track:8a1f46947ca32c15cef46a89158106b9781c44db3f7b7a7e43d71497d9070936` |
| 6 | `def` | [upperCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries.md) | 131 | `declaration-track:0af3eb7470038cf6a1df662359239b53267cf0013ec7c6ed9b6ad3bb75db9e16` |
| 7 | `instance` | [upperCentralSeries_normal](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries-normal.md) | 134 | `declaration-track:18d040acd5a74d7fc84ed64a9a77253d6134f3753ea4c232539293d8d2073cfa` |
| 8 | `theorem` | [upperCentralSeries_zero](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries-zero.md) | 138 | `result-track:58e7e06d521f1a4fe7434f6b4f11a510544b156a0e7caba486ea1e91c46e45fd` |
| 9 | `theorem` | [upperCentralSeries_one](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries-one.md) | 141 | `result-track:f94b4067662c9266f4d870839616711765f721846e7617b4ac3d28b78890b4d0` |
| 10 | `theorem` | [mem_upperCentralSeries_succ_iff](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/mem-uppercentralseries-succ-iff.md) | 151 | `result-track:c315e704db16f30100f8e861813c7adf909e8e8d91c8b4e8bed624464a043397` |
| 11 | `lemma` | [comap_upperCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/comap-uppercentralseries.md) | 155 | `result-track:eb9e7391ee478c100021efcd61e6223083dafaf05b4b1ee131e2ad5c5b9a23f3` |
| 12 | `class` | [IsNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent.md) | 170 | `declaration-track:9cb614e4cdd4bc7a91c691a72057478926ed827ba71670436c871c00b0a2740f` |
| 13 | `lemma` | [IsNilpotent.nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-nilpotent.md) | 173 | `result-track:9049d59face4bff676f70ab150b577d95be830c9c0d58f056ad0e99b29265c5a` |
| 14 | `lemma` | [isNilpotent_congr](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-congr.md) | 176 | `result-track:8dcac39abc0b51320058a5d3f283e94772a5396ddac69a0f90cffe94fd37bc0b` |
| 15 | `lemma` | [isNilpotent_top](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-top.md) | 182 | `result-track:81b874b3cb9e5065e57aef13a2463b0b7164f6d8d9f5aaf165d57f8ddd315346` |
| 16 | `def` | [IsVirtuallyNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isvirtuallynilpotent.md) | 187 | `declaration-track:06991b4c9e3c47735942ca036a922bb559ea44d418918fb1cdf0f30af6f9800c` |
| 17 | `lemma` | [IsNilpotent.isVirtuallyNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-isvirtuallynilpotent.md) | 189 | `result-track:8b9c82c7ad2b02e6c3918691605a13719ef0b79e171cb6b18d49419c4d80cf14` |
| 18 | `def` | [IsAscendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isascendingcentralseries.md) | 198 | `declaration-track:e85ea987d09186580d663f58bf2f72745aa629e7a165afae2e0514319817492d` |
| 19 | `def` | [IsDescendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isdescendingcentralseries.md) | 203 | `declaration-track:63ecf88f56bf1de830d6970b0af00d3b2f08382fd596e1d133666272e0292c66` |
| 20 | `theorem` | [ascending_central_series_le_upper](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/ascending-central-series-le-upper.md) | 207 | `result-track:6b2e3deba82c1b912a8d794272cbfd09f4b1da51be731cdca6e853ab2b409464` |
| 21 | `theorem` | [upperCentralSeries_isAscendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries-isascendingcentralseries.md) | 218 | `result-track:d59aa0eea1210aab724dd9d7827b410ad5dc7d443e069185aec827ac44db39bc` |
| 22 | `theorem` | [upperCentralSeries_mono](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries-mono.md) | 222 | `result-track:6804aeec80c36697c420b1d581b6d6e56985973a6377afb319660f4a4096f939` |
| 23 | `theorem` | [nilpotent_iff_finite_ascending_central_series](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotent-iff-finite-ascending-central-series.md) | 230 | `result-track:f730ae40c672ce8294b4e5f6b9c06470ecf113bfec69f367099cdf4ed1a7def9` |
| 24 | `theorem` | [is_descending_rev_series_of_is_ascending](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/is-descending-rev-series-of-is-ascending.md) | 240 | `result-track:017e0409223245699868f03778ec9ad1676931e2ffa640e0ae4ac899ec73b5d4` |
| 25 | `theorem` | [is_ascending_rev_series_of_is_descending](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/is-ascending-rev-series-of-is-descending.md) | 258 | `result-track:2f9f667e2ce34063aa471da8808cbb792f00dda960a63b579858c60e73157ffe` |
| 26 | `theorem` | [nilpotent_iff_finite_descending_central_series](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotent-iff-finite-descending-central-series.md) | 273 | `result-track:07f566fef8f5a2b42b20cd10ce71f8eca4ace77042ce76e95f950a6aee670c6a` |
| 27 | `def` | [lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries.md) | 290 | `declaration-track:9213a490ce10d5de6508f4c67939eab441885f5fa4f8ee755693c9646003751f` |
| 28 | `theorem` | [lowerCentralSeries_zero](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-zero.md) | 297 | `result-track:eb469326ffb1f0abde630003f444f9ac88fa0ad8087c6b6e8b5959b28fbcf44b` |
| 29 | `theorem` | [lowerCentralSeries_one](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-one.md) | 300 | `result-track:b91234e2c6d8b73788ebae066186836167fa65ec12a17fb06b0f36c347294bb8` |
| 30 | `theorem` | [mem_lowerCentralSeries_succ_iff](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/mem-lowercentralseries-succ-iff.md) | 302 | `result-track:5be388c7a470ed8b0fe744c8b57dbe77b15de5b5bfb13861d69971b1e49adf63` |
| 31 | `theorem` | [lowerCentralSeries_succ](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-succ.md) | 307 | `result-track:3609ed34e4e603e9390484b8542c2d4ce012bd6af7b735453c4c1d0791ac355f` |
| 32 | `instance` | [lowerCentralSeries_normal](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-normal.md) | 312 | `declaration-track:27a061a60e101dc2a0493077fa7582d8349d4955f6374cb32b5463b702910554` |
| 33 | `theorem` | [lowerCentralSeries_antitone](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-antitone.md) | 317 | `result-track:5453c3e4637f325c1ebfa9e42003a242b95a00783fa4663d6f94e6d5524c2b1d` |
| 34 | `theorem` | [lowerCentralSeries_isDescendingCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-isdescendingcentralseries.md) | 329 | `result-track:a65a393ba78008c7bd46ebe2b71bf480ddf0594fa044d690e8484276d1373987` |
| 35 | `theorem` | [descending_central_series_ge_lower](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/descending-central-series-ge-lower.md) | 337 | `result-track:55302cb2733f29a52fcc84e185dc816269f074a6e28e515ed98817938268d05e` |
| 36 | `theorem` | [nilpotent_iff_lowerCentralSeries](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotent-iff-lowercentralseries.md) | 345 | `result-track:76378834d5e5e5be25be697f6218b7f56ed259a9d6cd95bfb2076f35427f47bd` |
| 37 | `def` | [Group.nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/group-nilpotencyclass.md) | 363 | `declaration-track:6a61e21c05f2de8b520714d0ce01949bb50e6f332ebc58b7fca7e5ac75f04546` |
| 38 | `theorem` | [upperCentralSeries_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries-nilpotencyclass.md) | 367 | `result-track:e0925648cef664de94eb54b056621c8eb3af5b7fc705fecacb70700522c182ff` |
| 39 | `theorem` | [upperCentralSeries_eq_top_iff_nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries-eq-top-iff-nilpotencyclass-le.md) | 370 | `result-track:c912ab6e0a46277a64c0ed8e7b70ae4114269404acd1b2b13c1c272f4d5f6d5e` |
| 40 | `theorem` | [least_ascending_central_series_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/least-ascending-central-series-length-eq-nilpotencyclass.md) | 383 | `result-track:f9a5f1785b63a9c4ec2bcfae2be197b8675c224cf5ee9d6189dcbed4e7ae0f43` |
| 41 | `theorem` | [least_descending_central_series_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/least-descending-central-series-length-eq-nilpotencyclass.md) | 396 | `result-track:dc02c8a6e8672caf6f0e90188bd65e0bbbb542248f792a2b6e7aa10534b20c78` |
| 42 | `theorem` | [lowerCentralSeries_length_eq_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-length-eq-nilpotencyclass.md) | 414 | `result-track:8b637c52fa389a5b51ed138331fb996a148d365404f429a8ea6dd2cf1a442244` |
| 43 | `theorem` | [lowerCentralSeries_nilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-nilpotencyclass.md) | 425 | `result-track:c3aabb34dbb40d2fc3956a0b37edd35e9a2f00a5dae43efb8b3028dbeb2fca83` |
| 44 | `theorem` | [lowerCentralSeries_eq_bot_iff_nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-eq-bot-iff-nilpotencyclass-le.md) | 431 | `result-track:2f22ce2cb8e8e8be6ec438292becc5a2de18eab33387b88ca43ee7c1a21a8483` |
| 45 | `theorem` | [lowerCentralSeries_map_subtype_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-map-subtype-le.md) | 444 | `result-track:a4b0156f12e6dcdca3599a5b4edba59a1fe901fc56330919462b8b107b9f744b` |
| 46 | `instance` | [Subgroup.isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/subgroup-isnilpotent.md) | 454 | `declaration-track:1b8e183413f72389b22d313580c6f53d770e77998b3c1960cef225e74aa32e34` |
| 47 | `theorem` | [Subgroup.nilpotencyClass_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/subgroup-nilpotencyclass-le.md) | 463 | `result-track:6fb71817ca18b3925eb50557957a87e2e2e4b224fef778718f46cf105a5e6d14` |
| 48 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/instance.md) | 472 | `declaration-track:04df4f6744fe2580fb9c80f0d5bfe37b1ce037046ad702f1a9c9495a5995ddc8` |
| 49 | `theorem` | [upperCentralSeries.map](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/uppercentralseries-map.md) | 475 | `result-track:ca09e5a9b50106dc73153354c47c3d15a26776f7713a90449c72a7acb0985a46` |
| 50 | `theorem` | [lowerCentralSeries.map](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-map.md) | 483 | `result-track:9c963b4b8b47d7c84b0c64373fd705f7914eabef5404eb15baf7ff82286ae3df` |
| 51 | `theorem` | [lowerCentralSeries_succ_eq_bot](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-succ-eq-bot.md) | 495 | `result-track:8fa0c6f863fa5decc5d34bb8bdaeaa1c30984b11f7fcd63df070089fcbaf3411` |
| 52 | `theorem` | [isNilpotent_of_ker_le_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-of-ker-le-center.md) | 504 | `result-track:f4a94a362592e2319e7a41411026073af75c434f6954c61f2acf3b56e7ea2418` |
| 53 | `theorem` | [nilpotencyClass_le_of_ker_le_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotencyclass-le-of-ker-le-center.md) | 512 | `result-track:106e46e9a2f0c638338a117258d7b0e27035ec14625ea505af4b8d1182344618` |
| 54 | `theorem` | [nilpotent_of_surjective](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotent-of-surjective.md) | 525 | `result-track:470013864971093b5c6462eff7f8a112b71e20b7b4f3cacdaa6573faf3d54386` |
| 55 | `theorem` | [nilpotencyClass_le_of_surjective](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotencyclass-le-of-surjective.md) | 538 | `result-track:f3194b819d795c32fb2b6eeb34fc36f41e039d74d4655173b9b875dbc783dfc6` |
| 56 | `theorem` | [nilpotent_of_mulEquiv](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotent-of-mulequiv.md) | 551 | `result-track:f3a0c2f3ce3d05e1eb7e3aa1bc44e8a6cc5a855aa5652bddea3aa05e00d137d9` |
| 57 | `instance` | [nilpotent_quotient_of_nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotent-quotient-of-nilpotent.md) | 556 | `declaration-track:454a0770ff85834367a10bbbee60728ce7f4df8bcf5066c83128a92db53bcb56` |
| 58 | `theorem` | [nilpotencyClass_quotient_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotencyclass-quotient-le.md) | 561 | `result-track:caa84b65a0c6b244d9e0ea72fc5ca2674bd6bfdd105dc66894ffc94c1abc80b4` |
| 59 | `theorem` | [comap_center_subst](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/comap-center-subst.md) | 566 | `result-track:a428f5e9fa36f837d7b869344f31d3568e89aed09e4e19f4dc152fde85533e49` |
| 60 | `theorem` | [comap_upperCentralSeries_quotient_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/comap-uppercentralseries-quotient-center.md) | 569 | `result-track:c3c029c66254add7078dcfb7f499bf6ea640952bdeb8500449e10dbdc16a2a55` |
| 61 | `theorem` | [nilpotencyClass_zero_iff_subsingleton](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotencyclass-zero-iff-subsingleton.md) | 586 | `result-track:cd618c6f748587cc2355d3c5efcc808041b74c78634bdfa933bb066e4e772066` |
| 62 | `theorem` | [nilpotencyClass_quotient_center](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotencyclass-quotient-center.md) | 593 | `result-track:d0fd7b95e9ca2305cefe36694d31d21ba42500f58af879d9237f977148a44994` |
| 63 | `theorem` | [nilpotencyClass_eq_quotient_center_plus_one](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotencyclass-eq-quotient-center-plus-one.md) | 612 | `result-track:c3b63e9d370dd17745c2021210a7a08fe1a3d51ff9f0b08df6de91c8561e7ce4` |
| 64 | `theorem` | [of_quotient_center_nilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/of-quotient-center-nilpotent.md) | 622 | `result-track:c32cd15c2f4411f688bb07a051bcb9f9f135dfdfb50e66516bbda7bf5608b3ea` |
| 65 | `theorem` | [nilpotent_center_quotient_ind](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotent-center-quotient-ind.md) | 631 | `result-track:8235bbd3c771fd623f26aca413bdf69ae0ba241b1a486840757c9e1ab4c90aa1` |
| 66 | `theorem` | [derived_le_lower_central](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/derived-le-lower-central.md) | 643 | `result-track:3eb56be0f5795228e3b6b05f31043ad3a5fdd36b4cb9a8de70b5badbe241fe69` |
| 67 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/instance-source-edition-4.md) | 650 | `declaration-track:ae46f715a038621eba701cda3faef10be6ccfb958d805f299652f04e3ba4b18e` |
| 68 | `theorem` | [CommGroup.nilpotencyClass_le_one](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/commgroup-nilpotencyclass-le-one.md) | 656 | `result-track:e8f7e4848e89838c6c36987d1f0c981f8e4d7b37bd1042609168f241fda94aad` |
| 69 | `def` | [commGroupOfNilpotencyClass](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/commgroupofnilpotencyclass.md) | 662 | `declaration-track:5b47ef1b73faef91343d9b559eb245ccd53ceab0176640099f8db113db8ffab0` |
| 70 | `theorem` | [lowerCentralSeries_prod](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-prod.md) | 671 | `result-track:e8468d457ad0c5cd9e1aa7fe1a5b4734d5beee9e679ffd7fed1d50651e030454` |
| 71 | `instance` | [isNilpotent_prod](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-prod.md) | 685 | `declaration-track:74b99c03eabf1e4339400dd9527f6b1875623e0720e1365637638a20071207c4` |
| 72 | `theorem` | [nilpotencyClass_prod](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotencyclass-prod.md) | 693 | `result-track:f24e95f8ab856c7673820640a922f94bfebeda4939f37b6bd5aea4f051322893` |
| 73 | `theorem` | [lowerCentralSeries_pi_le](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-pi-le.md) | 707 | `result-track:4e28beff0c3855f0e0048eeef080f34f26eb55287cd544046482bec97ba6e0cb` |
| 74 | `theorem` | [isNilpotent_pi_of_bounded_class](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-pi-of-bounded-class.md) | 721 | `result-track:49ceb7d87e42ba5c4ec315aa1a2718c927786520d86b99a2440ac49ecb288bfa` |
| 75 | `theorem` | [lowerCentralSeries_pi_of_finite](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/lowercentralseries-pi-of-finite.md) | 738 | `result-track:a69949b4e056ebc562f8c2c60fcb6bd0b3561662b5fd1dd33145bf4d1eed9297` |
| 76 | `instance` | [isNilpotent_pi](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-pi.md) | 752 | `declaration-track:70088b0422dd2670329d81d04ec56a7a3d8d0e8bee3d09d7393f1a69af76eaaa` |
| 77 | `theorem` | [nilpotencyClass_pi](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/nilpotencyclass-pi.md) | 762 | `result-track:786f25f7858927a3c57fd4f9044d7fe01f154fd816e04ca3e5d59ec03cd589b7` |
| 78 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/instance-source-edition-2.md) | 772 | `declaration-track:686972819fcb71700c8a8f21393db219f3338ff7097c03333fb2f025c66c3b25` |
| 79 | `theorem` | [normalizerCondition_of_isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/normalizercondition-of-isnilpotent.md) | 778 | `result-track:303656ec4e15a31f28a41c7d93da8b9d2206d7ba07dcd4cb709f20538767c10d` |
| 80 | `theorem` | [IsPGroup.isNilpotent](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/ispgroup-isnilpotent.md) | 805 | `result-track:c6214cb5f9d0cf96e7a3c267b544454a773a22f7356c320cac55b1bb46824b17` |
| 81 | `theorem` | [isNilpotent_of_product_of_sylow_group](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-of-product-of-sylow-group.md) | 828 | `result-track:8b2ca9e73f2193cab9b6fb1de0ca6b9bee52b70047a37f89f3fdc5d91f5148af` |
| 82 | `theorem` | [isNilpotent_of_finite_tfae](../../../../GroupTheoryAndGeneralizations/NilpotentIsNilpotent.lean/declarations/isnilpotent-of-finite-tfae.md) | 842 | `result-track:67c9decb9a9e20bbd8ecf38de5c2efd7ba507cb1653f8f7f680c34ccc2e655af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd2b613157314f43dccb4e37fe67ab9902574344a257185818a0888ac75db383 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
