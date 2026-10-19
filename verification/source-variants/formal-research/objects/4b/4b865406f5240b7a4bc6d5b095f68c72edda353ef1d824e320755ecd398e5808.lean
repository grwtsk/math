import Lean

/-!
# Bounded compiled-environment events

The compiled Lean environment is emitted as a stream of small events.  Local
handles exist only for the lifetime of one stream; the Rust router replaces
them with content-addressed element keys before anything is persisted.
-/

open Lean

namespace MathematicsLeanEnvironmentExtractElements

def inlineScalarBytes : Nat := 4096

structure EventEmitter where
  nextHandle : IO.Ref Nat

def EventEmitter.create : IO EventEmitter := do
  return { nextHandle := ← IO.mkRef 0 }

def EventEmitter.fresh (emitter : EventEmitter) : IO Nat := do
  let handle ← emitter.nextHandle.get
  emitter.nextHandle.set (handle + 1)
  return handle

def EventEmitter.emit (_emitter : EventEmitter) (event : Json) : IO Unit :=
  IO.println event.compress

private partial def charChunks : List Char → List String
  | [] => []
  | characters =>
      let (head, tail) := characters.splitAt 1024
      String.ofList head :: charChunks tail

def EventEmitter.scalarField (emitter : EventEmitter) (value : String) : IO Json := do
  let bytes := value.toUTF8.size
  if bytes ≤ inlineScalarBytes then
    return Json.mkObj [
      ("kind", toJson "scalar"),
      ("value", toJson value)
    ]
  let mut handles := #[]
  for chunk in charChunks value.toList do
    let handle ← emitter.fresh
    emitter.emit <| Json.mkObj [
      ("event", toJson "scalar-chunk"),
      ("handle", toJson handle),
      ("utf8", toJson chunk)
    ]
    handles := handles.push handle
  return Json.mkObj [
    ("chunkHandles", toJson handles),
    ("kind", toJson "chunked-scalar"),
    ("utf8Bytes", toJson bytes)
  ]

def childField (handle : Nat) : Json :=
  Json.mkObj [
    ("handle", toJson handle),
    ("kind", toJson "child")
  ]

def EventEmitter.node
    (emitter : EventEmitter) (tag : String) (fields : Array Json := #[]) : IO Nat := do
  let handle ← emitter.fresh
  emitter.emit <| Json.mkObj [
    ("event", toJson "node"),
    ("fields", toJson fields),
    ("handle", toJson handle),
    ("tag", toJson tag)
  ]
  return handle

end MathematicsLeanEnvironmentExtractElements
