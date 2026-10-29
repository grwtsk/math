-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitfieldSemantics.Variant848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BitfieldSemantics.Variant848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12","mathematical_subject":"Foundations.Unclassified","original_sha256":"848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Completion/Bitfield.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Partial-bitfield completion adapter

This is the only edge from the representation-specific bitfield order into
the generic completion semantics.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitfieldSemantics.Variant848f76745a38fa6e7cdf2545de506941ec00660883f813b013063df958476a12

namespace Mathematics.BinaryFrontier.Completion

open Mathematics.BinaryFrontier

def bitfieldSemantics
    {width : Nat}
    {Constraint : Type*}
    (evaluate :
      FullBitfield width →
        Constraint →
        Prop) :
    Semantics
      (PartialBitfield width)
      (FullBitfield width)
      Constraint where
  refines := Extends
  extendsFull := ExtendsFull
  satisfies := evaluate
  refinement_sound := by
    intro parent child completion
      parentChild childCompletion
    exact
      extends_trans
        parentChild childCompletion

end Mathematics.BinaryFrontier.Completion
