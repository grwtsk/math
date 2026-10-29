-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReducedTraceCertificate.Variant98cda18c82c02ca2a642fe5a8383acf31df2c00c5e0200d73324e54734fe7cbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98cda18c82c02ca2a642fe5a8383acf31df2c00c5e0200d73324e54734fe7cbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReducedTraceCertificate.Variant98cda18c82c02ca2a642fe5a8383acf31df2c00c5e0200d73324e54734fe7cbc","mathematical_subject":"Foundations.Unclassified","original_sha256":"98cda18c82c02ca2a642fe5a8383acf31df2c00c5e0200d73324e54734fe7cbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/ReducedTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.StableInvariantTrace

/-!
# Reduced finite trace certificate

The certificate records each step from the action to the stable trace.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReducedTraceCertificate.Variant98cda18c82c02ca2a642fe5a8383acf31df2c00c5e0200d73324e54734fe7cbc

namespace Mathematics.StratifiedBoundary

structure ReducedTraceCertificate where
  automorphismActionRef : String
  equivariantKernelRef : String
  invariantLawRef : String
  unitaryCrossedProductActionRef : String
  invariantTraceRef : String
  identityCoefficientCompatibilityRef : String

end Mathematics.StratifiedBoundary
