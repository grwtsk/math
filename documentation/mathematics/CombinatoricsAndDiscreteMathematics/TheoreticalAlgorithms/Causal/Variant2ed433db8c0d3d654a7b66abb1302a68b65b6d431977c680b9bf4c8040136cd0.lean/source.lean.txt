-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PredictiveRepresentation.Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PredictiveRepresentation.Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Causal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.System
import Mathlib.Data.List.Basic
import Mathlib.Data.Set.Operations

/-!
# Causal observational state

Two states are causally equivalent when every future input word gives equal
observations at every resolution.  The quotient is therefore the minimal
object retaining the selected system's entire observable future.

There is one necessary variance condition for transport.  A general system
homomorphism maps source inputs into target inputs; causal equivalence in the
target quantifies over *all* target input words.  Consequently forward causal
transport requires the input map to be surjective.  This hypothesis is
explicit below.  A system isomorphism supplies it from its inverse laws.

A predictive representation need only identify states that are causally
equivalent.  Its realized encoder image—not the whole representation type—has
a unique map to causal state agreeing with the quotient map.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PredictiveRepresentation.Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7

universe uP

namespace DAF

namespace System

variable {M N : System}

/-! ## Causal quotient -/

/-- Equality of all future observations under every finite input trace. -/
def CausalEquivalent (M : System) (x y : M.State) : Prop :=
  ∀ (inputs : List M.Input) (r : M.Resolution),
    M.observe r (M.run inputs x) =
      M.observe r (M.run inputs y)

theorem causalEquivalent_refl (M : System) (x : M.State) :
    M.CausalEquivalent x x := by
  intro inputs r
  rfl

theorem causalEquivalent_symm
    (M : System)
    {x y : M.State}
    (h : M.CausalEquivalent x y) :
    M.CausalEquivalent y x := by
  intro inputs r
  exact (h inputs r).symm

theorem causalEquivalent_trans
    (M : System)
    {x y z : M.State}
    (hxy : M.CausalEquivalent x y)
    (hyz : M.CausalEquivalent y z) :
    M.CausalEquivalent x z := by
  intro inputs r
  exact (hxy inputs r).trans (hyz inputs r)

/-- The setoid of complete observable-future equality. -/
def causalSetoid (M : System) : Setoid M.State where
  r := M.CausalEquivalent
  iseqv := {
    refl := M.causalEquivalent_refl
    symm := fun h => M.causalEquivalent_symm h
    trans := fun hxy hyz => M.causalEquivalent_trans hxy hyz
  }

/-- The minimal causal observational state space. -/
def CausalState (M : System) :=
  Quotient M.causalSetoid

/-- Send a state to its causal class. -/
def toCausal (M : System) (x : M.State) : M.CausalState :=
  Quotient.mk M.causalSetoid x

theorem toCausal_surjective (M : System) :
    Function.Surjective M.toCausal := by
  intro q
  refine Quotient.inductionOn q ?_
  intro x
  exact ⟨x, rfl⟩

@[simp]
theorem toCausal_eq_iff (M : System) (x y : M.State) :
    M.toCausal x = M.toCausal y ↔ M.CausalEquivalent x y := by
  constructor
  · exact Quotient.exact
  · intro h
    apply Quotient.sound
    exact h

/-! ## Homomorphism and factor transport -/

namespace Hom

/--
A homomorphism with a surjective input translation preserves causal
equivalence.  Surjectivity is essential because the target relation quantifies
over every target input word, including words not otherwise in the image.
-/
theorem map_causalEquivalent
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput)
    {x y : M.State}
    (hxy : M.CausalEquivalent x y) :
    N.CausalEquivalent (F.mapState x) (F.mapState y) := by
  intro targetInputs r
  rcases hInput.list_map targetInputs with ⟨sourceInputs, hsource⟩
  subst targetInputs
  rw [← F.map_run sourceInputs x, ← F.map_run sourceInputs y]
  rw [← F.observe_natural r (M.run sourceInputs x),
    ← F.observe_natural r (M.run sourceInputs y)]
  exact congrArg (F.mapObservation r)
    (hxy sourceInputs (F.pullResolution r))

/-- A causality-preserving homomorphism descends to causal-state quotients. -/
def causalStateMap
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput) :
    M.CausalState → N.CausalState :=
  Quotient.map F.mapState
    (fun _ _ h => F.map_causalEquivalent hInput h)

@[simp]
theorem causalStateMap_toCausal
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput)
    (x : M.State) :
    F.causalStateMap hInput (M.toCausal x) =
      N.toCausal (F.mapState x) :=
  rfl

end Hom

namespace Factor

