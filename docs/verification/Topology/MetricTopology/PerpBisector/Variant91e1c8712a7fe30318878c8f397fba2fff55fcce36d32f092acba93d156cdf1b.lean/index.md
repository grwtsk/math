# Verification target: GRWTSK.Topology.MetricTopology.PerpBisector.Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6a3ebd6a9ea4398b82de589334efb10347760e2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6a3ebd6a9ea4398b82de589334efb10347760e2`.

Source path: `GRWTSK/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Orthogonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/perpbisector--77b174e41a613636281563c7.md) | 35 | `declaration-track:77b174e41a613636281563c7f82cd46d7d1a2bb00f597b389be5f888997dafe9` |
| 2 | `theorem` | [mem_perpBisector_iff_inner_eq_zero'](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/mem-perpbisector-iff-inner-eq-zero--d3c45209109395369fd799c4.md) | 40 | `result-track:d3c45209109395369fd799c4ab54d6669912e494df0f452feb9efcf3526e1bd1` |
| 3 | `theorem` | [mem_perpBisector_iff_inner_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/mem-perpbisector-iff-inner-eq-zero--b47a2888b73946dc4eb9ade7.md) | 46 | `result-track:b47a2888b73946dc4eb9ade723e4a619d1a6ff4b35d0ebeca02119ebee96cb0e` |
| 4 | `theorem` | [mem_perpBisector_iff_inner_pointReflection_vsub_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/mem-perpbisector-iff-inner-pointreflection-vsub-eq-zero--ea3f95cc0c352e56f2a40b8c.md) | 50 | `result-track:ea3f95cc0c352e56f2a40b8c110992d842e10dc67a40c46ddf5cddbe798cb6ee` |
| 5 | `theorem` | [mem_perpBisector_pointReflection_iff_inner_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/mem-perpbisector-pointreflection-iff-inner-eq-zero--f3f09db9349428d34da3da86.md) | 56 | `result-track:f3f09db9349428d34da3da86d8cb5600c5501988def95eb7b18be710a84c4ba1` |
| 6 | `theorem` | [midpoint_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/midpoint-mem-perpbisector--4c2f9cc3aaa5e1e4af795418.md) | 62 | `result-track:4c2f9cc3aaa5e1e4af795418e1528f95532c18fc0769f67e0610777c6c37f97d` |
| 7 | `theorem` | [perpBisector_nonempty](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/perpbisector-nonempty--1e94c6daccbad4f208eb181e.md) | 66 | `result-track:1e94c6daccbad4f208eb181edf45fbe4792db900d08d15df066efa7bb4293cf0` |
| 8 | `theorem` | [direction_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/direction-perpbisector--5d3914f4b50cd46effe54284.md) | 70 | `result-track:5d3914f4b50cd46effe54284eb26d4cc539748b00125e638de652a45dc950707` |
| 9 | `theorem` | [mem_perpBisector_iff_inner_eq_inner](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/mem-perpbisector-iff-inner-eq-inner--0f98a53249268a27dfee1beb.md) | 76 | `result-track:0f98a53249268a27dfee1beb803092da86285cfda080ae63540c40e5c4e6a419` |
| 10 | `theorem` | [mem_perpBisector_iff_inner_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/mem-perpbisector-iff-inner-eq--85536c97b8ef461db94307eb.md) | 82 | `result-track:85536c97b8ef461db94307eb052c23a45058655d8d25940960321e85e545c843` |
| 11 | `theorem` | [mem_perpBisector_iff_dist_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/mem-perpbisector-iff-dist-eq--c5a59ce426712f7a031f50f8.md) | 88 | `result-track:c5a59ce426712f7a031f50f845956394226b116d7985b6c65c8f39bf8594a5f4` |
| 12 | `theorem` | [mem_perpBisector_iff_dist_eq'](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/mem-perpbisector-iff-dist-eq--ce3b65b63ca8a061d65f795b.md) | 93 | `result-track:ce3b65b63ca8a061d65f795b079ab356ca98319c30f178b4f5f87f00d021ab76` |
| 13 | `theorem` | [perpBisector_comm](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/perpbisector-comm--78360f1736c539d18dca2391.md) | 96 | `result-track:78360f1736c539d18dca23919fc304e061ca59036be3974351284ff59e1ee299` |
| 14 | `theorem` | [right_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/right-mem-perpbisector--8a06f7b3a145fb9d53dddbfc.md) | 99 | `result-track:8a06f7b3a145fb9d53dddbfc0e39cb1bc2c06e06386bcf555c889f29c79c9f32` |
| 15 | `theorem` | [left_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/left-mem-perpbisector--d8da7296a2fed47cd06c888c.md) | 102 | `result-track:d8da7296a2fed47cd06c888c4eb246389a5523c7c36e3d694d1a340fb8a7c07d` |
| 16 | `theorem` | [perpBisector_self](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/perpbisector-self--22bd3361ab7e7f103b1c2602.md) | 105 | `result-track:22bd3361ab7e7f103b1c26028e7f58a98f08a9b482e3131de2fb86d5eefb7164` |
| 17 | `theorem` | [perpBisector_eq_top](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/perpbisector-eq-top--d1f2a1fcde4f856d6c13d413.md) | 108 | `result-track:d1f2a1fcde4f856d6c13d4131119aed8e4b35cffadc6b7645f37e517e0933542` |
| 18 | `theorem` | [perpBisector_ne_bot](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/perpbisector-ne-bot--37234c8947a10714807f43e2.md) | 113 | `result-track:37234c8947a10714807f43e2679308d3c0e89507388f449276647d5f2e1a0559` |
| 19 | `theorem` | [inner_vsub_vsub_of_dist_eq_of_dist_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/inner-vsub-vsub-of-dist-eq-of-dist-eq--422f7388efe167b032f61d5e.md) | 125 | `result-track:422f7388efe167b032f61d5e57b5f00959f232ac6a7ff0f1cdff30d98ee56b1d` |
| 20 | `theorem` | [Isometry.preimage_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/isometry-preimage-perpbisector--738625fbd386c58b581ac38d.md) | 135 | `result-track:738625fbd386c58b581ac38df1c870c7b1793dfdba2db26541d1c72853eeb20a` |
| 21 | `theorem` | [Isometry.mapsTo_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/declarations/isometry-mapsto-perpbisector--f94b1555f5f9f92104b04b20.md) | 139 | `result-track:f94b1555f5f9f92104b04b204c5ea0fd1d77a81c234148a743b29c9b48b120e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
