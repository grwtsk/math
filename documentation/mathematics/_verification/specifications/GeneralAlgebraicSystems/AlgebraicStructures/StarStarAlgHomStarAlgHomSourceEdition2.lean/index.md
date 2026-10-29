# Verification target: Star Star Alg Hom Star Alg Hom Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df222495515c54a612bdbcfb277520f901ff1800",
  "lexical_observation_count": 131,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant2503800a3f8e66106ae2fbc7fd1e1daa5bdc47b5849ee5d6385ec70e9ce4c4a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df222495515c54a612bdbcfb277520f901ff1800`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant2503800a3f8e66106ae2fbc7fd1e1daa5bdc47b5849ee5d6385ec70e9ce4c4a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/StarAlgHom/Variant2503800a3f8e66106ae2fbc7fd1e1daa5bdc47b5849ee5d6385ec70e9ce4c4a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.NonUnitalHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Prod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarRingHom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/nonunitalstaralghom.md) | 53 | `declaration-track:50d97ddf737f358fbb5b07ed669e256388690ea1a0fe221f0d581e2e4957354a` |
| 2 | `def` | [toNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/tononunitalstaralghom.md) | 78 | `declaration-track:6cd26d0d0f50214a0513dad99c5ce4bab7dad0468597bf17852881448dc2dab2` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance.md) | 82 | `declaration-track:0406c2ed1e824fdc674c0680f083627a776a8799d1ba156c9dd4999b59d896df` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-14.md) | 85 | `declaration-track:5875409271d27844f0fbeb1139b7942576c2f0b3070f45a2ba17f0d5cb746b21` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-3.md) | 100 | `declaration-track:12f60849ce3c4b1dc114b0ff868545ea887a76d914699a50b4aeb2c0b1049d0a` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-16.md) | 104 | `declaration-track:6f17a5d685d75210685dcbc9659ab5762c7d51550bf72e76c5d016b561cc2cf4` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-6.md) | 110 | `declaration-track:3967b6d69b0b260d5ff5edf7c81b623577ada7849f128325e51e62ed61f1883f` |
| 8 | `def` | [Simps.apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/simps-apply-source-edition-2.md) | 115 | `declaration-track:784a59759b31b550cf068ccfa27f3eb7e3119995b74e5deeca1f4b89453dd249` |
| 9 | `theorem` | [coe_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-coe.md) | 121 | `result-track:8e88f9adef84affab55d4c8cc83e0f40c98d54a88e6c565a9997f37dad7e8707` |
| 10 | `theorem` | [coe_toNonUnitalAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-tononunitalalghom.md) | 126 | `result-track:57ae6174c4f645107f7cfe1598d24ea997ef68ecec6a919aacc2b3019367093b` |
| 11 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/ext-source-edition-3.md) | 130 | `result-track:c4507835bd2e0a5f8d303bcd14f9c7c83cccaa2a4eec57f0177ee649ba8beda5` |
| 12 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/copy-source-edition-2.md) | 135 | `declaration-track:f181699fa95246331c161727401af1f18bfca45c676643cd2167156303086332` |
| 13 | `theorem` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-copy-source-edition-2.md) | 144 | `result-track:a96997df158100b8b48554fd563bda467d02a10ccfd071ada0d490b13df0fd9c` |
| 14 | `theorem` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/copy-eq-source-edition-2.md) | 147 | `result-track:d827dc5f3693490961d7c684d9b7b835e1afe720c13985ed4e9e167b78928169` |
| 15 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-mk.md) | 151 | `result-track:05d62db63c1cd71b33321ab614cd1d56803a7b2ea524becdccf8d715f1b15eb6` |
| 16 | `theorem` | [coe_mk'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-mk-source-edition-5.md) | 157 | `result-track:82ec2df7dbcf18d970a5c0cf49ed3cbfd3c612a12d079d2a5294f65aab891d64` |
| 17 | `theorem` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/mk-coe-source-edition-3.md) | 162 | `result-track:c5807956a25d6316258ca9839e588e4493edf9b7c6e68255dec5aaaabd54edff` |
| 18 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/id.md) | 172 | `declaration-track:84f950427757b3025f774cc4339c828e95c0459abc9882a05d5f8a48b3e5639c` |
| 19 | `theorem` | [coe_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-id-source-edition-2.md) | 176 | `result-track:e2fb283a72acf35ba00a37888294f0ae9855214cbf7b40168374a1437e4b0833` |
| 20 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/comp.md) | 183 | `declaration-track:951cd5599ab55e014b6a2207609b9a56b22ff3d10d4058d2ed09a0300d51eab1` |
| 21 | `theorem` | [coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-comp.md) | 190 | `result-track:42a1ee1017c454593995e4f60e34d455bfb2ce98b16bcc8cd4195df94a3d090f` |
| 22 | `theorem` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/comp-apply.md) | 194 | `result-track:1958a3023fe19f5a37ceb6905f7e4e464bac2963ee27be81c9a529d54f4224da` |
| 23 | `theorem` | [comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/comp-assoc.md) | 198 | `result-track:02e364b848b7ce2e32bbf7e41c8ede9a7bc59827a632f450f77aa5bd6ce1cff0` |
| 24 | `theorem` | [id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/id-comp-source-edition-2.md) | 203 | `result-track:a29bc0b1aac6acae94a17a4f10bb3b0f224df8d9cc0d275f400ad82b3e75342c` |
| 25 | `theorem` | [comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/comp-id.md) | 207 | `result-track:01c495c017302cea70e6b1935ddbcf5cc3e11384f144a05595c165f4e0c1bb0a` |
| 26 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-7.md) | 210 | `declaration-track:3edc482366ec95ddc4904f6282ec6a3f41d8a93d3e522ba874b05966bf2297a5` |
| 27 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-one.md) | 218 | `result-track:3480996a71d13e6e8a83b2a94009955bee5cc00d61e9f75f05183318053c7548` |
| 28 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/one-apply.md) | 221 | `result-track:2cdd38ee6a2e347d2e18dd6ced8b4650228face566aa23caa42bbe9fb4520331` |
| 29 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-2.md) | 233 | `declaration-track:11864418e36b67ff1051fa46f6d54af7fcb039e61131457150adac9d68dd9483` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-4.md) | 236 | `declaration-track:3239e971ee098383ecd23fd3a06837ee8e232dc3b454d2a0d795ec688908fcdb` |
| 31 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-11.md) | 239 | `declaration-track:4f6d567cdd3110e2c591452b623a7bb1e78a619f88a6bd67d80646e67aa93683` |
| 32 | `theorem` | [coe_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-zero.md) | 246 | `result-track:ed1b33da2a101c114287b9dacc77cbd84aeb313ab451ba44ca6d2cdc99c1de4e` |
| 33 | `theorem` | [zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/zero-apply.md) | 249 | `result-track:69f53e612ebee4f7f1df6c5ee20f5a0d329a4b173a84ecea7510dd1f7cc5d6b4` |
| 34 | `def` | [restrictScalars](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/restrictscalars.md) | 263 | `declaration-track:f64e6f8dc0757cb1b19de2ab95eb464484984f5372126f08e009a973eaa8dd72` |
| 35 | `lemma` | [restrictScalars_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/restrictscalars-apply.md) | 268 | `result-track:17095489b14455280bfb16af03c8ec34af37961cf64f5152309caeb90047da5c` |
| 36 | `lemma` | [coe_restrictScalars](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-restrictscalars.md) | 270 | `result-track:47b088749ea3c98d2f26dc31d428af23e87caf2d9392c4525c3785f82f0502d9` |
| 37 | `lemma` | [coe_restrictScalars'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-restrictscalars-source-edition-2.md) | 272 | `result-track:96f30fa43db863271696421c338f06e7d56bd2798d65f5f4ea57cb831c0f9423` |
| 38 | `theorem` | [restrictScalars_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/restrictscalars-injective.md) | 274 | `result-track:b434ce0887bebfe0788e5bfe34aaea5657a72c2756340dbdc34f72131a36eb11` |
| 39 | `structure` | [StarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/staralghom.md) | 289 | `declaration-track:a7d6a8f2744e3c9511d8ed2bdfab85f1e0b28a9b60682d735f595e09184d6860` |
| 40 | `def` | [toStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/tostaralghom.md) | 313 | `declaration-track:ca79a886bab11aedffd8042f11af9d703bf1f225dff6e564c5d94d817a5c165f` |
| 41 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-8.md) | 317 | `declaration-track:4555fe7717ac42274cd36aa01899307af17345044eefbc9e49a0f139a7e1ba54` |
| 42 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-15.md) | 327 | `declaration-track:5abc02fef918dbc8e755d204e5437e5f8c4bf5fbc9de48e407e019bf95ce66d3` |
| 43 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-20.md) | 331 | `declaration-track:9ff4ecbc25c6f4d446030981b176d4e9fdb3baca747a7604b5bfc538303cbf3b` |
| 44 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-9.md) | 338 | `declaration-track:477f98dd357f4573c1aa24fdd03f9f46ea0708d1330ef4a17e5c141b7e56f743` |
| 45 | `theorem` | [coe_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-coe-source-edition-2.md) | 342 | `result-track:e16a835cfb91795babbd4b2ee8937416f16ab74c1d401e084f12ba0c834f7071` |
| 46 | `def` | [Simps.apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/simps-apply-source-edition-3.md) | 349 | `declaration-track:e69941421fd0a994e1557b7b46545615b6d79654b437d92e40d12cad70da5c5f` |
| 47 | `theorem` | [coe_toAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-toalghom.md) | 354 | `result-track:b0c5487bd72430cfb4bd2d2fe6916f77e864b1a6c3002c5f110d6f0a9cc3b266` |
| 48 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/ext-source-edition-2.md) | 358 | `result-track:6cb7b8f472fa133c5c2ea8a2c6af4b37458cabe0eb06d910d276c1b50f6c15fa` |
| 49 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/copy.md) | 363 | `declaration-track:3c1b93a905369f91d008ed5d8fe3688c323b3099c24c7d6156e87e1379dc8cb4` |
| 50 | `theorem` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-copy.md) | 373 | `result-track:5611637fb03dcc78569719bde4dc5352bd4096b5eeec67989aec1a341efbf694` |
| 51 | `theorem` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/copy-eq.md) | 376 | `result-track:955d868d7521143c0a610db14e8b9c2014c74bcd4fb5071a2829b001e0b4758c` |
| 52 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-mk-source-edition-4.md) | 380 | `result-track:55ab5b94cc4f5aaf58f0174566615c06434b3273ea7b2fee1a8311a0cff0b43e` |
| 53 | `theorem` | [coe_mk'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-mk-source-edition-2.md) | 386 | `result-track:0993ecbcdf85f0def35b617110664b1dffe7e292f9d0536888a39eca02c88de0` |
| 54 | `theorem` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/mk-coe.md) | 391 | `result-track:15d3d4c7d02ea2f2447b1cad39483afac262d82d8d6f7137c87ee6e7d3d13b31` |
| 55 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/id-source-edition-2.md) | 401 | `declaration-track:c20851f3406cbc40b0153273009deba6f21b16bd987c9bdab5b17811fd1ec009` |
| 56 | `theorem` | [coe_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-id.md) | 405 | `result-track:bbb42da0334c17487c77f12299224c459ac06566617333b0d027876cf45cdcff` |
| 57 | `def` | [ofId](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/ofid.md) | 410 | `declaration-track:c7828fa0bb340db7627bf1a16f1b29629184ef07448848e38a4bd8d1191dbbe0` |
| 58 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-19.md) | 418 | `declaration-track:828441c4a4c3515fdb910dfa61de764929119ffbecdbc5e6ff60b6dd31e99f79` |
| 59 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/comp-source-edition-2.md) | 422 | `declaration-track:a72ad37ec5d5e2ea75cd2fe15f5b0ddf972ab8c8ae1401c64014ff1f32992513` |
| 60 | `theorem` | [coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-comp-source-edition-2.md) | 429 | `result-track:4726543f10ec2ddb4ccbb18c51372c0660f1a7bf968fe48b1fea7b018b063fd0` |
| 61 | `theorem` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/comp-apply-source-edition-2.md) | 433 | `result-track:a0060cad505eadaa79cc939a42ec19d1244f601011e9bd5b8c62fef20e41bc38` |
| 62 | `theorem` | [comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/comp-assoc-source-edition-2.md) | 437 | `result-track:2bcd686dbf73afa72076e15a8b22467e634c8e7f49dad76fb79dee53e8f4e93d` |
| 63 | `theorem` | [id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/id-comp.md) | 442 | `result-track:5c4c8493a682b03fb83c32920c87573d96c15714f451ca50a908796749ffe05b` |
| 64 | `theorem` | [comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/comp-id-source-edition-2.md) | 446 | `result-track:585964ee99251b427eaf9ec3363520a4674af7cd063526ac76cd5b3ecd5344aa` |
| 65 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-18.md) | 449 | `declaration-track:824c7ae0b9506f118b84f015736f553903049219e722b7afb8fc77816af93d69` |
| 66 | `def` | [toNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/tononunitalstaralghom-source-edition-2.md) | 457 | `declaration-track:d02b2ab8c0c100b693515b77e953620ee0688c4ea41156629f5b2145b92652ae` |
| 67 | `theorem` | [coe_toNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-tononunitalstaralghom.md) | 461 | `result-track:cfcc78e9df29432aa0b595ed53079de1c4e5ac58789216876f01b8fd71f78800` |
| 68 | `def` | [fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/fst-source-edition-2.md) | 483 | `declaration-track:d921811bd89ed61ff977c2ee91f3d53c6ea6d65aa40ea1423807a73a2521462c` |
| 69 | `def` | [snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/snd-source-edition-2.md) | 488 | `declaration-track:f55edc2712dc0b44d5beb8bed9db4f0bc7c327e4b55b9d9c92477aa41f437bde` |
| 70 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/prod-source-edition-2.md) | 495 | `declaration-track:f68d3f383ddd753947cf32b247a09f2288d2265e0209c80d3005155d9454e4ac` |
| 71 | `theorem` | [coe_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-prod.md) | 499 | `result-track:1c0008b3b52e7ce1e0e3a1a562e4dcc73593669263fe4692019012ab1fa06684` |
| 72 | `theorem` | [fst_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/fst-prod-source-edition-2.md) | 503 | `result-track:20120ffd10a0134211f5dfdd482d206bd5570b3c1dd99f65aeb5ff57c4db9e6e` |
| 73 | `theorem` | [snd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/snd-prod-source-edition-2.md) | 507 | `result-track:d10b47ba6ac51f8d20423462f6adadfc51cc393bb86bc6a18587bc5783f99077` |
| 74 | `theorem` | [prod_fst_snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/prod-fst-snd.md) | 511 | `result-track:26561a51857d5eeaed27b125d136401d2506dc32419c5a4815fe8a5349fb884c` |
| 75 | `def` | [prodEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/prodequiv-source-edition-2.md) | 517 | `declaration-track:59382ab0ee906aabe3df9e2c31b10b5a03aa511a9acae9f450f9b457f87d90c8` |
| 76 | `def` | [_root_.Pi.evalNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/root-pi-evalnonunitalstaralghom.md) | 531 | `declaration-track:c697b66f8437d303f2030f798d0d95a28db4722ce4d7103742914850d2fe34d1` |
| 77 | `def` | [_root_.Pi.evalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/root-pi-evalstaralghom.md) | 541 | `declaration-track:04dab452132520343606b53fc206dcf9ac8e443fa9326a49da8e937dd91df21e` |
| 78 | `def` | [inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/inl.md) | 556 | `declaration-track:4426296b1b26dc2eaa3f9995a7017ba10a66b2dd3a1bbb515a91099f72c16fca` |
| 79 | `def` | [inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/inr.md) | 560 | `declaration-track:8fdd0b6a8091e0e124c18c03e80ae1dae2cce5ddd3214504e9f4555f8eaa569f` |
| 80 | `theorem` | [coe_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-inl.md) | 566 | `result-track:e6dac59ef3cd86c4a2d35fcf5767288272fa6a9bded0ff6f1092450e6d690ea9` |
| 81 | `theorem` | [inl_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/inl-apply.md) | 569 | `result-track:537e9ed9e8c15cf8192c6d6f38245866ac0e955f5a18b546e0b09151e73be69c` |
| 82 | `theorem` | [coe_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-inr.md) | 573 | `result-track:666c990916b7c85382ae4b032d1fa0bc32297f123d93ed6ba77d7d3b0b189add` |
| 83 | `theorem` | [inr_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/inr-apply.md) | 576 | `result-track:0aa696343f707890d218d6cfc9eca27e84241117f6530825515e3c2829c083bb` |
| 84 | `def` | [fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/fst.md) | 590 | `declaration-track:04af3deab902695b893b092928ce79455514df3cf9cb548e57a349fae7d13348` |
| 85 | `def` | [snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/snd.md) | 595 | `declaration-track:67e78213d2ae3b70068969019cfa56db1cf35c75e21095256b99e70eb9c35db2` |
| 86 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/prod.md) | 602 | `declaration-track:67116809d121d7e47a023b5e48e8dc2d9086c21807d4b16e81d8e1ea7d9936a3` |
| 87 | `theorem` | [coe_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-prod-source-edition-2.md) | 605 | `result-track:534effaf36e0feb80fd349574104d6b2feb1cb67fdcf3dace69ff778b0b9cb56` |
| 88 | `theorem` | [fst_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/fst-prod.md) | 609 | `result-track:19b4aba5a6dd1dae44758f4b9b42cd7b6c990b2a29ca44e706e1af71bff7563e` |
| 89 | `theorem` | [snd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/snd-prod.md) | 613 | `result-track:37e4a5db8016f79c95cbc237f129136f7e38937788ab8c0f1138fa224d5dc6da` |
| 90 | `theorem` | [prod_fst_snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/prod-fst-snd-source-edition-2.md) | 617 | `result-track:3a28d58cdf67d17a68dd663b655c508116ef970fa28be63a2fbf65400889bae9` |
| 91 | `def` | [prodEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/prodequiv.md) | 623 | `declaration-track:412afaed6a990a8ff417d3e73af743c3a4b28cd6d8cf3180ac140614ccf560da` |
| 92 | `structure` | [StarAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/staralgequiv.md) | 639 | `declaration-track:640aa154dfe16d01d9c23c5c1c492d53072f7cb29aa8dbc2f03ec6eea4879733` |
| 93 | `class` | [NonUnitalAlgEquivClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/nonunitalalgequivclass.md) | 658 | `declaration-track:45272eee649593283ab1bb9c353dc1ccc9ebbfccf79ca17a227a9ffdb8574bdc` |
| 94 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-13.md) | 665 | `declaration-track:54312bc81ae0ab4d3e099d6f1c9aab400f784156aa4f85fe7b9268551b34f235` |
| 95 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-10.md) | 672 | `declaration-track:4989e2508b83634b7e57c898303d6ddc77b683b24eae665aecfac2b50743c053` |
| 96 | `def` | [toStarAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/tostaralgequiv.md) | 680 | `declaration-track:8b44f65796e28deaca7987ef8d74163fd558280762297fc35d368a5e5c77a408` |
| 97 | `instance` | [instCoeHead](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instcoehead.md) | 689 | `declaration-track:aacd6b051e5d14f676a61e2cd9f061784d36b7482ae59155d0d982b89cce1da2` |
| 98 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-21.md) | 703 | `declaration-track:bcabeaa7e4f859bf3b2461a52560daa09132d6b8e041f294c6d823e88576c088` |
| 99 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-5.md) | 713 | `declaration-track:38c930762cf3df99aed969abae07730228b23323fb7f9956401da341870dc965` |
| 100 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-22.md) | 718 | `declaration-track:c323438035cf929d41572c3f79dcbbca9e3f3d47598503f63ea58038fb37b27a` |
| 101 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-12.md) | 722 | `declaration-track:50208ba19b3200ec4ca955929988c0fbad7ddfb9c15db04f65ad6c09b364a04c` |
| 102 | `theorem` | [toRingEquiv_eq_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/toringequiv-eq-coe.md) | 727 | `result-track:2e128f348dbcf6aab33d7ed8e2f50e2d6f8c2f5ca4248e3cb650fba1af8afac0` |
| 103 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/ext.md) | 731 | `result-track:250f1e91719c0c88c26e98f74017fb7b579bdbac5bbe951b7cd46c2ce5ce868f` |
| 104 | `def` | [refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/refl.md) | 736 | `declaration-track:f44f2da2dc701db47d15c1f3ed86b49da449136e30152ac9b3dc4f9bb16a0923` |
| 105 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/instance-source-edition-17.md) | 741 | `declaration-track:747db7f39d24438e24c53279749038cf22deab304d47d183593948df99df7791` |
| 106 | `theorem` | [coe_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-refl.md) | 745 | `result-track:5165462052ff32e022b62af33567b80259896c0868525a57c04e36fe3635d969` |
| 107 | `def` | [symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/symm.md) | 751 | `declaration-track:704280d3436c194d5e32843404dc662885a89ff91c9d1f1cabc3ec39bd61dda1` |
| 108 | `def` | [Simps.apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/simps-apply.md) | 762 | `declaration-track:73f4787706799b8808a298d48783d1793d6f93bb185ecb4860ec1db8cb03b17f` |
| 109 | `def` | [Simps.symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/simps-symm-apply.md) | 765 | `declaration-track:8e3ba7cd1ed4249dfff0c99384b01577faa9a227908e2c085a17b3295f635633` |
| 110 | `theorem` | [invFun_eq_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/invfun-eq-symm.md) | 772 | `result-track:611b7ac71a595439f9ecb45219eaf280c82a03cdb9383a4b0a50ab8c98f3573d` |
| 111 | `theorem` | [symm_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/symm-symm.md) | 776 | `result-track:95811bc5e7235cf8e30998232d3ff9e85dbb3b40012953c7a75ea1f363a388ef` |
| 112 | `theorem` | [symm_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/symm-bijective.md) | 778 | `result-track:1e15f06a53b5d0daaf01575521360f246150d0987e434b3f644981f3408d81dc` |
| 113 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-mk-source-edition-3.md) | 782 | `result-track:11ff3dd9d2e12f6b24436eb2908c30d9212960a9b8dea1578457a9121babd517` |
| 114 | `theorem` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/mk-coe-source-edition-2.md) | 785 | `result-track:c1ea1c3def9ee222eb0f3ac05efb0d707fafab2b470df3304aa1f440adb22979` |
| 115 | `def` | [symm_mk.aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/symm-mk-aux.md) | 789 | `declaration-track:48f487cf0a24c7214eeae5ed2c3b3a2b90f76bef6eddde2f275c91ae6b848af9` |
| 116 | `theorem` | [symm_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/symm-mk.md) | 793 | `result-track:09ec9c36eae7a9e5aefd84cc68aa6dabc54ac9a5d8f60b2a0dbc6d97416b9dcd` |
| 117 | `theorem` | [refl_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/refl-symm.md) | 801 | `result-track:a1cad709cd3b0e1049e3e99284652bf0c8fcd919e22c23efdf11d73b0a3ca5ff` |
| 118 | `theorem` | [to_ringEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/to-ringequiv-symm.md) | 805 | `result-track:5d4497720a30fe954166ff062cbf820033b73dbbbf43d53a29ff05afcc7b9fdd` |
| 119 | `theorem` | [symm_to_ringEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/symm-to-ringequiv.md) | 809 | `result-track:e0f05e17f0c183abed0b8433999f016c9c9d55c73b6b0a24631ad2b82cc13061` |
| 120 | `def` | [trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/trans.md) | 814 | `declaration-track:6ea4ae58b737c5e4b48e3004b8dc32a5364c6964b2a91550f01f277718068eb7` |
| 121 | `theorem` | [apply_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/apply-symm-apply.md) | 825 | `result-track:49b54846beeb8ae5e517b5f7d9b82a4296126c13af5f8b830570862f9da0e9cb` |
| 122 | `theorem` | [symm_apply_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/symm-apply-apply.md) | 829 | `result-track:959a8dc2cb769182fe8c63df2a295d643505c3e213c3a728b3ff6e313550fada` |
| 123 | `theorem` | [symm_trans_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/symm-trans-apply.md) | 833 | `result-track:beda545807ce323e45ca4612522b4312e33ee9e7e9922696ec888670e87659e3` |
| 124 | `theorem` | [coe_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-trans.md) | 838 | `result-track:20ff136de7e45b896724b81cdda6691fba946370203d5ad4f57093fc77d20257` |
| 125 | `theorem` | [trans_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/trans-apply.md) | 842 | `result-track:acc201da1aa0b56360dc74e4fac3085a61de86db512283bea8de0d96dc1e7cd6` |
| 126 | `theorem` | [leftInverse_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/leftinverse-symm.md) | 845 | `result-track:2496456f16635914e7d6d330e87afcba3ef7b67cece26b1b76dde35de1651201` |
| 127 | `theorem` | [rightInverse_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/rightinverse-symm.md) | 848 | `result-track:b627b7903a9478b78461ec7271ada14e3a9e11e866068fe7ea9741c31c02a816` |
| 128 | `def` | [ofStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/ofstaralghom.md) | 864 | `declaration-track:9e2667904b1cfac7524f544a182c085fd15b200eaa4941f82c4c125ca64f6536` |
| 129 | `def` | [ofBijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/ofbijective.md) | 875 | `declaration-track:76deabfe64c577344a43c22962eea567ce94c4f1b92b4ce956427efcdd0e14eb` |
| 130 | `theorem` | [coe_ofBijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/coe-ofbijective.md) | 884 | `result-track:4743d862268dcbc776e2beb3da8a6ed8b1b0f41392f31ff509c12311c8fd2027` |
| 131 | `theorem` | [ofBijective_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarStarAlgHomStarAlgHomSourceEdition2.lean/declarations/ofbijective-apply.md) | 888 | `result-track:4ba231e1d5bc08ec7e5f571bf0f2fcbdf960f3dfcc489622213c45275d9b9a5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=696145e0fa8017df18a9bb2415b268aaff3431c56c4c8a66b7318bc86d4c5e9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant2503800a3f8e66106ae2fbc7fd1e1daa5bdc47b5849ee5d6385ec70e9ce4c4a6.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/StarAlgHom/Variant2503800a3f8e66106ae2fbc7fd1e1daa5bdc47b5849ee5d6385ec70e9ce4c4a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
