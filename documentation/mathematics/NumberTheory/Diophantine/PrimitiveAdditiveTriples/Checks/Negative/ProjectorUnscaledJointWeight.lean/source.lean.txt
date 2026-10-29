/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- Leaving the third coordinate unscaled gives eight instead of sixteen.
example : projectedJointMoment 2 2 5
    (fun a b c => (a : ℂ) * (b : ℂ) * (c : ℂ)) =
    projectedJointMoment 2 1 5
      (fun a b c => ((2 * a : ℕ) : ℂ) * ((2 * b : ℕ) : ℂ) * (c : ℂ)) := by
  have h : projectedJointMoment 2 2 5
      (fun a b c => (a : ℂ) * (b : ℂ) * (c : ℂ)) = 16 := by
    rw [← scaled_additive_sum_eq_character_cube 2 2 5 _ (by decide)]
    rw [show additivePairs 2 = {(1, 1)} by decide]
    norm_num
  exact h
