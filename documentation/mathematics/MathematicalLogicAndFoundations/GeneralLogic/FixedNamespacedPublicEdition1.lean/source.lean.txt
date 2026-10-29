-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.OverflowPolicy.Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OverflowPolicy.Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/XYZ/Fixed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Int.DivMod
public import Mathlib.Data.Rat.Cast.Order
public import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-!
# Exact fixed-point CIE 1931 XYZ protocol values

This module defines the integer authority path for the normalized XYZ wire
protocol.  Its canonical scale is `3_000_000`, so equal-energy chromaticity is
represented exactly by `(1_000_000, 1_000_000, 1_000_000)`.  The interval
`[0, 3_000_000]` is a protocol gamut; it is not a claim that all physically
meaningful CIE XYZ measurements lie in `[0, 1]`.

Lean integers are unbounded.  The checked helpers below nevertheless enforce
the declared signed intermediate width and raw output interval, matching the
finite rejection behavior required of the Rust implementation.  Rational and
real decodings are adapters only; admission and normalization use integers.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.OverflowPolicy.Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b

public section

namespace Surface.Core.XYZ

/-! ## Canonical format descriptor -/

inductive OverflowPolicy
  | reject
deriving DecidableEq, Repr

inductive RoundingRule
  | nearestTiesToEven
  | towardZero
  | towardNegative
  | towardPositive
  | largestRemainderXYZ
deriving DecidableEq, Repr

@[surface_novel]
structure FixedFormat where
  schemaVersion : Nat
  rawBits : Nat
  scaleRaw : Int
  minRaw : Int
  maxRaw : Int
  intermediateBits : Nat
  overflowPolicy : OverflowPolicy
  scalarRounding : RoundingRule
  normalizationRounding : RoundingRule
  formatId : String
deriving DecidableEq, Repr

@[expose] def fixedFormatV1Id : String :=
  "cie1931.xyz.normalized.decimal.v1"

@[expose] def normalizedTristimulusInvariantId : String :=
  "cie1931.xyz.sum-equals-scale.v1"

/-- The one format accepted by protocol version one. -/
@[expose] def xyzFormatV1 : FixedFormat where
  schemaVersion := 1
  rawBits := 32
  scaleRaw := 3_000_000
  minRaw := 0
  maxRaw := 3_000_000
  intermediateBits := 128
  overflowPolicy := .reject
  scalarRounding := .nearestTiesToEven
  normalizationRounding := .largestRemainderXYZ
  formatId := fixedFormatV1Id

/-- Version-one format validity is exact descriptor equality, not partial
compatibility with a nearby representation. -/
@[expose] def FixedFormat.Valid (format : FixedFormat) : Prop :=
  format = xyzFormatV1

instance instDecidableFixedFormatValid (format : FixedFormat) : Decidable format.Valid := by
  unfold FixedFormat.Valid
  infer_instance

@[expose] def verifyFixedFormat (format : FixedFormat) : Bool :=
  decide format.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyFixedFormat_sound (format : FixedFormat)
    (accepted : verifyFixedFormat format = true) : format.Valid := by
  exact of_decide_eq_true accepted

@[surface_novel, surface_published]
theorem xyzFormatV1_valid : xyzFormatV1.Valid :=
  rfl

/-! ## Raw and bounded tristimulus values -/

/-- Wire-facing unbounded integers.  Range rejection remains observable. -/
@[surface_novel]
structure RawXYZ where
  x : Int
  y : Int
  z : Int
deriving DecidableEq, Repr

@[ext, surface_novel]
structure FixedChannel (format : FixedFormat) where
  raw : Int
  inRange : format.minRaw ≤ raw ∧ raw ≤ format.maxRaw

instance (format : FixedFormat) : DecidableEq (FixedChannel format) :=
  fun left right ↦
    if h : left.raw = right.raw then
      isTrue (by cases left; cases right; simp_all)
    else
      isFalse (fun equality ↦ h (congrArg FixedChannel.raw equality))

instance (format : FixedFormat) : Repr (FixedChannel format) where
  reprPrec channel _ := s!"FixedChannel({channel.raw})"

@[ext, surface_novel]
structure FixedXYZ (format : FixedFormat) where
  x : FixedChannel format
  y : FixedChannel format
  z : FixedChannel format
deriving DecidableEq, Repr

