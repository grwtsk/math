# Verification target: GRWTSK.Topology.TopologicallyNilpotent.Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6806cbbbd2aac6c8fbae1c37602125edf030313",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/index.md) · [Full source](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6806cbbbd2aac6c8fbae1c37602125edf030313`.

Source path: `GRWTSK/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.LinearTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTopologicallyNilpotent](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/istopologicallynilpotent--d0437167a2512eaafa3110df.md) | 51 | `declaration-track:d0437167a2512eaafa3110df4c20912975860a95077704ead75f1c46d159216d` |
| 2 | `theorem` | [map](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/map--51b62fee68646c7f7bc15e4d.md) | 64 | `result-track:51b62fee68646c7f7bc15e4df4b6345638f0813ae95f32a7f5a2232747b69c8b` |
| 3 | `theorem` | [zero](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/zero--fc1b91e1d65b8d1f1547b49b.md) | 72 | `result-track:fc1b91e1d65b8d1f1547b49b21d02c1ee0b0c4271bbe49c860790bd5081ceb37` |
| 4 | `theorem` | [_root_.GRWTSK.Topology.IsTopologicallyNilpotent.Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.IsNilpotent.isTopologicallyNilpotent](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/root-grwtsk-topology-istopologicallynilpotent-variant57b34f16683e67aa4ad--47f61ef4c64d52626a29bb6e.md) | 76 | `result-track:47f61ef4c64d52626a29bb6e577c1bab8ef4424c5c21e43744863b1af22e801c` |
| 5 | `theorem` | [exists_pow_mem_of_mem_nhds](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/exists-pow-mem-of-mem-nhds--7f7c7b89a624b7f544e87f34.md) | 83 | `result-track:7f7c7b89a624b7f544e87f34d2a9c3aeca799318ad7aeabf6084e20796afce01` |
| 6 | `theorem` | [mul_right_of_commute](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/mul-right-of-commute--6dfebd92186cf54edbe52a35.md) | 96 | `result-track:6dfebd92186cf54edbe52a35fba6ca711b922f0fb5faf1e10a43d342c9bd26b6` |
| 7 | `theorem` | [mul_left_of_commute](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/mul-left-of-commute--14efd56f1ac622f061c8b087.md) | 104 | `result-track:14efd56f1ac622f061c8b087c3e112b27fb263598aa22026f5d7709abf643228` |
| 8 | `theorem` | [add_of_commute](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/add-of-commute--db372a3118577325a7e9c1e8.md) | 112 | `result-track:db372a3118577325a7e9c1e8874f52307160aa2a344149a71f747fad70ffa9d3` |
| 9 | `theorem` | [mul_right](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/mul-right--e7e1309757936404e06b3221.md) | 130 | `result-track:e7e1309757936404e06b3221f775f10489f13230ebeee14632fb965c78695769` |
| 10 | `theorem` | [mul_left](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/mul-left--44693e007fc8650885dce4ce.md) | 135 | `result-track:44693e007fc8650885dce4ce7fd85fcca58559a26223ae7b2a566f03ccfc95bd` |
| 11 | `theorem` | [add](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/add--a9f4e1655c3e91dff6a2fce0.md) | 140 | `result-track:a9f4e1655c3e91dff6a2fce023191fb7df6a2f89d5bf5907e3a19dca1b435563` |
| 12 | `def` | [_root_.GRWTSK.Topology.IsTopologicallyNilpotent.Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.topologicalNilradical](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/root-grwtsk-topology-istopologicallynilpotent-variant57b34f16683e67aa4ad--e6fa6b425edce96b85e82896.md) | 147 | `declaration-track:e6fa6b425edce96b85e82896f336456889caaaaae89f17b396f6796b39d34f72` |
| 13 | `theorem` | [mem_topologicalNilradical_iff](../../../../mathematics/Topology/TopologicallyNilpotent/Variantacfdb92895e68cca482df2a3062d0a27aff15060703dc72a7200b1ec4c7f08ba.lean/declarations/mem-topologicalnilradical-iff--552539b1a076507cc909d6be.md) | 153 | `result-track:552539b1a076507cc909d6be84f432b7aa0882d81b43ee6029dd2fd354c70f83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
