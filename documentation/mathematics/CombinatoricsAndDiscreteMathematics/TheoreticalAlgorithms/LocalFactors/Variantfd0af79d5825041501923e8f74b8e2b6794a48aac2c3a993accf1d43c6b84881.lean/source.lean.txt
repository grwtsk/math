import Surface.Arithmetic.EllipticCurve.BSD.Statement

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

/-!
# BSD LocalFactors

What is formalized:
Local Euler-factor obligations for BSD are currently supplied by `Surface.Arithmetic.EllipticCurve.LFunction` and consumed by theorem-input assembly.

What is certificate-gated:
The actual analytic theorem inputs remain explicit certificates in the imported
component layers.

What is not claimed:
This file does not prove analytic continuation, a functional equation, Euler
product convergence, or BSD.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

/-- Review-facing declaration list for the BSD `LocalFactors` component. -/
def localFactorsComponentDeclarations : List String := []

end BSD
end EllipticCurve
end Surface.Arithmetic
