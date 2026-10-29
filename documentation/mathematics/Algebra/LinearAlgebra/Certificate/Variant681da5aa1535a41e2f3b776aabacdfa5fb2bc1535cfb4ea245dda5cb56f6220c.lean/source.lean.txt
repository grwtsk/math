import Mathematics.SemiLocalDefect.WP2.Increment.Definition

/-!
# Projection-increment certificate primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure SoninCapacityCertificate
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H) where
  differenceLayer :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      Submodule ℂ H.Ambient
  difference_range :
    ∀ {S T : PrimeCut U}
      (hST : S ⊆ T),
      LinearMap.range
        (projectionDifference
          P S T).toLinearMap
      =
      differenceLayer hST
  difference_isProjection :
    ∀ {S T : PrimeCut U}
      (_hST : S ⊆ T),
      OrthogonalProjectionCertificate
        (projectionDifference P S T)
  square_closed :
    ∀ (S : PrimeCut U)
      (p q : U.Prime),
      p ∉ S →
      q ∉ S →
      p ≠ q →
      soninIncrement P S p
      +
      soninIncrement
        P
        (insert p S)
        q
      =
      soninIncrement P S q
      +
      soninIncrement
        P
        (insert q S)
        p

end Mathematics.SemiLocalDefect.SoninCore
