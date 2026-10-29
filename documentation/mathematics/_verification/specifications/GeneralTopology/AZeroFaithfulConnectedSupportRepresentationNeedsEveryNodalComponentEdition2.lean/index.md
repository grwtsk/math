# Verification target: AZero Faithful Connected Support Representation Needs Every Nodal Component Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3ee510ea6c745e2b55c5921d7f85b055fba8521",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3ee510ea6c745e2b55c5921d7f85b055fba8521`.

Source path: `GRWTSK/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.ZeroSeamCountermodels` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [active_atom_exists](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/declarations/active-atom-exists.md) | 25 | `result-track:21760c7a65acc9ab69c1ee41429d5e8c9e61bb8ac1f6b7e04c75e92ff416751a` |
| 2 | `theorem` | [atom_meets_only_one_nodal_component](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/declarations/atom-meets-only-one-nodal-component.md) | 34 | `result-track:2511a20b8918ee22fdddff12d372c043093ec62a59ad20da4a48a6713a11e97f` |
| 3 | `theorem` | [nodal_component_count_lower](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/declarations/nodal-component-count-lower.md) | 43 | `result-track:5b9106ef96afa9e24d0c282fca64815ebb912561010d953cbe26547a7f6ce271` |
| 4 | `def` | [componentAtom](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/declarations/componentatom.md) | 63 | `declaration-track:6237bfda7a1434d1e7c0d18fd14f0a772ae79b9702bf0850c4bc5edc3d6f1485` |
| 5 | `theorem` | [component_atom_exact_support](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/declarations/component-atom-exact-support.md) | 66 | `result-track:ff676b02e211d4f249d3c4693f4e7fff3b31ec0a4a640bc00ac903e1dc0a802e` |
| 6 | `theorem` | [component_atoms_are_connected_and_faithful](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/declarations/component-atoms-are-connected-and-faithful.md) | 76 | `result-track:7c8d1750c28f47fe23aaef9d1f49367b232bb4ed89f5c52a6ead78645eeef493` |
| 7 | `theorem` | [finite_component_atoms_reconstruct](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/declarations/finite-component-atoms-reconstruct.md) | 83 | `result-track:8b7c3dcdff55b0a402b7daeb96b4fad2261164f3e716a63203f80f6a3096fc6d` |
| 8 | `theorem` | [component_representation_is_minimal](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition2.lean/declarations/component-representation-is-minimal.md) | 103 | `result-track:192cd73bc116d0847c1cfa01d761f12128bcbf06f5acd0fb804b0100b40704af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58fcda31c5cd985b25831d7756ad27e6fae1604453595691f151ff796a478989 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean","GRWTSK/_verification/specifications/Topology/NodalPanelMinimality/Variantcbf69987faab15b7dd9ada1317d22979c672588bd4209685443dc4d8af9fd3a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
