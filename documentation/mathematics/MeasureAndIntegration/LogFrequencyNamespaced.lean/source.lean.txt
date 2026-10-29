-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogFrequency.Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogFrequency.Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8","mathematical_subject":"Analysis.Integration","original_sha256":"99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-464b26cc/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/LogFrequency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BubbleResonance
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
# Logarithmic frequency coordinates and scoped scaling identities

The coordinate is the logarithm of a frequency divided by a positive reference.
The density conversion is proved by actual finite-interval change of variables,
with explicit continuity and integrability. It applies to a genuine per-hertz
density; no wavelet scalogram is asserted to possess that interpretation.

The Minnaert identities retain the accepted zero-tension spherical formula model
and convert angular frequency to hertz explicitly. Geometric cascades and jet
frequency laws are hypotheses, not material dispersion or fluid-existence claims.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.LogFrequency.Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BubbleAcoustics

open MeasureTheory
open SurfaceBulk

noncomputable section

/-- Dimensionless logarithmic frequency relative to a supplied reference frequency. -/
def logFrequency (reference frequency : ℝ) : ℝ := Real.log (frequency / reference)

/-- Positive frequency associated with a logarithmic coordinate when the reference is positive. -/
def frequencyFromLog (reference coordinate : ℝ) : ℝ := reference * Real.exp coordinate

/-- A positive reference makes every inverse-coordinate frequency strictly positive. -/
theorem frequencyFromLog_pos (reference coordinate : ℝ) (positive : 0 < reference) :
    0 < frequencyFromLog reference coordinate :=
  mul_pos positive (Real.exp_pos coordinate)

