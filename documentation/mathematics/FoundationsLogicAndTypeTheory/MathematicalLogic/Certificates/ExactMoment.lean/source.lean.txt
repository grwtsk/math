/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Data.TypedMoments

set_option autoImplicit false

/-!
# Exact source-indexed moments

The checkin contains the repository, object format, full commit/tree/blob names,
path and occurrence. These names are syntactic identifiers: neither authenticity
of a Git object nor collision freedom of SHA is assumed or proved. An external
reader must resolve and verify the named objects. Equal observed values cannot
erase distinct checkins or repeated occurrences of the same source.
-/

namespace GRWTSK.Logic.Certificates.ExactMoment

/-- Git object formats are distinguished even when a displayed prefix agrees. -/
inductive ObjectFormat where
  | sha1
  | sha256
  deriving DecidableEq

/-- Full hexadecimal object-name width; an abbreviated SHA is not a name here. -/
def ObjectFormat.width : ObjectFormat → Nat
  | .sha1 => 40
  | .sha256 => 64

/-- A complete syntactic object name. No hash computation or uniqueness axiom. -/
structure ObjectName where
  format : ObjectFormat
  text : String
  fullWidth : text.length = format.width
  lowercaseHex : ∀ character ∈ text.toList, character ∈ "0123456789abcdef".toList
  deriving DecidableEq

/-- Exact immutable source coordinates, including the repository namespace. -/
structure Source where
  repository : String
  commit : ObjectName
  tree : ObjectName
  blob : ObjectName
  path : String
  deriving DecidableEq

/-- A repeated source occurrence remains a different checkin. -/
structure Checkin where
  source : Source
  occurrence : Nat
  deriving DecidableEq

/-- The value and its exact checkin are retained together. -/
structure Moment (Value : Type*) where
  checkin : Checkin
  value : Value

theorem Moment.same_source {Value : Type*} {left right : Moment Value}
    (equal : left = right) : left.checkin.source = right.checkin.source :=
  congrArg (fun moment => moment.checkin.source) equal

theorem Moment.same_occurrence {Value : Type*} {left right : Moment Value}
    (equal : left = right) : left.checkin.occurrence = right.checkin.occurrence :=
  congrArg (fun moment => moment.checkin.occurrence) equal

/-- A changed commit rejects moment equality even when values happen to agree. -/
theorem Moment.ne_of_commit_ne {Value : Type*} {left right : Moment Value}
    (changed : left.checkin.source.commit ≠ right.checkin.source.commit) :
    left ≠ right := by
  intro equal
  exact changed (congrArg Source.commit (Moment.same_source equal))

/-- Repeated occurrences never coalesce merely because their values agree. -/
theorem Moment.ne_of_occurrence_ne {Value : Type*} {left right : Moment Value}
    (different : left.checkin.occurrence ≠ right.checkin.occurrence) :
    left ≠ right := by
  intro equal
  exact different (Moment.same_occurrence equal)

/-- Any distinct exact source coordinate prevents equality. -/
theorem Moment.ne_of_source_ne {Value : Type*} {left right : Moment Value}
    (different : left.checkin.source ≠ right.checkin.source) : left ≠ right := by
  intro equal
  exact different (Moment.same_source equal)

/-- Evaluate a typed moment while retaining the exact source occurrence. -/
def recordTyped {Payload : Type*} (family : GRWTSK.Data.TypedMoments.Family Payload)
    (checkin : Checkin) (payload : Payload) (order : Nat) :
    Moment (family.carrier order) :=
  ⟨checkin, family.moment order payload⟩

/-- Source separation holds at every order, including orders with equal values. -/
theorem recordTyped_ne_of_checkin_ne {Payload : Type*}
    (family : GRWTSK.Data.TypedMoments.Family Payload)
    {left right : Checkin} (different : left ≠ right)
    (leftPayload rightPayload : Payload) (order : Nat) :
    recordTyped family left leftPayload order ≠ recordTyped family right rightPayload order := by
  intro equal
  exact different (congrArg Moment.checkin equal)

/-- Forgetting the occurrence is lossy for every supplied value and source. -/
theorem value_projection_not_injective {Value : Type*} (value : Value) (source : Source) :
    ¬ Function.Injective (Moment.value : Moment Value → Value) := by
  intro injective
  have equal : (⟨⟨source, 0⟩, value⟩ : Moment Value) = ⟨⟨source, 1⟩, value⟩ :=
    injective rfl
  have impossible : (0 : Nat) = 1 := Moment.same_occurrence equal
  exact Nat.zero_ne_one impossible

end GRWTSK.Logic.Certificates.ExactMoment
