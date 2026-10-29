# Closure Network Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc805372f16f3ab47c761714ea71399c5d225657` · SHA-256 `4768b081c930f0c5d8c121fa26aa1d587a1d36596da75869069525f95687bc7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PresentationIndex.Variantf320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PresentationIndex.Variantf320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a","mathematical_subject":"Computation.DataStructures","original_sha256":"f320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/ClosureNetwork.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Presentation-indexed closure networks

This module records the finite proof shape for reducer networks whose nodes are
pure Presentation-indexed closures.  Runtime effects are valid only when they
are emitted as explicit output data and every reducer fiber edge carries a
witness preserving identity, theorem-resolution state, authority boundary, loss
records, and the no-authority-created firewall.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PresentationIndex.Variantf320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a

namespace Presentation
namespace ClosureNetwork

/-- Stable finite index for the Presentation carried by a closure network. -/
structure PresentationIndex where
  presentationHash : Nat
  sourceTreeHash : Nat
  authorityBoundaryHash : Nat

/-- Environment captured by a pure node closure. -/
structure ClosureEnvironment where
  presentation : PresentationIndex
  theoremResolutionHash : Nat
  spectralDescriptorHash : Nat
  cacheKeyHash : Nat
  projectionTargetHash : Nat

/-- Input data for a closure node. -/
structure ClosureInput where
  inputHash : Nat
  faceHash : Nat

/-- Output data from a closure node, including witness and loss identities. -/
structure ClosureOutput where
  outputHash : Nat
  faceHash : Nat
  witnessHash : Nat
  lossRecordHash : Nat

/-- Pure reducer-network node represented as a finite closure descriptor. -/
structure PureNodeClosure where
  nodeId : Nat
  env : ClosureEnvironment
  run : ClosureInput → ClosureOutput
  pure : Prop
  pureProof : pure
  noHiddenMutation : Prop
  noHiddenMutationProof : noHiddenMutation
  emitsEffectsAsData : Prop
  emitsEffectsAsDataProof : emitsEffectsAsData

/-- Reducer state over a single Presentation index. -/
structure PresentationFiberState where
  presentation : PresentationIndex
  stateHash : Nat
  energy : Int

/-- Witness for one reducer fiber transition. -/
structure ReducerFiberWitness where
  witnessId : Nat
  identityPreserved : Prop
  identityPreservedProof : identityPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionPreservedProof : theoremResolutionPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  lossRecorded : Prop
  lossRecordedProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityCreatedProof : noAuthorityCreated

/-- Witnessed edge between Presentation-indexed reducer states. -/
structure ReducerFiberEdge where
  source : PresentationFiberState
  target : PresentationFiberState
  witness : ReducerFiberWitness

/-- A finite closure network plus the aggregate obligations it exposes. -/
structure PresentationIndexedClosureNetwork where
  nodes : List PureNodeClosure
  edges : List ReducerFiberEdge
  allNodesPure : Prop
  allNodesPureProof : allNodesPure
  noHiddenMutation : Prop
  noHiddenMutationProof : noHiddenMutation
  effectsEmittedAsData : Prop
  effectsEmittedAsDataProof : effectsEmittedAsData
  reducerEdgesWitnessed : Prop
  reducerEdgesWitnessedProof : reducerEdgesWitnessed
  identityPreserved : Prop
  identityPreservedProof : identityPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionPreservedProof : theoremResolutionPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  lossRecorded : Prop
  lossRecordedProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityCreatedProof : noAuthorityCreated

/--
Closure-network soundness is certificate projection: the theorem extracts the
explicit aggregate witnesses carried by the finite network.
-/
theorem presentation_indexed_closure_network_sound
    (N : PresentationIndexedClosureNetwork) :
    N.allNodesPure ∧
    N.noHiddenMutation ∧
    N.effectsEmittedAsData ∧
    N.reducerEdgesWitnessed ∧
    N.identityPreserved ∧
    N.theoremResolutionPreserved ∧
    N.authorityBoundaryPreserved ∧
    N.lossRecorded ∧
    N.noAuthorityCreated :=
  by
    exact
      ⟨N.allNodesPureProof,
       N.noHiddenMutationProof,
       N.effectsEmittedAsDataProof,
       N.reducerEdgesWitnessedProof,
       N.identityPreservedProof,
       N.theoremResolutionPreservedProof,
       N.authorityBoundaryPreservedProof,
       N.lossRecordedProof,
       N.noAuthorityCreatedProof⟩

end ClosureNetwork
end Presentation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2d786e62dd2086955d1f4ae4a46398de2c2f57763b36debd3d5763b801d2a5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureNetwork/Variant31e3a076bfeb6dbc246a7b13acec33e1ce130f5cf79d3dfbb3a25ed0287cbcb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
