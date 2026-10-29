# Verification target: Algebra Order Left Right Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0b2faa358b0709880cf57734acfff959a3e291f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0b2faa358b0709880cf57734acfff959a3e291f`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousOn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousWithinAt_Ioi_iff_Ici](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/continuouswithinat-ioi-iff-ici.md) | 42 | `result-track:5d286c0f28e310c4f42beef69244a260297a2efcb566fd82c4f22cdd10a88965` |
| 2 | `theorem` | [continuousWithinAt_Iio_iff_Iic](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/continuouswithinat-iio-iff-iic.md) | 47 | `result-track:319273a117c85a1f932163318649184489caedbb0585e54e3a40ca9a71cd6a9c` |
| 3 | `theorem` | [nhds_left'_le_nhds_ne](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/nhds-left-le-nhds-ne.md) | 52 | `result-track:d38db87b7de28bf16495f60552a8e0ed3cd5d2190e7821dbc8e966f76fa65ed4` |
| 4 | `theorem` | [nhds_right'_le_nhds_ne](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/nhds-right-le-nhds-ne.md) | 56 | `result-track:ae6b210ed6fa887478c54e46bd3a0bce4051a05af7c4c6fc0946bdd56826ce8f` |
| 5 | `theorem` | [nhds_left_sup_nhds_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/nhds-left-sup-nhds-right-source-edition-3.md) | 66 | `result-track:953ee9379ef0f913289980ae05810f46dffd0d59493da2882a8e6f7f288f0d16` |
| 6 | `theorem` | [nhds_left'_sup_nhds_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/nhds-left-sup-nhds-right-source-edition-4.md) | 70 | `result-track:f4a7a4ce03e3eaf9ce6ffb653da4fd63f2b3571a4ec3d88ebe580daafbb7fc7f` |
| 7 | `theorem` | [nhds_left_sup_nhds_right'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/nhds-left-sup-nhds-right.md) | 74 | `result-track:1a4340cd144d8e7454c10bd6dec68e41f8b1943b3b415e973e39707f127341e2` |
| 8 | `theorem` | [nhds_left'_sup_nhds_right'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/nhds-left-sup-nhds-right-source-edition-2.md) | 78 | `result-track:87f99e60b8572cf2a355eaf8c1109099a68a59ef7b318ec5fffdb20813af49d1` |
| 9 | `theorem` | [continuousAt_iff_continuous_left_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/continuousat-iff-continuous-left-right.md) | 82 | `result-track:33e7af8e447bbe363a1d245b68b8c595d5e5002c6d309b879a455f337921caff` |
| 10 | `theorem` | [continuousAt_iff_continuous_left'_right'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLeftRightNamespaced.lean/declarations/continuousat-iff-continuous-left-right-source-edition-2.md) | 87 | `result-track:7ffcc6d0b670100a93ae2d75b568fb00538458b12e93cb1438d044657c648fab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6182a4965e36a322c20739f8bf4e0e065857e7d3652cb48bb0b7472bf1047db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
