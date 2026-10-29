-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClosedStripInnerSupportClip.Variant4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ClosedStripInnerSupportClip.Variant4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle29/mutation-issue-regent-v1/source-specific-signed-column-strip-refinement-v1/SourcePhysicalSignedBoundaryRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePhysicalQuotientStrip

/-!
# Signed physical boundary refinement at fixed source scale

UNCOMPILED preparation. The two existing boundaries are combined before any
estimate. Their signed short Möbius convolution retains the literal unit column,
and hence the original long Mangoldt row. The scale A and source upper endpoint
remain fixed while the auxiliary natural cutoff U varies. No physical-scale
monotonicity, uniform upper bound, independent-main replacement or RH witness
is supplied. The separate Type-II diagonal and centered compensation are not
discarded by these row identities.

AI attribution: developed with OpenAI Codex. Complete proof bodies below have
not been elaborated; kernel checking, exact type/axiom inspection, independent
review and full verification remain separate gates.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClosedStripInnerSupportClip.Variant4188ee9ff4c9a8a8fbb45e785c5e260dab5ce0beb3abd5c1d36e339efb1ac8bc

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePhysicalSignedBoundaryRefinement

open ArithmeticFunction SourcePhysicalQuotientStrip SourceScaledWholePlainConvolution
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateMertensAbel
open EstimatePlainKernel EstimateVaughanSource EstimateSourceMobiusKernel

noncomputable section

private theorem closed_strip_inner_support_clip (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U m : ℕ) (hm : 1 ≤ m) :
    (∑ k ∈ Finset.Ioc (U / d) U,
      sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) =
    ∑ k ∈ Finset.Ioc (U / d) (min U (sourceKernelCutoff A / d)),
      sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
  classical
  symm
  apply Finset.sum_subset
    (by
      intro k hk
      exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hk).1,
        (le_min_iff.mp (Finset.mem_Ioc.mp hk).2).1⟩)
  intro k hk hnot
  have hquot : sourceKernelCutoff A / d < k := by
    by_contra h
    apply hnot
    exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hk).1,
      le_min (Finset.mem_Ioc.mp hk).2 (by omega)⟩
  have hdk : sourceKernelCutoff A < d * k := by
    apply lt_of_not_ge
    intro h
    have hle : k ≤ sourceKernelCutoff A / d :=
      (Nat.le_div_iff_mul_le hd).2 (by simpa only [Nat.mul_comm] using h)
    omega
  have hp : sourceKernelCutoff A < d * m * k :=
    hdk.trans_le (by
      simpa only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] using
        (Nat.le_mul_of_pos_right (d * k) hm))
  exact sourcePlainWeight_zero_of_cutoff_lt A hA (d * m * k) hp

