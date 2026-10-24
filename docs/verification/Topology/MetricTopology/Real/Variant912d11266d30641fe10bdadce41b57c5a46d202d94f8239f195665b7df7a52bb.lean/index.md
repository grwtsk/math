# Verification target: GRWTSK.Topology.MetricTopology.Real.Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6183ec868a947ad90f73360275df7096711e439f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6183ec868a947ad90f73360275df7096711e439f`.

Source path: `GRWTSK/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [dist_left_le_of_mem_uIcc](../../../../../mathematics/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean/declarations/dist-left-le-of-mem-uicc--15f29753a76156673a39645b.md) | 20 | `result-track:15f29753a76156673a39645be4ab78ac384558eccef95e85db61041e11f8735a` |
| 2 | `lemma` | [dist_right_le_of_mem_uIcc](../../../../../mathematics/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean/declarations/dist-right-le-of-mem-uicc--5ab0d50b56e4e6dd5042faf9.md) | 23 | `result-track:5ab0d50b56e4e6dd5042faf950e9512c793384014f117d18105b18f2342024f5` |
| 3 | `lemma` | [dist_le_of_mem_uIcc](../../../../../mathematics/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean/declarations/dist-le-of-mem-uicc--0ff66c6ae78a1ab8b4637cdb.md) | 26 | `result-track:0ff66c6ae78a1ab8b4637cdbaa1241a3287f1c1ad3039288f19a7f030ece2ca2` |
| 4 | `lemma` | [dist_le_of_mem_Icc](../../../../../mathematics/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean/declarations/dist-le-of-mem-icc--9d297a4b76b78f72173fe594.md) | 30 | `result-track:9d297a4b76b78f72173fe594dbce8af1eda745e30f02cd7756e02fd80f950bab` |
| 5 | `lemma` | [dist_le_of_mem_Icc_01](../../../../../mathematics/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean/declarations/dist-le-of-mem-icc-01--3603bc1e79e74575ed06210e.md) | 35 | `result-track:3603bc1e79e74575ed06210eb7330a1cb2ee7a73272a9a3ef96f6155c2d9f00a` |
| 6 | `lemma` | [dist_le_of_mem_pi_Icc](../../../../../mathematics/Topology/MetricTopology/Real/Variant912d11266d30641fe10bdadce41b57c5a46d202d94f8239f195665b7df7a52bb.lean/declarations/dist-le-of-mem-pi-icc--d41ad0a3c284b7e33a7cc54b.md) | 40 | `result-track:d41ad0a3c284b7e33a7cc54bfdc32f40440ed22dfd24f1dee16608d8d3fcb8a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
