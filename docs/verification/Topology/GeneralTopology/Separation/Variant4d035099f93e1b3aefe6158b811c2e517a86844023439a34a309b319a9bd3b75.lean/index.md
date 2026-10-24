# Verification target: GRWTSK.Topology.GeneralTopology.Separation.Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1df82c42119be01e922d187d81992ba3065ec3ae",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1df82c42119be01e922d187d81992ba3065ec3ae`.

Source path: `GRWTSK/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ApplyFun` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/instance--b73115813181c247e43aa8ab.md) | 111 | `declaration-track:b73115813181c247e43aa8ab2ec72da6cc1268ec02a9cc63ce915078a1d6eb11` |
| 2 | `theorem` | [Filter.HasBasis.specializes_iff_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/filter-hasbasis-specializes-iff-uniformity--7d7e094c94a10134b19f5953.md) | 116 | `result-track:7d7e094c94a10134b19f595314470e90482445ef1366e39a7159e78d033bb638` |
| 3 | `theorem` | [Filter.HasBasis.inseparable_iff_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/filter-hasbasis-inseparable-iff-uniformity--68e75488b4012763ee0bac7a.md) | 120 | `result-track:68e75488b4012763ee0bac7a6354f27083f7c4b29d87a41705a1446e5f77a40a` |
| 4 | `theorem` | [inseparable_iff_ker_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/inseparable-iff-ker-uniformity--8bbb2b4cb59d24541b687a0d.md) | 124 | `result-track:8bbb2b4cb59d24541b687a0dbf522cbc3d96e425c132a986d5ee9791f8c5d5e0` |
| 5 | `theorem` | [Inseparable.nhds_le_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/inseparable-nhds-le-uniformity--e3534bbc0619c96c18d6878f.md) | 127 | `result-track:e3534bbc0619c96c18d6878fb2c3d0c66f45c5f1188cc3729446f291412dcdfb` |
| 6 | `theorem` | [inseparable_iff_clusterPt_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/inseparable-iff-clusterpt-uniformity--ab98fbde60e37b7073ca2395.md) | 132 | `result-track:ab98fbde60e37b7073ca239566f5e7f4919c802f6bd95ecde7337e399f74b73b` |
| 7 | `theorem` | [t0Space_iff_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/t0space-iff-uniformity--7f0963f832d71eddbd3a782d.md) | 138 | `result-track:7f0963f832d71eddbd3a782d09c20aacc279be1d9e36e349b9b34ee39f0ded0b` |
| 8 | `theorem` | [t0Space_iff_uniformity'](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/t0space-iff-uniformity--36875fde09a6707ad9cc7c09.md) | 142 | `result-track:36875fde09a6707ad9cc7c09b9b5375960cf37ff9265f65528845f35243a5849` |
| 9 | `theorem` | [t0Space_iff_ker_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/t0space-iff-ker-uniformity--85e8b3253df9351695551155.md) | 146 | `result-track:85e8b3253df93516955511558c4a7ac24a46c59ab846c4cade5606725598c7fa` |
| 10 | `theorem` | [eq_of_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/eq-of-uniformity--ad60e02aefed51d572cae26c.md) | 151 | `result-track:ad60e02aefed51d572cae26c7b8249d394ed4d31202fdc6087c27a6824d98d3c` |
| 11 | `theorem` | [eq_of_uniformity_basis](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/eq-of-uniformity-basis--3196fb5bd5bc549d92a85cc7.md) | 155 | `result-track:3196fb5bd5bc549d92a85cc7a3cf298edba9ddf6380d79fb3b46d2fad23e0102` |
| 12 | `theorem` | [eq_of_forall_symmetric](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/eq-of-forall-symmetric--31f091c129bfbf28ae91b579.md) | 160 | `result-track:31f091c129bfbf28ae91b579d5aae7609cbc99fe5dc30d2df146c701c93b45b8` |
| 13 | `theorem` | [eq_of_clusterPt_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/eq-of-clusterpt-uniformity--d62718ba1a6418e1a57e09c9.md) | 164 | `result-track:d62718ba1a6418e1a57e09c903955e58f6195ab477a6aaa2015d3eeb2eaa076c` |
| 14 | `theorem` | [Filter.Tendsto.inseparable_iff_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/filter-tendsto-inseparable-iff-uniformity--24ad0af897ec5c03e8ccbab1.md) | 167 | `result-track:24ad0af897ec5c03e8ccbab102ab92b57737db5ea9fbcb5724fa1c48f623c286` |
| 15 | `theorem` | [isClosed_of_spaced_out](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/isclosed-of-spaced-out--d8aed308a004bd6914eefdd8.md) | 174 | `result-track:d8aed308a004bd6914eefdd8acb240a324c61521ad3d011f3ef19da43472c89d` |
| 16 | `theorem` | [isClosed_range_of_spaced_out](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/isclosed-range-of-spaced-out--13afb96dabccea20477db2ac.md) | 190 | `result-track:13afb96dabccea20477db2ace963b4d7432357f135f51d9c6d7e7106a897caa0` |
| 17 | `theorem` | [comap_map_mk_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/comap-map-mk-uniformity--faba346a6c1bf67addafb994.md) | 202 | `result-track:faba346a6c1bf67addafb994cb4bedb6f5306ed7698751190ad56398f28a72fd` |
| 18 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/instuniformspace--2b8b18426aaa2d0ffc890cdb.md) | 209 | `declaration-track:2b8b18426aaa2d0ffc890cdb71057379cb11df1bfc21afb159303af771b7bf61` |
| 19 | `theorem` | [uniformity_eq](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/uniformity-eq--4a70a1fe14f401f5124c25e9.md) | 223 | `result-track:4a70a1fe14f401f5124c25e9fba5fa5cf80fe9179a992631569f4290547fa7fa` |
| 20 | `theorem` | [uniformContinuous_mk](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/uniformcontinuous-mk--332c64e7ac8d5c947d5fa5d2.md) | 225 | `result-track:332c64e7ac8d5c947d5fa5d2da3337eab8dad277d7002050068e147372a58f1e` |
| 21 | `theorem` | [uniformContinuous_dom](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/uniformcontinuous-dom--4e3aa9671cfd6a8e07974abd.md) | 228 | `result-track:4e3aa9671cfd6a8e07974abd0c1c60ac5fb81dac29ff2f8cae67ab41e24c250f` |
| 22 | `theorem` | [uniformContinuous_dom₂](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/uniformcontinuous-dom--fd62952896accc819742d2a6.md) | 232 | `result-track:fd62952896accc819742d2a64d7de9974865fd0f9df6ed6a389b9d8706528af9` |
| 23 | `theorem` | [uniformContinuous_lift](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/uniformcontinuous-lift--b77dd570d4618e0114bdfc62.md) | 238 | `result-track:b77dd570d4618e0114bdfc62e70bd3bdfaff85ae321c1749d0c3cccd52f6c60e` |
| 24 | `theorem` | [uniformContinuous_uncurry_lift₂](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/uniformcontinuous-uncurry-lift--667bc163a837e29e6fadd242.md) | 242 | `result-track:667bc163a837e29e6fadd2424e72f10b0d34196131d010e4fe48fc44484a819c` |
| 25 | `theorem` | [comap_mk_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/comap-mk-uniformity--b8f7e8b393218137a4a1ec38.md) | 247 | `result-track:b8f7e8b393218137a4a1ec384e96a40bdf0690c6d3b962448be4e49a0fb1d09d` |
| 26 | `def` | [lift'](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/lift--ab95121d7b47ffb3eebc4682.md) | 254 | `declaration-track:ab95121d7b47ffb3eebc468206449fba9468a48d77eb503eb7da5b0c41e615da` |
| 27 | `theorem` | [lift'_mk](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/lift-mk--45692a7735a4b8ce57f04c1a.md) | 258 | `result-track:45692a7735a4b8ce57f04c1a91677de733d381335454b623bbc2859373ae2984` |
| 28 | `theorem` | [uniformContinuous_lift'](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/uniformcontinuous-lift--679e298b673c1ffedcfc6a61.md) | 261 | `result-track:679e298b673c1ffedcfc6a61bbf9bc9ad6daea05f10c70ffb5a174e94d0c70ff` |
| 29 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/map--978f222a2e2c9204c2933b8c.md) | 268 | `declaration-track:978f222a2e2c9204c2933b8cf9cae536d50c4edea7308af7f2d38c30d14cb860` |
| 30 | `theorem` | [map_mk](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/map-mk--855818cac59b51f5ebe282ac.md) | 270 | `result-track:855818cac59b51f5ebe282ac7dafa6edfd3c9180b493e93650c5d384e231e144` |
| 31 | `theorem` | [uniformContinuous_map](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/uniformcontinuous-map--d0b960fb6fa170c87558d58a.md) | 273 | `result-track:d0b960fb6fa170c87558d58a11a1a367364a6a5c82ed0ff102beb46f4c2e4662` |
| 32 | `theorem` | [map_unique](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/map-unique--4497d678bcd698f471641767.md) | 276 | `result-track:4497d678bcd698f471641767c8ccd183ecdeb5f5efb8d49c10fd329cadf89860` |
| 33 | `theorem` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/map-id--aefdd57def99c1f3f26c23a6.md) | 284 | `result-track:aefdd57def99c1f3f26c23a610f64ff86d507ffa49238ae8a346896a1acdf508` |
| 34 | `theorem` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/declarations/map-comp--b44e946ac880d10035771df5.md) | 286 | `result-track:b44e946ac880d10035771df51969beb777340c30e7b44f8fecd9d61482b5c8ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
