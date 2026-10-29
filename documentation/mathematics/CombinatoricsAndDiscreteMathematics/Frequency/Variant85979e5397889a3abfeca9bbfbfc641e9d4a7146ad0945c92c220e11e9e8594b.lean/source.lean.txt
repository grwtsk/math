-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FrequencyWeight.Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FrequencyWeight.Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Frequency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Checker
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finset.Card

/-!
# Exactly-once generation frequencies

Frequency is a natural-valued scheduling coordinate.  It carries no theorem
authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FrequencyWeight.Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446

namespace Mathematics.Resolution

universe u v w

def InvocationCut.frequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (obligation : Obligation) :
    Nat :=
  (cut.events.filter fun event ↦
    cut.canonicalize event = obligation).card

theorem InvocationCut.frequency_positive
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    {obligation : Obligation}
    (required : obligation ∈ cut.obligations) :
    0 < cut.frequency obligation := by
  apply Finset.card_pos.mpr
  refine ⟨cut.seed obligation, ?_⟩
  exact Finset.mem_filter.mpr
    ⟨cut.seed_mem obligation required,
      cut.seed_target obligation required⟩

theorem committed_event_replay_idempotent
    [DecidableEq Event]
    {events : Finset Event}
    {event : Event}
    (committed : event ∈ events) :
    insert event events = events :=
  Finset.insert_eq_of_mem committed

structure FrequencyWeight where
  numerator : Nat
  denominator : Nat
  denominator_positive : 0 < denominator
  deriving Repr

def totalFrequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event) :
    Nat :=
  ∑ obligation ∈ cut.obligations, cut.frequency obligation

end Mathematics.Resolution
