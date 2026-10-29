# Verification target: K128 Transport Torsion Residue Heat Nonnegative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "077b51c1fb60beb074fe3926be081ba764205063",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/K128Transport/Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/K128TransportTorsionResidueHeatNonnegative.lean/index.md) · [Full source](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/K128TransportTorsionResidueHeatNonnegative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `077b51c1fb60beb074fe3926be081ba764205063`.

Source path: `GRWTSK/Topology/MetricTopology/K128Transport/Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/K128Transport/Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.HasseWeil.Torsion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [torsion_residue_heat_nonnegative](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/K128TransportTorsionResidueHeatNonnegative.lean/declarations/torsion-residue-heat-nonnegative.md) | 5 | `result-track:8562fc4065a26a73eeab0b2a707ee95b3a168b49685efce0a63a32accd69ac7f` |
| 2 | `def` | [k128_torsion_iff_zero_residue](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/K128TransportTorsionResidueHeatNonnegative.lean/declarations/k128-torsion-iff-zero-residue.md) | 13 | `declaration-track:0400bbc3615d118aed9765b92d028780281cc0bb1386f055bb5a45b9ffabae4f` |
| 3 | `theorem` | [exact_torsion_transports_to_k128](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/K128TransportTorsionResidueHeatNonnegative.lean/declarations/exact-torsion-transports-to-k128.md) | 16 | `result-track:a18b10c9af5375b75405b2cd6d8fb9bb8e5542439c6ba6096475f28e37e9c932` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef3a6aa1ce33484681febb71212063141d00811f849b60dc986b3b84c3f07347 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/K128Transport/Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/K128Transport/Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
