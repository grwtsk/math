import Mathematics.SemiLocalDefect.ResidueDeflection.AmplitudeTransport

/-!
# Phase transport and defect holonomy
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure PhaseTransport
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph) where
  phase : Arc graph → Phase3
  reverse :
    ∀ arc,
      phase arc.reverse =
        phase arc
  defectHolonomy :
    ∀ bypass,
      (cut.defectLoop bypass).phaseProduct
          phase =
        .reflect
  Face : Type
  faceBoundary :
    Face →
      Σ node,
        DeflectionPath graph node node
  ordinaryFlatness :
    ∀ face,
      let boundary := faceBoundary face
      boundary.2.phaseProduct phase =
        .identity

def DeflectionPath.transportResidue
    {graph : GraphCut}
    (phase : Arc graph → Phase3)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (residue : Residue3) :
    Residue3 :=
  (path.phaseProduct phase).act residue

theorem DeflectionPath.transportResidue_safe
    {graph : GraphCut}
    (phase : Arc graph → Phase3)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    {residue : Residue3}
    (safe : residue.Safe) :
    (path.transportResidue phase residue).Safe :=
  phase3_action_preserves_safe
    (path.phaseProduct phase) safe

theorem PhaseTransport.defectLoop_reflects
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    (transport : PhaseTransport cut)
    (bypass : cut.Bypass)
    (residue : Residue3) :
    (cut.defectLoop bypass).transportResidue
        transport.phase residue =
      residue.reflect := by
  unfold DeflectionPath.transportResidue
  rw [transport.defectHolonomy bypass]
  rfl

end Mathematics.SemiLocalDefect.ResidueDeflection
