import Lean
import Surface
import Surface.Audit

/-!
# Finite patch-bundle envelope validator

This executable checks the model-facing envelope and operation bound.  Runtime
path confinement, byte hashes, and overlay source checks remain Rust-owned;
Lean's result is a deterministic finite validation receipt, never proof of the
edited theorem.
-/

open Lean

namespace SurfacePatchValidate

def bundleSchema := "surface.lean-patch-bundle.v1"

def responseSchema := "surface.refactor.patch-validation.v1"

def allowedOperations : List String := [
  "addImport",
  "removeImport",
  "applyTheorem",
  "rewriteAt",
  "replaceProofBody",
  "fillGoal",
  "replaceTerm",
  "insertAuxiliary",
  "renameAuxiliary",
  "deleteRedundantLemma",
  "createCandidateModule",
  "moveDeclaration"
]

def stringField? (json : Json) (field : String) : Option String :=
  match json.getObjValAs? String field with
  | .ok value => some value
  | .error _ => none

def operations? (json : Json) : Option (Array Json) :=
  match json.getObjVal? "operations" with
  | .error _ => none
  | .ok value => match value.getArr? with
    | .ok operations => some operations
    | .error _ => none

def operationErrors (operation : Json) : List String :=
  match stringField? operation "operation" with
  | none => ["INVALID_REQUEST: operation tag is missing"]
  | some name =>
      if allowedOperations.contains name then []
      else [s!"INVALID_REQUEST: operation is not allowed: {name}"]

def validate (json : Json) : List String :=
  let schemaErrors :=
    if stringField? json "schema" = some bundleSchema then []
    else ["INVALID_SCHEMA: expected surface.lean-patch-bundle.v1"]
  let authorityErrors :=
    if stringField? json "authority" = some "modelProposed" then []
    else ["MODEL_AUTHORITY_ERROR: authority must be modelProposed"]
  let hashErrors :=
    let projectPresent := match json.getObjVal? "projectFingerprint" with
      | .ok value => value != Json.null
      | .error _ => false
    let taskPresent := match json.getObjVal? "task" with
      | .ok value => value != Json.null
      | .error _ => false
    if projectPresent && taskPresent then []
    else ["INVALID_REQUEST: task and projectFingerprint are required"]
  let operationValidation :=
    match operations? json with
    | none => ["INVALID_REQUEST: operations must be an array"]
    | some operations =>
        let boundErrors :=
          if operations.isEmpty || operations.size > 3 then
            ["INVALID_REQUEST: operations must contain between one and three edits"]
          else []
        boundErrors ++ operations.toList.flatMap operationErrors
  schemaErrors ++ authorityErrors ++ hashErrors ++ operationValidation

def response (errors : List String) : Json :=
  Json.mkObj [
    ("schema", toJson responseSchema),
    ("valid", toJson errors.isEmpty),
    ("authority", toJson "deterministic"),
    ("statementImmutable", toJson errors.isEmpty),
    ("operationBoundSatisfied", toJson errors.isEmpty),
    ("errors", toJson errors)
  ]

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_patch_validate < patch-bundle.json"
    return 64
  let input ← (← IO.getStdin).readToEnd
  match Json.parse input with
  | .error message =>
      let result := response [s!"INVALID_SCHEMA: {message}"]
      IO.println result.compress
      pure 2
  | .ok json =>
      let errors := validate json
      IO.println (response errors).compress
      pure (if errors.isEmpty then 0 else 2)

end SurfacePatchValidate

def main (args : List String) : IO UInt32 :=
  SurfacePatchValidate.main args
