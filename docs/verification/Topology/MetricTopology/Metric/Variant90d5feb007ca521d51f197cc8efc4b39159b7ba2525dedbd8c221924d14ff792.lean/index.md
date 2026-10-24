# Verification target: GRWTSK.Topology.MetricTopology.Metric.Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc87fc8d0dce51c415a65b6641cffb2814ec11a1",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc87fc8d0dce51c415a65b6641cffb2814ec11a1`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Thickening` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_ball](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurableset-ball--aef37c147eba54b6eecde254.md) | 42 | `result-track:aef37c147eba54b6eecde254b1c054d83240001574f3df8e639804a523cb072f` |
| 2 | `theorem` | [measurableSet_closedBall](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurableset-closedball--14ae6a0aaa020aae5a88bd6b.md) | 46 | `result-track:14ae6a0aaa020aae5a88bd6b2d95a29c1b8556fcf18a8d8b84c95a3fff9637b4` |
| 3 | `theorem` | [measurable_infDist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-infdist--6d748eda2561bbc2009abf97.md) | 50 | `result-track:6d748eda2561bbc2009abf97e4ffd7e9fa8601768277ce631577039d961507a2` |
| 4 | `theorem` | [Measurable.infDist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-infdist--49916e94627e940907266ad8.md) | 54 | `result-track:49916e94627e940907266ad83255b828612d09d1ea80ab5da664758c09692f05` |
| 5 | `theorem` | [measurable_infNndist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-infnndist--e8a2309a551c07e482143e40.md) | 59 | `result-track:e8a2309a551c07e482143e401ca99eea4f74d51f9795463b31fad52048cee4ed` |
| 6 | `theorem` | [Measurable.infNndist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-infnndist--83dc52e7498b73d865fa642f.md) | 63 | `result-track:83dc52e7498b73d865fa642feeb922673ce1c8ee2e58946635831eb55e7f2447` |
| 7 | `theorem` | [measurable_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-dist--2cf405ffc33dd53d8c883eb1.md) | 72 | `result-track:2cf405ffc33dd53d8c883eb15e736b843e42c6362b10cd438fd97b2d7f4b6ee9` |
| 8 | `theorem` | [Measurable.dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-dist--1e9bbb9859c7012a135a66f4.md) | 76 | `result-track:1e9bbb9859c7012a135a66f4186cbe690a9cf27e18e9c9d4e46c297abf048de2` |
| 9 | `theorem` | [measurable_nndist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-nndist--7749cbe9cfb569aeed3a8599.md) | 81 | `result-track:7749cbe9cfb569aeed3a85990655cf1ae18f32a6fee0c28993f5c5081febadc6` |
| 10 | `theorem` | [Measurable.nndist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-nndist--b5b395d137972637a0be4bd9.md) | 85 | `result-track:b5b395d137972637a0be4bd9e4680376bff3428863e4fece3dc13940e41f48e2` |
| 11 | `theorem` | [measurableSet_eball](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurableset-eball--b839bb74519e6fd2f76b2825.md) | 101 | `result-track:b839bb74519e6fd2f76b2825415af1534fa07d857aa7a4dbf82417f9deb8a94c` |
| 12 | `theorem` | [measurable_edist_right](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-edist-right--553923ed4e41f931937364be.md) | 105 | `result-track:553923ed4e41f931937364be99b7fd9ac9d4f6ef45872f78337c2475f60fa0b6` |
| 13 | `theorem` | [measurable_edist_left](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-edist-left--ae447ce954a2c0355401cafc.md) | 109 | `result-track:ae447ce954a2c0355401cafc39f0b34fd6e46279f3773982f8a80598655e6ce5` |
| 14 | `theorem` | [measurable_infEdist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-infedist--207d8e06ba668187fe8e4a69.md) | 113 | `result-track:207d8e06ba668187fe8e4a69871b658332b7d592f6f6d32dae0d96effa9ee775` |
| 15 | `theorem` | [Measurable.infEdist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-infedist--561d7f47fc3ec51741870b0e.md) | 117 | `result-track:561d7f47fc3ec51741870b0e18aef5ee6ed61a78780e05e608bea581f7cd0c72` |
| 16 | `theorem` | [tendsto_measure_cthickening](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/tendsto-measure-cthickening--3d73143aab2af1ecead54f87.md) | 125 | `result-track:3d73143aab2af1ecead54f874f3eab8c1dee52d4dfaeedb51d34a8a390e03808` |
| 17 | `theorem` | [tendsto_measure_cthickening_of_isClosed](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/tendsto-measure-cthickening-of-isclosed--9fed8dbabbe7bf187fad03a1.md) | 142 | `result-track:9fed8dbabbe7bf187fad03a1c4f25940d9b3c6acb334d99253ecc2e6af214fe5` |
| 18 | `theorem` | [tendsto_measure_thickening](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/tendsto-measure-thickening--90a3d27ca29af7c02bf874c6.md) | 150 | `result-track:90a3d27ca29af7c02bf874c65963ab7b170a8c662eb6d289b4edc479a1c6a469` |
| 19 | `theorem` | [tendsto_measure_thickening_of_isClosed](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/tendsto-measure-thickening-of-isclosed--c4337105c561349515f1afac.md) | 159 | `result-track:c4337105c561349515f1afacc1d8563e0c46f4e43eb081fb9490b7e960105436` |
| 20 | `theorem` | [measurable_edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-edist--574f5bdc0694eccca19a5eba.md) | 168 | `result-track:574f5bdc0694eccca19a5ebaa110ea55b3cf122d7a06bb712f31043b27e9cffe` |
| 21 | `theorem` | [Measurable.edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-edist--6a73e8d617367c2d08c91b09.md) | 172 | `result-track:6a73e8d617367c2d08c91b09aa442d1dfcefa4b8f7d9294a9c3e68596dca3a0c` |
| 22 | `theorem` | [AEMeasurable.edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/aemeasurable-edist--7859977f08c6f285b94aaca7.md) | 177 | `result-track:7859977f08c6f285b94aaca7290e0db7357f70e250b6c839ce8ec5e1893510da` |
| 23 | `theorem` | [tendsto_measure_cthickening_of_isCompact](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/tendsto-measure-cthickening-of-iscompact--62743c91964dbbca08f1659c.md) | 185 | `result-track:62743c91964dbbca08f1659c216b8e3a2e5d90daaf555c26067c4d727d6b720d` |
| 24 | `theorem` | [exists_borelSpace_of_countablyGenerated_of_separatesPoints](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/exists-borelspace-of-countablygenerated-of-separatespoints--cdf39ea8cc28b47f675f7e80.md) | 194 | `result-track:cdf39ea8cc28b47f675f7e80cd5c3e1a310dafff7a7c3ac6788d1d27e975a2b0` |
| 25 | `theorem` | [exists_opensMeasurableSpace_of_countablySeparated](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/exists-opensmeasurablespace-of-countablyseparated--6506339aaf67346759e9b5bc.md) | 206 | `result-track:6506339aaf67346759e9b5bcbae86a6d35f42a3717a2a5c394b6222e6ce09d13` |
| 26 | `lemma` | [measurable_enorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-enorm--21cdaafde80e2f58962f00e5.md) | 220 | `result-track:21cdaafde80e2f58962f00e53272b28239ca1dd8c395a74fa9bd1f32a5d3e911` |
| 27 | `lemma` | [Measurable.enorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-enorm--fe9f59a26a2852ee2c2f1aca.md) | 223 | `result-track:fe9f59a26a2852ee2c2f1aca779ef79bb0b013492167802c5c605888c69f0b26` |
| 28 | `lemma` | [AEMeasurable.enorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/aemeasurable-enorm--62bf963667fd2dc28888eb1d.md) | 227 | `result-track:62bf963667fd2dc28888eb1d01a8d6dcc2f5341ff94f7a9c3778e49e74903a2b` |
| 29 | `theorem` | [measurable_norm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-norm--4dd220c8ad9c2510b6226a39.md) | 242 | `result-track:4dd220c8ad9c2510b6226a396bb4a73ab53cf56481a8aac0f644b2a11cf15df5` |
| 30 | `theorem` | [Measurable.norm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-norm--1316fc8900eca1ca9e3d92b0.md) | 246 | `result-track:1316fc8900eca1ca9e3d92b05982324160d0487f11ad25504057a51fc8f87037` |
| 31 | `theorem` | [AEMeasurable.norm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/aemeasurable-norm--b9515e424fa80f5cb747d93a.md) | 250 | `result-track:b9515e424fa80f5cb747d93aa8de063a0c8681db0832b90d6691619699760700` |
| 32 | `theorem` | [measurable_nnnorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-nnnorm--82c2464211fe59aeeda44bee.md) | 255 | `result-track:82c2464211fe59aeeda44bee2f1857538ccc18057f656f79d1e6ab2ec47b1d01` |
| 33 | `theorem` | [Measurable.nnnorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/measurable-nnnorm--dfdaf40eb3ee826f2bba6a55.md) | 259 | `result-track:dfdaf40eb3ee826f2bba6a55ed6f84d34d0605bcd4f7d08929a5596eae941cb0` |
| 34 | `lemma` | [AEMeasurable.nnnorm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant90d5feb007ca521d51f197cc8efc4b39159b7ba2525dedbd8c221924d14ff792.lean/declarations/aemeasurable-nnnorm--27570ab0dd49cb55f6546ab5.md) | 263 | `result-track:27570ab0dd49cb55f6546ab558029b7ab078873e6134ed65b264e1e2266314ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
