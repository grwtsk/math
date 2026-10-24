# Verification target: GRWTSK.Topology.MetricTopology.CircleMap.Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0a3ed2ef6e5883de83dfeb93ad935a4cd4c8ea2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0a3ed2ef6e5883de83dfeb93ad935a4cd4c8ea2`.

Source path: `GRWTSK/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap--e9156c549b70e0c3374eeb58.md) | 35 | `declaration-track:e9156c549b70e0c3374eeb58259b764fdc125f921be6298450ddc192c7933fd9` |
| 2 | `theorem` | [circleMap_sub_center](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-sub-center--0c3c21b1f03835e49ff5bd70.md) | 38 | `result-track:0c3c21b1f03835e49ff5bd70e2266f1ba64788da06c1a17c903e5b3ccb3ca758` |
| 3 | `theorem` | [circleMap_zero](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-zero--e68528f08e94416d8dfcbccf.md) | 41 | `result-track:e68528f08e94416d8dfcbccf4e09c5b6b9bcce865d580aebb6126832d2f1c82a` |
| 4 | `theorem` | [norm_circleMap_zero](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/norm-circlemap-zero--2914b1d45c885782a582b4c0.md) | 44 | `result-track:2914b1d45c885782a582b4c09a3ab6a1b7a6939176f431c7e2ec8459dfae5518` |
| 5 | `theorem` | [circleMap_notMem_ball](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-notmem-ball--431629342fed6d857d30cca9.md) | 48 | `result-track:431629342fed6d857d30cca96a137b69e0c2b24107bde85935d0b16f2f0eb6a9` |
| 6 | `theorem` | [circleMap_ne_mem_ball](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-ne-mem-ball--4e32361b0cdd4de1da310611.md) | 53 | `result-track:4e32361b0cdd4de1da310611df3b01e066bde3567cfc1291d8d6750c2b0a31e1` |
| 7 | `theorem` | [circleMap_mem_sphere'](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-mem-sphere--adc69a2c52e68a37cadb2c92.md) | 57 | `result-track:adc69a2c52e68a37cadb2c92f44ae5054785b3f8f39610213eded4156a75549f` |
| 8 | `theorem` | [circleMap_mem_sphere](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-mem-sphere--9e9db8acbbc138497d5cf325.md) | 59 | `result-track:9e9db8acbbc138497d5cf3254692f4c222b8e9c705be0dcfc6dc37a4ef16a10f` |
| 9 | `theorem` | [circleMap_mem_closedBall](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-mem-closedball--e46190bb7bc6cdd8f9196502.md) | 63 | `result-track:e46190bb7bc6cdd8f91965022007d39978b3469a121106832fb18f43c85c2c74` |
| 10 | `theorem` | [circleMap_eq_center_iff](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-eq-center-iff--a4de43a9556250714c655def.md) | 68 | `result-track:a4de43a9556250714c655deffa99c74f3a1e47ee71c91d0c520e852905a9f9bd` |
| 11 | `theorem` | [circleMap_zero_radius](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-zero-radius--239da0aa59c4709c509f5479.md) | 72 | `result-track:239da0aa59c4709c509f5479be56bd3d5906619926644d8974e9d4030a099b34` |
| 12 | `theorem` | [circleMap_ne_center](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-ne-center--af8da33f1befea71709f42b0.md) | 75 | `result-track:af8da33f1befea71709f42b0f514c003103cc81e0cd9242278fbf388de2cdf05` |
| 13 | `lemma` | [circleMap_zero_mul](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-zero-mul--47dbe1d874e1b8150db8aa41.md) | 78 | `result-track:47dbe1d874e1b8150db8aa4151bf983fcfaf85ce1b20b330a1545e562af4160e` |
| 14 | `lemma` | [circleMap_zero_div](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-zero-div--8a0117573ccc79946f6f3238.md) | 83 | `result-track:8a0117573ccc79946f6f323879201e69d7d6c4d4f47dac149fcc632ac8dea05d` |
| 15 | `lemma` | [circleMap_zero_inv](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-zero-inv--f6c0f4ac127e477c7dd3ae70.md) | 88 | `result-track:f6c0f4ac127e477c7dd3ae70202bb4aca316a6d071d566e45117c1b6ab888450` |
| 16 | `lemma` | [circleMap_zero_pow](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-zero-pow--d0a8507b564915c2add2e4b3.md) | 91 | `result-track:d0a8507b564915c2add2e4b3e669ee9ff5cae6ea73287fc02b281c4e5c29b9b4` |
| 17 | `lemma` | [circleMap_zero_zpow](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-zero-zpow--65d4e9116e58e0de568e79e4.md) | 95 | `result-track:65d4e9116e58e0de568e79e4312e16b705d402c3c4715ec37506b3efad24cae0` |
| 18 | `lemma` | [circleMap_pi_div_two](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-pi-div-two--638b4a11abe982059c884d5a.md) | 101 | `result-track:638b4a11abe982059c884d5a25c4d7d62c0fcd7185df139e85e1e74c497179f1` |
| 19 | `lemma` | [circleMap_neg_pi_div_two](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-neg-pi-div-two--b2d719b08aa91ad50ee89204.md) | 104 | `result-track:b2d719b08aa91ad50ee89204682bb5206c3f127afd9234763e8b43af9bf3409c` |
| 20 | `theorem` | [periodic_circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/periodic-circlemap--1fe10a03d131d1063678aab4.md) | 109 | `result-track:1fe10a03d131d1063678aab47d69ecb4ae0974028d97cc8d1320dc0a61fd9a63` |
| 21 | `theorem` | [Set.Countable.preimage_circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/set-countable-preimage-circlemap--f303c93464902848e430b41d.md) | 112 | `result-track:f303c93464902848e430b41dd80645536647bf90e0b333ec0fa4ee04af1f96e0` |
| 22 | `lemma` | [circleMap_eq_circleMap_iff](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/circlemap-eq-circlemap-iff--87aefaffa05410e300a81a08.md) | 120 | `result-track:87aefaffa05410e300a81a08c22e9b609a7240707b73c12781b7667b9ffbf1a5` |
| 23 | `lemma` | [eq_of_circleMap_eq](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/eq-of-circlemap-eq--5a62d71cc6034777b7528d32.md) | 126 | `result-track:5a62d71cc6034777b7528d320b5e4a0e47f3dadac2940ac058ffcdf3a960a382` |
| 24 | `theorem` | [injOn_circleMap_of_abs_sub_le](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/injon-circlemap-of-abs-sub-le--39a5de697522bb20e5639e69.md) | 141 | `result-track:39a5de697522bb20e5639e69de72a2f7bd12d869c599af258eaedd2000f17233` |
| 25 | `theorem` | [injOn_circleMap_of_abs_sub_le'](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/declarations/injon-circlemap-of-abs-sub-le--f32346bd6d26d72e09eef300.md) | 149 | `result-track:f32346bd6d26d72e09eef300945716ef2437505902d8051794244e86501279af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
