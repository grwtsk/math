# Verification target: GRWTSK.Topology.MetricTopology.Algebra.Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeab88d7cdffd2898889c47c030e7c500f329aae",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeab88d7cdffd2898889c47c030e7c500f329aae`.

Source path: `GRWTSK/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Monotonicity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/lipschitzadd--4fb196cf6c3c620e76e83495.md) | 47 | `declaration-track:4fb196cf6c3c620e76e834953f4dfdfdffbeb16555faf025d4441e282b5e3d12` |
| 2 | `class` | [LipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/lipschitzmul--2024197750152c48e80301df.md) | 54 | `declaration-track:2024197750152c48e80301df224cfa21d2f3c6d6e4eb0a8c4863f4b09f846b0a` |
| 3 | `def` | [LipschitzAdd.C](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/lipschitzadd-c--12228c6a487df96974b21a28.md) | 59 | `declaration-track:12228c6a487df96974b21a2867d92ca0faef030d18a7bf163e4d508132bf81f8` |
| 4 | `def` | [LipschitzMul.C](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/lipschitzmul-c--7be116f67aca7f7b189e0fb7.md) | 67 | `declaration-track:7be116f67aca7f7b189e0fb76ee1258b14a6de938cf20b7f3951638223ea2784` |
| 5 | `theorem` | [lipschitzWith_lipschitz_const_mul_edist](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/lipschitzwith-lipschitz-const-mul-edist--5cfef037ab5105d0c0607dd8.md) | 74 | `result-track:5cfef037ab5105d0c0607dd8e4be8e187fd4f2302440c5267d64839c0a5fb250` |
| 6 | `theorem` | [lipschitz_with_lipschitz_const_mul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/lipschitz-with-lipschitz-const-mul--c1681a248c0dcc9a44b6849c.md) | 83 | `result-track:c1681a248c0dcc9a44b6849cc1d59c6fb3bc7d9267ced8401f4e8ce578020eb8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/instance--17f600fa4688f2f65184548a.md) | 92 | `declaration-track:17f600fa4688f2f65184548aca1dda1224dd8884dd5e44d8109aa02f2ca927b7` |
| 8 | `instance` | [Submonoid.lipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/submonoid-lipschitzmul--fa805bcd55650c93e4e4cb6c.md) | 98 | `declaration-track:fa805bcd55650c93e4e4cb6c0bc3ed24683f502c02293b63bb1f3d565c1a5862` |
| 9 | `instance` | [MulOpposite.lipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/mulopposite-lipschitzmul--9624e3f63956b64ac8f24493.md) | 106 | `declaration-track:9624e3f63956b64ac8f2449368f394f7c464e9c19978d72d3a5b15f69b7370d3` |
| 10 | `instance` | [Real.hasLipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/real-haslipschitzadd--6e5a676974af7f51f96c72c8.md) | 115 | `declaration-track:6e5a676974af7f51f96c72c836ee343161c9b2319c5b6f7b3314f425f5949a61` |
| 11 | `instance` | [NNReal.hasLipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/nnreal-haslipschitzadd--53d264766cf14a3bb5159d23.md) | 125 | `declaration-track:53d264766cf14a3bb5159d23906a745cfdaeba58bc48b8c1666273548e0abefe` |
| 12 | `class` | [BoundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/boundedsmul--1bbb0615244802879a5de104.md) | 141 | `declaration-track:1bbb0615244802879a5de104f5bb70ecd7dae748f19776f9475505d66766eff2` |
| 13 | `theorem` | [dist_smul_pair](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/dist-smul-pair--f8bc1af425c4217ecc35803f.md) | 149 | `result-track:f8bc1af425c4217ecc35803f4705d99111a6e9f4f6a05e9aca2c39304daf33e4` |
| 14 | `theorem` | [dist_pair_smul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/dist-pair-smul--1c5fabe719b23b5e4e89b86e.md) | 153 | `result-track:1c5fabe719b23b5e4e89b86ee67dd76a64564ef53576c579f52fe2c345a015b6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/instance--248156123c2c55cc8120b12e.md) | 159 | `declaration-track:248156123c2c55cc8120b12e7613f817ffed1d640eafcc22ac9c402e16a9cc2a` |
| 16 | `instance` | [Real.boundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/real-boundedsmul--080f2b00274dda3b4f293ed3.md) | 181 | `declaration-track:080f2b00274dda3b4f293ed30773c086e50dfa0e662329c9bf6e904ba1c4748e` |
| 17 | `instance` | [NNReal.boundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/nnreal-boundedsmul--9179b2d2dc83aebf9fb5954f.md) | 186 | `declaration-track:9179b2d2dc83aebf9fb5954fd924ddeeb5c2886f5a93ba913eeefdbaf86a32d9` |
| 18 | `instance` | [BoundedSMul.op](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/boundedsmul-op--891bc60c69d19ba70c0417d9.md) | 192 | `declaration-track:891bc60c69d19ba70c0417d90772078247a42a098e6a70d85e8ba669c8170b9f` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/instance--fb7538b087071b73a1a124a8.md) | 202 | `declaration-track:fb7538b087071b73a1a124a8a22b58502302508c68bd44dcbbda2ad7a4a7746a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/instance--ac56967c48c2de9608bae58d.md) | 205 | `declaration-track:ac56967c48c2de9608bae58d675959ef8d6d6c83bf4dcf43f7b4a1adc8d7e536` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/declarations/instance--9836164bc0f78e891d2d684b.md) | 209 | `declaration-track:9836164bc0f78e891d2d684b3af566a3723685bc886b8e5ec40bd7d051515dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
