# Verification target: GRWTSK.Topology.GeneralTopology.PivotChartTopology.Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "604c2149f382a2c9b57475ee7c1815a0f146084b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `604c2149f382a2c9b57475ee7c1815a0f146084b`.

Source path: `GRWTSK/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotCech` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalizedPivotPlane_injective](../../../../../mathematics/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/declarations/normalizedpivotplane-injective--d985cd1b313b8dd487ffb883.md) | 23 | `result-track:d985cd1b313b8dd487ffb883681ef5296de77bb2ea8cd49ca2cce960a61d5cf2` |
| 2 | `theorem` | [normalizedOverlapChange_plane](../../../../../mathematics/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/declarations/normalizedoverlapchange-plane--f5797e091b5626bf169a2fc1.md) | 31 | `result-track:f5797e091b5626bf169a2fc1ba79256319bb9889a4dac0c206ffee1da7f633aa` |
| 3 | `theorem` | [chart_image_preimage_eq_overlap_image](../../../../../mathematics/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/declarations/chart-image-preimage-eq-overlap-image--84c4e67c5dc17acf776c7a76.md) | 39 | `result-track:84c4e67c5dc17acf776c7a769c853f591496790be7103f3d44920bc868992a71` |
| 4 | `theorem` | [isOpenMap_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/declarations/isopenmap-normalizedpivotplane--0e911e7465a2adc631b824e0.md) | 61 | `result-track:0e911e7465a2adc631b824e0b67f17c579909e7c14c9551a32b7d25c7b9d7e93` |
| 5 | `theorem` | [isOpenEmbedding_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/declarations/isopenembedding-normalizedpivotplane--f0150d21252656abd515ec95.md) | 76 | `result-track:f0150d21252656abd515ec951d92908530fb5e254139b8189974384ef5afa71d` |
| 6 | `def` | [normalizedPivotChartHomeomorph](../../../../../mathematics/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/declarations/normalizedpivotcharthomeomorph--d10d31592140f8411b440f61.md) | 83 | `declaration-track:d10d31592140f8411b440f61796e19e7806771fbb565b1c68931fe7c3b558ec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