/-- Combining the two literal boundaries leaves precisely the closed quotient column. -/
theorem column_sub_strip_eq_closed_quotient_rows (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) :
    shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U =
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
        ∑ k ∈ Finset.Icc 1 (U / d),
          sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
  classical
  have hs : Finset.Icc 1 U = Finset.Icc 1 (U / d) ∪ Finset.Ioc (U / d) U := by
    ext k
    have hq : U / d ≤ U := Nat.div_le_self U d
    simp only [Finset.mem_Icc, Finset.mem_Ioc, Finset.mem_union]
    omega
  have hj : Disjoint (Finset.Icc 1 (U / d)) (Finset.Ioc (U / d) U) := by
    apply Finset.disjoint_left.mpr
    intro k hk hk'
    have hl := (Finset.mem_Icc.mp hk).2
    have hu := (Finset.mem_Ioc.mp hk').1
    omega
  unfold shortColumnPlainRowsAt quotientStripRowsAt
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [hs, Finset.sum_union hj,
    closed_strip_inner_support_clip A hA d hd U m
      (by have := (Finset.mem_Ioc.mp hm).1; omega)]
  ring

private theorem short_moebius_quotient_triangle (U : ℕ) (hU : 1 ≤ U)
    (f : ℕ → ℝ) :
    (∑ d ∈ Finset.Icc 1 U, realMoebius d *
      ∑ k ∈ Finset.Icc 1 (U / d), f (d * k)) = f 1 := by
  classical
  let w : ℕ → ℝ := fun n => if n ≤ U then f n else 0
  have hw (n : ℕ) (hn : U < n) : w n = 0 := by
    simp [w, Nat.not_le.mpr hn]
  have hv := finite_convolution_sum U (moebius : ArithmeticFunction ℝ)
    (zeta : ArithmeticFunction ℝ) w hw
  rw [coe_moebius_mul_coe_zeta] at hv
  have hl : (∑ n ∈ Finset.Icc 1 U, (1 : ArithmeticFunction ℝ) n * w n) = f 1 := by
    simp [ArithmeticFunction.one_apply, w, hU]
  have hi (d : ℕ) (hd : 1 ≤ d) :
      (∑ k ∈ Finset.Icc 1 U, (zeta : ArithmeticFunction ℝ) k * w (d * k)) =
        ∑ k ∈ Finset.Icc 1 (U / d), f (d * k) := by
    have hz :
        (∑ k ∈ Finset.Icc 1 U, (zeta : ArithmeticFunction ℝ) k * w (d * k)) =
          ∑ k ∈ Finset.Icc 1 U, if d * k ≤ U then f (d * k) else 0 := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hk).1; omega),
        Nat.cast_one, one_mul]
      rfl
    rw [hz]
    symm
    calc
      _ = ∑ k ∈ Finset.Icc 1 (U / d),
          if d * k ≤ U then f (d * k) else 0 := by
        apply Finset.sum_congr rfl
        intro k hk
        rw [if_pos (by
          have h := (Nat.le_div_iff_mul_le hd).1 (Finset.mem_Icc.mp hk).2
          simpa only [Nat.mul_comm] using h)]
      _ = _ := by
        apply Finset.sum_subset
          (by
            intro k hk
            exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hk).1,
              (Finset.mem_Icc.mp hk).2.trans (Nat.div_le_self U d)⟩)
        intro k hk hnot
        rw [if_neg (by
          intro h
          apply hnot
          exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hk).1,
            (Nat.le_div_iff_mul_le hd).2 (by simpa only [Nat.mul_comm] using h)⟩)]
  have hr :
      (∑ d ∈ Finset.Icc 1 U, ∑ k ∈ Finset.Icc 1 U,
        (moebius : ArithmeticFunction ℝ) d * (zeta : ArithmeticFunction ℝ) k *
          w (d * k)) =
        ∑ d ∈ Finset.Icc 1 U, realMoebius d *
          ∑ k ∈ Finset.Icc 1 (U / d), f (d * k) := by
    apply Finset.sum_congr rfl
    intro d hd
    simp_rw [mul_assoc]
    rw [← Finset.mul_sum, hi d (Finset.mem_Icc.mp hd).1]
    simp only [intCoe_apply, realMoebius]
  calc
    _ = _ := hr.symm
    _ = _ := hv.symm
    _ = f 1 := hl

