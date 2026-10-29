/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #967. Parent main revision:
`0366138f0afd762c35a7afe56b617d969b1dbc15`.

Primary analytic context:
H. L. Montgomery and R. C. Vaughan, “Hilbert's Inequality”,
J. London Math. Soc. (2) 8 (1974), 73–82,
DOI 10.1112/jlms/s2-8.1.73.
H. L. Montgomery and R. C. Vaughan, “The large sieve”,
Mathematika 20 (1973), 119–134,
DOI 10.1112/S0025579300004708.

The estimates below are elementary finite-character estimates.  The cited
papers identify possible later aggregation tools; no Hilbert-inequality or
large-sieve hypothesis is instantiated here.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- First literal right endpoint occurring after the affine-tail summation by
parts and the effective-shift split. -/
def coreGrowingShiftEndpointRightEndpointHarmonicYLower (j : ℕ) : ℕ :=
  2 ^ j + logarithmicShiftThreshold j + 1

/-- Exclusive terminal literal right endpoint.  The point `Y-1` belongs to the
separate retained right-window boundary symbol. -/
def coreGrowingShiftEndpointRightEndpointHarmonicYUpper (j : ℕ) : ℕ :=
  coreGrowingShiftEndpointFourierModulus j - 1

/-- Exact ordinary-difference fiber at a fixed literal right endpoint `y`. -/
def coreGrowingShiftEndpointRightEndpointHarmonicFiberSet
    (j y : ℕ) : Finset ℕ :=
  Finset.Ico (logarithmicShiftThreshold j + 1)
    (y - logarithmicShiftThreshold j - 1)

/-- Negative-character sum on one right-endpoint fiber. -/
def coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
    (j y : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ h ∈ coreGrowingShiftEndpointRightEndpointHarmonicFiberSet j y,
    coreGrowingShiftEndpointTransverseNatCharacter j t h

/-- Exact sheared model of the genuine right-endpoint harmonic transform. -/
def coreGrowingShiftEndpointRightEndpointHarmonicShearedDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ y ∈ Finset.Ico
      (coreGrowingShiftEndpointRightEndpointHarmonicYLower j)
      (coreGrowingShiftEndpointRightEndpointHarmonicYUpper j),
    coreGrowingShiftEndpointTransverseNatCharacter j u y *
      (((y : ℕ) : ℂ))⁻¹ *
      coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
        j y (s - u)

/-- Harmonic mass of the literal-right-endpoint range. -/
def coreGrowingShiftEndpointRightEndpointHarmonicMass (j : ℕ) : ℝ :=
  ∑ y ∈ Finset.Ico
      (coreGrowingShiftEndpointRightEndpointHarmonicYLower j)
      (coreGrowingShiftEndpointRightEndpointHarmonicYUpper j),
    (((y : ℕ) : ℝ))⁻¹

/-- On the genuine branch the affine-tail lower endpoint is the maximum of the
low anchor and the literal-right-endpoint lower constraint. -/
theorem coreGrowingShiftEndpointTransverseInteriorTailLower_eq_rightEndpoint
    {j h : ℕ}
    (hh : logarithmicShiftThreshold j < h) :
    coreGrowingShiftEndpointTransverseInteriorTailLower j h =
      max (logarithmicShiftThreshold j + 1)
        (2 ^ j + logarithmicShiftThreshold j - h) := by
  unfold coreGrowingShiftEndpointTransverseInteriorTailLower
    coreGrowingShiftEndpointIntervalTailLower
    coreGrowingShiftEndpointDifferencePrefixLower
    coreGrowingShiftEndpointAggregateTailStart
  rw [coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt
    hh]
  omega

/-- On the genuine branch the strict interior upper endpoint is `Y-h-1`. -/
theorem coreGrowingShiftEndpointTransverseInteriorPrefixUpper_eq_rightEndpoint
    {j h : ℕ}
    (hh : logarithmicShiftThreshold j < h) :
    coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h =
      coreGrowingShiftEndpointFourierModulus j - h - 1 := by
  unfold coreGrowingShiftEndpointTransverseInteriorPrefixUpper
    coreGrowingShiftEndpointDifferencePrefixUpper
  omega

/-- Canonical representatives identify a finite cyclic group with `Fin`. -/
private def rightEndpointZModValEquiv
    (Q : ℕ) [NeZero Q] : ZMod Q ≃ Fin Q where
  toFun x := ⟨x.val, ZMod.val_lt x⟩
  invFun x := (x.val : ZMod Q)
  left_inv x := by
    simpa using ZMod.natCast_zmod_val x
  right_inv x := by
    apply Fin.ext
    exact ZMod.val_cast_of_lt x.isLt

private theorem rightEndpoint_sum_zmod_eq_sum_range
    {Q : ℕ} [NeZero Q]
    (F : ZMod Q → ℂ) :
    (∑ x : ZMod Q, F x) =
      ∑ n ∈ Finset.range Q, F (n : ZMod Q) := by
  calc
    (∑ x : ZMod Q, F x) =
        ∑ x : Fin Q, F (x.val : ZMod Q) := by
      refine Fintype.sum_equiv (rightEndpointZModValEquiv Q) F
        (fun x : Fin Q => F (x.val : ZMod Q)) ?_
      intro x
      simp [rightEndpointZModValEquiv, ZMod.natCast_zmod_val]
    _ = ∑ n ∈ Finset.range Q, F (n : ZMod Q) := by
      rw [Fin.sum_univ_eq_sum_range]

/-- Ordinary `(h,n)` support of the genuine right-endpoint branch. -/
def coreGrowingShiftEndpointRightEndpointNHSupport
    (j : ℕ) : Finset (ℕ × ℕ) :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Finset.range Q ×ˢ Finset.range Q).filter fun p =>
    logarithmicShiftThreshold j < p.1 ∧
      coreGrowingShiftEndpointTransverseInteriorTailLower j p.1 + 1 ≤ p.2 ∧
      p.2 < coreGrowingShiftEndpointTransverseInteriorPrefixUpper j p.1

