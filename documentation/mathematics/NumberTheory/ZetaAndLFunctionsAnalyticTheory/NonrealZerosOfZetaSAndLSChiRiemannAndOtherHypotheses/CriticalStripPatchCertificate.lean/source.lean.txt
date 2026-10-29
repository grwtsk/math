/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorDescent

set_option autoImplicit false

/-!
# Source-exact sample/variation certificates for mirror-reduced shells

The certificate is a mathematical proof object for one exact complex function and
one exact region. A sample lower bound plus a strictly smaller uniform variation
bound proves zero exclusion. Point samples, non-strict margins, geometry alone,
or an unproved derivative/remainder label cannot construct this record.

Finite covers compose these local results into the actual mirror-reduced zeta shell
obligation. The RH endpoint still consumes a real-axis base and covers for every
height and every reciprocal distance. No such zeta-cover family is constructed.
This is not an executable checker, numerical observation, multiplicity certificate,
replay receipt, or a claim that a finite computation verifies RH.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

noncomputable section

/-- The same exact F occurs in the sample and the entire-region variation theorem.
There is no coercion from numerical samples or an unrelated polynomial source. -/
structure SampleVariationPatch (F : ℂ → ℂ) (U : Set ℂ) where
  center : ℂ
  lower : ℝ
  error : ℝ
  error_nonneg : 0 ≤ error
  sample_lower : lower ≤ ‖F center‖
  variation : ∀ z ∈ U, ‖F z - F center‖ ≤ error
  strict_margin : error < lower

namespace SampleVariationPatch

/-- The rigorous sample and variation bounds give a quantitative bound everywhere
on the patch, not just at its center. -/
theorem value_norm_lower {F : ℂ → ℂ} {U : Set ℂ}
    (patch : SampleVariationPatch F U) {z : ℂ} (hz : z ∈ U) :
    patch.lower - patch.error ≤ ‖F z‖ := by
  have hvariation := patch.variation z hz
  have htriangle : ‖F patch.center‖ ≤ ‖F z‖ + ‖F z - F patch.center‖ := by
    calc
      ‖F patch.center‖ = ‖F z - (F z - F patch.center)‖ := by
        congr 1
        abel
      _ ≤ ‖F z‖ + ‖F z - F patch.center‖ := norm_sub_le _ _
  linarith [patch.sample_lower]

/-- Strict separation is essential. The center value alone does not exclude zeros. -/
theorem nonzero {F : ℂ → ℂ} {U : Set ℂ}
    (patch : SampleVariationPatch F U) {z : ℂ} (hz : z ∈ U) : F z ≠ 0 := by
  intro hzero
  have hbound := patch.value_norm_lower hz
  rw [hzero, norm_zero] at hbound
  linarith [patch.strict_margin]

/-- Patch soundness transports only along an exact pointwise source equality at all
consumed points, including the center. -/
def congr {F G : ℂ → ℂ} {U : Set ℂ}
    (patch : SampleVariationPatch F U)
    (hcenter : G patch.center = F patch.center)
    (hregion : ∀ z ∈ U, G z = F z) : SampleVariationPatch G U where
  center := patch.center
  lower := patch.lower
  error := patch.error
  error_nonneg := patch.error_nonneg
  sample_lower := by simpa only [hcenter] using patch.sample_lower
  variation := by
    intro z hz
    simpa only [hregion z hz, hcenter] using patch.variation z hz
  strict_margin := patch.strict_margin

end SampleVariationPatch

/-- A genuine analytic seed for the actual zeta function. Continuity at zero and
zeta(0)=-1/2 produce some radius with variation at most 1/4. The radius is existential,
not a numerical enclosure, and this does not prove the entire height-zero window. -/
theorem exists_zeta_patch_at_zero :
    ∃ r : ℝ, 0 < r ∧
      Nonempty (SampleVariationPatch riemannZeta (Metric.ball (0 : ℂ) r)) := by
  have hcont : ContinuousAt riemannZeta (0 : ℂ) :=
    (differentiableAt_riemannZeta (by norm_num : (0 : ℂ) ≠ 1)).continuousAt
  obtain ⟨r, hr, hvariation⟩ :=
    Metric.continuousAt_iff.mp hcont (1 / 4 : ℝ) (by norm_num)
  refine ⟨r, hr, ⟨?_⟩⟩
  refine { center := 0
           lower := 1 / 2
           error := 1 / 4
           error_nonneg := by norm_num
           sample_lower := ?_
           variation := ?_
           strict_margin := by norm_num }
  · rw [riemannZeta_zero]
    norm_num
  · intro z hz
    have hzdist : dist z (0 : ℂ) < r := hz
    have hv := hvariation hzdist
    simpa only [dist_eq_norm] using hv.le

