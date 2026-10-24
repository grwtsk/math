# Verification target: GRWTSK.Topology.MetricTopology.Equicontinuity.Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0936f3f17fb9557bfdd18945518c4345f1794133",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0936f3f17fb9557bfdd18945518c4345f1794133`.

Source path: `GRWTSK/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equicontinuousAt_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/declarations/equicontinuousat-iff-right--c2dc97fc535321153578db2c.md) | 57 | `result-track:c2dc97fc535321153578db2c42eb914473d6a7d7077bcff02c95075e3b09f5eb` |
| 2 | `theorem` | [equicontinuousAt_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/declarations/equicontinuousat-iff--8563aab1598371862722f02e.md) | 62 | `result-track:8563aab1598371862722f02e8bd1ef5632dcf2a2463d5ee9161e5fc29502be17` |
| 3 | `theorem` | [equicontinuousAt_iff_pair](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/declarations/equicontinuousat-iff-pair--dc8048bf27a9ef8b58e36971.md) | 68 | `result-track:dc8048bf27a9ef8b58e36971df080c8fa67f47ede8bba3d0af76f54ea78700de` |
| 4 | `theorem` | [uniformEquicontinuous_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/declarations/uniformequicontinuous-iff-right--085faf1721203c9ca4b96292.md) | 83 | `result-track:085faf1721203c9ca4b962927670ae8a03bb688360c1781996743d7a677064e1` |
| 5 | `theorem` | [uniformEquicontinuous_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/declarations/uniformequicontinuous-iff--484d46f8dd1d513207d68445.md) | 89 | `result-track:484d46f8dd1d513207d684452acb6cf417f62ecf52040b848639779c7e39984d` |
| 6 | `theorem` | [equicontinuousAt_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/declarations/equicontinuousat-of-continuity-modulus--271c10683d970505dd30e394.md) | 97 | `result-track:271c10683d970505dd30e394f2e37c860ce1e212c0911a4c5a5fddc65ae6bf9a` |
| 7 | `theorem` | [uniformEquicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/declarations/uniformequicontinuous-of-continuity-modulus--7d1bc86a1ba62600b8531bac.md) | 107 | `result-track:7d1bc86a1ba62600b8531bac714e19ff283fcdd29785526bda00c424e78aca4c` |
| 8 | `theorem` | [equicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/declarations/equicontinuous-of-continuity-modulus--440c4e00798286ce8ec8f193.md) | 122 | `result-track:440c4e00798286ce8ec8f1936c983f14b5d1f42bf824c632dca93ec56b16c25d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