/-- Sheared `(y,h)` support of the same branch. -/
def coreGrowingShiftEndpointRightEndpointYHSupport
    (j : ℕ) : Finset (ℕ × ℕ) :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Finset.range Q ×ˢ Finset.range Q).filter fun p =>
    coreGrowingShiftEndpointRightEndpointHarmonicYLower j ≤ p.1 ∧
      p.1 < coreGrowingShiftEndpointRightEndpointHarmonicYUpper j ∧
      logarithmicShiftThreshold j + 1 ≤ p.2 ∧
      p.2 < p.1 - logarithmicShiftThreshold j - 1

/-- The change of variables `(h,n) ↦ (n+h,h)` identifies the two exact
supports. -/
theorem mem_coreGrowingShiftEndpointRightEndpointYHSupport_shear_iff
    (j : ℕ) (h n : ℕ) :
    (n + h, h) ∈ coreGrowingShiftEndpointRightEndpointYHSupport j ↔
      (h, n) ∈ coreGrowingShiftEndpointRightEndpointNHSupport j := by
  unfold coreGrowingShiftEndpointRightEndpointYHSupport
    coreGrowingShiftEndpointRightEndpointNHSupport
    coreGrowingShiftEndpointRightEndpointHarmonicYLower
    coreGrowingShiftEndpointRightEndpointHarmonicYUpper
  simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_range]
  constructor
  · intro hyh
    have hh : logarithmicShiftThreshold j < h := by omega
    rw [coreGrowingShiftEndpointTransverseInteriorTailLower_eq_rightEndpoint hh,
      coreGrowingShiftEndpointTransverseInteriorPrefixUpper_eq_rightEndpoint hh]
    omega
  · intro hhn
    have hh : logarithmicShiftThreshold j < h := hhn.2.1
    rw [coreGrowingShiftEndpointTransverseInteriorTailLower_eq_rightEndpoint hh,
      coreGrowingShiftEndpointTransverseInteriorPrefixUpper_eq_rightEndpoint hh]
    omega