/-- Local zero exclusion constructed from the analytic seed, not supplied as an
unproved shell premise. Its radius is not claimed effective. -/
theorem exists_zeroFree_neighborhood_of_zero :
    ∃ r : ℝ, 0 < r ∧ ∀ z ∈ Metric.ball (0 : ℂ) r, riemannZeta z ≠ 0 := by
  obtain ⟨r, hr, ⟨patch⟩⟩ := exists_zeta_patch_at_zero
  exact ⟨r, hr, fun _ hz => patch.nonzero hz⟩

/-- A finite cover with actual uniform variation theorems, all for the same function.
Regions may extend beyond U; coverage of U itself may not be omitted. -/
structure FiniteVariationCover (F : ℂ → ℂ) (U : Set ℂ) where
  count : ℕ
  region : Fin count → Set ℂ
  patch : ∀ i, SampleVariationPatch F (region i)
  covers : ∀ z ∈ U, ∃ i, z ∈ region i

namespace FiniteVariationCover

/-- Finite patch certificates plus genuine coverage prove nonvanishing on the target. -/
theorem nonzero {F : ℂ → ℂ} {U : Set ℂ}
    (cover : FiniteVariationCover F U) {z : ℂ} (hz : z ∈ U) : F z ≠ 0 := by
  obtain ⟨i, hi⟩ := cover.covers z hz
  exact (cover.patch i).nonzero hi

/-- An empty index set cannot cover a nonempty target. -/
theorem count_pos_of_nonempty {F : ℂ → ℂ} {U : Set ℂ}
    (cover : FiniteVariationCover F U) (hne : U.Nonempty) : 0 < cover.count := by
  obtain ⟨z, hz⟩ := hne
  obtain ⟨i, _hi⟩ := cover.covers z hz
  exact lt_of_le_of_lt (Nat.zero_le i.val) i.isLt

/-- This specialization binds the certificate to the actual riemannZeta function.
It excludes locations; it is not an analytic multiplicity or counting theorem. -/
theorem noTargetZero {U : Set ℂ} (cover : FiniteVariationCover riemannZeta U) :
    NoTargetZero U := by
  intro z hz hzero
  exact cover.nonzero hz hzero.1

end FiniteVariationCover

/-- Patch soundness yields a whole signed shell only after all reciprocal-distance
regions are covered. No near-line limit or omitted margin is silently discarded. -/
theorem shellRH_of_patch_covers (N : ℕ)
    (covers : ∀ m : ℕ, FiniteVariationCover riemannZeta (rightAwayShell N m)) :
    ShellRH N := by
  apply (shellRH_iff_upperRight_exclusion N).mpr
  apply (right_exclusion_iff_all_away N).mpr
  intro m
  exact (covers m).noTargetZero

/-- A finite advance combines an old window proof with new, genuinely zero-free patches. -/
theorem window_succ_of_patch_covers {N : ℕ} (hN : WindowRH N)
    (covers : ∀ m : ℕ, FiniteVariationCover riemannZeta (rightAwayShell N m)) :
    WindowRH (N + 1) :=
  (window_succ_iff N).mpr ⟨hN, shellRH_of_patch_covers N covers⟩

/-- Conditional endpoint. The base and source-bound patch construction at every N,m
are real mathematical suppliers, not consequences of the certificate type. -/
theorem rh_of_base_and_patch_covers (hbase : WindowRH 0)
    (covers : ∀ N m : ℕ, FiniteVariationCover riemannZeta (rightAwayShell N m)) :
    _root_.RiemannHypothesis := by
  apply rh_of_base_and_shell_extension hbase
  intro N _
  exact shellRH_of_patch_covers N (covers N)

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
