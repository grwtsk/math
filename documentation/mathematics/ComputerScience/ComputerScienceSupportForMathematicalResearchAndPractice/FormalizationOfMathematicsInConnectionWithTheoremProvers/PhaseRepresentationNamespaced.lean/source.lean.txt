-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseOperatorRepresentation.Variant86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PhaseOperatorRepresentation.Variant86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634","mathematical_subject":"Foundations.Unclassified","original_sha256":"86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/PhaseRepresentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathematics.SemiLocalDefect.Hardy.BlockDecomposition

/-!
# Operator representation of the residue phase

The two-element phase acts through a proof-bearing unitary representation.
This operator channel is separate from positive amplitude transport.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseOperatorRepresentation.Variant86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634

namespace Mathematics.SemiLocalDefect.ResidueDeflection

structure PhaseOperatorRepresentation
    (model : OperatorModel) where
  operations : Hardy.OperatorComposition model
  operator : Phase3 → model.Operator
  identity_operator :
    operator .identity = model.identity
  multiplication :
    ∀ left right,
      operator (Phase3.mul left right) =
        operations.compose
          (operator left)
          (operator right)
  reflection_selfAdjoint :
    model.SelfAdjoint (operator .reflect)
  reflection_left_unitary :
    operations.compose
        (operations.adjoint
          (operator .reflect))
        (operator .reflect) =
      model.identity
  reflection_right_unitary :
    operations.compose
        (operator .reflect)
        (operations.adjoint
          (operator .reflect)) =
      model.identity

end Mathematics.SemiLocalDefect.ResidueDeflection
