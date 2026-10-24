# Verification target: GRWTSK.Topology.GeneralTopology.RegularityCompacts.Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e9f5cb6c12dc77d143f68d964f4ecbc7251cac2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e9f5cb6c12dc77d143f68d964f4ecbc7251cac2`.

Source path: `GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Polish` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [innerRegularWRT_isCompact_closure_iff](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact-closure-iff--7962baa4597215ae35d24565.md) | 33 | `result-track:7962baa4597215ae35d24565852cfbf54bd3cd50c0edf7967fee8174a0c40e87` |
| 2 | `lemma` | [innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact-isclosed-iff-innerregularwrt-iscompact-closure--f7f9b7a4c4ef690377da2112.md) | 43 | `result-track:f7f9b7a4c4ef690377da211264c2aa273406cce9f1cd60a11b11a2e7804e6979` |
| 3 | `lemma` | [innerRegularWRT_isCompact_isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact-isclosed-iff--7a6418cfb26f028b845ef73d.md) | 57 | `result-track:7a6418cfb26f028b845ef73d5248b939724369f3926a1e9dd3fe193c2dc5ef08` |
| 4 | `theorem` | [innerRegularWRT_of_exists_compl_lt](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-of-exists-compl-lt--610eab803517bd5d2cf982fd.md) | 68 | `result-track:610eab803517bd5d2cf982fdf907ef31a0a2af006ae9b241a7b5dc82baac3993` |
| 5 | `theorem` | [innerRegularWRT_isCompact_closure_of_univ](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact-closure-of-univ--ca30e4485b0c7ec62b47b330.md) | 81 | `result-track:ca30e4485b0c7ec62b47b330537d86246b0fc6b33243a7cb874e6b39194923ad` |
| 6 | `theorem` | [exists_isCompact_closure_measure_compl_lt](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/exists-iscompact-closure-measure-compl-lt--ad4b9a4317a105e005220700.md) | 90 | `result-track:ad4b9a4317a105e00522070096a3b013c5676c99d2a36767f7b0662065d80ed6` |
| 7 | `theorem` | [innerRegularWRT_isCompact_closure](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact-closure--11e52f229bb104af58cc34c8.md) | 130 | `result-track:11e52f229bb104af58cc34c8982e46dd937b7a6cd021cf1c96393195c6f3504c` |
| 8 | `theorem` | [innerRegularWRT_isCompact_isClosed](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact-isclosed--54cfe7369e4954cf0f833f4a.md) | 137 | `result-track:54cfe7369e4954cf0f833f4aef3ec34a4a716f5a64207995b0045095a5d29ead` |
| 9 | `theorem` | [innerRegularWRT_isCompact](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact--abfbcdd6ecad8a58e5d54e60.md) | 144 | `result-track:abfbcdd6ecad8a58e5d54e60ebdf8a92fe8a99375379fba6d6d79f3356899239` |
| 10 | `theorem` | [innerRegularWRT_isCompact_isClosed_isOpen](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact-isclosed-isopen--c736c315d69d2c1486c6cb84.md) | 151 | `result-track:c736c315d69d2c1486c6cb842427f260960298b1c724b5401637bfc9ec45fa6c` |
| 11 | `theorem` | [innerRegularWRT_isCompact_isOpen](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularwrt-iscompact-isopen--9e5979b0dad5d7214c755e9c.md) | 158 | `result-track:9e5979b0dad5d7214c755e9cf2106d30cacf3a83e6fc3ac840cb748c41be9d17` |
| 12 | `instance` | [InnerRegular_of_pseudoEMetricSpace_completeSpace_secondCountable](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregular-of-pseudoemetricspace-completespace-secondcountable--86c53fbd2bf952fda46c8a50.md) | 170 | `declaration-track:86c53fbd2bf952fda46c8a50d41b311ec45d0271be2ffc141f6fa782fbb76265` |
| 13 | `instance` | [InnerRegular_of_polishSpace](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregular-of-polishspace--39a5c3f22fce8cf30cf6ce98.md) | 183 | `declaration-track:39a5c3f22fce8cf30cf6ce98f12e6189e174fb778ea4497a0cce614b95d43bce` |
| 14 | `instance` | [InnerRegularCompactLTTop_of_pseudoEMetricSpace_completeSpace_secondCountable](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularcompactlttop-of-pseudoemetricspace-completespace-secondcount--a48b4ad57bd8c0be2b289cfe.md) | 193 | `declaration-track:a48b4ad57bd8c0be2b289cfe191689975a34ac680b154e1206da5a5732cf57d4` |
| 15 | `instance` | [InnerRegularCompactLTTop_of_polishSpace](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregularcompactlttop-of-polishspace--74ce0ad3920bd2a6fa075e3c.md) | 213 | `declaration-track:74ce0ad3920bd2a6fa075e3c88162b7279bcea9faae068fd085937d7e2ca4c40` |
| 16 | `theorem` | [innerRegular_isCompact_isClosed_measurableSet_of_finite](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/innerregular-iscompact-isclosed-measurableset-of-finite--edf3131c5ccf05cc05525159.md) | 219 | `result-track:edf3131c5ccf05cc05525159e8a501cfbeaae58d040e62e2ceadb28354fa5edf` |
| 17 | `theorem` | [PolishSpace.innerRegular_isCompact_isClosed_measurableSet](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variant06123f3aa62fecb67e295cc5adaa66bd699d8f6ae95a40b2db13dd9a19721da4.lean/declarations/polishspace-innerregular-iscompact-isclosed-measurableset--8e5c671057ee8c6f2215707c.md) | 239 | `result-track:8e5c671057ee8c6f2215707c2c65524e3155144466b7bf27478f96df403851d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