@[expose] def FixedXYZ.xRaw {format : FixedFormat}
    (xyz : FixedXYZ format) : Int := xyz.x.raw

@[expose] def FixedXYZ.yRaw {format : FixedFormat}
    (xyz : FixedXYZ format) : Int := xyz.y.raw

@[expose] def FixedXYZ.zRaw {format : FixedFormat}
    (xyz : FixedXYZ format) : Int := xyz.z.raw

/-- Exact rational decoding.  A zero scale is permitted at the type level and
uses the ordinary totalized field division; valid V1 values have positive
scale. -/
@[expose] def FixedChannel.toRat {format : FixedFormat}
    (channel : FixedChannel format) : ℚ :=
  (channel.raw : ℚ) / (format.scaleRaw : ℚ)

/-- Real decoding is an analytic/presentation adapter, never an admission
calculation. -/
@[expose] noncomputable def FixedChannel.toReal {format : FixedFormat}
    (channel : FixedChannel format) : ℝ :=
  (channel.raw : ℝ) / (format.scaleRaw : ℝ)

@[expose] def FixedXYZ.toRatVector {format : FixedFormat}
    (xyz : FixedXYZ format) : ℚ × ℚ × ℚ :=
  (xyz.x.toRat, xyz.y.toRat, xyz.z.toRat)

@[expose] noncomputable def FixedXYZ.toRealVector {format : FixedFormat}
    (xyz : FixedXYZ format) : ℝ × ℝ × ℝ :=
  (xyz.x.toReal, xyz.y.toReal, xyz.z.toReal)

/-! ## The exact normalized-tristimulus invariant -/

abbrev ColorInvariant (format : FixedFormat) := FixedXYZ format → Prop

@[expose] def normalizedTristimulusInvariant
    (format : FixedFormat) : ColorInvariant format :=
  fun xyz ↦ xyz.x.raw + xyz.y.raw + xyz.z.raw = format.scaleRaw

instance normalizedTristimulusInvariant_decidable
    (format : FixedFormat) (xyz : FixedXYZ format) :
    Decidable (normalizedTristimulusInvariant format xyz) := by
  unfold normalizedTristimulusInvariant
  infer_instance

@[surface_novel, surface_published]
theorem normalizedTristimulusInvariant_nonzero
    (xyz : FixedXYZ xyzFormatV1)
    (hinvariant : normalizedTristimulusInvariant xyzFormatV1 xyz) :
    xyz.x.raw ≠ 0 ∨ xyz.y.raw ≠ 0 ∨ xyz.z.raw ≠ 0 := by
  by_contra hall
  push Not at hall
  rcases hall with ⟨hx, hy, hz⟩
  simp [normalizedTristimulusInvariant, xyzFormatV1, hx, hy, hz] at hinvariant

@[surface_novel, surface_published]
theorem normalizedTristimulusInvariant_each_channel_le_scale
    (xyz : FixedXYZ xyzFormatV1)
    (hinvariant : normalizedTristimulusInvariant xyzFormatV1 xyz) :
    xyz.x.raw ≤ xyzFormatV1.scaleRaw ∧
      xyz.y.raw ≤ xyzFormatV1.scaleRaw ∧
      xyz.z.raw ≤ xyzFormatV1.scaleRaw := by
  have hx0 : 0 ≤ xyz.x.raw := by
    simpa [xyzFormatV1] using xyz.x.inRange.1
  have hy0 : 0 ≤ xyz.y.raw := by
    simpa [xyzFormatV1] using xyz.y.inRange.1
  have hz0 : 0 ≤ xyz.z.raw := by
    simpa [xyzFormatV1] using xyz.z.inRange.1
  unfold normalizedTristimulusInvariant at hinvariant
  omega

/-! ## Checked signed-integer arithmetic -/

/-- Positive half-open bound for a signed two's-complement width. -/
@[expose] def signedHalfRange (bits : Nat) : Int :=
  Int.ofNat (2 ^ (bits - 1))

@[expose] def FitsSignedBits (bits : Nat) (value : Int) : Prop :=
  0 < bits ∧ -signedHalfRange bits ≤ value ∧ value < signedHalfRange bits

instance (bits : Nat) (value : Int) : Decidable (FitsSignedBits bits value) := by
  unfold FitsSignedBits
  infer_instance

