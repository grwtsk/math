# Verification target: AZero Faithful Connected Support Representation Needs Every Nodal Component Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1035f109adb26add47044a407fa5033b2aefca96",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1035f109adb26add47044a407fa5033b2aefca96`.

Source path: `GRWTSK/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean.json)

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
| 1 | `theorem` | [active_atom_exists](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/declarations/active-atom-exists.md) | 25 | `result-track:3a21b0e588bd5e73a39009891fddad0aa88c0469e98795d7df1da0388d2cd930` |
| 2 | `theorem` | [atom_meets_only_one_nodal_component](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/declarations/atom-meets-only-one-nodal-component.md) | 34 | `result-track:74f9ec8af8e6525232e634cbf5851c1f8ad03838cc8a86c0a93199b9f123947b` |
| 3 | `theorem` | [nodal_component_count_lower](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/declarations/nodal-component-count-lower.md) | 43 | `result-track:87cf0a71e1367f81c6c4b7ff6f085e4555d55f4eedaefbab7665e389102fd51b` |
| 4 | `def` | [componentAtom](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/declarations/componentatom.md) | 68 | `declaration-track:dd5ddfb38918098ee41902ca77806cd105765b69f08672e9df19bf21d2164f9a` |
| 5 | `theorem` | [component_atom_exact_support](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/declarations/component-atom-exact-support.md) | 71 | `result-track:9191c57ae3d890b769401ddcf34fc76592f7fb929c5b99abd45ec6f1410777f3` |
| 6 | `theorem` | [component_atoms_are_connected_and_faithful](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/declarations/component-atoms-are-connected-and-faithful.md) | 81 | `result-track:9dcb11ec8a4c40369ca3247c72f629c2255e9979e41727d0a1174a613152b007` |
| 7 | `theorem` | [finite_component_atoms_reconstruct](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/declarations/finite-component-atoms-reconstruct.md) | 88 | `result-track:85276d357f3b3b9a3d452187757d2504665d37381e43cfc62d1afb54f00c5f56` |
| 8 | `theorem` | [component_representation_is_minimal](../../../../GeneralTopology/AZeroFaithfulConnectedSupportRepresentationNeedsEveryNodalComponentEdition1.lean/declarations/component-representation-is-minimal.md) | 108 | `result-track:607934dd5e79b872c625ef6fda362fef9aa1d38ec1cb2ee39d73d5c52cbd5881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73aa1c045f10ab3de61ced702f126564440e9bbee1cf7a1a2ce81cdeae160dd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean","GRWTSK/_verification/specifications/Topology/NodalPanelMinimality/Variant7e00d520a2243fb440d220e09868ef09e2f765d04dacfaefe0183031f5744adf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
