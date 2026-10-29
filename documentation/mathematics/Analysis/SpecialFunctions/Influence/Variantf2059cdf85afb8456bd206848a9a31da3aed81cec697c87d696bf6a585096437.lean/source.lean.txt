-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.BitfieldInfluenceCertificate.Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.BitfieldInfluenceCertificate.Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/Influence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathematics.ConnesBitfield.Trace

/-!
# Bit influence energy

Local bit sensitivity is retained as a finite, proof-bearing family.  Its
square sum is the input to concentration; it is not itself a deterministic
square-root estimate.
-/


namespace GRWTSK.Analysis.SpecialFunctions.BitfieldInfluenceCertificate.Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86

namespace Mathematics.ConnesBitfield

open scoped BigOperators

universe uScale uTest

noncomputable def influenceEnergy
    {bits : Nat}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (influence :
      Scale → Fin bits → TestFunction → ℝ)
    (scale : Scale)
    (test : TestFunction) : ℝ := by
  classical
  exact
    ∑ index : Fin bits,
      (influence scale index test) ^ 2

structure BitfieldInfluenceCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test, 0 ≤ testNorm test
  logarithmicOrder : Nat
  localPerturbation :
    Fin system.bits →
      Bitfield system.bits →
      Finset (Bitfield system.bits)
  perturbationsAdmissible :
    ∀ index {state neighbor},
      system.admissible state →
      neighbor ∈ localPerturbation index state →
      system.admissible neighbor
  perturbationSymmetric :
    ∀ index {left right},
      right ∈ localPerturbation index left →
      left ∈ localPerturbation index right
  influence :
    Scale →
      Fin system.bits →
      TestFunction →
      ℝ
  influenceNonnegative :
    ∀ scale index test,
      0 ≤ influence scale index test
  localInfluenceSound :
    ∀ scale index test state neighbor,
      system.admissible state →
      neighbor ∈ localPerturbation index state →
      ‖reducedTraceObservable
          trace.invariantProjection
          trace.spectralTransform
          scale test state -
        reducedTraceObservable
          trace.invariantProjection
          trace.spectralTransform
          scale test neighbor‖ ≤
        influence scale index test
  influenceConstant : ℝ
  influenceConstantNonnegative :
    0 ≤ influenceConstant
  influenceEnergyBound :
    ∀ scale test,
      influenceEnergy influence scale test ≤
        influenceConstant *
          mass scale *
          (1 + Real.log (mass scale)) ^
            (2 * logarithmicOrder) *
          (testNorm test) ^ 2

abbrev AdmissibleInfluenceCertificate :=
  BitfieldInfluenceCertificate

end Mathematics.ConnesBitfield