/-- Character phases transform exactly under the endpoint shear. -/
theorem coreGrowingShiftEndpointRightEndpoint_character_shear
    (j h n : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseNatCharacter j s h *
        coreGrowingShiftEndpointTransverseNatCharacter j u n =
      coreGrowingShiftEndpointTransverseNatCharacter j u (n + h) *
        coreGrowingShiftEndpointTransverseNatCharacter j (s - u) h := by
  unfold coreGrowingShiftEndpointTransverseNatCharacter
  rw [← map_add_eq_mul, ← map_add_eq_mul]
  congr 1
  push_cast
  ring

/-- Pair-sum form of the sheared right-endpoint transform. -/
def coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ p ∈ coreGrowingShiftEndpointRightEndpointYHSupport j,
    coreGrowingShiftEndpointTransverseNatCharacter j u p.1 *
      (((p.1 : ℕ) : ℂ))⁻¹ *
      coreGrowingShiftEndpointTransverseNatCharacter j (s - u) p.2

/-- Exact finite shear from the parent genuine branch to the pair model. -/
theorem coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_pair
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2 j u s =
      coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2 j u s := by
  classical
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  unfold coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
    coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
    coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2
  rw [rightEndpoint_sum_zmod_eq_sum_range]
  -- Flatten the parent nested sum onto its exact `(h,n)` support.
  have hparent :
      (∑ h ∈ Finset.range Q,
        ZMod.stdAddChar (-((h : CoreGrowingShiftEndpointDoubledFourierIndex j) * s)) *
          (let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h
           let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h
           let H := logarithmicShiftThreshold j
           if H < h ∧ A < B then
             ∑ n ∈ Finset.Ico (A + 1) B,
               coreGrowingShiftEndpointTransverseNatCharacter j u n *
                 (((n + h : ℕ) : ℂ))⁻¹
           else 0)) =
        ∑ p ∈ coreGrowingShiftEndpointRightEndpointNHSupport j,
          coreGrowingShiftEndpointTransverseNatCharacter j s p.1 *
            coreGrowingShiftEndpointTransverseNatCharacter j u p.2 *
              (((p.2 + p.1 : ℕ) : ℂ))⁻¹ := by
    unfold coreGrowingShiftEndpointRightEndpointNHSupport
    rw [Finset.sum_filter, Finset.sum_product]
    apply Finset.sum_congr rfl
    intro h hhQ
    have hhQ' : h < Q := Finset.mem_range.mp hhQ
    rw [ZMod.val_cast_of_lt hhQ']
    by_cases hh : logarithmicShiftThreshold j < h
    · let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h
      let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h
      by_cases hAB : A < B
      · rw [if_pos ⟨hh, hAB⟩, Finset.mul_sum]
        rw [show
          (∑ n ∈ Finset.range Q,
            if logarithmicShiftThreshold j < h ∧
                coreGrowingShiftEndpointTransverseInteriorTailLower j h + 1 ≤ n ∧
                n < coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h then
              coreGrowingShiftEndpointTransverseNatCharacter j s h *
                coreGrowingShiftEndpointTransverseNatCharacter j u n *
                  (((n + h : ℕ) : ℂ))⁻¹
            else 0) =
          ∑ n ∈ Finset.Ico (A + 1) B,
            coreGrowingShiftEndpointTransverseNatCharacter j s h *
              coreGrowingShiftEndpointTransverseNatCharacter j u n *
                (((n + h : ℕ) : ℂ))⁻¹ by
          symm
          apply Finset.sum_subset
          · intro n hn
            have hn' := Finset.mem_Ico.mp hn
            exact Finset.mem_range.mpr (lt_of_lt_of_le hn'.2 (by
              unfold B coreGrowingShiftEndpointTransverseInteriorPrefixUpper
                coreGrowingShiftEndpointDoubledFourierModulus
              omega))
          · intro n hnQ hnnot
            have hnQ' := Finset.mem_range.mp hnQ
            by_cases hn : A + 1 ≤ n ∧ n < B
            · exact (hnnot (Finset.mem_Ico.mpr hn)).elim
            · simp [A, B, hh, hn]
        ]
        simp [coreGrowingShiftEndpointTransverseNatCharacter]
        ring
      · have hempty : Finset.Ico (A + 1) B = ∅ := by
          apply Finset.Ico_eq_empty_iff.mpr
          omega
        rw [if_neg (by simp [hAB]), hempty]
        simp [A, B, hh, hAB]
    · simp [hh]
  rw [hparent]
  -- Apply the support-preserving shear bijection.
  symm
  apply Finset.sum_bij
    (fun p _hp => (p.2 + p.1, p.1))
  · intro p hp
    exact
      (mem_coreGrowingShiftEndpointRightEndpointYHSupport_shear_iff
        j p.1 p.2).2 hp
  · intro p hp q hq hpq
    apply Prod.ext
    · have hsecond := congrArg Prod.snd hpq
      have hfirst := congrArg Prod.fst hpq
      omega
    · exact congrArg Prod.snd hpq
  · intro q hq
    have hqmem := hq
    unfold coreGrowingShiftEndpointRightEndpointYHSupport at hqmem
    simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_range] at hqmem
    refine ⟨(q.2, q.1 - q.2), ?_, ?_⟩
    · have hs :=
        (mem_coreGrowingShiftEndpointRightEndpointYHSupport_shear_iff
          j q.2 (q.1 - q.2)).1
      have heq : q.1 - q.2 + q.2 = q.1 := by omega
      rw [heq] at hs
      exact hs hq
    · apply Prod.ext
      · omega
      · rfl
  · intro p hp
    have hphase :=
      coreGrowingShiftEndpointRightEndpoint_character_shear
        j p.1 p.2 u s
    rw [hphase]
    ring

