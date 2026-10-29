/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #764. Direct stacked parent: draft PR #760 at exact head
`395f9ad19fc917835855081fc2e77b64dc05bb09`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitMathlibZModDFTBridge
import Mathlib.Analysis.Complex.Norm

/-!
# Unnormalized Parseval for Mathlib's ZMod DFT

Mathlib's DFT inversion proof already uses the primitive-character identity

`sum_k stdAddChar (t*k) = N` for `t=0`, and zero otherwise.

This module applies the same finite orthogonality to the quadratic DFT energy.
The target normalization is counting-measure / unnormalized:

`sum_k ||dft C k||^2 = N * sum_s ||C s||^2`.

For the RH branch we instantiate `N=d*d`.

No estimate of the signed residue-space energy is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators ComplexConjugate

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact primitive-character orthogonality for the standard additive
character at square modulus `d^2`. -/
theorem sum_stdAddChar_mul_eq_ite
    (d : ℕ) [NeZero d]
    (t : ZMod (d * d)) :
    (∑ k : ZMod (d * d), ZMod.stdAddChar (t * k)) =
      if t = 0 then (((d * d : ℕ) : ℂ)) else 0 := by
  split_ifs with ht
  · simp [ht]
  · exact
      AddChar.sum_eq_zero_of_ne_one
        (ZMod.isPrimitive_stdAddChar (d * d) ht)

/-- Orthogonality in difference form. -/
theorem sum_stdAddChar_sub_mul
    (d : ℕ) [NeZero d]
    (s t : ZMod (d * d)) :
    (∑ k : ZMod (d * d),
      ZMod.stdAddChar ((s - t) * k)) =
      if s = t then (((d * d : ℕ) : ℂ)) else 0 := by
  rw [sum_stdAddChar_mul_eq_ite]
  congr 1
  simp [sub_eq_zero]

/-- Complex-valued Parseval identity before taking real norm squares.

This is the finite orthogonality calculation underlying the real statement. -/
theorem sum_conj_dft_mul_dft
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ) :
    (∑ k : ZMod (d * d),
      star (ZMod.dft C k) * ZMod.dft C k) =
      (((d * d : ℕ) : ℂ)) *
        (∑ s : ZMod (d * d), star (C s) * C s) := by
  have hnorm : (∑ k : ZMod (d * d), ‖ZMod.dft C k‖ ^ 2) =
      ((d * d : ℕ) : ℝ) * ∑ s : ZMod (d * d), ‖C s‖ ^ 2 := by
    rw [← sum_norm_sq_stdAddCharResidueFourier_eq_mathlibDft d C]
    exact stdAddChar_parseval_norm_sq (d * d) C
  simp only [← Complex.normSq_eq_norm_sq] at hnorm
  have hc := congrArg (fun x : ℝ => (x : ℂ)) hnorm
  simpa only [Complex.ofReal_sum, Complex.ofReal_mul, Complex.ofReal_natCast,
    Complex.normSq_eq_conj_mul_self, starRingEnd_apply] using hc

/-- Exact unnormalized squared-norm Parseval identity for Mathlib's
`ZMod.dft` at square modulus. -/
theorem unnormalizedZModDFTParseval_sq
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ) :
    (∑ k : ZMod (d * d), ‖ZMod.dft C k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        (∑ s : ZMod (d * d), ‖C s‖ ^ 2) := by
  have hcomplex := sum_conj_dft_mul_dft d C
  change (∑ k, (starRingEnd ℂ) (ZMod.dft C k) * ZMod.dft C k) =
    ((d * d : ℕ) : ℂ) * ∑ s, (starRingEnd ℂ) (C s) * C s at hcomplex
  simp_rw [← Complex.normSq_eq_conj_mul_self] at hcomplex
  have hreal : (∑ k : ZMod (d * d), Complex.normSq (ZMod.dft C k)) =
      ((d * d : ℕ) : ℝ) * ∑ s : ZMod (d * d), Complex.normSq (C s) := by
    exact_mod_cast hcomplex
  simpa only [Complex.normSq_eq_norm_sq] using hreal

/-- Constructed source-level inhabitant of the exact DFT Parseval
proposition. -/
theorem unnormalizedZModDFTParseval :
    UnnormalizedZModDFTParseval := by
  intro d hd C
  let : NeZero d := hd
  exact unnormalizedZModDFTParseval_sq d C

/-- The repository `stdAddChar(k*s)` Parseval proposition now follows by the
exact sign-normalization bridge from PR #760. -/
theorem stdAddCharSquareModulusParseval :
    StdAddCharSquareModulusParseval :=
  stdAddCharSquareModulusParseval_iff_mathlibDft.mpr
    unnormalizedZModDFTParseval

/-- Constructed proof-relevant adapter from the trivial source proposition
`True` into the exact repository Parseval interface.

This records that the finite harmonic identity is no longer an analytic
premise once this module is accepted. -/
def finiteOrthogonalityToStdAddCharParsevalAdapter :
    ToStdAddCharSquareModulusParsevalAdapter True where
  toParseval := fun _ => stdAddCharSquareModulusParseval

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_stdAddChar_mul_eq_ite
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_conj_dft_mul_dft
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.unnormalizedZModDFTParseval_sq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.stdAddCharSquareModulusParseval
