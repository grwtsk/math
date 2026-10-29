-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtlasObstruction.Variantad0ce2d2f68adef87de8ea5b98f6b378a964d3f365b4c74acec0aae30f41687b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad0ce2d2f68adef87de8ea5b98f6b378a964d3f365b4c74acec0aae30f41687b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.AtlasObstruction.Variantad0ce2d2f68adef87de8ea5b98f6b378a964d3f365b4c74acec0aae30f41687b","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"ad0ce2d2f68adef87de8ea5b98f6b378a964d3f365b4c74acec0aae30f41687b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/ad0ce2d2f68adef87de8ea5b98f6b378a964d3f365b4c74acec0aae30f41687b.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Semantics.Atlas.TargetQuotient

/-!
# Proof-bearing merge and separation decisions

Positive status contains an actual recovery proof for every target. Negative
status contains the existing recovery obstruction, indexed by the named target.
The finite checker never treats a failed search as positive evidence: after
searching it separately checks the universal descent condition. `undetermined`
is available to partial future tooling.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtlasObstruction.Variantad0ce2d2f68adef87de8ea5b98f6b378a964d3f365b4c74acec0aae30f41687b

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

universe u v

variable {X : Type u}

/-- A named target and an existing collision certificate for the proposed coordinate. -/
structure AtlasObstruction (targets : TargetFamily.{u, v} X) (coordinate : Coordinate X) where
  /-- Index of the declared target whose values the coordinate fails to retain. -/
  target : Fin targets.count
  /-- Explicit indistinguishable inputs with different values of the named target. -/
  collision : RecoveryObstruction coordinate.observe (targets.value target)

/-- This wrapper uses the original collision theorem without reimplementing it. -/
theorem collision_blocks_descent {Y : Type v} (q : X → Y) {Z : Type*} (target : X → Z)
    {x y : X} (same : q x = q y) (different : target x ≠ target y) :
    ¬ RecoverableFrom q target := not_recoverableFrom_of_collision q target same different

/-- A refinement is required if this target is to become recoverable: this
certificate proves insufficiency of the current coordinate, not success of a future one. -/
theorem obstruction_requires_refinement {targets : TargetFamily.{u, v} X}
    {coordinate : Coordinate X} (obstruction : AtlasObstruction targets coordinate) :
    ¬ RecoverableFrom coordinate.observe (targets.value obstruction.target) :=
  obstruction.collision.notRecoverable

/-- The three admitted states of a proposed merge, with proof-bearing terminal states. -/
inductive MergeStatus (targets : TargetFamily.{u, v} X) (coordinate : Coordinate X)
  | provedSafe (proof : ∀ i, RecoverableFrom coordinate.observe (targets.value i))
  | provedObstructed (obstruction : AtlasObstruction targets coordinate)
  | undetermined

/-- Inspectable status tag; it cannot substitute for the certificate carried by `MergeStatus`. -/
inductive MergeStatusTag
  | provedSafe
  | provedObstructed
  | undetermined
  deriving DecidableEq, Repr

/-- Extract a displayable state tag without replacing the underlying proof or obstruction. -/
def MergeStatus.tag {targets : TargetFamily.{u, v} X} {coordinate : Coordinate X} :
    MergeStatus targets coordinate → MergeStatusTag
  | .provedSafe _ => .provedSafe
  | .provedObstructed _ => .provedObstructed
  | .undetermined => .undetermined

/-- Test a single finite target/input pair and retain the actual collision proof. -/
def collisionAt {n : ℕ} (targets : TargetFamily (Fin n)) (coordinate : Coordinate (Fin n))
    (candidate : Fin targets.count × Fin n × Fin n) :
    Option (AtlasObstruction targets coordinate) :=
  if same : coordinate.relation candidate.2.1 candidate.2.2 then
    if different : targets.value candidate.1 candidate.2.1 ≠
        targets.value candidate.1 candidate.2.2 then
      some ⟨candidate.1, candidate.2.1, candidate.2.2, Quotient.sound same, different⟩
    else none
  else none

/-- Deterministic exhaustive finite checking; each terminal result is a theorem or witness. -/
def inspectCoordinate {n : ℕ} (targets : TargetFamily (Fin n))
    (coordinate : Coordinate (Fin n)) : MergeStatus targets coordinate :=
  let candidates := (List.finRange targets.count).flatMap fun i =>
    (List.finRange n).flatMap fun x => (List.finRange n).map fun y => (i, x, y)
  match candidates.findSome? (collisionAt targets coordinate) with
  | some obstruction => .provedObstructed obstruction
  | none =>
    if safe : ∀ i x y, coordinate.relation x y → targets.value i x = targets.value i y then
      .provedSafe (fun i => (recoverableFrom_quotient_iff coordinate.relation
        (targets.value i)).mpr (safe i))
    else .undetermined

/-- Simultaneous observation through a finite list of coordinates. -/
def jointCoordinate {k : ℕ} (coordinates : Fin k → Coordinate X) : Coordinate X where
  relation :=
    { r := fun x y => ∀ b, (coordinates b).relation x y
      iseqv := ⟨fun x b => (coordinates b).relation.refl x,
        fun related b => (coordinates b).relation.symm (related b),
        fun first second b => (coordinates b).relation.trans (first b) (second b)⟩ }
  relationDecidable := fun x y =>
    show Decidable (∀ b, (coordinates b).relation x y) from inferInstance

/-- A family separates every target distinction when some member sees each such pair. -/
def TargetSeparating (targets : TargetFamily.{u, v} X) {k : ℕ}
    (coordinates : Fin k → Coordinate X) : Prop :=
  ∀ i x y, targets.value i x ≠ targets.value i y →
    ∃ b, ¬ (coordinates b).relation x y

/-- Joint recovery is exactly finite target separation, with no claim about undeclared targets. -/
theorem target_separating_iff (targets : TargetFamily.{u, v} X) {k : ℕ}
    (coordinates : Fin k → Coordinate X) :
    TargetSeparating targets coordinates ↔
      ∀ i, RecoverableFrom (jointCoordinate coordinates).observe (targets.value i) := by
  classical
  constructor
  · intro separating i
    apply (recoverableFrom_quotient_iff _ _).mpr
    intro x y same
    by_contra different
    obtain ⟨b, distinguishes⟩ := separating i x y different
    exact distinguishes (same b)
  · intro recovery i x y different
    by_contra invisible
    push Not at invisible
    exact different ((recovery i).eq_of_eq (Quotient.sound invisible))

/-- Separation states carry a theorem or a collision invisible to every coordinate. -/
inductive SeparationStatus (targets : TargetFamily.{u, v} X) {k : ℕ}
    (coordinates : Fin k → Coordinate X)
  | targetSeparating (proof : TargetSeparating targets coordinates)
  | obstructed (obstruction : AtlasObstruction targets (jointCoordinate coordinates))
  | undetermined

/-- A finite coordinate-family classifier suitable for future attachment tooling. -/
def inspectSeparation {n k : ℕ} (targets : TargetFamily (Fin n))
    (coordinates : Fin k → Coordinate (Fin n)) : SeparationStatus targets coordinates :=
  match inspectCoordinate targets (jointCoordinate coordinates) with
  | .provedSafe proof => .targetSeparating ((target_separating_iff targets coordinates).mpr proof)
  | .provedObstructed obstruction => .obstructed obstruction
  | .undetermined => .undetermined

end FormalResearch.MathematicalTooling.Semantics.Atlas
