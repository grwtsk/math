# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.AbstractCompletion.Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffaf04d6b9c8428ec185505f6d2a51ebdb95f6ee",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffaf04d6b9c8428ec185505f6d2a51ebdb95f6ee`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbstractCompletion](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/abstractcompletion--92251faecd9eb95b6473dbe2.md) | 67 | `declaration-track:92251faecd9eb95b6473dbe2073739f9298151a7646fe9c05e756f69051674fe` |
| 2 | `def` | [ofComplete](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/ofcomplete--bc66b6806f7eb7e063abdf8e.md) | 96 | `declaration-track:bc66b6806f7eb7e063abdf8e9c73f332b477f4cba406306e6550c9c92b929c52` |
| 3 | `theorem` | [closure_range](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/closure-range--5d425878bd3f2f088a5fce80.md) | 100 | `result-track:5d425878bd3f2f088a5fce8093ac6bad38c56203fcb7e474195a13bd24b69300` |
| 4 | `theorem` | [denseInducing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/denseinducing--e9dd3726493b40ef4ead8578.md) | 104 | `result-track:e9dd3726493b40ef4ead8578151aa91991a4c216e2a691f0518a29b7de989fb6` |
| 5 | `theorem` | [uniformContinuous_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/uniformcontinuous-coe--38a52ed9bf6d75d10c4704bb.md) | 108 | `result-track:38a52ed9bf6d75d10c4704bb169208541fa166d9fb1bc9968f16f11d581f00a8` |
| 6 | `theorem` | [continuous_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/continuous-coe--54fdab3314d1cdb1766a0bc4.md) | 112 | `result-track:54fdab3314d1cdb1766a0bc4f2fceacc3aa06b270e2124ccffbbe8122e9335fe` |
| 7 | `theorem` | [induction_on](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/induction-on--ce1cdd25fef7595ff282e3d3.md) | 117 | `result-track:ce1cdd25fef7595ff282e3d33afeee7370ded75a57f37f25eb91f2d3bd0f776a` |
| 8 | `theorem` | [funext](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/funext--43cb15cfc3eef4f9da14124a.md) | 124 | `result-track:43cb15cfc3eef4f9da14124a502f617009b2ce5bddb36762008fb4597675b780` |
| 9 | `def` | [extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/extend--474c9061f47bc6a3c17df981.md) | 134 | `declaration-track:474c9061f47bc6a3c17df9810e36b61351278958ed69135f52deb16c12d9076a` |
| 10 | `theorem` | [extend_def](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/extend-def--f0df78fe61f38824df75f302.md) | 140 | `result-track:f0df78fe61f38824df75f302418610099f802900e1e4707311928aa8d51c4626` |
| 11 | `theorem` | [extend_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/extend-coe--d277ac8aa8d71382eb9bab2b.md) | 144 | `result-track:d277ac8aa8d71382eb9bab2bf53507c914b2629491b315a377859d2bfed66b0d` |
| 12 | `theorem` | [uniformContinuous_extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/uniformcontinuous-extend--963001276835d91877edfb36.md) | 151 | `result-track:963001276835d91877edfb3647ea305ce87629f18ec4e3d314454013e64aa73a` |
| 13 | `theorem` | [continuous_extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/continuous-extend--93792b66b7cd21b33a644d7d.md) | 160 | `result-track:93792b66b7cd21b33a644d7d74496e5eaf018b68af90b6706cab5ba3ebd8b45a` |
| 14 | `theorem` | [extend_unique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/extend-unique--305041fe8f13ecf446c0c4fb.md) | 166 | `result-track:305041fe8f13ecf446c0c4fb4fcde704179e5e2bcda9487bd3664b31251d64f7` |
| 15 | `theorem` | [extend_comp_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/extend-comp-coe--ef87910b5061aef49ae3c2e8.md) | 173 | `result-track:ef87910b5061aef49ae3c2e8d1d2976aef6d34761349f7cb75817cdc2199d980` |
| 16 | `def` | [map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/map--0dfeb45f4d5bb2715defb26a.md) | 190 | `declaration-track:0dfeb45f4d5bb2715defb26a6366fba8fd9c3a3e1e59e9d51ead5daa3b43c4f3` |
| 17 | `theorem` | [uniformContinuous_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/uniformcontinuous-map--fb921f9b0ec472d6f3cf30e4.md) | 198 | `result-track:fb921f9b0ec472d6f3cf30e42c1eb9efbac5a308309dcee5c66e09bf2c2460b8` |
| 18 | `theorem` | [continuous_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/continuous-map--b90eef2b45a4960243a667f1.md) | 203 | `result-track:b90eef2b45a4960243a667f1d2fc846a72e85ac6a85d8621ac5a6d851ea28067` |
| 19 | `theorem` | [map_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/map-coe--36006324e2743c47a9535033.md) | 210 | `result-track:36006324e2743c47a95350332d07fd88faf121ad797a10a2fe04f030a229f336` |
| 20 | `theorem` | [map_unique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/map-unique--bbe24c998fb4ee4ba0fd9932.md) | 214 | `result-track:bbe24c998fb4ee4ba0fd9932e2eebe46429821fe2f1bf3e7d65d84e3127e4e78` |
| 21 | `theorem` | [map_id](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/map-id--277b8bb395942bccf00809db.md) | 224 | `result-track:277b8bb395942bccf00809db65e170aeacf4ed48d07a69530101a18cb7fc7e59` |
| 22 | `theorem` | [extend_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/extend-map--8bf9a149729a3a6eb2438882.md) | 230 | `result-track:8bf9a149729a3a6eb2438882f69c982fc755b5c5467e20b101dcfc6d5082f59b` |
| 23 | `theorem` | [map_comp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/map-comp--d87f33d897561f1a4fae4016.md) | 241 | `result-track:d87f33d897561f1a4fae4016a31d6c13f3117eb8629f9ee66148debca988de23` |
| 24 | `def` | [compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/compare--290da1d7d4bb43a8d36a1e74.md) | 254 | `declaration-track:290da1d7d4bb43a8d36a1e741241f48bd8d8972d305d8510e84c8a913020a80c` |
| 25 | `theorem` | [uniformContinuous_compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/uniformcontinuous-compare--061f90200fbe79da62b5b826.md) | 258 | `result-track:061f90200fbe79da62b5b8261005fb5e0cfe84abe041dab97c7428ce6024fafc` |
| 26 | `theorem` | [compare_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/compare-coe--a69a78d239451ddd07278b23.md) | 262 | `result-track:a69a78d239451ddd07278b23d0cd92ee01724b8d32d502a1109060f2f67d424f` |
| 27 | `theorem` | [inverse_compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/inverse-compare--00c529b527e9edaa8ed83d45.md) | 266 | `result-track:00c529b527e9edaa8ed83d453e132059fa90d0a9d0c3f815113f908b644704b7` |
| 28 | `def` | [compareEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/compareequiv--d824540a1fa0fe3d6d6e6d0e.md) | 276 | `declaration-track:d824540a1fa0fe3d6d6e6d0eaf1e187ff8a6d74747fa97ee2a041717eaa7451d` |
| 29 | `theorem` | [uniformContinuous_compareEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/uniformcontinuous-compareequiv--f4e9609e96818ad046efba33.md) | 286 | `result-track:f4e9609e96818ad046efba3369a055650fe3d7c1a8306526f6a3928b1fe30f9d` |
| 30 | `theorem` | [uniformContinuous_compareEquiv_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/uniformcontinuous-compareequiv-symm--0953e6c15b42494eca1d42bc.md) | 290 | `result-track:0953e6c15b42494eca1d42bc822f3e473c6b7d422eba1ede1bc1c53fc5d771a6` |
| 31 | `def` | [prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/prod--a7125d418e2f88b143dc75fc.md) | 305 | `declaration-track:a7125d418e2f88b143dc75fccb377986bb1353ebf990ddb97991fc4c1b3519df` |
| 32 | `def` | [extend₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/extend--76e6fd205fe9f81f44b25e9d.md) | 331 | `declaration-track:76e6fd205fe9f81f44b25e9d9baa8312455235cdb74b3d97cf4cb88ae56bd1a1` |
| 33 | `theorem` | [extension₂_coe_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/extension-coe-coe--255f3db30aab265c9b72beeb.md) | 339 | `result-track:255f3db30aab265c9b72beeb4a801fe7da9df7ba58e728bd79476d5f62709ed0` |
| 34 | `theorem` | [uniformContinuous_extension₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/uniformcontinuous-extension--b56f5c02df19d0b62f7cf80e.md) | 351 | `result-track:b56f5c02df19d0b62f7cf80e57ffaf48a25e4bee858783abed2332512472f90e` |
| 35 | `def` | [map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/map--171f28a5a75719ecde7ce092.md) | 375 | `declaration-track:171f28a5a75719ecde7ce092747bfe88cc35037cb891c336373de3e64f4e77b2` |
| 36 | `theorem` | [uniformContinuous_map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/uniformcontinuous-map--56ef3a33fb47b62fde972a55.md) | 379 | `result-track:56ef3a33fb47b62fde972a554fc4322c9732d71eeb78fdf0e2d728b53c690f27` |
| 37 | `theorem` | [continuous_map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/continuous-map--5f5075fec481bc983ebad7b7.md) | 383 | `result-track:5f5075fec481bc983ebad7b73fcab55253c81820f606d72e89ebc6a37c405a13` |
| 38 | `theorem` | [map₂_coe_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant9eb2bb8fecd75ee9d27bf26cbbd1d4e6fb05b69bd15c7907790d01627866c7ac.lean/declarations/map-coe-coe--b8f6836e6d78185896ac25c6.md) | 389 | `result-track:b8f6836e6d78185896ac25c61a869df5e8597a4abb23a45c4a0ee6ba1c862900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
