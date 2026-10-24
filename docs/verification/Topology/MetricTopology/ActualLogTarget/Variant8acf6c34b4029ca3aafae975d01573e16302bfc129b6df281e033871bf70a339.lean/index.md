# Verification target: GRWTSK.Topology.MetricTopology.ActualLogTarget.Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7ee8ef467c899cbcab3d33b9a0758d41a590833",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7ee8ef467c899cbcab3d33b9a0758d41a590833`.

Source path: `GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 1; external provider; requires a separately pinned dependency.
- `UnnormalizedDilation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveTargetFunc](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/positivetargetfunc--33de3ef20d15c2930bedf513.md) | 17 | `declaration-track:33de3ef20d15c2930bedf51399395e528883647919c05004070819ac9a98e919` |
| 2 | `theorem` | [positiveMeasure_unit_interval](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/positivemeasure-unit-interval--ffd1b74a818bf18c64ad4502.md) | 19 | `result-track:ffd1b74a818bf18c64ad450218ee0bb4c9073822626fadc2f96f8e4b0a516f50` |
| 3 | `theorem` | [positiveTargetFunc_memLp](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/positivetargetfunc-memlp--c2a54c4384bbb806b36ac9db.md) | 26 | `result-track:c2a54c4384bbb806b36ac9db6b144e0d0ee33ae1bdf46682e1a580a39d5cc25f` |
| 4 | `def` | [positiveTarget](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/positivetarget--630d1f4a27403a640a5bb4ed.md) | 31 | `declaration-track:630d1f4a27403a640a5bb4ed760951f39ea05c60b9188fac0621b2c9cdf59a3a` |
| 5 | `theorem` | [positiveTarget_ae](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/positivetarget-ae--a58a2531fc52e93db90177a6.md) | 33 | `result-track:a58a2531fc52e93db90177a656456e4d6ba4dc0f732cfaf7fe55f476b01fbd30` |
| 6 | `def` | [logTargetFunc](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logtargetfunc--03b1bd1ec39eb457de3a1fb4.md) | 37 | `declaration-track:03b1bd1ec39eb457de3a1fb42c2b5fb1e3aed64623abcf2bbbcf235115c150f0` |
| 7 | `theorem` | [logTargetFunc_pointwise](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logtargetfunc-pointwise--91339d6c994deb356e616a22.md) | 39 | `result-track:91339d6c994deb356e616a22960d6a3f1269526ea3ba784ac3e64e8c1a0ca9d3` |
| 8 | `theorem` | [logTargetFunc_memLp](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logtargetfunc-memlp--179a5ab8fc889bbefffa332b.md) | 48 | `result-track:179a5ab8fc889bbefffa332b7e95b51fd81c2de4ea26ae067f1276861b5f8c39` |
| 9 | `def` | [logTarget](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logtarget--2f05951142c18cdaaea7d78c.md) | 53 | `declaration-track:2f05951142c18cdaaea7d78cd2d346d0bcead56cb73dd63c516bfefc2da04710` |
| 10 | `theorem` | [logTarget_ae](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logtarget-ae--8d470a4042a2244874e08912.md) | 55 | `result-track:8d470a4042a2244874e08912a99c37c9b71ac1624d2db5a7149a0b83b600bd19` |
| 11 | `theorem` | [logMap_positiveTarget](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logmap-positivetarget--eb15736d9dad4508f3c3f17d.md) | 57 | `result-track:eb15736d9dad4508f3c3f17d9e61742ac3e5907bd3cf416ec9ca9a0185a87d83` |
| 12 | `theorem` | [positiveTarget_norm](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/positivetarget-norm--4fc65ddb25cdb692b4f41190.md) | 65 | `result-track:4fc65ddb25cdb692b4f41190efcef4978410558d60812bbf5b788cf69bea6005` |
| 13 | `theorem` | [logTarget_norm](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logtarget-norm--9ce28ad6c684742e8bf17b6a.md) | 72 | `result-track:9ce28ad6c684742e8bf17b6a7488bd993429e16837f13f29491e8c28f43e394c` |
| 14 | `def` | [positiveIntegerHull](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/positiveintegerhull--f737b1f67907050756ab0516.md) | 76 | `declaration-track:f737b1f67907050756ab051639276d748f3f0ce108bce5361a8712ff7c013068` |
| 15 | `def` | [logIntegerOrbit](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logintegerorbit--ba9d4f42e0449e92d46a88f1.md) | 79 | `declaration-track:ba9d4f42e0449e92d46a88f1b7e6205dae0a8f43f11f8763c3b99f1c481a9e9a` |
| 16 | `def` | [logIntegerHull](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logintegerhull--77ddadfc4331f41db310825a.md) | 82 | `declaration-track:77ddadfc4331f41db310825ace719566e2a7b2d5b6c8d21938fd8e0aed6b0191` |
| 17 | `theorem` | [logMap_normalized_integerOrbit](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logmap-normalized-integerorbit--1f983677aa1bb813812d1890.md) | 85 | `result-track:1f983677aa1bb813812d18904d100808c0279753e7f8b3bbba3f4a44f1815fef` |
| 18 | `theorem` | [logEquiv_span_image](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/logequiv-span-image--1e7114210083100136f10991.md) | 88 | `result-track:1e7114210083100136f109918bf76231af9cada5e7386401a4079d9bde38d2c8` |
| 19 | `theorem` | [actual_integer_hull_image](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/actual-integer-hull-image--fd9da21dfca1076cae6ed27c.md) | 96 | `result-track:fd9da21dfca1076cae6ed27cc54dc0d8c84c8e5c554b219538d58b13a5eafe67` |
| 20 | `theorem` | [actual_target_membership_iff](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/actual-target-membership-iff--d203ad1dc2dd185d109d428f.md) | 115 | `result-track:d203ad1dc2dd185d109d428fd00973eacbe619ffbbe0bb59bfa912e0796fe7c5` |
| 21 | `theorem` | [actual_target_infDist_eq](../../../../../mathematics/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/declarations/actual-target-infdist-eq--3e5ee6b5d49e4a41f4b2e4e6.md) | 130 | `result-track:3e5ee6b5d49e4a41f4b2e4e6e36d16ee3eadbf777edc4d30de49fe880bd2085b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
