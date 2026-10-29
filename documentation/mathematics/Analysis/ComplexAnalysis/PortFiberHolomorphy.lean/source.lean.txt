import GRWTSK.Topology.PortFiber.Path

namespace GRWTSK.Analysis.Complex.PortFiber

open GRWTSK.Topology

/-- A selected complex domain. No openness assumption is implicit. -/
structure Domain where
  carrier : Set ℂ

/-- A complex-domain port with an explicit source-to-target domain map. -/
structure Port (A B : Domain) where
  toFun : ℂ → ℂ
  mapsTo : Set.MapsTo toFun A.carrier B.carrier

namespace Port

/-- Identity complex-domain port. -/
def identity (A : Domain) : Port A A where
  toFun := id
  mapsTo := fun _ hz => hz

/-- Composition retains the exact middle domain and its mapping proofs. -/
def comp {A B C : Domain} (p : Port A B) (q : Port B C) : Port A C where
  toFun := q.toFun ∘ p.toFun
  mapsTo := fun z hz => q.mapsTo (p.mapsTo hz)

end Port

/-- Complex domains and their domain-preserving maps form a port-fiber system. -/
def system : GRWTSK.Topology.PortFiber where
  Obj := Domain
  Fiber _ := ℂ
  Port := Port
  identity := Port.identity
  comp := Port.comp
  map p := p.toFun
  map_identity := by
    intro A z
    rfl
  map_comp := by
    intro A B C p q z
    rfl

/-- Holomorphy certificate at the exact selected source domain. -/
structure HolomorphicCertificate {A B : Domain} (p : Port A B) : Prop where
  differentiableOn : DifferentiableOn ℂ p.toFun A.carrier

namespace HolomorphicCertificate

/-- Holomorphy supplies continuity on the same source domain. -/
theorem continuousOn {A B : Domain} {p : Port A B}
    (h : HolomorphicCertificate p) : ContinuousOn p.toFun A.carrier :=
  h.differentiableOn.continuousOn

/-- Identity complex-domain ports are holomorphic. -/
def identity (A : Domain) : HolomorphicCertificate (Port.identity A) where
  differentiableOn := differentiable_id.differentiableOn

/-- Holomorphic domain-preserving ports compose holomorphically. -/
def comp {A B C : Domain} {p : Port A B} {q : Port B C}
    (hp : HolomorphicCertificate p) (hq : HolomorphicCertificate q) :
    HolomorphicCertificate (Port.comp p q) where
  differentiableOn :=
    hq.differentiableOn.comp hp.differentiableOn p.mapsTo

/-- Holomorphy as a composable property for arbitrary typed domain paths. -/
def composableProperty :
    GRWTSK.Topology.PortFiber.ComposableProperty system where
  Holds := fun p => HolomorphicCertificate p
  identity := HolomorphicCertificate.identity
  comp := fun hp hq => HolomorphicCertificate.comp hp hq

end HolomorphicCertificate

namespace Fixtures

/-- Whole-plane domain. -/
def whole : Domain := ⟨Set.univ⟩

/-- Translation port on the whole plane. -/
def translation (c : ℂ) : Port whole whole where
  toFun z := z + c
  mapsTo := fun z _ => Set.mem_univ (z + c)

/-- Every complex translation is holomorphic. -/
def translationCertificate (c : ℂ) : HolomorphicCertificate (translation c) where
  differentiableOn := (differentiable_id.add_const c).differentiableOn

/-- Squaring port on the whole plane. -/
def square : Port whole whole where
  toFun z := z ^ 2
  mapsTo := fun z _ => Set.mem_univ (z ^ 2)

/-- Squaring is holomorphic. -/
def squareCertificate : HolomorphicCertificate square where
  differentiableOn := (differentiable_id.pow 2).differentiableOn

/-- A nontrivial certified composite. -/
def translatedSquare (c : ℂ) : Port whole whole :=
  Port.comp (translation c) square

/-- The translated-square composite is holomorphic by port composition. -/
def translatedSquareCertificate (c : ℂ) :
    HolomorphicCertificate (translatedSquare c) :=
  HolomorphicCertificate.comp (translationCertificate c) squareCertificate

/-- Translation followed by squaring as an atomically certified path. -/
def translatedSquarePath (c : ℂ) :
    GRWTSK.Topology.PortFiber.CertifiedPath system
      HolomorphicCertificate.composableProperty whole whole :=
  .cons (translation c) (translationCertificate c)
    (.cons square squareCertificate (.nil whole))

/-- The whole certified path has a holomorphic composite. -/
theorem translatedSquarePath_certified (c : ℂ) :
    HolomorphicCertificate (translatedSquarePath c).composite :=
  (translatedSquarePath c).certified

end Fixtures

end GRWTSK.Analysis.Complex.PortFiber