/-- Regrouping the pair model by literal right endpoint gives the nested fiber
formula used in the estimate. -/
theorem coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2_eq_sheared
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2 j u s =
      coreGrowingShiftEndpointRightEndpointHarmonicShearedDFT2 j u s := by
  classical
  unfold coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2
    coreGrowingShiftEndpointRightEndpointHarmonicShearedDFT2
    coreGrowingShiftEndpointRightEndpointYHSupport
    coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
    coreGrowingShiftEndpointRightEndpointHarmonicFiberSet
  rw [Finset.sum_filter, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro y hyQ
  by_cases hy :
      coreGrowingShiftEndpointRightEndpointHarmonicYLower j ≤ y ∧
        y < coreGrowingShiftEndpointRightEndpointHarmonicYUpper j
  · rw [show
      (∑ h ∈ Finset.range (coreGrowingShiftEndpointDoubledFourierModulus j),
        if hy.1 ∧ hy.2 ∧
            logarithmicShiftThreshold j + 1 ≤ h ∧
            h < y - logarithmicShiftThreshold j - 1 then
          coreGrowingShiftEndpointTransverseNatCharacter j u y *
            (((y : ℕ) : ℂ))⁻¹ *
              coreGrowingShiftEndpointTransverseNatCharacter j (s - u) h
        else 0) =
      coreGrowingShiftEndpointTransverseNatCharacter j u y *
        (((y : ℕ) : ℂ))⁻¹ *
          ∑ h ∈ Finset.Ico (logarithmicShiftThreshold j + 1)
              (y - logarithmicShiftThreshold j - 1),
            coreGrowingShiftEndpointTransverseNatCharacter j (s - u) h by
      rw [Finset.mul_sum]
      apply Finset.sum_subset
      · intro h hh
        have hh' := Finset.mem_Ico.mp hh
        exact Finset.mem_range.mpr (lt_of_lt_of_le hh'.2 (by
          unfold coreGrowingShiftEndpointRightEndpointHarmonicYUpper at hy
          unfold coreGrowingShiftEndpointDoubledFourierModulus
          omega))
      · intro h hhQ hhnot
        by_cases hh : logarithmicShiftThreshold j + 1 ≤ h ∧
            h < y - logarithmicShiftThreshold j - 1
        · exact (hhnot (Finset.mem_Ico.mpr hh)).elim
        · simp [hy, hh]]
    simp [hy]
  · simp [hy]

/-- Exact source identity connecting the parent effective-shift branch with the
literal-right-endpoint fiber model. -/
theorem coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_sheared
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2 j u s =
      coreGrowingShiftEndpointRightEndpointHarmonicShearedDFT2 j u s := by
  rw [coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_pair,
    coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2_eq_sheared]

/-- Exact finite geometric-series identity in the repository's negative
character convention. -/
theorem finite_transverseNatCharacter_Ico_multiplier_identity
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (A B : ℕ)
    (hA : 1 ≤ A)
    (hAB : A ≤ B) :
    coreGrowingShiftEndpointTransverseMultiplier j t *
        (∑ n ∈ Finset.Ico A B,
          coreGrowingShiftEndpointTransverseNatCharacter j t n) =
      coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
        coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1) := by
  induction B, hAB using Nat.le_induction with
  | base => simp
  | succ B hAB ih =>
      rw [Finset.sum_Ico_succ_top hAB, mul_add, ih]
      have hB : 1 ≤ B := le_trans hA hAB
      have hchar :=
        coreGrowingShiftEndpointTransverseNatCharacter_succ_mul
          j t (B - 1)
      have hBm1 : B - 1 + 1 = B := by omega
      rw [hBm1] at hchar
      unfold coreGrowingShiftEndpointTransverseMultiplier
      ring_nf at hchar ⊢
      linear_combination hchar

