import Mathematics.SemiLocalDefect.QSeries.ExactLDL

/-!
# Uniform interval tail certificates

Coefficientwise positivity is not used as a proxy for evaluated matrix
positivity.
-/

namespace Mathematics.SemiLocalDefect.QSeries

structure IntervalLDLCertificate
    (rank : Nat)
    (interval : QInterval) where
  evaluatedDefect : ℚ → RationalMatrix rank
  truncationOrder : Nat
  lower : ℚ → RationalMatrix rank
  diagonal : ℚ → Fin rank → ℚ
  pivots_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ index,
        0 ≤ diagonal q index
  tailQuadratic :
    ℚ → (Fin rank → ℚ) → ℚ
  tail_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ vector,
        0 ≤ tailQuadratic q vector
  exactDecomposition : Prop
  exactDecompositionProof :
    exactDecomposition
  evaluated_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ vector,
        0 ≤ rationalQuadraticForm
          (evaluatedDefect q) vector

end Mathematics.SemiLocalDefect.QSeries
