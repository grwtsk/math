-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MeasureDeterminingTestClass.Variant23bb8ba32a723daaa5ca9e3f242ef9539e25ed6b78ef3fb6a10bbb9360e79b37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23bb8ba32a723daaa5ca9e3f242ef9539e25ed6b78ef3fb6a10bbb9360e79b37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MeasureDeterminingTestClass.Variant23bb8ba32a723daaa5ca9e3f242ef9539e25ed6b78ef3fb6a10bbb9360e79b37","mathematical_subject":"Foundations.Unclassified","original_sha256":"23bb8ba32a723daaa5ca9e3f242ef9539e25ed6b78ef3fb6a10bbb9360e79b37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/MeasureTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Matching

/-!
# Measure-determining trace tests

Equality against every admitted test can imply measure equality only through a
registered separation theorem.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MeasureDeterminingTestClass.Variant23bb8ba32a723daaa5ca9e3f242ef9539e25ed6b78ef3fb6a10bbb9360e79b37

namespace Mathematics.RHIsolation

universe uMeasure uTest

structure MeasureDeterminingTestClass
    (Measure : Type uMeasure)
    (Test : Type uTest) where
  norm : Test → ℝ
  evaluate : Test → Measure → ℂ
  separatesFiniteMeasures :
    ∀ left right,
      (∀ test,
        evaluate test left =
          evaluate test right) →
      left = right

theorem measureEquality_of_testClassEquality
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (testClass :
      MeasureDeterminingTestClass Measure Test)
    (left right : Measure)
    (equalOnTests :
      ∀ test,
        testClass.evaluate test left =
          testClass.evaluate test right) :
    left = right :=
  testClass.separatesFiniteMeasures
    left right equalOnTests

structure CompositeMatchingDefect where
  analyticCount : Nat
  spectralCount : Nat
  unmatchedMultiplicity : Nat
  boundedLipschitzDefect : ℝ
  boundedLipschitzDefect_nonneg :
    0 ≤ boundedLipschitzDefect
  countTerm :
    unmatchedMultiplicity =
      (analyticCount - spectralCount) +
        (spectralCount - analyticCount)

end Mathematics.RHIsolation
