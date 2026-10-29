-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FieldComparison.Variant95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FieldComparison.Variant95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Overlap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.EvidenceCut

/-!
# Typed metadata overlap

Profiles retain complete accepted assertion records.  Comparison remains
field-indexed, so values belonging to different metadata types cannot be
compared by an untyped equality.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FieldComparison.Variant95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8

namespace Mathematics.SemanticTokenization

abbrev MetadataProfile
    (cut : EvidenceCut)
    (_source : Finset (Span cut.text))
    (_context : ContextId) : Type :=
  Finset (PackedAcceptedAssertion cut)

inductive FieldComparison
  | equal
  | compatible
  | incompatible
  | missingLeft
  | missingRight
  | ambiguous
deriving DecidableEq, Repr

structure FieldOverlap
    (metadataType : MetadataType) where
  field : MetadataType := metadataType
  result : FieldComparison
  score : Option ℚ
  comparedAssertions : Finset AssertionId
  evidence : Finset EvidenceId
deriving Repr

structure TypedOverlap where
  fields : Array (Sigma FieldOverlap)
  aggregateScore : Option ℚ
  completeForRule : Bool
deriving Repr

structure MetadataComparator
    (cut : EvidenceCut)
    (left right : Finset (Span cut.text))
    (context : ContextId) where
  compare :
    ∀ metadataType,
      MetadataProfile cut left context →
      MetadataProfile cut right context →
      FieldOverlap metadataType
  compatibleTypesOnly :
    ∀ metadataType leftProfile rightProfile,
      (compare metadataType leftProfile rightProfile).field =
        metadataType

def computeOverlap
    {cut : EvidenceCut}
    {left right : Finset (Span cut.text)}
    {context : ContextId}
    (comparator : MetadataComparator cut left right context)
    (leftProfile : MetadataProfile cut left context)
    (rightProfile : MetadataProfile cut right context)
    (requested : Array MetadataType) :
    TypedOverlap :=
  { fields :=
      requested.map fun metadataType =>
        ⟨metadataType,
          comparator.compare
            metadataType leftProfile rightProfile⟩
    aggregateScore := none
    completeForRule := true }

theorem computed_overlap_is_type_indexed
    {cut : EvidenceCut}
    {left right : Finset (Span cut.text)}
    {context : ContextId}
    (comparator : MetadataComparator cut left right context)
    (leftProfile : MetadataProfile cut left context)
    (rightProfile : MetadataProfile cut right context)
    (metadataType : MetadataType) :
    (comparator.compare
      metadataType leftProfile rightProfile).field =
        metadataType :=
  comparator.compatibleTypesOnly
    metadataType leftProfile rightProfile

end Mathematics.SemanticTokenization
