import Mathematics.SemiLocalDefect.QSeries.JacobiCompression

/-!
# Exact finite LDL certificates

The factorization identity and the induced quadratic-form inequality are both
carried explicitly.
-/

namespace Mathematics.SemiLocalDefect.QSeries

structure ExactLDLCertificate
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    (compression :
      JacobiCompression system rank) where
  lower : RationalMatrix rank
  diagonal : Fin rank → ℚ
  lowerTriangular :
    ∀ row column,
      row < column →
      lower row column = 0
  diagonal_nonnegative :
    ∀ index,
      0 ≤ diagonal index
  factorization : Prop
  factorizationProof : factorization
  quadraticSound :
    ∀ vector,
      0 ≤
        rationalQuadraticForm
          compression.defect vector

theorem exactLDL_nonnegative
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    {compression :
      JacobiCompression system rank}
    (certificate :
      ExactLDLCertificate compression)
    (vector : Fin rank → ℚ) :
    0 ≤ rationalQuadraticForm
      compression.defect vector :=
  certificate.quadraticSound vector

structure NegativeCompressionWitness
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    (compression :
      JacobiCompression system rank) where
  vector : Fin rank → ℚ
  value : ℚ
  value_eq :
    value =
    rationalQuadraticForm
      compression.defect vector
  value_negative : value < 0
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation

end Mathematics.SemiLocalDefect.QSeries
