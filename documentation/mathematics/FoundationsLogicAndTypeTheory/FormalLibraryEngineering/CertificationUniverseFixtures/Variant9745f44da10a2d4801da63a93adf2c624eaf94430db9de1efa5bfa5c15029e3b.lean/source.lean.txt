import FormalResearch.PositiveAtlas.Certification

/-!
# Independent-universe certification fixtures

A Boolean observable is lifted independently at each interface boundary. Its
identity representation is minimal against a competitor at any independent
carrier universe, and its false/true distinction forbids a constant sufficient
compression. These are regression checks for the certification interface's
universe scope and factorization direction.
-/

namespace FormalResearch.PositiveAtlas.CertificationUniverseFixtures

universe u v w a b

/-- A nonconstant Boolean observable with independent state, index, and value
universes. -/
def family : CertificateFamily (ULift.{u} Bool) (ULift.{v} Unit) where
  value := fun _ => ULift.{w} Bool
  observe := fun _ s => ⟨s.down⟩

/-- Store exactly the observed Boolean in an independently lifted carrier. -/
def representation : SufficientRepresentation.{u, v, w, a} family where
  carrier := ULift.{a} Bool
  compress := fun s => ⟨s.down⟩
  recover := fun _ r => ⟨r.down⟩
  recover_compress := by
    intro i s
    rfl

/-- Every sufficient competitor recovers the Boolean and therefore reconstructs
this representation, even when the two carriers inhabit independent universes. -/
theorem representation_minimal :
    SufficientRepresentation.IsMinimal.{u, v, w, a, b} representation := by
  intro R
  refine ⟨fun r => ⟨(R.recover ⟨()⟩ r).down⟩, ?_⟩
  funext s
  apply ULift.ext
  exact (congrArg ULift.down (R.recover_compress ⟨()⟩ s)).symm

/-- The lifted identity reconstruction retains the arbitrary competitor universe. -/
def quine : StructuralQuine.{u, v, w, a, b} family where
  quotient := representation
  reconstruct := fun r => ⟨r.down⟩
  «section» := by
    intro r
    cases r
    rfl
  reconstruct_equivalent := by
    intro s i
    rfl
  minimal := representation_minimal

/-- The admitted observable separates two actual states. -/
theorem observable_distinguishes :
    ¬ family.{u, v, w}.Equivalent ⟨false⟩ ⟨true⟩ := by
  intro h
  have hFalse : false = true := congrArg ULift.down (h ⟨()⟩)
  cases hFalse

/-- In particular, no exact sufficient representation can compress these states
to the same point; a constant compression cannot satisfy the interface. -/
theorem compress_distinguishes
    (q : SufficientRepresentation.{u, v, w, a} family) :
    q.compress ⟨false⟩ ≠ q.compress ⟨true⟩ := by
  intro h
  exact observable_distinguishes (q.equivalent_of_compress_eq h)

/-- Apply the minimality field across independent carrier universes. -/
theorem quine_factors_through
    (r : SufficientRepresentation.{u, v, w, b} family) :
    quine.{u, v, w, a, b}.quotient.FactorsThrough r :=
  quine.quotient_factors_through r

/-- The compatibility accessor exposes exactly the explicit index parameter. -/
theorem index_eq : family.{u, v, w}.index = ULift.{v} Unit := rfl

end FormalResearch.PositiveAtlas.CertificationUniverseFixtures