@[expose] def InRawRange (format : FixedFormat) (value : Int) : Prop :=
  format.minRaw ≤ value ∧ value ≤ format.maxRaw

instance (format : FixedFormat) (value : Int) :
    Decidable (InRawRange format value) := by
  unfold InRawRange
  infer_instance

/-- Checked addition accepts only a representable intermediate whose result is
also in the target raw interval. -/
@[expose] def checkedAdd (format : FixedFormat)
    (left right : Int) : Option Int :=
  let result := left + right
  if FitsSignedBits format.intermediateBits result ∧ InRawRange format result then
    some result
  else
    none

/-- Checked subtraction has the same intermediate and output policy. -/
@[expose] def checkedSub (format : FixedFormat)
    (left right : Int) : Option Int :=
  let result := left - right
  if FitsSignedBits format.intermediateBits result ∧ InRawRange format result then
    some result
  else
    none

/-- Multiplication checks the signed intermediate width.  Its result is an
intermediate numerator, so the raw-range check occurs after division. -/
@[expose] def checkedMulIntermediate (format : FixedFormat)
    (left right : Int) : Option Int :=
  let result := left * right
  if FitsSignedBits format.intermediateBits result then some result else none

@[surface_novel, surface_published]
theorem checkedMulIntermediate_sound
    (format : FixedFormat) (left right result : Int)
    (hchecked : checkedMulIntermediate format left right = some result) :
    result = left * right ∧ FitsSignedBits format.intermediateBits result := by
  simp only [checkedMulIntermediate] at hchecked
  split at hchecked
  · simp_all
  · contradiction

/-- The mathematical nearest-even quotient before target-range checking. -/
@[expose] def nearestEvenQuotient (numerator denominator : Int) : Int :=
  let quotient := numerator / denominator
  let remainder := numerator % denominator
  let doubled := 2 * remainder
  if doubled < denominator then quotient
  else if denominator < doubled then quotient + 1
  else if quotient % 2 = 0 then quotient else quotient + 1

/-- Exact nearest-integer division with half-way cases sent to an even result.
The denominator must be positive, the numerator must fit the declared
intermediate domain, and the rounded result must fit the raw interval. -/
@[expose] def roundDivNearestEven (format : FixedFormat)
    (numerator denominator : Int) : Option Int :=
  if 0 < denominator then
    if FitsSignedBits format.intermediateBits numerator then
      if FitsSignedBits format.intermediateBits
          (2 * (numerator % denominator)) then
        let rounded := nearestEvenQuotient numerator denominator
        if InRawRange format rounded then some rounded else none
      else
        none
    else
      none
  else
    none

@[surface_novel, surface_published]
theorem roundDivNearestEven_deterministic
    (format : FixedFormat) (numerator denominator : Int)
    {left right : Int}
    (hleft : roundDivNearestEven format numerator denominator = some left)
    (hright : roundDivNearestEven format numerator denominator = some right) :
    left = right := by
  rw [hleft] at hright
  exact Option.some.inj hright

@[surface_novel, surface_published]
theorem roundDivNearestEven_tie_even
    (format : FixedFormat) (numerator denominator result : Int)
    (hchecked : roundDivNearestEven format numerator denominator = some result)
    (htie : 2 * (numerator % denominator) = denominator) :
    result % 2 = 0 := by
  have hcandidate :
      nearestEvenQuotient numerator denominator % 2 = 0 := by
    simp only [nearestEvenQuotient]
    split
    · omega
    split
    · omega
    split
    · assumption
    · rename_i hodd
      have hmodNonnegative : 0 ≤ (numerator / denominator) % 2 :=
        Int.emod_nonneg _ (by omega)
      have hmodLt : (numerator / denominator) % 2 < 2 :=
        Int.emod_lt_of_pos _ (by omega)
      omega
  simp only [roundDivNearestEven] at hchecked
  split at hchecked <;> try contradiction
  split at hchecked <;> try contradiction
  split at hchecked <;> try contradiction
  split at hchecked <;> simp_all

/-! ## Largest-remainder ingress normalization -/

inductive XYZAxis
  | x
  | y
  | z
deriving DecidableEq, Repr

@[expose] def XYZAxis.priority : XYZAxis → Nat
  | .x => 0
  | .y => 1
  | .z => 2

