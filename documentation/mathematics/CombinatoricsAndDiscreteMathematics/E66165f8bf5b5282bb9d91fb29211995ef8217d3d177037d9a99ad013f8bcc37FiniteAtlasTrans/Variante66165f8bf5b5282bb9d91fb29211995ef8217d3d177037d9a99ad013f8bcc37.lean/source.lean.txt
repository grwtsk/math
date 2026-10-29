import FormalResearch.PositiveAtlas.Certification

/-!
# Finite atlas compression, transport, and permission boundary

This module constructs a finite product-observation compression and its minimality
adapter to the accepted certification core. Factorization is a preorder, not a
claim that arbitrary representation carriers are uniquely isomorphic. Typed
transports preserve their specified observables; they need not preserve provenance
or permission. The finite diagram stores occurrence identities as data in `Type`.
No runtime authenticity or operational authorization is supplied by these results.
-/

namespace FormalResearch.PositiveAtlas.FiniteAtlas

universe u v w a b d

/-- Data witnessing the accepted compression factorization relation. -/
structure CompressionWitness {State : Type u} {Index : Type v}
    {C : CertificateFamily.{u, v, w} State Index}
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C) where
  /-- Map from the more informative representation to the less informative one. -/
  factor : r.carrier → q.carrier
  /-- Agreement is required on compressed states, not on unattained carrier values. -/
  factor_compress : ∀ s, factor (r.compress s) = q.compress s

namespace CompressionWitness

variable {State : Type u} {Index : Type v} {C : CertificateFamily.{u, v, w} State Index}

/-- Identity compression witness. -/
def identity (q : SufficientRepresentation.{u, v, w, a} C) : CompressionWitness q q where
  factor := id
  factor_compress := fun _ => rfl

/-- Composition of actual factor maps. -/
def comp {q : SufficientRepresentation.{u, v, w, a} C}
    {r : SufficientRepresentation.{u, v, w, b} C}
    {s : SufficientRepresentation.{u, v, w, d} C}
    (f : CompressionWitness q r) (g : CompressionWitness r s) : CompressionWitness q s where
  factor := f.factor ∘ g.factor
  factor_compress x := by simp only [Function.comp_apply, g.factor_compress, f.factor_compress]

/-- A data witness supplies exactly the accepted proposition of factorization. -/
theorem factors_through {q : SufficientRepresentation.{u, v, w, a} C}
    {r : SufficientRepresentation.{u, v, w, b} C} (f : CompressionWitness q r) :
    q.FactorsThrough r := by
  exact ⟨f.factor, funext fun s => (f.factor_compress s).symm⟩

end CompressionWitness

/-- The compression relation is reflexive. -/
theorem compression_refl {State : Type u} {Index : Type v}
    {C : CertificateFamily.{u, v, w} State Index}
    (q : SufficientRepresentation.{u, v, w, a} C) : q.FactorsThrough q :=
  (CompressionWitness.identity q).factors_through

/-- The compression relation is transitive across independent carrier universes. -/
theorem compression_trans {State : Type u} {Index : Type v}
    {C : CertificateFamily.{u, v, w} State Index}
    {q : SufficientRepresentation.{u, v, w, a} C}
    {r : SufficientRepresentation.{u, v, w, b} C}
    {s : SufficientRepresentation.{u, v, w, d} C}
    (hqr : q.FactorsThrough r) (hrs : r.FactorsThrough s) : q.FactorsThrough s := by
  obtain ⟨f, hf⟩ := hqr
  obtain ⟨g, hg⟩ := hrs
  exact ⟨f ∘ g, by rw [hf, hg]; rfl⟩

/-- A finite atlas cell with an explicit finite family of admitted observables. -/
structure Object where
  /-- Finite state carrier. -/
  state : Type
  /-- Enumeration of states. -/
  stateFintype : Fintype state
  /-- Finite observable labels. -/
  index : Type
  /-- Enumeration of observable labels. -/
  indexFintype : Fintype index
  /-- Exact certificate family, without a permission interpretation. -/
  certificates : CertificateFamily state index

attribute [instance] Object.stateFintype Object.indexFintype

