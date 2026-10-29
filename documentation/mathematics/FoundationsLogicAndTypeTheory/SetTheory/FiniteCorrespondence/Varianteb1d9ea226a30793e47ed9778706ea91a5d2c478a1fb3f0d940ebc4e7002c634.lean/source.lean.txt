-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FiniteCorrespondenceRecord.Variant7acf1a6e0a972ba3d036710645ba7a4e7231bb7da2a2e5357a0e5e937a0d7968","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7acf1a6e0a972ba3d036710645ba7a4e7231bb7da2a2e5357a0e5e937a0d7968","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.FiniteCorrespondenceRecord.Variant7acf1a6e0a972ba3d036710645ba7a4e7231bb7da2a2e5357a0e5e937a0d7968","mathematical_subject":"Logic.SetTheory","original_sha256":"7acf1a6e0a972ba3d036710645ba7a4e7231bb7da2a2e5357a0e5e937a0d7968","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Arithmetic/FiniteCorrespondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.FiniteCrossedProduct

/-!
# Finite-cut arithmetic correspondence

The exact four-term identity is inherited from the cut's accepted
Connes--bitfield package and is bound to the ordinal stratum as metadata.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FiniteCorrespondenceRecord.Variant7acf1a6e0a972ba3d036710645ba7a4e7231bb7da2a2e5357a0e5e937a0d7968

namespace Mathematics.StratifiedBoundary.Arithmetic

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure FiniteCorrespondenceRecord
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) where
  arithmeticSourceId : String
  bitfieldEncodingId : String
  checkerId : String
  checkerVersion : String
  ordinalStratumDigest : String
  ordinalDigestMatchesCut : Prop
  ordinalDigestMatchesCutProof :
    ordinalDigestMatchesCut
  traceCertificateBoundToImmutableCut : Prop
  traceCertificateBoundProof :
    traceCertificateBoundToImmutableCut
  ordinalCodeCreatesNoArithmeticMeaning : Prop
  noninterferenceProof :
    ordinalCodeCreatesNoArithmeticMeaning

theorem finite_arithmetic_trace_correspondence
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (scale : Scale)
    (test : TestFunction) :
    cut.closure.trace.discrepancy scale test =
      cut.closure.trace.mainTerm scale test +
        cut.closure.trace.traceTerm scale test +
        cut.closure.trace.regularizationRemainder
          scale test +
        cut.closure.trace.bitfieldRemainder
          scale test :=
  cut.closure.trace.traceIdentity scale test

end Mathematics.StratifiedBoundary.Arithmetic