/-- The logarithmic coordinate inverts the exponential frequency map. -/
theorem logFrequency_fromLog (reference coordinate : ℝ) (positive : 0 < reference) :
    logFrequency reference (frequencyFromLog reference coordinate) = coordinate := by
  simp [logFrequency, frequencyFromLog, positive.ne']

/-- Exponentiation recovers the original strictly positive frequency exactly. -/
theorem frequencyFromLog_logFrequency (reference frequency : ℝ)
    (referencePositive : 0 < reference) (frequencyPositive : 0 < frequency) :
    frequencyFromLog reference (logFrequency reference frequency) = frequency := by
  rw [frequencyFromLog, logFrequency, Real.exp_log (div_pos frequencyPositive referencePositive)]
  field_simp

/-- The frequency Jacobian with respect to logarithmic coordinate is the frequency itself. -/
theorem frequencyFromLog_hasDerivAt (reference coordinate : ℝ) :
    HasDerivAt (frequencyFromLog reference) (frequencyFromLog reference coordinate) coordinate :=
  (Real.hasDerivAt_exp coordinate).const_mul reference

/-- The inverse-coordinate map is continuous on the full real coordinate line. -/
theorem frequencyFromLog_continuous (reference : ℝ) : Continuous (frequencyFromLog reference) :=
  continuous_const.mul Real.continuous_exp

/-- A positive reference makes the inverse-coordinate map strictly increasing. -/
theorem frequencyFromLog_strictMono (reference : ℝ) (positive : 0 < reference) :
    StrictMono (frequencyFromLog reference) :=
  fun _ _ less => mul_lt_mul_of_pos_left (Real.exp_lt_exp.mpr less) positive

/-- Reindexing reconstructs every positive-frequency value, for any value type. -/
theorem spectrum_reindex_reconstruct {Value : Type*} (reference : ℝ)
    (positive : 0 < reference) (spectrum : ℝ → Value) (frequency : ℝ)
    (frequencyPositive : 0 < frequency) :
    spectrum (frequencyFromLog reference (logFrequency reference frequency)) =
      spectrum frequency := by
  rw [frequencyFromLog_logFrequency reference frequency positive frequencyPositive]

/-- Log reindexing loses no values on positive frequencies, including complex spectra. -/
theorem spectrum_reindex_eq_iff {Value : Type*} (reference : ℝ)
    (positive : 0 < reference) (first second : ℝ → Value) :
    (∀ s, first (frequencyFromLog reference s) = second (frequencyFromLog reference s)) ↔
      ∀ f, 0 < f → first f = second f := by
  constructor
  · intro equal frequency frequencyPositive
    simpa only [frequencyFromLog_logFrequency reference frequency positive frequencyPositive]
      using equal (logFrequency reference frequency)
  · intro equal coordinate
    exact equal _ (frequencyFromLog_pos reference coordinate positive)

/-- The density per unit logarithmic coordinate includes the actual frequency Jacobian. -/
def logFrequencyDensity (reference : ℝ) (perHertz : ℝ → ℝ) (coordinate : ℝ) : ℝ :=
  frequencyFromLog reference coordinate * perHertz (frequencyFromLog reference coordinate)

/-- A nonnegative per-hertz density remains nonnegative after transport. -/
theorem logFrequencyDensity_nonneg (reference : ℝ) (positive : 0 < reference)
    (perHertz : ℝ → ℝ) (nonnegative : ∀ f, 0 < f → 0 ≤ perHertz f) (coordinate : ℝ) :
    0 ≤ logFrequencyDensity reference perHertz coordinate :=
  mul_nonneg (frequencyFromLog_pos reference coordinate positive).le
    (nonnegative _ (frequencyFromLog_pos reference coordinate positive))

/-- Continuity on the actual frequency interval gives genuine integrability in hertz. -/
theorem perHertz_interval_integrable (reference : ℝ) (perHertz : ℝ → ℝ)
    (lower upper : ℝ)
    (regular : ContinuousOn perHertz
      (Set.uIcc (frequencyFromLog reference lower) (frequencyFromLog reference upper))) :
    IntervalIntegrable perHertz volume
      (frequencyFromLog reference lower) (frequencyFromLog reference upper) :=
  regular.intervalIntegrable

/-- The transported density is genuinely integrable on the corresponding logarithmic interval. -/
theorem logFrequencyDensity_interval_integrable (reference : ℝ) (positive : 0 < reference)
    (perHertz : ℝ → ℝ) (lower upper : ℝ)
    (regular : ContinuousOn perHertz
      (Set.uIcc (frequencyFromLog reference lower) (frequencyFromLog reference upper))) :
    IntervalIntegrable (logFrequencyDensity reference perHertz) volume lower upper := by
  have continuous : ContinuousOn (frequencyFromLog reference) (Set.uIcc lower upper) :=
    (frequencyFromLog_continuous reference).continuousOn
  have maps := (frequencyFromLog_strictMono reference positive).monotone.mapsTo_uIcc
    (a := lower) (b := upper)
  exact (continuous.mul (regular.comp continuous maps)).intervalIntegrable

/-- Actual change of variables preserves the interval integral of a genuine per-hertz density. -/
theorem logFrequencyDensity_integral (reference : ℝ) (positive : 0 < reference)
    (perHertz : ℝ → ℝ) (lower upper : ℝ)
    (regular : ContinuousOn perHertz
      (Set.uIcc (frequencyFromLog reference lower) (frequencyFromLog reference upper))) :
    (∫ s in lower..upper, logFrequencyDensity reference perHertz s) =
      ∫ f in frequencyFromLog reference lower..frequencyFromLog reference upper, perHertz f := by
  have sourceContinuous := regular.mono
    (frequencyFromLog_strictMono reference positive).monotone.image_uIcc_subset
  simpa only [logFrequencyDensity, Function.comp_apply, mul_comm] using
    intervalIntegral.integral_comp_mul_deriv'
      (fun s _ => frequencyFromLog_hasDerivAt reference s)
      (frequencyFromLog_continuous reference).continuousOn sourceContinuous

/-- The same density conversion can be stated from any two strictly positive frequency endpoints. -/
theorem logFrequencyDensity_integral_frequency_bounds (reference lower upper : ℝ)
    (referencePositive : 0 < reference) (lowerPositive : 0 < lower) (upperPositive : 0 < upper)
    (perHertz : ℝ → ℝ) (regular : ContinuousOn perHertz (Set.uIcc lower upper)) :
    (∫ s in logFrequency reference lower..logFrequency reference upper,
      logFrequencyDensity reference perHertz s) = ∫ f in lower..upper, perHertz f := by
  simpa only [frequencyFromLog_logFrequency reference lower referencePositive lowerPositive,
    frequencyFromLog_logFrequency reference upper referencePositive upperPositive] using
    logFrequencyDensity_integral reference referencePositive perHertz
      (logFrequency reference lower) (logFrequency reference upper)
      (by
        simpa only [frequencyFromLog_logFrequency reference lower referencePositive lowerPositive,
          frequencyFromLog_logFrequency reference upper referencePositive upperPositive]
          using regular)

/-- The Minnaert inverse-radius coefficient in hertz, with explicit angular conversion. -/
def minnaertHertzCoefficient (parameters : Parameters) : ℝ :=
  Real.sqrt (gasCoefficient parameters / parameters.density) / (2 * Real.pi)

/-- The accepted zero-tension angular frequency converted to hertz. -/
def minnaertFrequencyHertz (parameters : Parameters) (radius : PositiveRadius) : ℝ :=
  minnaertAngularFrequency parameters radius / (2 * Real.pi)

/-- Fixed admitted medium parameters give a strictly positive hertz coefficient. -/
theorem minnaertHertzCoefficient_pos (parameters : Parameters) :
    0 < minnaertHertzCoefficient parameters :=
  div_pos (Real.sqrt_pos.mpr (div_pos (gasCoefficient_pos parameters) parameters.densityPositive))
    (by positivity)

/-- The hertz frequency is exactly the fixed coefficient divided by positive radius. -/
theorem minnaertFrequencyHertz_formula (parameters : Parameters) (radius : PositiveRadius) :
    minnaertFrequencyHertz parameters radius =
      minnaertHertzCoefficient parameters / (radius : ℝ) := by
  rw [minnaertFrequencyHertz, minnaert_angular_frequency_formula]
  unfold minnaertHertzCoefficient
  ring

/-- Every admitted zero-tension radius has strictly positive Minnaert frequency in hertz. -/
theorem minnaertFrequencyHertz_pos (parameters : Parameters) (radius : PositiveRadius) :
    0 < minnaertFrequencyHertz parameters radius := by
  rw [minnaertFrequencyHertz_formula]
  exact div_pos (minnaertHertzCoefficient_pos parameters) radius.property

/-- The spherical zero-tension volume formula decoded from a hertz frequency. -/
def minnaertVolumeFromHertz (parameters : Parameters) (frequency : ℝ) : ℝ :=
  (4 / 3 : ℝ) * Real.pi * (minnaertHertzCoefficient parameters / frequency) ^ 3

/-- The hertz-volume decoder agrees with spherical volume on every source state. -/
theorem minnaertVolumeFromHertz_source (parameters : Parameters) (radius : PositiveRadius) :
    minnaertVolumeFromHertz parameters (minnaertFrequencyHertz parameters radius) =
      sphereVolumeFormula radius := by
  have coefficient := (minnaertHertzCoefficient_pos parameters).ne'
  have radiusNonzero := radius.property.ne'
  rw [minnaertVolumeFromHertz, minnaertFrequencyHertz_formula]
  unfold sphereVolumeFormula
  congr 1
  field_simp

/-- Positive input frequency gives strictly positive decoded spherical volume. -/
theorem minnaertVolumeFromHertz_pos (parameters : Parameters) (frequency : ℝ)
    (positive : 0 < frequency) : 0 < minnaertVolumeFromHertz parameters frequency := by
  unfold minnaertVolumeFromHertz
  exact mul_pos (mul_pos (by norm_num) Real.pi_pos)
    (pow_pos (div_pos (minnaertHertzCoefficient_pos parameters) positive) 3)

/-- Normalized log volume has exact slope negative three against normalized log frequency. -/
theorem minnaert_log_volume_ratio (parameters : Parameters) (reference frequency : ℝ)
    (referencePositive : 0 < reference) (frequencyPositive : 0 < frequency) :
    Real.log (minnaertVolumeFromHertz parameters frequency /
      minnaertVolumeFromHertz parameters reference) = -3 * logFrequency reference frequency := by
  have coefficient := (minnaertHertzCoefficient_pos parameters).ne'
  have volumeCoefficient : (4 / 3 : ℝ) * Real.pi ≠ 0 := by positivity
  rw [Real.log_div (minnaertVolumeFromHertz_pos parameters frequency frequencyPositive).ne'
    (minnaertVolumeFromHertz_pos parameters reference referencePositive).ne']
  unfold minnaertVolumeFromHertz
  rw [Real.log_mul volumeCoefficient
      (pow_ne_zero 3 (div_ne_zero coefficient frequencyPositive.ne')),
    Real.log_mul volumeCoefficient (pow_ne_zero 3 (div_ne_zero coefficient referencePositive.ne')),
    Real.log_pow, Real.log_pow, Real.log_div coefficient frequencyPositive.ne',
    Real.log_div coefficient referencePositive.ne', logFrequency,
    Real.log_div frequencyPositive.ne' referencePositive.ne']
  norm_num
  ring

/-- The log-volume identity holds at every existing zero-tension spherical source state. -/
theorem minnaert_source_log_volume (parameters : Parameters) (reference : ℝ)
    (referencePositive : 0 < reference) (radius : PositiveRadius) :
    Real.log (sphereVolumeFormula radius / minnaertVolumeFromHertz parameters reference) =
      -3 * logFrequency reference (minnaertFrequencyHertz parameters radius) := by
  rw [← minnaertVolumeFromHertz_source parameters radius]
  exact minnaert_log_volume_ratio parameters reference _ referencePositive
    (minnaertFrequencyHertz_pos parameters radius)

/-- In log-frequency coordinates the normalized Minnaert log-volume graph is affine. -/
theorem minnaert_log_volume_affine (parameters : Parameters) (reference coordinate : ℝ)
    (positive : 0 < reference) :
    Real.log (minnaertVolumeFromHertz parameters (frequencyFromLog reference coordinate) /
      minnaertVolumeFromHertz parameters reference) = -3 * coordinate := by
  rw [minnaert_log_volume_ratio parameters reference _ positive
    (frequencyFromLog_pos reference coordinate positive),
    logFrequency_fromLog reference coordinate positive]

/-- The negative-three slope is also the actual derivative in logarithmic coordinates. -/
theorem minnaert_log_volume_hasDerivAt (parameters : Parameters) (reference coordinate : ℝ)
    (positive : 0 < reference) :
    HasDerivAt (fun s => Real.log
      (minnaertVolumeFromHertz parameters (frequencyFromLog reference s) /
        minnaertVolumeFromHertz parameters reference)) (-3) coordinate := by
  have equal : (fun s => Real.log
      (minnaertVolumeFromHertz parameters (frequencyFromLog reference s) /
        minnaertVolumeFromHertz parameters reference)) = fun s => -3 * s :=
    funext fun s => minnaert_log_volume_affine parameters reference s positive
  rw [equal]
  simpa using (hasDerivAt_id coordinate).const_mul (-3 : ℝ)


/-- An explicitly assumed inverse geometric-scale law becomes affine in log frequency. -/
theorem cascade_log_frequency (frequency : ℕ → ℝ)
    (reference coefficient initialScale ratio : ℝ)
    (referencePositive : 0 < reference) (coefficientPositive : 0 < coefficient)
    (scalePositive : 0 < initialScale) (ratioPositive : 0 < ratio)
    (law : ∀ n, frequency n = coefficient / (initialScale * ratio ^ n)) (n : ℕ) :
    logFrequency reference (frequency n) =
      Real.log coefficient - Real.log initialScale - n * Real.log ratio - Real.log reference := by
  rw [logFrequency, law n,
    Real.log_div (div_pos coefficientPositive
      (mul_pos scalePositive (pow_pos ratioPositive n))).ne' referencePositive.ne',
    Real.log_div coefficientPositive.ne' (mul_pos scalePositive (pow_pos ratioPositive n)).ne',
    Real.log_mul scalePositive.ne' (pow_pos ratioPositive n).ne', Real.log_pow]
  ring

/-- A hypothesized geometric cascade has constant log-frequency spacing. -/
theorem cascade_log_spacing (frequency : ℕ → ℝ)
    (reference coefficient initialScale ratio : ℝ)
    (referencePositive : 0 < reference) (coefficientPositive : 0 < coefficient)
    (scalePositive : 0 < initialScale) (ratioPositive : 0 < ratio)
    (law : ∀ n, frequency n = coefficient / (initialScale * ratio ^ n)) (n : ℕ) :
    logFrequency reference (frequency (n + 1)) - logFrequency reference (frequency n) =
      -Real.log ratio := by
  rw [cascade_log_frequency frequency reference coefficient initialScale ratio
      referencePositive coefficientPositive scalePositive ratioPositive law,
    cascade_log_frequency frequency reference coefficient initialScale ratio
      referencePositive coefficientPositive scalePositive ratioPositive law]
  push_cast
  ring

/-- An assumed positive jet law has the exact dimensionless logarithmic identity. -/
theorem jet_log_frequency_of_law (reference frequency coefficient speed size : ℝ)
    (referencePositive : 0 < reference) (coefficientPositive : 0 < coefficient)
    (speedPositive : 0 < speed) (sizePositive : 0 < size)
    (law : frequency = coefficient * speed / size) :
    logFrequency reference frequency =
      Real.log coefficient + Real.log speed - Real.log size - Real.log reference := by
  rw [logFrequency, law,
    Real.log_div (div_pos (mul_pos coefficientPositive speedPositive) sizePositive).ne'
      referencePositive.ne',
    Real.log_div (mul_pos coefficientPositive speedPositive).ne' sizePositive.ne',
    Real.log_mul coefficientPositive.ne' speedPositive.ne']

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BubbleAcoustics
