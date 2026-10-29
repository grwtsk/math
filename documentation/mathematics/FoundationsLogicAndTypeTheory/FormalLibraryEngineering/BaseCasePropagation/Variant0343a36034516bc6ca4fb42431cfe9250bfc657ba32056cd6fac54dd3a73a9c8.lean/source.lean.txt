-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportedBaseCaseEuler.Variantf8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransportedBaseCaseEuler.Variantf8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8","mathematical_subject":"Foundations.Unclassified","original_sha256":"f8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/BaseCasePropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.BaseCaseIndexAnchor
import Folder.DerivedSheaf.RodgersTaoEulerTransport
import Folder.CrystallineIndex.IndexFixedTensorBridge
import Folder.CrystallineIndex.IndexBoundaryAlignmentBridge

/-!
# Folder.DerivedSheaf.BaseCasePropagation

Radiation role: research-boundary
BinaryMatrix spine: This module propagates supplied base-case Euler/index data, not BinaryMatrix data.
Ontology: base.index_propagation
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: contract-composition
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportedBaseCaseEuler.Variantf8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8

namespace Folder
namespace DerivedSheaf

/--
Transported base-case Euler data.

The transport is supplied as a `RodgersTaoDerivedTransport` and is assumed
Euler-preserving. The source Euler value is explicitly matched to the base-case
Euler value.
-/
structure TransportedBaseCaseEuler where
  source : BaseCaseSectionComplex
  targetComplex : SectionComplex
  transport : RodgersTaoDerivedTransport
  source_matches_transport :
    transport.sourceComplex = source.complex
  target_matches_transport :
    transport.targetComplex = targetComplex
  source_euler_matches :
    transport.eulerTransport.sourceEuler.value = source.euler.value

theorem transported_base_case_euler_nonzero
    (T : TransportedBaseCaseEuler) :
    T.transport.eulerTransport.targetEuler.value ≠ 0 := by
  intro hTarget
  have hEq :
      T.transport.eulerTransport.targetEuler.value =
        T.transport.eulerTransport.sourceEuler.value :=
    rodgers_tao_transport_preserves_euler_characteristic T.transport
  apply T.source.euler_nonzero
  rw [← T.source_euler_matches]
  rw [← hEq]
  exact hTarget

/--
Full base-case-to-critical-line propagation as contract composition.

This record does not construct the fixed tensor or boundary alignment; it only
stores the supplied bridge proposition and conclusion.
-/
structure BaseCaseCriticalLinePropagation
    (M : MellKTheory) where
  anchor : BaseCaseIndexAnchor M
  transportedEuler : TransportedBaseCaseEuler
  nonzeroIndexToBoundary : Prop
  criticalLineConclusion : Prop
  criticalLineConclusion_certified : criticalLineConclusion

theorem base_case_propagation_conclusion
    {M : MellKTheory}
    (P : BaseCaseCriticalLinePropagation M) :
    P.criticalLineConclusion :=
  P.criticalLineConclusion_certified

end DerivedSheaf
end Folder