/-- The complete signed physical boundary is the original long Mangoldt unit column. -/
theorem signed_column_sub_strip_eq_long_mangoldt_row (A : ℝ) (hA : 1 ≤ A)
    (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, realMoebius d *
      (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) =
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
        vonMangoldt m * sourcePlainWeight A (m : ℝ) := by
  classical
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, realMoebius d *
        ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 (U / d),
            sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [column_sub_strip_eq_closed_quotient_rows A hA d (Finset.mem_Icc.mp hd).1 U]
    _ = ∑ d ∈ Finset.Icc 1 U, ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
        realMoebius d * (vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 (U / d),
            sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) := by
      simp only [Finset.mul_sum]
    _ = ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), ∑ d ∈ Finset.Icc 1 U,
        realMoebius d * (vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 (U / d),
            sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) := Finset.sum_comm
    _ = ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
        (∑ d ∈ Finset.Icc 1 U, realMoebius d *
          ∑ k ∈ Finset.Icc 1 (U / d),
            sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro m _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      ring
    _ = _ := by
      apply Finset.sum_congr rfl
      intro m _
      congr 1
      calc
        _ = ∑ d ∈ Finset.Icc 1 U, realMoebius d *
            ∑ k ∈ Finset.Icc 1 (U / d),
              sourcePlainWeight A ((m * (d * k) : ℕ) : ℝ) := by
          apply Finset.sum_congr rfl
          intro d _
          congr 1
          apply Finset.sum_congr rfl
          intro k _
          rw [show d * m * k = m * (d * k) by ac_rfl]
        _ = sourcePlainWeight A (m : ℝ) := by
          simpa only [Nat.mul_one] using
            short_moebius_quotient_triangle U hU
              (fun n => sourcePlainWeight A ((m * n : ℕ) : ℝ))

private theorem supported_long_tail_difference (U V N : ℕ) (hUV : U ≤ V)
    (f : ℕ → ℝ) (hf : ∀ n, N < n → f n = 0) :
    (∑ n ∈ Finset.Ioc U N, f n) - (∑ n ∈ Finset.Ioc V N, f n) =
      ∑ n ∈ Finset.Ioc U V, f n := by
  classical
  let M := max N V
  have extend (L : ℕ) :
      (∑ n ∈ Finset.Ioc L M, f n) = ∑ n ∈ Finset.Ioc L N, f n := by
    symm
    apply Finset.sum_subset
      (by
        intro n hn
        exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hn).1,
          (Finset.mem_Ioc.mp hn).2.trans (le_max_left N V)⟩)
    intro n hn hnot
    exact hf n (by
      have hl := (Finset.mem_Ioc.mp hn).1
      by_contra h
      apply hnot
      exact Finset.mem_Ioc.mpr ⟨hl, by omega⟩)
  have hs : Finset.Ioc U M = Finset.Ioc U V ∪ Finset.Ioc V M := by
    ext n
    have hVM : V ≤ M := le_max_right N V
    simp only [Finset.mem_Ioc, Finset.mem_union]
    omega
  have hj : Disjoint (Finset.Ioc U V) (Finset.Ioc V M) := by
    apply Finset.disjoint_left.mpr
    intro n hn hn'
    have hl := (Finset.mem_Ioc.mp hn).2
    have hu := (Finset.mem_Ioc.mp hn').1
    omega
  calc
    _ = (∑ n ∈ Finset.Ioc U M, f n) - (∑ n ∈ Finset.Ioc V M, f n) := by
      rw [extend U, extend V]
    _ = _ := by
      rw [hs, Finset.sum_union hj]
      ring

/-- Fixed-source refinement is a signed finite Mangoldt payment, including cutoffs beyond N. -/
theorem signed_column_strip_cutoff_compensation (A : ℝ) (hA : 1 ≤ A)
    (U V : ℕ) (hU : 1 ≤ U) (hUV : U ≤ V) :
    (∑ d ∈ Finset.Icc 1 U, realMoebius d *
      (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) -
      (∑ d ∈ Finset.Icc 1 V, realMoebius d *
        (shortColumnPlainRowsAt A d V - quotientStripRowsAt A d V)) =
        ∑ m ∈ Finset.Ioc U V, vonMangoldt m * sourcePlainWeight A (m : ℝ) := by
  rw [signed_column_sub_strip_eq_long_mangoldt_row A hA U hU,
    signed_column_sub_strip_eq_long_mangoldt_row A hA V (hU.trans hUV)]
  apply supported_long_tail_difference U V (sourceKernelCutoff A) hUV
  intro m hm
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA m hm, mul_zero]

/-- Generic U=0 omits the triangular unit column; this is not an actual RH counterexample. -/
theorem generic_zero_cutoff_triangular_unit_fails :
    (∑ d ∈ (Finset.Icc 1 0 : Finset ℕ), realMoebius d *
      ∑ k ∈ Finset.Icc 1 (0 / d), if d * k = 1 then (1 : ℝ) else 0) ≠ 1 := by
  norm_num

end
end FormalResearch.RiemannHypothesis.SourcePhysicalSignedBoundaryRefinement
