-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiracSpectralTraceRegularized.Variant114fb130bfa5e883ca86aa3baa5670c523685cbcecc55da2310cc84f448f7188","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"114fb130bfa5e883ca86aa3baa5670c523685cbcecc55da2310cc84f448f7188","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DiracSpectralTraceRegularized.Variant114fb130bfa5e883ca86aa3baa5670c523685cbcecc55da2310cc84f448f7188","mathematical_subject":"Foundations.Unclassified","original_sha256":"114fb130bfa5e883ca86aa3baa5670c523685cbcecc55da2310cc84f448f7188","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/DiracKTraceFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.DiracKTraceFormula

/-!
# Folder.Theorem.DerivedSheaf.DiracKTraceFormula

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Dirac/K trace bridge facts, not BinaryMatrix traces.
Ontology: derived.dirac_k_trace_formula
Pivot role: spectral
Zero typology: trace-zero
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiracSpectralTraceRegularized.Variant114fb130bfa5e883ca86aa3baa5670c523685cbcecc55da2310cc84f448f7188

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem dirac_spectral_trace_regularized
    {T : Folder.DerivedSheaf.TraceTarget}
    (τ : Folder.DerivedSheaf.DiracSpectralTrace T) :
    τ.regularized :=
  Folder.DerivedSheaf.dirac_spectral_trace_regularized τ

theorem dirac_spectral_trace_respects_multiplicity
    {T : Folder.DerivedSheaf.TraceTarget}
    (τ : Folder.DerivedSheaf.DiracSpectralTrace T) :
    τ.respectsMultiplicity :=
  Folder.DerivedSheaf.dirac_spectral_trace_respects_multiplicity τ

theorem k_index_trace_additive
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    (τ : Folder.DerivedSheaf.KIndexTrace M T) :
    τ.additive :=
  Folder.DerivedSheaf.k_index_trace_additive τ

theorem k_index_trace_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    (τ : Folder.DerivedSheaf.KIndexTrace M T) :
    τ.compatibleWithPerfectComplexes :=
  Folder.DerivedSheaf.k_index_trace_compatible τ

theorem dirac_k_index_trace_formula
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (Φ : Folder.DerivedSheaf.DiracKIndexTraceFormula M T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.kIndexTrace.trace I.indexClass :=
  Folder.DerivedSheaf.dirac_k_index_trace_formula Φ

theorem spectral_trace_eq_k_index_trace
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (Φ : Folder.DerivedSheaf.DiracKIndexTraceFormula M T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.kIndexTrace.trace I.indexClass :=
  Folder.DerivedSheaf.spectral_trace_eq_k_index_trace Φ

theorem dirac_k_index_witt_trace_formula
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    {T : Folder.DerivedSheaf.TraceTarget}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (Φ : Folder.DerivedSheaf.DiracKIndexWittTraceFormula M W T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.wittTrace Φ.wittImage.image :=
  Folder.DerivedSheaf.dirac_k_index_witt_trace_formula Φ

end DerivedSheaf
end Theorem
end Folder
