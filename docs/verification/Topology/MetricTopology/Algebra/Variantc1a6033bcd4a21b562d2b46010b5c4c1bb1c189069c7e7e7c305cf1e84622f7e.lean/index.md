# Verification target: GRWTSK.Topology.MetricTopology.Algebra.Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43ca2c9bf5cb4b9197b552ee55a8c556fd77e38d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43ca2c9bf5cb4b9197b552ee55a8c556fd77e38d`.

Source path: `GRWTSK/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Monotonicity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/lipschitzadd--b6e68ec8e0fe2a7c3cebee87.md) | 39 | `declaration-track:b6e68ec8e0fe2a7c3cebee875fdac03854dc13a2fd68e61959d123a5eb7e06d1` |
| 2 | `class` | [LipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/lipschitzmul--f57178521d254600449a0931.md) | 46 | `declaration-track:f57178521d254600449a09315b0e16e6432ca67cacf2c348a5e9444c77049e01` |
| 3 | `def` | [LipschitzAdd.C](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/lipschitzadd-c--2e23673e282f006cc4fdb3dd.md) | 51 | `declaration-track:2e23673e282f006cc4fdb3dd6904736d0a732d5005388c4b08f03a78b42e3c2f` |
| 4 | `def` | [LipschitzMul.C](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/lipschitzmul-c--19a4d47cc3e3be92fc3401dc.md) | 59 | `declaration-track:19a4d47cc3e3be92fc3401dc3156762aee20c4713311b5494658e68b03ad6c41` |
| 5 | `theorem` | [lipschitzWith_lipschitz_const_mul_edist](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/lipschitzwith-lipschitz-const-mul-edist--1e7ec868fbf0b7c6cb0d4a74.md) | 66 | `result-track:1e7ec868fbf0b7c6cb0d4a742d460d734b9fb3d4595b4c820f3a739df5f536be` |
| 6 | `theorem` | [lipschitz_with_lipschitz_const_mul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/lipschitz-with-lipschitz-const-mul--0bd8436ffcd1dba81c29dabe.md) | 75 | `result-track:0bd8436ffcd1dba81c29dabee255774e4de5e44ff303b99e42e2462a5b51797e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/instance--6517113076230013031317c4.md) | 84 | `declaration-track:6517113076230013031317c4a8aa1dc03ceb01a86d3cfac77c66486aa53374cf` |
| 8 | `instance` | [Submonoid.lipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/submonoid-lipschitzmul--eb33e9ed008a93d28051c271.md) | 90 | `declaration-track:eb33e9ed008a93d28051c2713a09180738ceb17caf2843fc0292a44c3a677a75` |
| 9 | `instance` | [MulOpposite.lipschitzMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/mulopposite-lipschitzmul--188b48064a2cd7def3e9d02d.md) | 98 | `declaration-track:188b48064a2cd7def3e9d02d1577548c5bfd3fefd7302734a8f9487bf2d84306` |
| 10 | `instance` | [Real.hasLipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/real-haslipschitzadd--a3309d4e1e30ba0361281777.md) | 107 | `declaration-track:a3309d4e1e30ba036128177717ba56f8948a775a85789045e31f3161873663d1` |
| 11 | `instance` | [NNReal.hasLipschitzAdd](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/nnreal-haslipschitzadd--669edcd6e4239280e2940dc1.md) | 117 | `declaration-track:669edcd6e4239280e2940dc1f9d61b71b98027e63f5f7ca9fbe0301e8c3c9a8e` |
| 12 | `class` | [BoundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/boundedsmul--e696cded6ff0bfe85d8cf6ff.md) | 133 | `declaration-track:e696cded6ff0bfe85d8cf6ff1e1a06c3ed68c1eb290959b9c27ed6d5120d694f` |
| 13 | `theorem` | [dist_smul_pair](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/dist-smul-pair--4735df6d4fc55d61aa052ad4.md) | 141 | `result-track:4735df6d4fc55d61aa052ad4a27e6a36857f494d06e240974bd457da823ac9b5` |
| 14 | `theorem` | [dist_pair_smul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/dist-pair-smul--74b854ac40df3bde346d2b9d.md) | 145 | `result-track:74b854ac40df3bde346d2b9dc37affc26d4c275ee61f7a67e3fb6f3801dae722` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/instance--7942946c4444b814d14dbbad.md) | 151 | `declaration-track:7942946c4444b814d14dbbadfc8bfc44503ea7b48445df3269b0f2ea824f562e` |
| 16 | `instance` | [Real.boundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/real-boundedsmul--61be7414a2c49065499024a5.md) | 173 | `declaration-track:61be7414a2c49065499024a56650856faa6a82b64ca5a5f4ba4118a83bb548a5` |
| 17 | `instance` | [NNReal.boundedSMul](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/nnreal-boundedsmul--06fc03cb8faae7d15f0e8bcb.md) | 178 | `declaration-track:06fc03cb8faae7d15f0e8bcb8da65ed884c3c4b470dee8667f65426216eb73d0` |
| 18 | `instance` | [BoundedSMul.op](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/boundedsmul-op--7455a2b8c1c5d6688f677daf.md) | 184 | `declaration-track:7455a2b8c1c5d6688f677daf3e2892941c4e2008698ea2cee7cfd8d7e8f7a600` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/instance--6b26cfed47e74e894c2de812.md) | 194 | `declaration-track:6b26cfed47e74e894c2de8120ee6de0b0a9d56409fcde9d96371bdbc152391f0` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/instance--54db5962a03a51d973de2da8.md) | 197 | `declaration-track:54db5962a03a51d973de2da8b36debe1d511ebae97fbfa0eef03e81d1d67fc6e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Algebra/Variantc1a6033bcd4a21b562d2b46010b5c4c1bb1c189069c7e7e7c305cf1e84622f7e.lean/declarations/instance--71d6cbb5542a757c07794cfe.md) | 201 | `declaration-track:71d6cbb5542a757c07794cfe9a982085f0a4912b6235842c806df63c51cc6f56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