/-- A typed state map with explicit observable reindexing and value maps. -/
structure Transport (A B : Object) where
  /-- Underlying state map. -/
  map : A.state → B.state
  /-- Source observable used to recover each target observable. -/
  indexMap : B.index → A.index
  /-- Typed conversion of the selected observable value. -/
  valueMap : (i : B.index) → A.certificates.value (indexMap i) → B.certificates.value i
  /-- Required observable equation for this particular map. -/
  observe_map : ∀ i s, B.certificates.observe i (map s) =
    valueMap i (A.certificates.observe (indexMap i) s)

namespace Transport

/-- Identity atlas transport is constructed without extra hypotheses. -/
def identity (A : Object) : Transport A A where
  map := id
  indexMap := id
  valueMap := fun _ => id
  observe_map := fun _ _ => rfl

/-- Compose typed atlas transports and their observable conversion maps. -/
def comp {A B C : Object} (g : Transport B C) (f : Transport A B) : Transport A C where
  map := g.map ∘ f.map
  indexMap := f.indexMap ∘ g.indexMap
  valueMap := fun i x => g.valueMap i (f.valueMap (g.indexMap i) x)
  observe_map i s := by
    simp only [Function.comp_apply, g.observe_map, f.observe_map]

/-- Transport composition is associative on the actual state maps. -/
theorem comp_assoc_map {A B C D : Object} (h : Transport C D)
    (g : Transport B C) (f : Transport A B) :
    ((h.comp g).comp f).map = (h.comp (g.comp f)).map := rfl

/-- The constructed identity is a left identity on states. -/
theorem identity_comp_map {A B : Object} (f : Transport A B) :
    ((identity B).comp f).map = f.map := rfl

/-- The constructed identity is a right identity on states. -/
theorem comp_identity_map {A B : Object} (f : Transport A B) :
    (f.comp (identity A)).map = f.map := rfl

/-- Certificate equivalence is preserved, without asserting state equality. -/
theorem map_equivalent {A B : Object} (f : Transport A B) {x y : A.state}
    (h : A.certificates.Equivalent x y) :
    B.certificates.Equivalent (f.map x) (f.map y) := by
  intro i
  rw [f.observe_map, f.observe_map, h (f.indexMap i)]

end Transport

/-- Provenance identities are ordinary finite data, not proof fields. -/
structure Occurrence where
  /-- Source identity for the finite example. -/
  source : Bool
  /-- Distinct occurrence within a source. -/
  occurrence : Bool
  deriving DecidableEq, Fintype

/-- Concrete four-valued provenance attached to an observed Boolean. -/
abbrev FiniteState := Bool × Occurrence

/-- Only the first coordinate is an admitted mathematical observable. -/
def observed : CertificateFamily FiniteState Unit where
  value := fun _ => Bool
  observe := fun _ s => s.1

/-- The finite first-coordinate compression with executable recovery. -/
def observedRepresentation : SufficientRepresentation observed where
  carrier := Bool
  compress := Prod.fst
  recover := fun _ => id
  recover_compress := fun _ _ => rfl

/-- Every sufficient competitor recovers the first-coordinate compression. -/
def observationFactor (r : SufficientRepresentation.{0, 0, 0, b} observed) :
    CompressionWitness observedRepresentation r where
  factor := r.recover ()
  factor_compress := r.recover_compress ()

/-- Minimality is proved at each explicit competitor universe. -/
theorem observed_minimal :
    SufficientRepresentation.IsMinimal.{0, 0, 0, 0, b} observedRepresentation := by
  intro r
  exact (observationFactor r).factors_through

/-- A constructive finite structural Quine, choosing explicit occurrence data. -/
def observedQuine (origin : Occurrence) : StructuralQuine.{0, 0, 0, 0, b} observed where
  quotient := observedRepresentation
  reconstruct := fun b => (b, origin)
  «section» := fun _ => rfl
  reconstruct_equivalent := fun _ _ => rfl
  minimal := observed_minimal

/-- This Quine reconstructs exactly its chosen occurrence, not original provenance. -/
theorem observed_quine_project (origin : Occurrence) (s : FiniteState) :
    (observedQuine.{b} origin).project s = (s.1, origin) := rfl

/-- A sufficient carrier with unused padding values outside the compression image. -/
def paddedRepresentation : SufficientRepresentation observed where
  carrier := Bool × Bool
  compress := fun s => (s.1, false)
  recover := fun _ x => x.1
  recover_compress := fun _ _ => rfl

/-- First-coordinate recovery from the padded representation. -/
def forgetPadding : CompressionWitness observedRepresentation paddedRepresentation where
  factor := Prod.fst
  factor_compress := fun _ => rfl

