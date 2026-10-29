# Ast Labeling — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16c2c1dc177f5189c5cd908b5f145af397f2eadf` · SHA-256 `0e3f9125566e1dc4d1bbb5f0b2660aee94bde08dde033d25af6fb9fd13972257`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Compile-time AST labeling certificates

Generated labels and rename plans are deterministic metadata only.  They do not
create theorem authority and they are externalized from source mutation.
-/

namespace Presentation
namespace AstLabeling

structure AstLabelingCertificate where
  deterministicLabels : Prop
  deterministicLabelsProof : deterministicLabels
  declarationIdentityPreserved : Prop
  declarationIdentityProof : declarationIdentityPreserved
  namespaceBoundaryPreserved : Prop
  namespaceBoundaryProof : namespaceBoundaryPreserved
  renamePlanExternalized : Prop
  renamePlanExternalizedProof : renamePlanExternalized
  noTheoremAuthorityCreated : Prop
  noAuthorityCreatedProof : noTheoremAuthorityCreated

theorem compile_time_ast_labeling_sound
    (L : AstLabelingCertificate) :
    L.deterministicLabels ∧
    L.declarationIdentityPreserved ∧
    L.namespaceBoundaryPreserved ∧
    L.renamePlanExternalized ∧
    L.noTheoremAuthorityCreated :=
  by
    exact
      ⟨L.deterministicLabelsProof,
       L.declarationIdentityProof,
       L.namespaceBoundaryProof,
       L.renamePlanExternalizedProof,
       L.noAuthorityCreatedProof⟩

def GeneratedRenamePlanCreatesTheoremAuthority (_L : AstLabelingCertificate) : Prop :=
  False

theorem generated_rename_plan_not_theorem_authority
    (L : AstLabelingCertificate) :
    ¬ GeneratedRenamePlanCreatesTheoremAuthority L := by
  intro h
  exact h

/--
Finite metadata for deterministic theorem skeleton generation.  An unproved
skeleton is scaffold syntax only; it is not a checked Lean proof term.
-/
structure GeneratedTheoremSkeletonBatch where
  batchHash : Nat
  generatedNameCount : Nat
  unresolvedObligationCount : Nat
  deterministic : Prop
  deterministicProof : deterministic
  namesPreserveIdentity : Prop
  namesPreserveIdentityProof : namesPreserveIdentity
  unprovedSkeletonsOwnNoAuthority : Prop
  noAuthorityProof : unprovedSkeletonsOwnNoAuthority

def GeneratedTheoremSkeletonOwnsProof
    (_G : GeneratedTheoremSkeletonBatch) : Prop :=
  False

/-- Generated theorem skeletons remain scaffold metadata until Lean checks real proofs. -/
theorem generated_theorem_skeletons_not_authority
    (G : GeneratedTheoremSkeletonBatch) :
    G.deterministic ∧
    G.namesPreserveIdentity ∧
    G.unprovedSkeletonsOwnNoAuthority := by
  exact
    ⟨G.deterministicProof,
     G.namesPreserveIdentityProof,
     G.noAuthorityProof⟩

theorem generated_theorem_skeleton_owns_no_proof
    (G : GeneratedTheoremSkeletonBatch) :
    ¬ GeneratedTheoremSkeletonOwnsProof G := by
  intro h
  exact h

end AstLabeling
end Presentation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7a6a91bc63641ad07c04999cff61de506f5392130df4f39dcf1412009b774f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AstLabeling/Variant0e3f9125566e1dc4d1bbb5f0b2660aee94bde08dde033d25af6fb9fd13972257.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