/-- Off zero frequency, every unweighted interval fiber has the sharp finite
geometric envelope used below. -/
theorem finite_transverseNatCharacter_Ico_norm_le_two_mul_invMultiplier
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (A B : ℕ)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointTransverseNatCharacter j t n‖ ≤
      2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ := by
  by_cases hAB : A ≤ B
  · have hm : coreGrowingShiftEndpointTransverseMultiplier j t ≠ 0 :=
      coreGrowingShiftEndpointTransverseMultiplier_ne_zero ht
    have hid :=
      finite_transverseNatCharacter_Ico_multiplier_identity
        j t A B hA hAB
    have hrewrite :
        (∑ n ∈ Finset.Ico A B,
          coreGrowingShiftEndpointTransverseNatCharacter j t n) =
        (coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
          (coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
            coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)) := by
      calc
        (∑ n ∈ Finset.Ico A B,
          coreGrowingShiftEndpointTransverseNatCharacter j t n) =
            1 * (∑ n ∈ Finset.Ico A B,
              coreGrowingShiftEndpointTransverseNatCharacter j t n) := by ring
        _ = ((coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
              coreGrowingShiftEndpointTransverseMultiplier j t) *
            (∑ n ∈ Finset.Ico A B,
              coreGrowingShiftEndpointTransverseNatCharacter j t n) := by
                rw [inv_mul_cancel₀ hm]
        _ = (coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
            (coreGrowingShiftEndpointTransverseMultiplier j t *
              ∑ n ∈ Finset.Ico A B,
                coreGrowingShiftEndpointTransverseNatCharacter j t n) := by ring
        _ = _ := by rw [hid]
    rw [hrewrite, norm_mul]
    have hcharNorm (n : ℕ) :
        ‖coreGrowingShiftEndpointTransverseNatCharacter j t n‖ = 1 := by
      unfold coreGrowingShiftEndpointTransverseNatCharacter
      rw [ZMod.stdAddChar_apply]
      simp
    calc
      ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ *
          ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
            coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ ≤
        ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ * 2 := by
          gcongr
          calc
            ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
                coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ ≤
              ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1)‖ +
                ‖coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ :=
              norm_sub_le _ _
            _ = 2 := by simp [hcharNorm]
      _ = 2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ := by ring
  · have hempty : Finset.Ico A B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr (by omega)
    rw [hempty]
    simp [norm_nonneg]

/-- Pointwise off-fiber estimate for one endpoint fiber. -/
theorem coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum_norm_le
    {j y : ℕ}
    {t : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (ht : t ≠ 0) :
    ‖coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum j y t‖ ≤
      2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ := by
  unfold coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
    coreGrowingShiftEndpointRightEndpointHarmonicFiberSet
  exact finite_transverseNatCharacter_Ico_norm_le_two_mul_invMultiplier
    j t (logarithmicShiftThreshold j + 1)
      (y - logarithmicShiftThreshold j - 1) (by omega) ht

/-- The literal-right-endpoint harmonic mass is at most one. -/
theorem coreGrowingShiftEndpointRightEndpointHarmonicMass_le_one
    (j : ℕ) :
    coreGrowingShiftEndpointRightEndpointHarmonicMass j ≤ 1 := by
  let X := 2 ^ j
  let L := coreGrowingShiftEndpointRightEndpointHarmonicYLower j
  let U := coreGrowingShiftEndpointRightEndpointHarmonicYUpper j
  have hXnat : 0 < X := by positivity
  have hX : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hXnat
  have hcard : (Finset.Ico L U).card ≤ X := by
    simp [Finset.card_Ico, L, U,
      coreGrowingShiftEndpointRightEndpointHarmonicYLower,
      coreGrowingShiftEndpointRightEndpointHarmonicYUpper,
      coreGrowingShiftEndpointFourierModulus, X, pow_succ]
    omega
  unfold coreGrowingShiftEndpointRightEndpointHarmonicMass
  calc
    (∑ y ∈ Finset.Ico L U, (((y : ℕ) : ℝ))⁻¹) ≤
        ∑ _y ∈ Finset.Ico L U, ((X : ℝ))⁻¹ := by
      apply Finset.sum_le_sum
      intro y hy
      have hyL := (Finset.mem_Ico.mp hy).1
      have hXy : (X : ℝ) ≤ (y : ℝ) := by
        exact_mod_cast (le_trans (by
          unfold L coreGrowingShiftEndpointRightEndpointHarmonicYLower X
          omega) hyL)
      simpa [one_div] using one_div_le_one_div_of_le hX hXy
    _ = ((Finset.Ico L U).card : ℝ) * ((X : ℝ))⁻¹ := by
      simp [nsmul_eq_mul]
    _ ≤ (X : ℝ) * ((X : ℝ))⁻¹ := by
      gcongr
      exact_mod_cast hcard
    _ = 1 := by
      exact mul_inv_cancel₀ (ne_of_gt hX)

/-- Actual analytic progress: away from the longitudinal/transverse diagonal,
the complete genuine right-endpoint harmonic transform is bounded by one
finite-character resolvent. -/
theorem coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_offFiber
    {j : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hus : s - u ≠ 0) :
    ‖coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
        j u s‖ ≤
      2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖ := by
  rw [coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_sheared]
  unfold coreGrowingShiftEndpointRightEndpointHarmonicShearedDFT2
  calc
    ‖∑ y ∈ Finset.Ico
        (coreGrowingShiftEndpointRightEndpointHarmonicYLower j)
        (coreGrowingShiftEndpointRightEndpointHarmonicYUpper j),
      coreGrowingShiftEndpointTransverseNatCharacter j u y *
        (((y : ℕ) : ℂ))⁻¹ *
        coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
          j y (s - u)‖ ≤
      ∑ y ∈ Finset.Ico
        (coreGrowingShiftEndpointRightEndpointHarmonicYLower j)
        (coreGrowingShiftEndpointRightEndpointHarmonicYUpper j),
        ‖coreGrowingShiftEndpointTransverseNatCharacter j u y *
          (((y : ℕ) : ℂ))⁻¹ *
          coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
            j y (s - u)‖ := norm_sum_le _ _
    _ ≤ ∑ y ∈ Finset.Ico
        (coreGrowingShiftEndpointRightEndpointHarmonicYLower j)
        (coreGrowingShiftEndpointRightEndpointHarmonicYUpper j),
        (((y : ℕ) : ℝ))⁻¹ *
          (2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖) := by
      apply Finset.sum_le_sum
      intro y hy
      rw [norm_mul, norm_mul]
      have hchar :
          ‖coreGrowingShiftEndpointTransverseNatCharacter j u y‖ = 1 := by
        unfold coreGrowingShiftEndpointTransverseNatCharacter
        rw [ZMod.stdAddChar_apply]
        simp
      rw [hchar, one_mul, Complex.norm_inv, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        (coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum_norm_le
          hus)
        (by positivity)
    _ = coreGrowingShiftEndpointRightEndpointHarmonicMass j *
        (2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖) := by
      unfold coreGrowingShiftEndpointRightEndpointHarmonicMass
      rw [Finset.sum_mul]
    _ ≤ 1 *
        (2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖) := by
      exact mul_le_mul_of_nonneg_right
        (coreGrowingShiftEndpointRightEndpointHarmonicMass_le_one j)
        (by positivity)
    _ = 2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖ := by
      ring

/-- Circular-distance form of the off-fiber estimate. -/
theorem coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_distance
    {j : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hus : s - u ≠ 0) :
    ‖coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
        j u s‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j (s - u) : ℝ)) := by
  calc
    ‖coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
        j u s‖ ≤
      2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖ :=
        coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_offFiber
          hus
    _ ≤ 2 *
        ((coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
          (4 *
            (coreGrowingShiftEndpointTransverseCircularDistance j (s - u) : ℝ))) := by
      gcongr
      exact
        coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance hus
    _ = (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j (s - u) : ℝ)) := by
      have hd :
          (coreGrowingShiftEndpointTransverseCircularDistance j (s - u) : ℝ) ≠ 0 := by
        exact_mod_cast
          (Nat.ne_of_gt (Nat.pos_of_ne_zero
            ((coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff
              j (s - u)).not.mpr hus)))
      field_simp [hd]
      ring

/-- Uniform specialization when the frequency difference is beyond a circular
cutoff. -/
theorem coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_regularCutoff
    {j L : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hregular :
      s - u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L) :
    ‖coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
        j u s‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 * (((L + 1 : ℕ) : ℝ))) := by
  have hus : s - u ≠ 0 :=
    coreGrowingShiftEndpointTransverseRegularFrequencySet_ne_zero hregular
  have hLd :
      L < coreGrowingShiftEndpointTransverseCircularDistance j (s - u) :=
    mem_coreGrowingShiftEndpointTransverseRegularFrequencySet_iff.mp hregular
  have hdist :
      ((L + 1 : ℕ) : ℝ) ≤
        (coreGrowingShiftEndpointTransverseCircularDistance j (s - u) : ℝ) := by
    exact_mod_cast Nat.succ_le_iff.mpr hLd
  have hQ :
      0 ≤ (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) := by positivity
  calc
    ‖coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
        j u s‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j (s - u) : ℝ)) :=
      coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_distance
        hus
    _ ≤ (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 * (((L + 1 : ℕ) : ℝ))) := by
      apply div_le_div_of_nonneg_left hQ
      · positivity
      · gcongr

