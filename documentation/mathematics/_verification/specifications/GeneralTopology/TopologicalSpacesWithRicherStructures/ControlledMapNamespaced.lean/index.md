# Verification target: Controlled Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0fa727e5a861f2e98ff061b0e76d288bf6c0792",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ControlledMapNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ControlledMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0fa727e5a861f2e98ff061b0e76d288bf6c0792`.

Source path: `GRWTSK/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Attention.ErrorTransform` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlledMap](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ControlledMapNamespaced.lean/declarations/controlledmap.md) | 26 | `declaration-track:9230713cc372402dd1fcbec758f9518b9a5206e333b01a4190c07b9849f49540` |
| 2 | `def` | [identity](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ControlledMapNamespaced.lean/declarations/identity.md) | 33 | `declaration-track:09872954b42093288e5e2a2bfb37964b8e7cada06c9275c91e255cc2b9cbe49a` |
| 3 | `def` | [comp](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ControlledMapNamespaced.lean/declarations/comp.md) | 38 | `declaration-track:5aaabc25718ed7a5f6d8082f708519256da505893a878327ba9197a5bc1d58e4` |
| 4 | `theorem` | [comp_sound](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ControlledMapNamespaced.lean/declarations/comp-sound.md) | 46 | `result-track:5d63072d89810067ef5689cdfc6c2ea75081f57d213a854be876765eb0a880df` |
| 5 | `theorem` | [comp_assoc_behavior](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/ControlledMapNamespaced.lean/declarations/comp-assoc-behavior.md) | 62 | `result-track:697dbfce7522af9c4070d014f454cd16ec13424bce53e6b8c8628af79c944cd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f79aa556e6e05a57490c375a6dc36907ea9d7801467c2e8f41a737e25d4832d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/ControlledMap/Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