/--
A state-surjective factor induces a surjection on causal states whenever its
input translation is also surjective.
-/
theorem causalStateMap_surjective
    (F : M.Factor N)
    (hInput : Function.Surjective F.toHom.mapInput) :
    Function.Surjective (F.toHom.causalStateMap hInput) := by
  intro target
  refine Quotient.inductionOn target ?_
  intro y
  rcases F.state_surjective y with ⟨x, hx⟩
  refine ⟨M.toCausal x, ?_⟩
  rw [Hom.causalStateMap_toCausal]
  exact congrArg N.toCausal hx

end Factor

/-! ## Isomorphism transport -/

namespace Iso

/-- Structural isomorphisms preserve and reflect complete future behavior. -/
theorem causalEquivalent_iff
    (F : M.Iso N)
    {x y : M.State} :
    M.CausalEquivalent x y ↔
      N.CausalEquivalent (F.hom.mapState x) (F.hom.mapState y) := by
  constructor
  · exact F.hom.map_causalEquivalent F.hom_input_bijective.2
  · intro h
    have pulled :=
      F.inv.map_causalEquivalent F.symm.hom_input_bijective.2 h
    simpa only [F.hom_inv_state x, F.hom_inv_state y] using pulled

/-- A structural system isomorphism descends to an equivalence of causal states. -/
noncomputable def causalStateEquiv (F : M.Iso N) :
    M.CausalState ≃ N.CausalState where
  toFun := F.hom.causalStateMap F.hom_input_bijective.2
  invFun := F.inv.causalStateMap F.symm.hom_input_bijective.2
  left_inv := by
    intro q
    refine Quotient.inductionOn q ?_
    intro x
    change M.toCausal (F.inv.mapState (F.hom.mapState x)) = M.toCausal x
    rw [F.hom_inv_state]
  right_inv := by
    intro q
    refine Quotient.inductionOn q ?_
    intro x
    change N.toCausal (F.hom.mapState (F.inv.mapState x)) = N.toCausal x
    rw [F.inv_hom_state]

@[simp]
theorem causalStateEquiv_toCausal (F : M.Iso N) (x : M.State) :
    F.causalStateEquiv (M.toCausal x) =
      N.toCausal (F.hom.mapState x) :=
  rfl

end Iso

/-! ## Predictive representations -/

/--
A predictively sufficient encoding: equality of representations guarantees
equality of the complete observable future.
-/
structure PredictiveRepresentation (M : System) where
  Rep : Type uP
  encode : M.State → Rep
  sufficient :
    ∀ {x y}, encode x = encode y → M.CausalEquivalent x y

namespace PredictiveRepresentation

variable (P : PredictiveRepresentation M)

/-- The realized image of a predictive encoder. -/
def RealizedImage :=
  Set.range P.encode

/-- A concrete state regarded as a point of the realized encoder image. -/
def toRealizedImage (x : M.State) : P.RealizedImage :=
  ⟨P.encode x, ⟨x, rfl⟩⟩

theorem toRealizedImage_surjective :
    Function.Surjective P.toRealizedImage := by
  rintro ⟨value, x, hx⟩
  refine ⟨x, ?_⟩
  apply Subtype.ext
  exact hx

/--
The canonical map from realized predictive values to causal state.  A chosen
preimage is harmless because predictive sufficiency identifies all choices.
-/
noncomputable def realizedImageToCausal
    (value : P.RealizedImage) : M.CausalState :=
  M.toCausal (Classical.choose value.property)

@[simp]
theorem realizedImageToCausal_toRealizedImage (x : M.State) :
    P.realizedImageToCausal (P.toRealizedImage x) = M.toCausal x := by
  apply (M.toCausal_eq_iff _ _).2
  apply P.sufficient
  exact Classical.choose_spec (P.toRealizedImage x).property

theorem realizedImageToCausal_unique
    (descend : P.RealizedImage → M.CausalState)
    (hdescend :
      ∀ x, descend (P.toRealizedImage x) = M.toCausal x) :
    descend = P.realizedImageToCausal := by
  funext value
  rcases P.toRealizedImage_surjective value with ⟨x, rfl⟩
  rw [hdescend]
  exact (P.realizedImageToCausal_toRealizedImage x).symm

/--
The causal quotient is terminal among maps out of the realized image of any
predictively sufficient representation.
-/
theorem causalState_terminal :
    ∃! descend : P.RealizedImage → M.CausalState,
      ∀ x, descend (P.toRealizedImage x) = M.toCausal x := by
  refine ⟨P.realizedImageToCausal,
    P.realizedImageToCausal_toRealizedImage, ?_⟩
  intro descend hdescend
  exact P.realizedImageToCausal_unique descend hdescend

end PredictiveRepresentation

/-- Specification-shaped alias of the predictive terminal-image theorem. -/
theorem causalState_terminal (P : PredictiveRepresentation M) :
    ∃! descend : Set.range P.encode → M.CausalState,
      ∀ x, descend ⟨P.encode x, ⟨x, rfl⟩⟩ = M.toCausal x :=
  P.causalState_terminal

end System

end DAF