@[surface_novel]
structure AxisRemainder where
  axis : XYZAxis
  remainder : Int
deriving DecidableEq, Repr

/-- Descending remainder order with stable `X < Y < Z` tie breaking. -/
@[expose] def remainderBefore (left right : AxisRemainder) : Bool :=
  decide (right.remainder < left.remainder ∨
    (left.remainder = right.remainder ∧ left.axis.priority < right.axis.priority))

@[expose] def orderRemainderPair
    (left right : AxisRemainder) : AxisRemainder × AxisRemainder :=
  if remainderBefore right left then (right, left) else (left, right)

/-- A three-input stable sorting network. -/
@[expose] def rankXYZRemainders (x y z : Int) :
    AxisRemainder × AxisRemainder × AxisRemainder :=
  let first := orderRemainderPair ⟨.x, x⟩ ⟨.y, y⟩
  let second := orderRemainderPair first.2 ⟨.z, z⟩
  let third := orderRemainderPair first.1 second.1
  (third.1, third.2, second.2)

@[surface_novel]
structure NormalizationPlan where
  floorX : Int
  floorY : Int
  floorZ : Int
  remainderX : Int
  remainderY : Int
  remainderZ : Int
  residual : Int
  ranked : AxisRemainder × AxisRemainder × AxisRemainder
deriving DecidableEq, Repr

@[expose] def rawXYZTotal (raw : RawXYZ) : Int :=
  raw.x + raw.y + raw.z

@[expose] def RawXYZ.Nonnegative (raw : RawXYZ) : Prop :=
  0 ≤ raw.x ∧ 0 ≤ raw.y ∧ 0 ≤ raw.z

instance (raw : RawXYZ) : Decidable raw.Nonnegative := by
  unfold RawXYZ.Nonnegative
  infer_instance

/-- Compute all exact Euclidean quotients and remainders.  A plan is emitted
only after the mandatory negative/zero checks, i128 checks, and the proved
finite residual shape check (`0`, `1`, or `2`). -/
@[expose] def normalizationPlanV1? (raw : RawXYZ) : Option NormalizationPlan :=
  if raw.Nonnegative then
    let total := rawXYZTotal raw
    if FitsSignedBits xyzFormatV1.intermediateBits (raw.x + raw.y) ∧
        FitsSignedBits xyzFormatV1.intermediateBits total then
      if 0 < total then
        match checkedMulIntermediate xyzFormatV1 xyzFormatV1.scaleRaw raw.x,
            checkedMulIntermediate xyzFormatV1 xyzFormatV1.scaleRaw raw.y,
            checkedMulIntermediate xyzFormatV1 xyzFormatV1.scaleRaw raw.z with
        | some numeratorX, some numeratorY, some numeratorZ =>
            let floorX := numeratorX / total
            let floorY := numeratorY / total
            let floorZ := numeratorZ / total
            let remainderX := numeratorX % total
            let remainderY := numeratorY % total
            let remainderZ := numeratorZ % total
            let residual := xyzFormatV1.scaleRaw - (floorX + floorY + floorZ)
            if residual = 0 ∨ residual = 1 ∨ residual = 2 then
              some {
                floorX
                floorY
                floorZ
                remainderX
                remainderY
                remainderZ
                residual
                ranked := rankXYZRemainders remainderX remainderY remainderZ
              }
            else
              none
        | _, _, _ => none
      else
        none
    else
      none
  else
    none

@[surface_novel, surface_published]
theorem normalizationPlanV1_residual
    (raw : RawXYZ) (plan : NormalizationPlan)
    (hplan : normalizationPlanV1? raw = some plan) :
    plan.residual = 0 ∨ plan.residual = 1 ∨ plan.residual = 2 := by
  simp only [normalizationPlanV1?] at hplan
  split at hplan <;> try contradiction
  split at hplan <;> try contradiction
  split at hplan <;> try contradiction
  all_goals
    split at hplan <;> try contradiction
  all_goals
    split at hplan <;> try contradiction
    have hplanEq := Option.some.inj hplan
    rw [← hplanEq]
    assumption

@[expose] def RawXYZ.incrementAxis (raw : RawXYZ) (axis : XYZAxis) : RawXYZ :=
  match axis with
  | .x => { raw with x := raw.x + 1 }
  | .y => { raw with y := raw.y + 1 }
  | .z => { raw with z := raw.z + 1 }

