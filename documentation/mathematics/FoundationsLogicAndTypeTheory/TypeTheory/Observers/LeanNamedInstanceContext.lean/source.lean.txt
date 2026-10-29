import Lean

/-! A bounded observation of Lean 4.33's active named-instance index.

The formal substrate is upstream Lean. This local observer uses the
`Lean.Meta.instanceExtension` API from `Lean/Meta/Instances.lean` and the
state stack from `Lean/ScopedEnvExtension.lean`; the host pins their source
bytes and compiler. The observation does not recover theorem-local instances,
all discrimination-tree entries, arbitrary extension effects or full context.
-/
namespace LeanNamedInstanceContext
open Lean

def attrKind : AttributeKind → String
  | .global => "global"
  | .local => "local"
  | .scoped => "scoped"

def observe (env : Environment) : Except String Json := do
  let state := Meta.instanceExtension.getState env
  let entries := state.instanceNames.toArray.qsort (fun a b => Name.lt a.1 b.1)
  if entries.size > 100000 then throw "NAMED_INSTANCE_ENTRIES_100000"
  let stack := Meta.instanceExtension.ext.getState env |>.stateStack
  if stack.length > 128 then throw "NAMED_INSTANCE_SCOPE_STACK_128"
  let mut rows : Array Json := #[]
  for (name, entry) in entries do
    if entry.globalName? != some name then throw "NAMED_INSTANCE_INDEX_NAME_CONTRADICTION"
    let references := entry.val.getUsedConstants.qsort Name.lt |>.map toString
    rows := rows.push (Json.mkObj [("name", toJson name.toString),
      ("priority", toJson entry.priority), ("attribute_kind", toJson (attrKind entry.attrKind)),
      ("synthesis_order", toJson entry.synthOrder), ("value_constant_references", toJson references)])
  let scopes := stack.map fun scope => Json.mkObj [
    ("active_namespaces", toJson (scope.activeScopes.toList |>.mergeSort Name.lt |>.map toString)),
    ("delimits_local", toJson scope.delimitsLocal)]
  let erased := state.erased.toList.toArray.qsort Name.lt |>.map toString
  let result := Json.mkObj [("profile", toJson "LEAN-ACTIVE-NAMED-INSTANCE-CONTEXT/v1"),
    ("status", toJson "KNOWN_PARTIAL"), ("named_instances", toJson rows), ("erased_names", toJson erased),
    ("instance_extension_scope_stack", toJson scopes), ("complete_context", toJson "UNAVAILABLE"),
    ("unavailable", toJson (["unnamed_discrimination_tree_entries", "theorem_local_instance_context",
      "other_scoped_extension_states", "notation_macro_tactic_effects"] : List String)),
    ("kernel_admission", toJson "NOT_CLAIMED")]
  if result.compress.utf8ByteSize > 16 * 1024 * 1024 then throw "NAMED_INSTANCE_JSON_BYTES_16_MIB"
  return result

end LeanNamedInstanceContext
