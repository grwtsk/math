import Mathematics.Core.SemanticIdentity

/-! # Dependency-declared reactive cells -/

namespace Mathematics.Reactive

universe u v

inductive DirtyClass
  | semantic
  | representation
  | runtime
  deriving DecidableEq, Repr

/-- A reactive derivation records every semantic dependency explicitly. -/
structure Cell (Value : Type u) where
  id : StableId
  revision : Nat
  value : Value
  dependencies : List ElementRef
  dirtyClass : DirtyClass

def Cell.map {α : Type u} {β : Type v}
    (cell : Cell α) (id : StableId) (transform : α → β) : Cell β where
  id := id
  revision := cell.revision
  value := transform cell.value
  dependencies := cell.dependencies
  dirtyClass := cell.dirtyClass

end Mathematics.Reactive
