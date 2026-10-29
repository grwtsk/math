-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TargetSetoid.Variant5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.TargetSetoid.Variant5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Semantics.Atlas.Basic

/-!
# The coarsest quotient preserving an explicit target family

Universal factorization is stated on the quotient by an index's kernel, which
is equivalent to its image. Uniqueness on unused codomain values is neither
asserted nor needed. The target quotient is distinct from bridge connectivity.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TargetSetoid.Variant5c3eafc024911c760fe47daa228aa329340a1c0c02180fc7d9b8627dad2b18ce

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

universe u v w

variable {X : Type u}

/-- Two occurrences agree exactly when every named target agrees. -/
def targetSetoid (targets : TargetFamily.{u, v} X) : Setoid X where
  r x y := ∀ i, targets.value i x = targets.value i y
  iseqv := ⟨fun _ _ => rfl, fun h i => (h i).symm,
    fun first second i => (first i).trans (second i)⟩

/-- The coordinate retaining exactly the declared target distinctions. -/
def targetCoordinate (targets : TargetFamily.{u, v} X) : Coordinate X where
  relation := targetSetoid targets
  relationDecidable := fun x y =>
    show Decidable (∀ i, targets.value i x = targets.value i y) from inferInstance

/-- The coarsest target-preserving quotient, relative to `targets`. -/
abbrev TargetQuotient (targets : TargetFamily.{u, v} X) := Quotient (targetSetoid targets)

/-- The canonical projection for this particular target family. -/
def targetClass (targets : TargetFamily.{u, v} X) : X → TargetQuotient targets :=
  Quotient.mk (targetSetoid targets)

theorem target_class_eq_iff (targets : TargetFamily.{u, v} X) (x y : X) :
    targetClass targets x = targetClass targets y ↔
      ∀ i, targets.value i x = targets.value i y := Quotient.eq

/-- Each target descends by the already implemented quotient recovery theorem. -/
theorem targetQuotient_targets_recoverable (targets : TargetFamily.{u, v} X)
    (i : Fin targets.count) : RecoverableFrom (targetClass targets) (targets.value i) :=
  (recoverableFrom_quotient_iff (targetSetoid targets) (targets.value i)).mpr
    (fun _ _ related => related i)

/-- Actual factor through the image quotient of any target-preserving index. -/
def targetFactor (targets : TargetFamily.{u, v} X) {Q : Type w} (q : X → Q)
    (preserves : ∀ i, RecoverableFrom q (targets.value i)) :
    Quotient (Setoid.ker q) → TargetQuotient targets :=
  Quotient.lift (targetClass targets)
    (fun _ _ same => Quotient.sound (fun i => (preserves i).eq_of_eq same))

/-- Every target descends, every preserving index refines target equality, and
the induced factor on its image quotient exists uniquely. -/
theorem targetQuotient_coarsest (targets : TargetFamily.{u, v} X) {Q : Type w}
    (q : X → Q) (preserves : ∀ i, RecoverableFrom q (targets.value i)) :
    (∀ i, RecoverableFrom (targetClass targets) (targets.value i)) ∧
    (∀ x y, q x = q y → targetClass targets x = targetClass targets y) ∧
    ∃! factor : Quotient (Setoid.ker q) → TargetQuotient targets,
      ∀ x, factor (Quotient.mk (Setoid.ker q) x) = targetClass targets x := by
  refine ⟨targetQuotient_targets_recoverable targets, ?_,
    targetFactor targets q preserves, fun _ => rfl, ?_⟩
  · intro x y same
    exact Quotient.sound (fun i => (preserves i).eq_of_eq same)
  · intro factor agrees
    funext point
    exact Quotient.inductionOn point agrees

/-- With surjectivity, the same factor exists uniquely on the entire codomain. -/
theorem targetQuotient_factor_of_surjective (targets : TargetFamily.{u, v} X)
    {Q : Type w} (q : X → Q) (onto : Function.Surjective q)
    (preserves : ∀ i, RecoverableFrom q (targets.value i)) :
    ∃! factor : Q → TargetQuotient targets, ∀ x, factor (q x) = targetClass targets x := by
  let equivalence := Setoid.quotientKerEquivOfSurjective q onto
  let factor := targetFactor targets q preserves ∘ equivalence.symm
  have agrees : ∀ x, factor (q x) = targetClass targets x := by
    intro x
    have inverse : equivalence.symm (q x) = Quotient.mk (Setoid.ker q) x := by
      apply equivalence.injective
      rw [Equiv.apply_symm_apply]
      rfl
    change targetFactor targets q preserves (equivalence.symm (q x)) = _
    rw [inverse]
    rfl
  refine ⟨factor, agrees, ?_⟩
  intro other otherAgrees
  funext value
  obtain ⟨x, rfl⟩ := onto value
  exact (otherAgrees x).trans (agrees x).symm

end FormalResearch.MathematicalTooling.Semantics.Atlas
