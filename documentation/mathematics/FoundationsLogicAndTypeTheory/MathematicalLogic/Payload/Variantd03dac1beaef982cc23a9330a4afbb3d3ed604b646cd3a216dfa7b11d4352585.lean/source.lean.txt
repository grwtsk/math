module

public import Surface.Core.Transport.Bytes
public import Surface.Core.Transport.Revision

/-!
# Finite payload contracts

Executable codecs and semantics are separated from stable identifiers. Function
values are never hashed; a transport contract binds only the descriptor fields.
-/

public section

namespace Surface.Core.Transport

universe u v

@[surface_novel]
structure PayloadDescriptor where
  schemaId : String
  schemaVersion : Nat
  algorithmId : String
  algorithmVersion : Nat
  invariantId : String
  serializationVersion : Nat
  mergeSemanticsId : String
deriving DecidableEq, Repr

@[expose] def PayloadDescriptor.Valid (descriptor : PayloadDescriptor) : Prop :=
  descriptor.schemaId ≠ "" ∧
    0 < descriptor.schemaVersion ∧ descriptor.schemaVersion < 2 ^ 32 ∧
    descriptor.algorithmId ≠ "" ∧
    0 < descriptor.algorithmVersion ∧ descriptor.algorithmVersion < 2 ^ 32 ∧
    descriptor.invariantId ≠ "" ∧
    0 < descriptor.serializationVersion ∧
      descriptor.serializationVersion < 2 ^ 32 ∧
    descriptor.mergeSemanticsId ≠ ""

instance (descriptor : PayloadDescriptor) : Decidable descriptor.Valid := by
  unfold PayloadDescriptor.Valid
  infer_instance

@[expose] def verifyPayloadDescriptor
    (descriptor : PayloadDescriptor) : Bool :=
  decide descriptor.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyPayloadDescriptor_sound (descriptor : PayloadDescriptor)
    (accepted : verifyPayloadDescriptor descriptor = true) :
    descriptor.Valid := by
  exact of_decide_eq_true accepted

@[surface_novel]
structure PayloadCodec (ρ : Type u) (α : Type v) where
  decode? : ρ → Option α
  encode : α → CanonicalBytes
  rawMatches : ρ → α → Prop
  decodeSound : ∀ {raw payload}, decode? raw = some payload → rawMatches raw payload

@[surface_novel]
structure PayloadSemantics (α : Type u) where
  descriptor : PayloadDescriptor
  invariant : α → Prop
  expectedUpdate : Revisioned α → Revisioned α
  preservesRevision : ∀ input,
    (expectedUpdate input).revision = input.revision
  preservesInvariant : ∀ input,
    invariant input.value → invariant (expectedUpdate input).value

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_revision
    {α : Type u} (semantics : PayloadSemantics α)
    (input : Revisioned α) :
    (semantics.expectedUpdate input).revision = input.revision :=
  semantics.preservesRevision input

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_invariant
    {α : Type u} (semantics : PayloadSemantics α)
    (input : Revisioned α) (valid : semantics.invariant input.value) :
    semantics.invariant (semantics.expectedUpdate input).value :=
  semantics.preservesInvariant input valid

end Surface.Core.Transport
