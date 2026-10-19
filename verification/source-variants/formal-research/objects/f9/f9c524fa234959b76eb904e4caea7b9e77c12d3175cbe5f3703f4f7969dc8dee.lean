import Mathematics.SemiLocalDefect.WP1.SoninHorizon

/-!
# Transported-range primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def FiniteSoninHorizon.transportedRange
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    Submodule ℂ H.Ambient :=
  LinearMap.range
    (H.toTop S).toLinearMap

end Mathematics.SemiLocalDefect.SoninCore
