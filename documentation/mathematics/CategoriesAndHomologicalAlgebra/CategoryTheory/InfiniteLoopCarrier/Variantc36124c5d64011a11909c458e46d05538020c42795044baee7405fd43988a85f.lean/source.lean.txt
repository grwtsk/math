-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProposedDeloopingSource.Variant47be081bd5a43b78b0707bd871f6e69f1d941fde1eb68a9cf4cbccfef2879108","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47be081bd5a43b78b0707bd871f6e69f1d941fde1eb68a9cf4cbccfef2879108","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProposedDeloopingSource.Variant47be081bd5a43b78b0707bd871f6e69f1d941fde1eb68a9cf4cbccfef2879108","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"47be081bd5a43b78b0707bd871f6e69f1d941fde1eb68a9cf4cbccfef2879108","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/InfiniteLoopCarrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Prismatic.ResearchGap

/-!
# Delooping-sequence boundary

A periodic sequence or repeated endomorphism is only a cycle.  Infinite-loop
authority requires pointed homotopy types, a genuine loop-space construction,
and coherent spectrum structure.  None is fabricated here.  This module
therefore records only equivalences relative to a supplied object operation;
they are candidates for a later spectrum formalization, not spectra.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProposedDeloopingSource.Variant47be081bd5a43b78b0707bd871f6e69f1d941fde1eb68a9cf4cbccfef2879108

namespace Mathematics.Prismatic

universe u

/-- Claimed provenance of a proposed delooping construction. -/
inductive ProposedDeloopingSource
  | algebraicKTheory
  | topologicalCyclicHomology
  | groupCompletion
  | suppliedConstruction
  deriving DecidableEq, Repr

/--
An object-level operation proposed as a loop-space operation.  No functorial,
pointed, or homotopical laws are inferred from this profile.
-/
structure LoopObjectOperation where
  apply : Type u → Type u
  definitionDigest : Digest
  profileAddress : ObjectAddress

/--
A sequence of type equivalences relative to a supplied object operation.  The
name intentionally makes no spectrum or infinite-loop-space claim.
-/
structure DeloopingSequenceCandidate
    (operation : LoopObjectOperation.{u}) where
  Space : Nat → Type u
  stepEquivalence :
    (degree : Nat) →
      Space degree ≃ operation.apply (Space (Nat.succ degree))
  proposedSource : ProposedDeloopingSource
  equivalenceDigest : Nat → Digest
  evidenceAddress : ObjectAddress

/--
A finite or periodic cycle record.  It intentionally has no coercion to
`DeloopingSequenceCandidate`.
-/
structure RepeatedTransitionCycle where
  Carrier : Nat → Type u
  transition : (degree : Nat) → Carrier degree → Carrier (Nat.succ degree)
  period : Nat
  periodicityDigest : Digest
  evidenceAddress : ObjectAddress

end Mathematics.Prismatic
