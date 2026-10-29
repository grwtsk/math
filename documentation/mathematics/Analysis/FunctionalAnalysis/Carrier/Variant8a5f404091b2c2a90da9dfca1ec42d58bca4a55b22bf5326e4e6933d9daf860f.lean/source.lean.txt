import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathematics.SemiLocalDefect.WP0.All

/-!
# Sonin-carrier and connector primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

universe uSonin

structure FiniteSoninHorizon
    (U : FinitePrimeHorizon) where
  Sonin :
    PrimeCut U → Type uSonin
  [soninNormed :
    ∀ S,
      NormedAddCommGroup (Sonin S)]
  [soninInner :
    ∀ S,
      InnerProductSpace ℂ (Sonin S)]
  [soninComplete :
    ∀ S,
      CompleteSpace (Sonin S)]
  connector :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      Sonin S →L[ℂ] Sonin T
  connector_id :
    ∀ S,
      connector
        (show S ⊆ S from
          fun _ h => h)
      =
      ContinuousLinearMap.id
        ℂ
        (Sonin S)
  connector_comp :
    ∀ {S T R : PrimeCut U}
      (hST : S ⊆ T)
      (hTR : T ⊆ R),
      (connector hTR).comp
        (connector hST)
      =
      connector
        (fun _ hp =>
          hTR (hST hp))
  connector_injective :
    ∀ {S T : PrimeCut U}
      (hST : S ⊆ T),
      Function.Injective
        (connector hST)

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    NormedAddCommGroup (H.Sonin S) :=
  H.soninNormed S

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    InnerProductSpace ℂ (H.Sonin S) :=
  H.soninInner S

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    CompleteSpace (H.Sonin S) :=
  H.soninComplete S

end Mathematics.SemiLocalDefect.SoninCore
