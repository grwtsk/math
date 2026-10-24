# Verification target: GRWTSK.Topology.MetricTopology.ActualLogTarget.Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6976806d8dd451773cc5476d35ba7a628d7c621d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6976806d8dd451773cc5476d35ba7a628d7c621d`.

Source path: `GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 6; external provider; requires a separately pinned dependency.
- `UnnormalizedDilation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveTargetFunc](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/positivetargetfunc--d14ec59c2a9d1cf4eab72799.md) | 25 | `declaration-track:d14ec59c2a9d1cf4eab7279936f517e67cdbcbb06f55b8dfcc66c96e2c9763de` |
| 2 | `theorem` | [positiveMeasure_unit_interval](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/positivemeasure-unit-interval--302ff90fa9dd36758ee6b510.md) | 27 | `result-track:302ff90fa9dd36758ee6b5100e37080a6580a6cd0fcc74dd902a59707f2d7123` |
| 3 | `theorem` | [positiveTargetFunc_memLp](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/positivetargetfunc-memlp--2fbf44fd934b323e30b1fcdb.md) | 34 | `result-track:2fbf44fd934b323e30b1fcdb95cda7ff0978f602ef349386a8a6bc9f80ca58f8` |
| 4 | `def` | [positiveTarget](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/positivetarget--1dfbf86de06a5e4f784386a9.md) | 39 | `declaration-track:1dfbf86de06a5e4f784386a9d523dad79ef8021ebda5af95995818c3f4bd626c` |
| 5 | `theorem` | [positiveTarget_ae](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/positivetarget-ae--fa5a0449b7529cbd715fcee5.md) | 41 | `result-track:fa5a0449b7529cbd715fcee54acb2de153f1582a8cf3188093853531d74c923c` |
| 6 | `def` | [logTargetFunc](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logtargetfunc--3c0ac3d4e496ce97f0a9fe39.md) | 45 | `declaration-track:3c0ac3d4e496ce97f0a9fe392dba2e54cf1c0122396609092ad206c53c93cb44` |
| 7 | `theorem` | [logTargetFunc_pointwise](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logtargetfunc-pointwise--9a356c46f6b9b3e47413d34f.md) | 47 | `result-track:9a356c46f6b9b3e47413d34f7252b827ebd286ba96fd22ca88e46b183c741b1d` |
| 8 | `theorem` | [logTargetFunc_memLp](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logtargetfunc-memlp--5adbf5cecbe815c496d942b8.md) | 56 | `result-track:5adbf5cecbe815c496d942b8d9e9797afe7d17010d774063ff94ed83439f4786` |
| 9 | `def` | [logTarget](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logtarget--eae49173430d55fb5f7afc26.md) | 61 | `declaration-track:eae49173430d55fb5f7afc2671010b73a0f08e6fd5efefa684fd892ad87c8d87` |
| 10 | `theorem` | [logTarget_ae](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logtarget-ae--7ecd4e076c27e80a5c600a09.md) | 63 | `result-track:7ecd4e076c27e80a5c600a09638419f413ebedee5f58634a264c54ba3b633fd2` |
| 11 | `theorem` | [logMap_positiveTarget](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logmap-positivetarget--215bdaff2ffc07ec4ccb25cd.md) | 65 | `result-track:215bdaff2ffc07ec4ccb25cd544011fb08d719140e89c944e038e76e40c8271a` |
| 12 | `theorem` | [positiveTarget_norm](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/positivetarget-norm--6363a27a3649b7f0e50321af.md) | 73 | `result-track:6363a27a3649b7f0e50321af5e46b8f06e5a63d8fd362c402a6606216dd5fc4f` |
| 13 | `theorem` | [logTarget_norm](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logtarget-norm--6c19ca8e81f0b1f3b83475ee.md) | 80 | `result-track:6c19ca8e81f0b1f3b83475ee47a830175d378dd6ac302904c97a33e87ff04859` |
| 14 | `def` | [positiveIntegerHull](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/positiveintegerhull--3f92a812805398dc1e42c381.md) | 84 | `declaration-track:3f92a812805398dc1e42c381961e6ae4d65894e80841c068a40aa49b8f1f5b55` |
| 15 | `def` | [logIntegerOrbit](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logintegerorbit--e5c22cf5c5a0112e0adafc05.md) | 87 | `declaration-track:e5c22cf5c5a0112e0adafc058bf8f76bed88f29ef2c67bb563e5e13820c550e9` |
| 16 | `def` | [logIntegerHull](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logintegerhull--f1ca34c75e904348d1e3b2b8.md) | 90 | `declaration-track:f1ca34c75e904348d1e3b2b8ce7727e1af0f9f8e87406e4897d6f536c8ee0cb2` |
| 17 | `theorem` | [logMap_normalized_integerOrbit](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logmap-normalized-integerorbit--935b12699d47fbc62abaf167.md) | 93 | `result-track:935b12699d47fbc62abaf167a0c81b3add55bc60ac133120dfa35841387462a1` |
| 18 | `theorem` | [logEquiv_span_image](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/logequiv-span-image--d514f07db700ef9d7fa06ea4.md) | 96 | `result-track:d514f07db700ef9d7fa06ea41a8521cc79d3056bfed7b3fca1cdd0dd0686c339` |
| 19 | `theorem` | [actual_integer_hull_image](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/actual-integer-hull-image--3038b6b6aacb2415046cfed6.md) | 104 | `result-track:3038b6b6aacb2415046cfed6d67b7de918e4d045fba63bd9c6bad6e2fc159f7c` |
| 20 | `theorem` | [actual_target_membership_iff](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/actual-target-membership-iff--29a843232786c3b99d07568a.md) | 123 | `result-track:29a843232786c3b99d07568a4bdda586b156c258268f1035687657d34048535f` |
| 21 | `theorem` | [actual_target_infDist_eq](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/declarations/actual-target-infdist-eq--ba84b4f3cc5790a7fd02f4e7.md) | 138 | `result-track:ba84b4f3cc5790a7fd02f4e782d932d89175939be522b6e7f912e9f34ccdad0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
