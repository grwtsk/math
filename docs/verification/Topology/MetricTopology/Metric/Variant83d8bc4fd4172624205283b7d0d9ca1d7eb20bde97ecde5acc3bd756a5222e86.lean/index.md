# Verification target: GRWTSK.Topology.MetricTopology.Metric.Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e23632cc068a75fc3d0abe181b9a848aa899a9c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e23632cc068a75fc3d0abe181b9a848aa899a9c`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Continuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Thickening` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_ball](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurableset-ball--00adadd75d19ad3f1d8be0f4.md) | 50 | `result-track:00adadd75d19ad3f1d8be0f424d6721db4e09daa8e2fd0ceb865591c4b3221bb` |
| 2 | `theorem` | [measurableSet_closedBall](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurableset-closedball--f88654c8a53ce1be710cc951.md) | 54 | `result-track:f88654c8a53ce1be710cc951d34107983ecd65762e99a2089dc1196b2b4aaf0e` |
| 3 | `theorem` | [measurable_infDist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-infdist--e6f075ecb4bc6ae9518a9de3.md) | 58 | `result-track:e6f075ecb4bc6ae9518a9de3203dc0e3b2aa6fb997f9eee9a88d66d0d8a36c98` |
| 4 | `theorem` | [Measurable.infDist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-infdist--f9d64a91c3d4ede21d4d8b0c.md) | 62 | `result-track:f9d64a91c3d4ede21d4d8b0c72eebf7f199b662cf4a270a4e7d5135c3ea663b4` |
| 5 | `theorem` | [measurable_infNndist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-infnndist--9df0e69ff4918dbe447efec3.md) | 67 | `result-track:9df0e69ff4918dbe447efec31e4ae3cebd88009cd3358b739de5096fe6396bd6` |
| 6 | `theorem` | [Measurable.infNndist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-infnndist--e452a16f8fc596ef2d51417e.md) | 71 | `result-track:e452a16f8fc596ef2d51417edfb238172599cd98649bfbfea377de901e56a5e5` |
| 7 | `theorem` | [measurable_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-dist--c600631b074d639dd4faf6b0.md) | 80 | `result-track:c600631b074d639dd4faf6b0dcc7c5fe87e54b3f2ac386ceb5f612815c7ae502` |
| 8 | `theorem` | [Measurable.dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-dist--94177834fd5027a8c1ddf9fd.md) | 84 | `result-track:94177834fd5027a8c1ddf9fd91405c37f09c54f828a7be8bd79a4a12c8aa615c` |
| 9 | `theorem` | [measurable_nndist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-nndist--9db87d066b5f5651be1b266e.md) | 89 | `result-track:9db87d066b5f5651be1b266e4a74981a2b5d94a9b8a930da110c1993663082ba` |
| 10 | `theorem` | [Measurable.nndist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-nndist--12f51d4175f29dd7efb0623b.md) | 93 | `result-track:12f51d4175f29dd7efb0623bb27f660ff1bac4460a56af72b21b4638ec965f32` |
| 11 | `theorem` | [measurableSet_eball](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurableset-eball--b5bdd72b95352d4f99e40c3c.md) | 109 | `result-track:b5bdd72b95352d4f99e40c3ca687a3256148bffbfa9ed90e46f8d0362673a201` |
| 12 | `theorem` | [measurable_edist_right](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-edist-right--9443ea3cfdde75bcf4fc0528.md) | 113 | `result-track:9443ea3cfdde75bcf4fc0528190161e8a880b0a1d7b547746b73c8d115e508f8` |
| 13 | `theorem` | [measurable_edist_left](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-edist-left--e1f6849398be65dad6d4a24e.md) | 117 | `result-track:e1f6849398be65dad6d4a24e17ea1800956ad0bb9bdd39c39cc56e5968ad6a8a` |
| 14 | `theorem` | [measurable_infEdist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-infedist--bfecb99949a4b1677a7787d5.md) | 121 | `result-track:bfecb99949a4b1677a7787d5ddc375cb34b9da3415d5cd5fbe5cc679a0190cb3` |
| 15 | `theorem` | [Measurable.infEdist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-infedist--20177a0355285108e0203ebc.md) | 125 | `result-track:20177a0355285108e0203ebca7f020a70251112c02b7e358f191e2f414a069c0` |
| 16 | `theorem` | [tendsto_measure_cthickening](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/tendsto-measure-cthickening--ba3afeb1f4973bd35d995f99.md) | 133 | `result-track:ba3afeb1f4973bd35d995f99f4239016b8feb5cc5ba36e0152737bdd16667d0f` |
| 17 | `theorem` | [tendsto_measure_cthickening_of_isClosed](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/tendsto-measure-cthickening-of-isclosed--c90cd8a942e6e7784fe9bdef.md) | 150 | `result-track:c90cd8a942e6e7784fe9bdef3a6ff8d4da696d277b2a38eb094d348253ee3fa6` |
| 18 | `theorem` | [tendsto_measure_thickening](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/tendsto-measure-thickening--024722d80f05b3bd6c04b118.md) | 158 | `result-track:024722d80f05b3bd6c04b11894850c0a25bfaaea3aa4b7d6fcf91f2554fbfbf2` |
| 19 | `theorem` | [tendsto_measure_thickening_of_isClosed](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/tendsto-measure-thickening-of-isclosed--802f3163a3c5279e0142bf9c.md) | 167 | `result-track:802f3163a3c5279e0142bf9c0a6c4be79e9ed91c670912a5714961f52cdde9fc` |
| 20 | `theorem` | [measurable_edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-edist--e07e0f9b7d4dd8d91e8038ea.md) | 176 | `result-track:e07e0f9b7d4dd8d91e8038ea923b8e0404cfa05a0ccf5e4cff2c9167a6d05886` |
| 21 | `theorem` | [Measurable.edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-edist--02af779a8725bcd692f16ec1.md) | 180 | `result-track:02af779a8725bcd692f16ec1f3c8fba409346328ccd16711406d193f98c28c80` |
| 22 | `theorem` | [AEMeasurable.edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/aemeasurable-edist--2dc22eb0249c0f8c80bf7719.md) | 185 | `result-track:2dc22eb0249c0f8c80bf771978bb8476ff41bf9e98ec98945745048cc284ae85` |
| 23 | `theorem` | [tendsto_measure_cthickening_of_isCompact](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/tendsto-measure-cthickening-of-iscompact--3fae23bdb2d228d23afeafce.md) | 193 | `result-track:3fae23bdb2d228d23afeafce580e0e0a03dc7735d1cb9d24ba3af6aa8e969e5b` |
| 24 | `theorem` | [exists_borelSpace_of_countablyGenerated_of_separatesPoints](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/exists-borelspace-of-countablygenerated-of-separatespoints--42a76c7e8ac3b8e409be9abc.md) | 202 | `result-track:42a76c7e8ac3b8e409be9abcbe60a91d3360e04381b9fdf974e385bc8a319811` |
| 25 | `theorem` | [exists_opensMeasurableSpace_of_countablySeparated](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/exists-opensmeasurablespace-of-countablyseparated--5aa6c9d186c9186be95085ce.md) | 214 | `result-track:5aa6c9d186c9186be95085ce01c4632bb92021970e4f39340554958d5f16a68b` |
| 26 | `lemma` | [measurable_enorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-enorm--e79211deedb7803bf266e690.md) | 228 | `result-track:e79211deedb7803bf266e690f714347a9c377cfd2004c21b9fd26fbaad99bbc4` |
| 27 | `lemma` | [Measurable.enorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-enorm--a1d93deebf301e3363b1a7d9.md) | 231 | `result-track:a1d93deebf301e3363b1a7d9fba78ebfe1fcdd0bf10d02ef30013c1d3f2c7ff6` |
| 28 | `lemma` | [AEMeasurable.enorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/aemeasurable-enorm--2d8ad2beaedb5f64bcfc8a4c.md) | 235 | `result-track:2d8ad2beaedb5f64bcfc8a4c8342e582a87ef3d5d33bbc159fa947522afc6fbf` |
| 29 | `theorem` | [measurable_norm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-norm--58b20f21473dd2882764f40a.md) | 250 | `result-track:58b20f21473dd2882764f40adf850bd88640192aae4590cb0f755abd30177eb6` |
| 30 | `theorem` | [Measurable.norm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-norm--cfd1df2d8cf87a78d9fcfc10.md) | 254 | `result-track:cfd1df2d8cf87a78d9fcfc103d5972e1af09dd09a4ffec40ab27064738136db8` |
| 31 | `theorem` | [AEMeasurable.norm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/aemeasurable-norm--8f6d5f92fbf94ce27ba214cf.md) | 258 | `result-track:8f6d5f92fbf94ce27ba214cf615bb8929815b76b84c7640134c3bb0fe16b7f9f` |
| 32 | `theorem` | [measurable_nnnorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-nnnorm--3fe463dd878d9cb90093362b.md) | 263 | `result-track:3fe463dd878d9cb90093362b69bef7f1b10ab2b28b4d15dfc0df8bc311da78be` |
| 33 | `theorem` | [Measurable.nnnorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/measurable-nnnorm--1bc5e48333da15bd8ef1501c.md) | 267 | `result-track:1bc5e48333da15bd8ef1501c224c9528ec4ef2b6979c7acd8db0a8ad10d04d28` |
| 34 | `lemma` | [AEMeasurable.nnnorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/declarations/aemeasurable-nnnorm--631c92350eb935e4172f2ce3.md) | 271 | `result-track:631c92350eb935e4172f2ce329d7baf6983ac198a664094384de8a30d9e9cdf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