/-- Add exactly `residual` units to the highest-ranked axes. -/
@[expose] def NormalizationPlan.allocate (plan : NormalizationPlan) : RawXYZ :=
  let floors : RawXYZ := ⟨plan.floorX, plan.floorY, plan.floorZ⟩
  if plan.residual = 0 then floors
  else if plan.residual = 1 then floors.incrementAxis plan.ranked.1.axis
  else
    (floors.incrementAxis plan.ranked.1.axis).incrementAxis plan.ranked.2.1.axis

/-- Checked construction of a bounded normalized value. -/
@[expose] def fixedXYZV1OfRaw? (raw : RawXYZ) : Option (FixedXYZ xyzFormatV1) :=
  if hx : InRawRange xyzFormatV1 raw.x then
    if hy : InRawRange xyzFormatV1 raw.y then
      if hz : InRawRange xyzFormatV1 raw.z then
        if raw.x + raw.y + raw.z = xyzFormatV1.scaleRaw then
          some {
            x := ⟨raw.x, hx⟩
            y := ⟨raw.y, hy⟩
            z := ⟨raw.z, hz⟩
          }
        else
          none
      else
        none
    else
      none
  else
    none

@[expose] def normalizeXYZV1 (raw : RawXYZ) : Option (FixedXYZ xyzFormatV1) :=
  normalizationPlanV1? raw >>= fun plan ↦ fixedXYZV1OfRaw? plan.allocate

@[surface_novel, surface_published]
theorem fixedXYZV1OfRaw?_invariant
    (raw : RawXYZ) (xyz : FixedXYZ xyzFormatV1)
    (hdecode : fixedXYZV1OfRaw? raw = some xyz) :
    normalizedTristimulusInvariant xyzFormatV1 xyz := by
  simp only [fixedXYZV1OfRaw?] at hdecode
  split at hdecode <;> try contradiction
  split at hdecode <;> try contradiction
  split at hdecode <;> try contradiction
  split at hdecode <;> try contradiction
  next hinvariant =>
    simp only [Option.some.injEq] at hdecode
    subst xyz
    exact hinvariant

@[surface_novel, surface_published]
theorem normalizeXYZV1_preserves_channelBounds
    (raw : RawXYZ) (xyz : FixedXYZ xyzFormatV1)
    (_hnormalized : normalizeXYZV1 raw = some xyz) :
    InRawRange xyzFormatV1 xyz.x.raw ∧
      InRawRange xyzFormatV1 xyz.y.raw ∧
      InRawRange xyzFormatV1 xyz.z.raw := by
  exact ⟨xyz.x.inRange, xyz.y.inRange, xyz.z.inRange⟩

@[surface_novel, surface_published]
theorem normalizeXYZV1_establishes_colorInvariant
    (raw : RawXYZ) (xyz : FixedXYZ xyzFormatV1)
    (hnormalized : normalizeXYZV1 raw = some xyz) :
    normalizedTristimulusInvariant xyzFormatV1 xyz := by
  unfold normalizeXYZV1 at hnormalized
  cases hplan : normalizationPlanV1? raw with
  | none => simp [hplan] at hnormalized
  | some plan =>
      simp only [hplan] at hnormalized
      exact fixedXYZV1OfRaw?_invariant plan.allocate xyz hnormalized

@[surface_novel, surface_published]
theorem normalizeXYZV1_deterministic
    (raw : RawXYZ) {left right : FixedXYZ xyzFormatV1}
    (hleft : normalizeXYZV1 raw = some left)
    (hright : normalizeXYZV1 raw = some right) :
    left = right := by
  rw [hleft] at hright
  exact Option.some.inj hright

/-! Focused executable examples for the canonical descriptor and ingress
normalizer.  These are finite examples, not cross-language certificates. -/

example : verifyFixedFormat xyzFormatV1 = true := by decide

example : normalizeXYZV1 ⟨1, 1, 1⟩ =
    some {
      x := ⟨1_000_000, by norm_num [xyzFormatV1]⟩
      y := ⟨1_000_000, by norm_num [xyzFormatV1]⟩
      z := ⟨1_000_000, by norm_num [xyzFormatV1]⟩
    } := by
  decide

end Surface.Core.XYZ
