# Pipeline Halting Closure — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca50bf7a967e80a4050ab0045460726abea4dcb7` · SHA-256 `cf2bbbd44f0bcc3119a9c16a77d0733cad0e04ccee66a07a67d5f9fd4f412054`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Pipeline halting closures

This module records the finite, descriptor-only closure that a Surface Foundry
pipeline stores when it halts.  The tensor-manifold field is metadata for
revival; it is not a construction of a manifold and it does not create theorem
authority.
-/

namespace AnalyticNumber
namespace PipelineHaltingClosure

/-- Finite identity for the Presentation-indexed syntax carried by a halt. -/
structure PresentationIndex where
  presentationHash : Nat
  sourceTreeHash : Nat
  authorityBoundaryHash : Nat

/--
Descriptor-only tensor-manifold state.

These hashes remember enough coordinate/operator metadata to resume a halted
pipeline, but they do not construct a manifold.
-/
structure TensorManifoldDescriptor where
  descriptorHash : Nat
  coordinateAtlasHash : Nat
  metricHash : Nat
  operatorFamilyHash : Nat

/-- A halted reducer pipeline as a pure resumable closure. -/
structure HaltedPipelineClosure where
  presentation : PresentationIndex
  tensorState : TensorManifoldDescriptor
  haltedStateHash : Nat
  cacheKeyHash : Nat
  witnessTraceHash : Nat
  resumable : Prop
  resumableProof : resumable

/-- Witness emitted when heat is later added or removed through the reducer fiber. -/
structure PipelineRevivalWitness where
  heatDelta : Int
  beforeStateHash : Nat
  afterStateHash : Nat
  identityPreserved : Prop
  identityPreservedProof : identityPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionPreservedProof : theoremResolutionPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  noAuthorityCreated : Prop
  noAuthorityCreatedProof : noAuthorityCreated

/-- Firewall: a tensor descriptor never constructs the analytic manifold it names. -/
def TensorManifoldDescriptorConstructsManifold (_T : TensorManifoldDescriptor) : Prop := False

theorem tensor_manifold_descriptor_not_manifold_authority
    (T : TensorManifoldDescriptor) :
    ¬ TensorManifoldDescriptorConstructsManifold T := by
  intro h
  exact h

/--
Halting and revival soundness.

The theorem is intentionally a projection out of explicit certificate fields:
resumability and preservation claims are not inferred from hashes or labels.
-/
theorem pipeline_halting_closure_revival_sound
    (H : HaltedPipelineClosure)
    (W : PipelineRevivalWitness) :
    H.resumable ∧
    W.identityPreserved ∧
    W.theoremResolutionPreserved ∧
    W.authorityBoundaryPreserved ∧
    W.noAuthorityCreated :=
  by
    exact
      ⟨H.resumableProof,
       W.identityPreservedProof,
       W.theoremResolutionPreservedProof,
       W.authorityBoundaryPreservedProof,
       W.noAuthorityCreatedProof⟩

end PipelineHaltingClosure
end AnalyticNumber
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecf43e3c918cbcdcdff45e006ef80afb5149d239cd43571895736e032b76a5a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PipelineHaltingClosure/Variantcf2bbbd44f0bcc3119a9c16a77d0733cad0e04ccee66a07a67d5f9fd4f412054.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