/-- A different factor map may disagree only at unattained padded carrier values. -/
def alternatePadding : CompressionWitness observedRepresentation paddedRepresentation where
  factor := fun x => if x.2 then !x.1 else x.1
  factor_compress := fun _ => rfl

/-- Adding fixed padding constructs factorization in the other direction. -/
def addPadding : CompressionWitness paddedRepresentation observedRepresentation where
  factor := fun b => (b, false)
  factor_compress := fun _ => rfl

/-- The two exact factor witnesses differ as functions on the full padded carrier. -/
theorem full_carrier_factors_not_unique : forgetPadding.factor ≠ alternatePadding.factor := by
  intro h
  have bad := congrFun h (true, true)
  change true = false at bad
  cases bad

/-- Mutual factorization is strictly weaker than equivalence of whole carriers. -/
theorem mutual_compression_without_carrier_equivalence :
    observedRepresentation.FactorsThrough paddedRepresentation ∧
    paddedRepresentation.FactorsThrough observedRepresentation ∧
    ¬ Nonempty (observedRepresentation.carrier ≃ paddedRepresentation.carrier) := by
  refine ⟨forgetPadding.factors_through, addPadding.factors_through, ?_⟩
  rintro ⟨e⟩
  change Bool ≃ Bool × Bool at e
  have h := Fintype.card_congr e
  change Fintype.card Bool = Fintype.card (Bool × Bool) at h
  norm_num at h

/-- The finite product-observation cell. -/
def observedObject : Object where
  state := FiniteState
  stateFintype := inferInstance
  index := Unit
  indexFintype := inferInstance
  certificates := observed

/-- A nonidentity transport changes the source identity and preserves the observation. -/
def switchSource : Transport observedObject observedObject where
  map := fun s => (s.1, ⟨!s.2.source, s.2.occurrence⟩)
  indexMap := id
  valueMap := fun _ => id
  observe_map := fun _ _ => rfl

/-- Switching the source twice is the identity on every finite state. -/
theorem switch_source_involutive : Function.Involutive switchSource.map := by
  intro s
  rcases s with ⟨value, source, occurrence⟩
  cases source <;> rfl

/-- A finite directed diagram retains edge occurrences even for equal endpoints. -/
structure Diagram (vertices edges : ℕ) where
  /-- Typed cell assigned to each vertex. -/
  object : Fin vertices → Object
  /-- Source vertex of each edge. -/
  source : Fin edges → Fin vertices
  /-- Target vertex of each edge. -/
  target : Fin edges → Fin vertices
  /-- Proof-relevant edge occurrence data. -/
  occurrence : Fin edges → Occurrence
  /-- Typed observable-preserving transport on each edge. -/
  transport : (e : Fin edges) → Transport (object (source e)) (object (target e))

/-- A commuting four-edge motif records equality of actual transported states. -/
structure Square (A B C D : Object) where
  /-- Top edge from the upper left cell. -/
  top : Transport A B
  /-- Left edge from the upper left cell. -/
  left : Transport A C
  /-- Right edge into the lower right cell. -/
  right : Transport B D
  /-- Bottom edge into the lower right cell. -/
  bottom : Transport C D
  /-- Equality along the two directed paths. -/
  commutes : ∀ s, right.map (top.map s) = bottom.map (left.map s)

/-- A nontrivial commuting square: the two source switches equal two identities. -/
def switchSquare : Square observedObject observedObject observedObject observedObject where
  top := switchSource
  left := Transport.identity observedObject
  right := switchSource
  bottom := Transport.identity observedObject
  commutes := switch_source_involutive

/-- Two parallel edges have distinct occurrence data and distinct state maps. -/
def parallelDiagram : Diagram 2 2 where
  object := fun _ => observedObject
  source := fun _ => 0
  target := fun _ => 1
  occurrence := fun e => ⟨false, e = 1⟩
  transport := fun e => if e = 0 then Transport.identity observedObject else switchSource

/-- Parallel edge identity is not collapsed by equal source and target vertices. -/
theorem parallel_occurrences_distinct :
    parallelDiagram.occurrence 0 ≠ parallelDiagram.occurrence 1 := by decide

