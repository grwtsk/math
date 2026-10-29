import Mathematics.SemiLocalDefect.Sonin.Connector

/-!
# Finite-horizon Sonin images

Every image is formed inside one declared top cut.  No global compatible
metric is assumed.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure FiniteHorizonImage
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family)
    (source horizon : Finset Prime) where
  sourceSubset : source ⊆ horizon
  member : family.Space horizon → Prop
  member_iff :
    ∀ state,
      member state ↔
        ∃ sourceState,
          connectors.connector sourceSubset sourceState =
            state

structure FiniteHorizonFiltration
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family) where
  image :
    ∀ source horizon,
      FiniteHorizonImage
        connectors source horizon
  nested :
    ∀ {source target horizon}
      (_sourceTarget : source ⊆ target)
      (_targetHorizon : target ⊆ horizon)
      (state : family.Space horizon),
      (image source horizon).member state →
        (image target horizon).member state

end Mathematics.SemiLocalDefect.Sonin
