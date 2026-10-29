-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AssumptionRecord.Variant4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AssumptionRecord.Variant4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731","mathematical_subject":"Computation.DataStructures","original_sha256":"4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/AssumptionContext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.FiniteRegistry

/-!
# Finite versioned assumption contexts

An assumption context contains stable records, an explicit version identity,
and declared conflicts. It is metadata about hypotheses, not a `List Prop`
from which arbitrary propositions can be eliminated.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AssumptionRecord.Variant4cee75f1e78b20832480a01067706d5853e8440b292db2bf82ff9ec2a2689731

namespace Surface.ContinuousAssurance.WorldModel

/-- One stable, authority-labelled mathematical assumption. -/
structure AssumptionRecord where
  identity : AssumptionId
  statement : String
  version : DAF.Version
  sourceAuthority : AuthorityClass
  provenance : List ArtifactIdentity
  deriving DecidableEq, Repr

/-- A finite assumption context with explicit conflict pairs. -/
structure AssumptionContext where
  identity : ArtifactIdentity
  version : DAF.Version
  assumptions : FiniteRegistry AssumptionRecord
  key_is_identity :
    ∀ record, assumptions.key record = record.identity.value
  conflicts : List (AssumptionId × AssumptionId)

namespace AssumptionContext

/-- Stable identifier membership. -/
def contains (context : AssumptionContext) (id : AssumptionId) : Prop :=
  ∃ record ∈ context.assumptions.entries, record.identity = id

/-- Context inclusion compares stable assumption identifiers. -/
def Subset (left right : AssumptionContext) : Prop :=
  ∀ id, left.contains id → right.contains id

/-- A declared conflict is symmetric at query time. -/
def Conflict (context : AssumptionContext) (left right : AssumptionId) : Prop :=
  (left, right) ∈ context.conflicts ∨ (right, left) ∈ context.conflicts

/-- Every context is included in itself. -/
theorem subset_refl (context : AssumptionContext) : context.Subset context :=
  fun _ h ↦ h

/-- Context inclusion is transitive. -/
theorem subset_trans
    {first second third : AssumptionContext}
    (hfirst : first.Subset second)
    (hsecond : second.Subset third) :
    first.Subset third :=
  fun id hid ↦ hsecond id (hfirst id hid)

/-- Declared conflict queries are symmetric. -/
theorem conflict_comm
    {context : AssumptionContext} {left right : AssumptionId} :
    context.Conflict left right ↔ context.Conflict right left := by
  constructor <;> intro h <;> exact h.elim Or.inr Or.inl

/--
Union is admitted only with a proof that cross-context keys are disjoint.
The supplied identity/version explicitly name the resulting context.
-/
def union
    (left right : AssumptionContext)
    (identity : ArtifactIdentity)
    (version : DAF.Version)
    (crossUnique :
      ∀ l ∈ left.assumptions.entries,
        ∀ r ∈ right.assumptions.entries,
          l.identity.value ≠ r.identity.value) :
    AssumptionContext where
  identity := identity
  version := version
  assumptions :=
    { entries := left.assumptions.entries ++ right.assumptions.entries
      key := fun record ↦ record.identity.value
      keys_unique := by
        intro first second hfirst hsecond hkey
        simp only [List.mem_append] at hfirst hsecond
        rcases hfirst with hfirst | hfirst <;>
          rcases hsecond with hsecond | hsecond
        · apply left.assumptions.keys_unique hfirst hsecond
          simpa [left.key_is_identity first, left.key_is_identity second] using hkey
        · exact False.elim (crossUnique first hfirst second hsecond hkey)
        · exact False.elim (crossUnique second hsecond first hfirst hkey.symm)
        · apply right.assumptions.keys_unique hfirst hsecond
          simpa [right.key_is_identity first, right.key_is_identity second] using hkey }
  key_is_identity := fun _ ↦ rfl
  conflicts := left.conflicts ++ right.conflicts

/-- The left context embeds into an admitted union. -/
theorem subset_union_left
    (left right : AssumptionContext)
    (identity : ArtifactIdentity)
    (version : DAF.Version)
    (crossUnique) :
    left.Subset (left.union right identity version crossUnique) := by
  intro id
  rintro ⟨record, hrecord, rfl⟩
  exact ⟨record, List.mem_append_left _ hrecord, rfl⟩

/-- Map assumption identities and statements through an injective key map. -/
def mapping
    (context : AssumptionContext)
    (identity : ArtifactIdentity)
    (version : DAF.Version)
    (f : AssumptionRecord → AssumptionRecord)
    (mappedUnique :
      ∀ {left right},
        left ∈ context.assumptions.entries.map f →
        right ∈ context.assumptions.entries.map f →
        left.identity.value = right.identity.value →
        left = right) :
    AssumptionContext where
  identity := identity
  version := version
  assumptions :=
    { entries := context.assumptions.entries.map f
      key := fun record ↦ record.identity.value
      keys_unique := mappedUnique }
  key_is_identity := fun _ ↦ rfl
  conflicts := []

end AssumptionContext

end Surface.ContinuousAssurance.WorldModel
