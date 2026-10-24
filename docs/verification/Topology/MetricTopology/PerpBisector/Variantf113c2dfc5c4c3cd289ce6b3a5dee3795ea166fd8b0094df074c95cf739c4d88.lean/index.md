# Verification target: GRWTSK.Topology.MetricTopology.PerpBisector.Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fddeb8958b65578f4abf112a206f09df8038b690",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fddeb8958b65578f4abf112a206f09df8038b690`.

Source path: `GRWTSK/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Orthogonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/perpbisector--5f24761b7f684929ee3f77f9.md) | 43 | `declaration-track:5f24761b7f684929ee3f77f96a82d52a59502bed8cb6fc562ce8edf5e6745562` |
| 2 | `theorem` | [mem_perpBisector_iff_inner_eq_zero'](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/mem-perpbisector-iff-inner-eq-zero--a3ba145b5e3253e24e7be7b9.md) | 48 | `result-track:a3ba145b5e3253e24e7be7b9af6023730e528eef351fef8cc94778c4f508b35c` |
| 3 | `theorem` | [mem_perpBisector_iff_inner_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/mem-perpbisector-iff-inner-eq-zero--28aaaec61311d8fa6eb737ce.md) | 54 | `result-track:28aaaec61311d8fa6eb737ce6e0ba473f7038c5ffbf7698ae76dd03004eda2cf` |
| 4 | `theorem` | [mem_perpBisector_iff_inner_pointReflection_vsub_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/mem-perpbisector-iff-inner-pointreflection-vsub-eq-zero--e75845c6767be500130b486d.md) | 58 | `result-track:e75845c6767be500130b486ddd6a88b77af9cd283bdd2f2b9eedf43bfbf45dd8` |
| 5 | `theorem` | [mem_perpBisector_pointReflection_iff_inner_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/mem-perpbisector-pointreflection-iff-inner-eq-zero--e281739821a0e61ebafc5371.md) | 64 | `result-track:e281739821a0e61ebafc53718867fb216c1def92e9a6c09b398c7ded01b219e7` |
| 6 | `theorem` | [midpoint_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/midpoint-mem-perpbisector--ef73e8d669bcf5aad881928e.md) | 70 | `result-track:ef73e8d669bcf5aad881928e39582e31fca3fafb7cdd2ceecda85426f260db4c` |
| 7 | `theorem` | [perpBisector_nonempty](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/perpbisector-nonempty--08a9f5e9b0990df6be5fcd04.md) | 74 | `result-track:08a9f5e9b0990df6be5fcd046b05073b130cbdd62adab5a6943da432c065829d` |
| 8 | `theorem` | [direction_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/direction-perpbisector--0ccdd6a14b33095aac188a41.md) | 78 | `result-track:0ccdd6a14b33095aac188a41aac01014205ad6668b965ecf5cd14cb7e5e3b1c0` |
| 9 | `theorem` | [mem_perpBisector_iff_inner_eq_inner](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/mem-perpbisector-iff-inner-eq-inner--0e8be01c9598224f99cbd5df.md) | 84 | `result-track:0e8be01c9598224f99cbd5dfa24c00652ddc97fe26a4d9d47e6560d5afd52beb` |
| 10 | `theorem` | [mem_perpBisector_iff_inner_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/mem-perpbisector-iff-inner-eq--a7a76cc9d3d49eb423aa9fda.md) | 90 | `result-track:a7a76cc9d3d49eb423aa9fda6002199a852156b4a5fea5a73d68645b3b51487c` |
| 11 | `theorem` | [mem_perpBisector_iff_dist_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/mem-perpbisector-iff-dist-eq--d06a8d2a9a662fe1326cf775.md) | 96 | `result-track:d06a8d2a9a662fe1326cf7757fb21834cb5c1216b0c1df35c39d4c99befb15d7` |
| 12 | `theorem` | [mem_perpBisector_iff_dist_eq'](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/mem-perpbisector-iff-dist-eq--9b4f75dc909dca1de3162615.md) | 101 | `result-track:9b4f75dc909dca1de3162615714004924ddef0207c502770f4f7168090fb8a24` |
| 13 | `theorem` | [perpBisector_comm](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/perpbisector-comm--ebbe49e486bc5936ae33862a.md) | 104 | `result-track:ebbe49e486bc5936ae33862a68fafa5c050c169a4248f06072b29d135e87ca00` |
| 14 | `theorem` | [right_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/right-mem-perpbisector--d7e442a8e78c1aa0a70fe5a0.md) | 107 | `result-track:d7e442a8e78c1aa0a70fe5a041a8da93c7ac8f1c5c38ccfbdeff1e5c1b2db8c6` |
| 15 | `theorem` | [left_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/left-mem-perpbisector--224b8449b1e69c413f7f9410.md) | 110 | `result-track:224b8449b1e69c413f7f9410e28bb115a308270e62d1e52f8bec8ebfcb361c09` |
| 16 | `theorem` | [perpBisector_self](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/perpbisector-self--8322a996083c6c1a5429e2ed.md) | 113 | `result-track:8322a996083c6c1a5429e2ede56c309c9566268c4bdf5eb54af3a383eedac181` |
| 17 | `theorem` | [perpBisector_eq_top](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/perpbisector-eq-top--f2e3b4f016aaf5b9256f0a15.md) | 116 | `result-track:f2e3b4f016aaf5b9256f0a1599f9bb7450148b0a786c2059914dcaf9f33901ab` |
| 18 | `theorem` | [perpBisector_ne_bot](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/perpbisector-ne-bot--ab87ac81d0839aa600f5f6c7.md) | 121 | `result-track:ab87ac81d0839aa600f5f6c7de7a1250f6623cdb5d4a904085bf83b5853b2d14` |
| 19 | `theorem` | [inner_vsub_vsub_of_dist_eq_of_dist_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/inner-vsub-vsub-of-dist-eq-of-dist-eq--70c43ed878d3d4de49283bf2.md) | 133 | `result-track:70c43ed878d3d4de49283bf2a6b35c2e39462a9762d40c20ab9854263450bb5a` |
| 20 | `theorem` | [Isometry.preimage_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/isometry-preimage-perpbisector--e1aeba7df60ffb12c38bed69.md) | 143 | `result-track:e1aeba7df60ffb12c38bed69bfd8e71ee7da14c70284553fc0cdecd4b11c2f4c` |
| 21 | `theorem` | [Isometry.mapsTo_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/declarations/isometry-mapsto-perpbisector--2bc035ad02be6742fc07dd27.md) | 147 | `result-track:2bc035ad02be6742fc07dd27719a7f33e170a793c3d0eb813ffadf066dd9fa02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
