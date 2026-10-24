# Verification target: GRWTSK.Topology.MetricTopology.Pointwise.Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e64bf1cbb27bf509b67efb78dcc67513a933188e",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e64bf1cbb27bf509b67efb78dcc67513a933188e`.

Source path: `GRWTSK/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ediam_smul_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/ediam-smul-le--a0acd60947b84dd4cc6e006d.md) | 37 | `result-track:a0acd60947b84dd4cc6e006d1b5ec3f450ef42a0858d55949af9fd382510390e` |
| 2 | `theorem` | [ediam_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/ediam-smul--920c0a568b0f399386c84d7f.md) | 47 | `result-track:920c0a568b0f399386c84d7f308a3ff476e795affae4a73f48e031faabda8ff1` |
| 3 | `theorem` | [diam_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/diam-smul--c4f17368f0fcfc9ad2b0af5b.md) | 57 | `result-track:c4f17368f0fcfc9ad2b0af5b065190416514700e74476edef2e638ddfc5e3675` |
| 4 | `theorem` | [infEdist_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/infedist-smul--d8bd300cfa45361bd161bb94.md) | 60 | `result-track:d8bd300cfa45361bd161bb945702073cf1efcafb69608b4af747e40a10aa2f2f` |
| 5 | `theorem` | [infDist_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/infdist-smul--c187e93c47124343db839d34.md) | 71 | `result-track:c187e93c47124343db839d34ccc70180ded6b39abb3eae7595faf0103cc07bcf` |
| 6 | `theorem` | [smul_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-ball--585b87d07e0c7b37bfbcd7e1.md) | 85 | `result-track:585b87d07e0c7b37bfbcd7e18c7a58acc30bb92dbf82cc638d4b9ec9da467d89` |
| 7 | `theorem` | [smul_unitBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-unitball--54c9ba65b60f034c5eb0d458.md) | 91 | `result-track:54c9ba65b60f034c5eb0d458a0d901c602d52b9343733d97c2916171c2fff806` |
| 8 | `theorem` | [smul_sphere'](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-sphere--ac6f219fe4e1f556cf5b3a04.md) | 94 | `result-track:ac6f219fe4e1f556cf5b3a0482ab6759f90f68d160bd0827a42add11f5f4b5d4` |
| 9 | `theorem` | [smul_closedBall'](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-closedball--796706169e6c2ce4e55ff354.md) | 102 | `result-track:796706169e6c2ce4e55ff3548f6796138014deffbfa7bef39e17a89ddfd826c8` |
| 10 | `theorem` | [set_smul_sphere_zero](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/set-smul-sphere-zero--39980c0e099982fe92f3051c.md) | 106 | `result-track:39980c0e099982fe92f3051cb1bafaf837e93b26afafb4b15a6b8f029b3b67da` |
| 11 | `theorem` | [Bornology.IsBounded.smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/bornology-isbounded-smul--49f3c21fdd35ee81f5ecd212.md) | 116 | `result-track:49f3c21fdd35ee81f5ecd2127b18f30be13bab10d7ac2e55d5f1a6047d5f42b6` |
| 12 | `theorem` | [eventually_singleton_add_smul_subset](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/eventually-singleton-add-smul-subset--1c6a79c0643cb6c1c16c0711.md) | 121 | `result-track:1c6a79c0643cb6c1c16c0711440696f5029d8a146acfdec7962f0943b024e761` |
| 13 | `theorem` | [smul_unitBall_of_pos](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-unitball-of-pos--a50901fcf5cfe293c435f2da.md) | 145 | `result-track:a50901fcf5cfe293c435f2daab92f5c0a8fd6dbf3e337ec83f6edff2f6272878` |
| 14 | `lemma` | [Ioo_smul_sphere_zero](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/ioo-smul-sphere-zero--72551033919f50b2324c7cdb.md) | 148 | `result-track:72551033919f50b2324c7cdbdc85a538c6424dd500415790a3e2262e301831b9` |
| 15 | `theorem` | [exists_dist_eq](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/exists-dist-eq--d030ef12c74a70948a6b3f7d.md) | 156 | `result-track:d030ef12c74a70948a6b3f7daa57478645015e49a5b9f06069485aaaecf984bc` |
| 16 | `theorem` | [exists_dist_le_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/exists-dist-le-le--3502a6dd5336d9921b3465a8.md) | 163 | `result-track:3502a6dd5336d9921b3465a85e2a535ba8abaccc4d98c3c2cf6b022da03e5cf2` |
| 17 | `theorem` | [exists_dist_le_lt](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/exists-dist-le-lt--44d3a6df28fe52e530e893c0.md) | 177 | `result-track:44d3a6df28fe52e530e893c0125bf39402095406f6b1f9a7c1b3a3a43b193f48` |
| 18 | `theorem` | [exists_dist_lt_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/exists-dist-lt-le--48db677dd92a171c390d7d1d.md) | 188 | `result-track:48db677dd92a171c390d7d1d2777321da660a1c3d6a7ec0fca2be6fe62bb08f0` |
| 19 | `theorem` | [exists_dist_lt_lt](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/exists-dist-lt-lt--9b62c0529b390c34d7cbb94f.md) | 195 | `result-track:9b62c0529b390c34d7cbb94f1807eaed4c59a8fb38df31036e28003b5cfddadb` |
| 20 | `theorem` | [disjoint_ball_ball_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/disjoint-ball-ball-iff--e33a482ded87eb1d1e8de18b.md) | 206 | `result-track:e33a482ded87eb1d1e8de18b9bc6d3108425bb81958032cf37bf0b3ff4de47a9` |
| 21 | `theorem` | [disjoint_ball_closedBall_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/disjoint-ball-closedball-iff--4bd2b0b1461223a504b8c23a.md) | 215 | `result-track:4bd2b0b1461223a504b8c23a287065c7da48c302fde942894495ff7e8b97997e` |
| 22 | `theorem` | [disjoint_closedBall_ball_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/disjoint-closedball-ball-iff--8ce57509d934892c4c749db6.md) | 224 | `result-track:8ce57509d934892c4c749db66a4918de20a6b8e32804b9373745e4cdb699543b` |
| 23 | `theorem` | [disjoint_closedBall_closedBall_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/disjoint-closedball-closedball-iff--7f05cf06961d1ccd46b1d9b1.md) | 228 | `result-track:7f05cf06961d1ccd46b1d9b17240b9bc0140a4b6caed9c41d1532274024a3b09` |
| 24 | `theorem` | [infEdist_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/infedist-thickening--0e9b83aa39eaf8a2d4f23b84.md) | 239 | `result-track:0e9b83aa39eaf8a2d4f23b84919f0d77390a710174294d98414e6c9dcf389d20` |
| 25 | `theorem` | [thickening_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/thickening-thickening--fbbf106bc4270e7b11bf26bb.md) | 264 | `result-track:fbbf106bc4270e7b11bf26bb266e09e199014b484fafc443a50eeed9a0695705` |
| 26 | `theorem` | [cthickening_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/cthickening-thickening--e9240fb61a540ff69001abd3.md) | 274 | `result-track:e9240fb61a540ff69001abd3462ab50721bc1cd0255872d0fac882c8d36c37c6` |
| 27 | `theorem` | [closure_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/closure-thickening--06e1d9b82d3a021ff5813513.md) | 282 | `result-track:06e1d9b82d3a021ff581351371d1b7b3013b80eb96c093adb0b1387923024b5d` |
| 28 | `theorem` | [infEdist_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/infedist-cthickening--681a6d86a55339e6c4db4248.md) | 287 | `result-track:681a6d86a55339e6c4db42483e00b75da92c773e176fc7ab435d9ff1f3db6fa7` |
| 29 | `theorem` | [thickening_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/thickening-cthickening--7078754c1c1ee33d86663c81.md) | 294 | `result-track:7078754c1c1ee33d86663c8123e4c06c53297a035945890777bd163bb8f15b77` |
| 30 | `theorem` | [cthickening_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/cthickening-cthickening--6ec02e8f675ef26fc4491468.md) | 301 | `result-track:6ec02e8f675ef26fc4491468e358e8edb89e5434e6380c7fe2ed7700d5298744` |
| 31 | `theorem` | [thickening_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/thickening-ball--50460fd15ca6f8618f96a84a.md) | 308 | `result-track:50460fd15ca6f8618f96a84ac2a64618de20fd5ab97c2b4ade56708798f31a67` |
| 32 | `theorem` | [thickening_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/thickening-closedball--08e11ef3ea1a64b126c47f43.md) | 313 | `result-track:08e11ef3ea1a64b126c47f43ecfcfec1379f214a4990fd4ed4312e9f04217b3c` |
| 33 | `theorem` | [cthickening_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/cthickening-ball--4aaac403f06348d857e19806.md) | 318 | `result-track:4aaac403f06348d857e19806c720e2210ba07c84709747e5121905d864851c86` |
| 34 | `theorem` | [cthickening_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/cthickening-closedball--61a765232dc8ce564c8a347d.md) | 324 | `result-track:61a765232dc8ce564c8a347dda8aa7b2f4207ff136385cddc16a82fa5f8b6f47` |
| 35 | `theorem` | [ball_add_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/ball-add-ball--b2e97ab1e799532610dfc7e0.md) | 329 | `result-track:b2e97ab1e799532610dfc7e07844813d4edb8f66f148bc1c450672426951b4ef` |
| 36 | `theorem` | [ball_sub_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/ball-sub-ball--dde815806ccf55bf82f3953b.md) | 333 | `result-track:dde815806ccf55bf82f3953b12220697971741627b086c968ebd8c7166c96eca` |
| 37 | `theorem` | [ball_add_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/ball-add-closedball--89592f708cb7f46edfd7eafd.md) | 337 | `result-track:89592f708cb7f46edfd7eafd6a2e04d44dc1657fbe8f6c44aa55870f1c83758f` |
| 38 | `theorem` | [ball_sub_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/ball-sub-closedball--2435a7b65772bc38e2489540.md) | 341 | `result-track:2435a7b65772bc38e24895401b1bb2ccbb89353d12af927c83299ac6df2a66e9` |
| 39 | `theorem` | [closedBall_add_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/closedball-add-ball--dd792e949e41eba5fbc284dd.md) | 345 | `result-track:dd792e949e41eba5fbc284dd5190abe2d60712cabf9e28e5c14bc60db5fa3f1c` |
| 40 | `theorem` | [closedBall_sub_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/closedball-sub-ball--65de8a3da7b15dc0f556eae7.md) | 349 | `result-track:65de8a3da7b15dc0f556eae7d72642d357b010d01b8e202c436db942a1f158ed` |
| 41 | `theorem` | [closedBall_add_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/closedball-add-closedball--bf72de2237b18dc5f54e2ed9.md) | 353 | `result-track:bf72de2237b18dc5f54e2ed983094563e22f47ecc71aa0a19c94dae443b4d638` |
| 42 | `theorem` | [closedBall_sub_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/closedball-sub-closedball--7a77750d47b1fd4db176c132.md) | 358 | `result-track:7a77750d47b1fd4db176c132a663d066748176b06a87fc3356cb1a1c975a1dca` |
| 43 | `theorem` | [smul_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-closedball--1072d62481a38d677cd9a722.md) | 368 | `result-track:1072d62481a38d677cd9a722cea9b24dbe31ebfafb16d8b4cac8545da2c12c5e` |
| 44 | `theorem` | [smul_unitClosedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-unitclosedball--cd0ca4761c97cbcfda825a68.md) | 374 | `result-track:cd0ca4761c97cbcfda825a683ab11681c4708721e8c3556f66ebc129cd33d6f9` |
| 45 | `theorem` | [smul_unitClosedBall_of_nonneg](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-unitclosedball-of-nonneg--d0c6fbe3fa4f97a3ecccf528.md) | 383 | `result-track:d0c6fbe3fa4f97a3ecccf52835475071e6804dc125bd6e86cc22bc3cad917967` |
| 46 | `theorem` | [NormedSpace.sphere_nonempty](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/normedspace-sphere-nonempty--7b8a1b8a2a664962a0c7a958.md) | 393 | `result-track:7b8a1b8a2a664962a0c7a958dd09714eefc01502d38773757fb3760ecd924a0c` |
| 47 | `theorem` | [smul_sphere](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/smul-sphere--e4793d66bcfd9a1bc71afe9a.md) | 404 | `result-track:e4793d66bcfd9a1bc71afe9a855ce8c2721f857945e8c6db968ff2c552bd69d6` |
| 48 | `theorem` | [affinity_unitBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/affinity-unitball--ccab84020817fb9f91ec2bd7.md) | 411 | `result-track:ccab84020817fb9f91ec2bd7e57d2428e362f832c561c56f02f86e3b6ab0f140` |
| 49 | `theorem` | [affinity_unitClosedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/declarations/affinity-unitclosedball--8068d70b7e380e6d981f03fe.md) | 416 | `result-track:8068d70b7e380e6d981f03feda0b6d73d113e0196573d370aad1e0ef81f20880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