/-- A positive trace includes input/output state data and an exact transport equation. -/
structure Witness {n m : ℕ} (D : Diagram n m) (e : Fin m) where
  /-- Input at the source cell. -/
  input : (D.object (D.source e)).state
  /-- Output at the target cell. -/
  output : (D.object (D.target e)).state
  /-- Proof for this concrete input/output pair. -/
  transported : (D.transport e).map input = output

/-- Every positive edge witness yields its exact typed observable equation. -/
theorem witness_observation {n m : ℕ} {D : Diagram n m} {e : Fin m}
    (w : Witness D e) (i : (D.object (D.target e)).index) :
    (D.object (D.target e)).certificates.observe i w.output =
      (D.transport e).valueMap i
        ((D.object (D.source e)).certificates.observe ((D.transport e).indexMap i) w.input) := by
  rw [← w.transported]
  exact (D.transport e).observe_map i w.input

/-- An obstruction retains a distinguishing observable label as data. -/
structure Obstruction {A B : Object} (f : Transport A B) (s : A.state) (t : B.state) where
  /-- Observable that detects the proposed output error. -/
  index : B.index
  /-- Exact disagreement at the selected observable. -/
  differs : B.certificates.observe index (f.map s) ≠ B.certificates.observe index t

/-- A certificate obstruction disproves the proposed carrier equality. -/
theorem obstruction_ne {A B : Object} {f : Transport A B} {s : A.state} {t : B.state}
    (o : Obstruction f s t) : f.map s ≠ t := by
  intro h
  exact o.differs (congrArg (B.certificates.observe o.index) h)

/-- A state whose separate finite policy permits the example effect. -/
def allowed : FiniteState := (true, ⟨false, false⟩)

/-- Same mathematical observation with a different source identity. -/
def denied : FiniteState := (true, ⟨true, false⟩)

/-- The parallel edges also have genuinely different state maps. -/
theorem parallel_maps_distinct :
    (parallelDiagram.transport 0).map ≠ (parallelDiagram.transport 1).map := by
  intro h
  have bad := congrArg (fun s : FiniteState => s.2.source) (congrFun h allowed)
  change false = true at bad
  cases bad

/-- A concrete positive edge trace changes provenance without changing observation. -/
def switchWitness : Witness parallelDiagram 1 where
  input := allowed
  output := denied
  transported := rfl

/-- The proposed opposite observation is rejected by an explicit obstruction. -/
def oppositeObservation : Obstruction (Transport.identity observedObject)
    allowed (false, ⟨false, false⟩) where
  index := ()
  differs := by
    change true ≠ false
    decide

/-- A typed effect label; no runtime action is implemented by this datatype. -/
inductive Effect where
  /-- An example human-facing effect subject to the separate policy. -/
  | display

/-- A separate toy permission policy depending on source identity. -/
def MayPerform (s : FiniteState) (_effect : Effect) : Prop := s.2.source = false

/-- Observable equality and distinct provenance can coexist. -/
theorem same_observation_distinct_provenance :
    observed.Equivalent allowed denied ∧ allowed.2 ≠ denied.2 := by
  exact ⟨fun _ => rfl, by decide⟩

/-- The nontrivial exact transport need not preserve the separate permission relation. -/
theorem transport_does_not_preserve_permission :
    MayPerform allowed .display ∧ ¬ MayPerform (switchSource.map allowed) .display := by
  change false = false ∧ ¬ true = false
  decide

/-- Even the constructed minimal sufficient Quine cannot supply permission for every state. -/
theorem sufficient_quine_without_permission :
    ∃ Q : StructuralQuine.{0, 0, 0, 0, b} observed,
      Q.quotient.compress allowed = Q.quotient.compress denied ∧
      MayPerform allowed .display ∧ ¬ MayPerform denied .display := by
  refine ⟨observedQuine ⟨false, false⟩, rfl, rfl, ?_⟩
  change ¬ true = false
  decide

/-- Permission cannot be recovered from this sufficient mathematical compression. -/
theorem permission_not_recoverable :
    ¬ ∃ permit : Bool → Prop, ∀ s,
      permit (observedRepresentation.compress s) ↔ MayPerform s .display := by
  rintro ⟨permit, h⟩
  have yes : permit true := (h allowed).mpr rfl
  have no : ¬ MayPerform denied .display := by
    change ¬ true = false
    decide
  exact no ((h denied).mp yes)

end FormalResearch.PositiveAtlas.FiniteAtlas
