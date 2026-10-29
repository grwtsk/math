import Mathematics.Homology.AffineTorusBundle
import Mathematics.Homology.FiberMetric
import Mathematics.Homology.PrincipalFiniteCover

/-!
# Finite phase control of cohomological gluing

Torsion may control one declared finite gluing or holonomy sector only through
an explicit characteristic map.  It does not construct the entire cover and
does not determine the fiber metric.
-/

namespace Mathematics.Homology

universe u v

/-- Explicit map from a finite phase sector to one declared gluing sector. -/
structure FiniteGluingControl
    (Torsion : Type u) (GluingClass : Type v)
    [AddCommGroup Torsion] [Finite Torsion] where
  characteristic : Torsion → GluingClass
  finiteSectorPredicate : GluingClass → Prop
  image_is_declared_sector :
    ∀ torsion, finiteSectorPredicate (characteristic torsion)
  exhaustive_on_declared_sector :
    ∀ gluing,
      finiteSectorPredicate gluing →
        ∃ torsion, characteristic torsion = gluing
  characteristicDigest : Digest
  controlCertificate : ObjectAddress

/-- Topological channel for a cover with one fixed local system. -/
structure CoverTopologyChannel
    {Loop : Type u} [Group Loop]
    {rank : Nat}
    (localSystem : IntegralLocalSystem Loop rank)
    (Torsion GluingClass : Type v)
    [AddCommGroup Torsion] [Finite Torsion] where
  finitePhase : Torsion
  gluingClass : GluingClass
  finiteControl : FiniteGluingControl Torsion GluingClass
  phase_controls_gluing :
    finiteControl.characteristic finitePhase = gluingClass
  localSystemDigest : Digest
  localSystem_bound :
    localSystemDigest = localSystem.monodromyDigest
  coverRealization : ObjectAddress
  topologyCertificate : ObjectAddress

/-- Coupled topology and metric channels without identifying either one. -/
structure TorsionRoundedCover
    (LiftedBase : Type u)
    (Loop : Type*) [Group Loop] [MulAction Loop LiftedBase]
    (rank : Nat)
    (localSystem : IntegralLocalSystem Loop rank)
    (Torsion GluingClass : Type v)
    [AddCommGroup Torsion] [Finite Torsion] where
  topology :
    CoverTopologyChannel localSystem Torsion GluingClass
  metric :
    FiberGramField LiftedBase Loop rank localSystem

namespace TorsionRoundedCover

variable
    {LiftedBase : Type u}
    {Loop : Type*} [Group Loop] [MulAction Loop LiftedBase]
    {rank : Nat}
    {localSystem : IntegralLocalSystem Loop rank}
    {Torsion GluingClass : Type v}
    [AddCommGroup Torsion] [Finite Torsion]

/-- Replace fiber lengths while preserving all topological gluing data. -/
def withMetric
    (cover :
      TorsionRoundedCover
        LiftedBase Loop rank localSystem Torsion GluingClass)
    (metric : FiberGramField LiftedBase Loop rank localSystem) :
    TorsionRoundedCover
      LiftedBase Loop rank localSystem Torsion GluingClass :=
  { cover with metric := metric }

@[simp] theorem withMetric_topology
    (cover :
      TorsionRoundedCover
        LiftedBase Loop rank localSystem Torsion GluingClass)
    (metric : FiberGramField LiftedBase Loop rank localSystem) :
    (cover.withMetric metric).topology = cover.topology :=
  rfl

/-- Replace finite gluing data while preserving the supplied fiber metric. -/
def withTopology
    (cover :
      TorsionRoundedCover
        LiftedBase Loop rank localSystem Torsion GluingClass)
    (topology :
      CoverTopologyChannel localSystem Torsion GluingClass) :
    TorsionRoundedCover
      LiftedBase Loop rank localSystem Torsion GluingClass :=
  { cover with topology := topology }

@[simp] theorem withTopology_metric
    (cover :
      TorsionRoundedCover
        LiftedBase Loop rank localSystem Torsion GluingClass)
    (topology :
      CoverTopologyChannel localSystem Torsion GluingClass) :
    (cover.withTopology topology).metric = cover.metric :=
  rfl

end TorsionRoundedCover

end Mathematics.Homology