/-- On the diagonal `s=u`, the fiber has no geometric cancellation: it is its
ordinary cardinality. -/
theorem coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum_zero
    (j y : ℕ) :
    coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum j y
        (0 : CoreGrowingShiftEndpointDoubledFourierIndex j) =
      (coreGrowingShiftEndpointRightEndpointHarmonicFiberSet j y).card := by
  unfold coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
  simp [coreGrowingShiftEndpointTransverseNatCharacter]

/-- Unit-modulus coefficient bounds alone cannot transfer the unweighted
geometric cancellation.  The opposite character aligns every summand. -/
def coreGrowingShiftEndpointRightEndpointAdversarialFiberWeight
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (h : ℕ) : ℂ :=
  ZMod.stdAddChar
    ((h : CoreGrowingShiftEndpointDoubledFourierIndex j) * t)

theorem coreGrowingShiftEndpointRightEndpointAdversarialFiberWeight_norm
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (h : ℕ) :
    ‖coreGrowingShiftEndpointRightEndpointAdversarialFiberWeight j t h‖ = 1 := by
  unfold coreGrowingShiftEndpointRightEndpointAdversarialFiberWeight
  rw [ZMod.stdAddChar_apply]
  simp

/-- Exact obstruction: after admissible unit-modulus reweighting, the weighted
fiber sum equals the full fiber cardinality even at nonzero frequency. -/
theorem coreGrowingShiftEndpointRightEndpoint_weightedFiber_obstruction
    (j y : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    (∑ h ∈ coreGrowingShiftEndpointRightEndpointHarmonicFiberSet j y,
      coreGrowingShiftEndpointRightEndpointAdversarialFiberWeight j t h *
        coreGrowingShiftEndpointTransverseNatCharacter j t h) =
      (coreGrowingShiftEndpointRightEndpointHarmonicFiberSet j y).card := by
  apply Finset.sum_const_nat
  intro h hh
  unfold coreGrowingShiftEndpointRightEndpointAdversarialFiberWeight
    coreGrowingShiftEndpointTransverseNatCharacter
  rw [← map_add_eq_mul]
  simp

/-- Proof-producing analytic boundary.  The direct zero mode, capped
correction, singular numerator, and genuine right-endpoint term remain
separate obligations in the complete signed packet. -/
structure SignedEndpointRightEndpointHarmonicEstimateSource where
  sourceStatement : Prop
  exactEndpointShear : Prop
  offFiberGeometricEstimate : Prop
  circularDistanceEstimate : Prop
  diagonalFiberPreservation : Prop
  cappedCorrectionPreservation : Prop
  singularNumeratorPreservation : Prop
  directZeroModeJointPreservation : Prop
  centeredFiberExactIdentityOnly : Prop
  squarefreeGcdExactIdentityOnly : Prop
  weightedFiberVariationOrEnergyControl : Prop
  lowModeArithmeticControl : Prop
  regularModeArithmeticControl : Prop
  jointSignedPacketControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Hostile control: a bare coefficientwise norm bound is not a supplier for
fiber cancellation. -/
theorem rightEndpointHarmonic_normOnlySupplier_hostileWitness :
    (∀ z : ZMod 2, ‖ZMod.stdAddChar z‖ = 1) ∧
      (∑ h : ZMod 2,
        ZMod.stdAddChar h * ZMod.stdAddChar (-h)) = 2 := by
  constructor
  · intro z
    rw [ZMod.stdAddChar_apply]
    simp
  · simp [← map_add_eq_mul]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_sheared
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_transverseNatCharacter_Ico_norm_le_two_mul_invMultiplier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_offFiber
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_distance
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointRightEndpoint_weightedFiber_obstruction
