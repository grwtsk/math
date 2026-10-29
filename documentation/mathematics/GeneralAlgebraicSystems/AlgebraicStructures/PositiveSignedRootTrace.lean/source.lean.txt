/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.Algebra.Polynomial.SignedRootTrace
import Mathlib.Tactic.NormNum

open Polynomial Complex ComplexConjugate
open GRWTSK.Polynomial.SignedRootTrace

set_option autoImplicit false

-- Consumer contract: the exact bounded-degree criterion, with both hypotheses.
example (nodes : Finset ℂ) (weight : ℂ → ℝ)
    (hc : ∀ z ∈ nodes, conj z ∈ nodes) (hw : ∀ z ∈ nodes, 0 < weight z) :
    (∀ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) →
      0 ≤ (squareTrace nodes weight p).re) ↔ ∀ z ∈ nodes, z.im = 0 :=
  squareTrace_nonneg_iff_real hc hw

-- Unequal positive weights are allowed: the real-part criterion needs no
-- equality of conjugate weights. Here the trace is exactly -5.
example : squareTrace {I, -I} (fun z => if z = I then 3 else 2) X = -5 := by
  have hne : (I : ℂ) ≠ -I := by intro h; have := congrArg Complex.im h; norm_num at this
  simp [squareTrace, hne, hne.symm]
  norm_num

example : squareTrace {I, -I} (fun z => if z = I then 3 else 2)
    (1 + X : Polynomial ℝ) = 2 * I := by
  have hne : (I : ℂ) ≠ -I := by
    intro h
    have := congrArg Complex.im h
    norm_num at this
  simp [squareTrace, hne, hne.symm]
  ring_nf
  norm_num

example (nodes : Finset ℂ) (weight : ℂ → ℝ) (p : Polynomial ℝ)
    (hc : ∀ z ∈ nodes, conj z ∈ nodes)
    (hw : ∀ z ∈ nodes, weight (conj z) = weight z) :
    (squareTrace nodes weight p).im = 0 :=
  squareTrace_im_eq_zero nodes hc weight hw p

-- Empty interpolation retains the correct bottom degree bound.
example : ∃ p : Polynomial ℝ, p.degree < (0 : WithBot ℕ) := by
  obtain ⟨p, hd, _⟩ := GRWTSK.Polynomial.ConjugateInterpolation.exists_real_interpolate
    ∅ (by simp) (fun _ => 0) (by simp)
  exact ⟨p, by simpa using hd⟩

-- Zero weights erase off-real nodes: strict positivity cannot be dropped.
example (p : Polynomial ℝ) : squareTrace {I, -I} (fun _ => 0) p = 0 := by
  simp [squareTrace]

-- Negative weights defeat positivity even at a real node.
example : squareTrace {0} (fun _ => -1) (1 : Polynomial ℝ) = -1 := by
  simp [squareTrace]

-- Signed squares and squared moduli have opposite signs at this pair.
example : squareTrace {I, -I} (fun _ => 1) X = -2 := by
  have hne : (I : ℂ) ≠ -I := by intro h; have := congrArg Complex.im h; norm_num at this
  simp [squareTrace, hne]
  norm_num

example : Complex.normSq I + Complex.normSq (-I) = 2 := by norm_num
