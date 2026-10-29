/-
  Spectral/Spectral.lean  (umbrella module)
  -----------------------------------------
  Import this single file to bring every public definition of the
  *Spectral-RH* library into scope.

  Components:

  * `Spectral.Analysis.SmoothCompactSupport.HalfLine`
  * `Spectral.Schrodinger.Operator`
  * `Spectral.Schrodinger.Spectrum`
  * `Spectral.Zeta.Regularization`
  * `Spectral.Zeta.Determinant`
-/

-- analytic background: smooth bump functions on the half-line
import Spectral.Analysis.SmoothCompactSupport.HalfLine

-- Schrödinger operator and qualitative spectrum
import Spectral.Schrodinger.Operator
import Spectral.Schrodinger.Spectrum

-- ζ-function machinery and Fredholm determinant
import Spectral.Zeta.Regularization
import Spectral.Zeta.Determinant

namespace Spectral
/-!
This namespace is intentionally empty; all useful declarations live in
the imported sub-modules.  The file merely serves as a **single
entry-point**, so downstream projects can import `Spectral` and have the
full library available.
-/
end Spectral
