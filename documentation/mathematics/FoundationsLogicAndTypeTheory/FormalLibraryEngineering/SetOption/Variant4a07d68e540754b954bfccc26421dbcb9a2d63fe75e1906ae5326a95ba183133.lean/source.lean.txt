-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThrowUnconfigurable.Variant0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ThrowUnconfigurable.Variant0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/SetOption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.InfoTree
public import Init.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThrowUnconfigurable.Variant0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e

public section
namespace Lean.Elab

register_builtin_option linter.deprecated.options : Bool := {
  defValue := true
  descr := "if true, generate deprecation warnings for deprecated options"
}

variable [Monad m] [MonadOptions m] [MonadError m] [MonadLiftT (EIO Exception) m] [MonadInfoTree m]

private def throwUnconfigurable {α} (optionName : Name) : m α :=
  throwError "Invalid `set_option` command: The option `{optionName}` cannot be configured using \
    `set_option`"

/--
Returns the type corresponding to the given `DataValue`, or `none` if the corresponding type
cannot be specified using `set_option` notation.
-/
private def ctorType? : DataValue → Option Expr
  | .ofString .. => mkConst ``String
  | .ofNat .. => mkConst ``Nat
  | .ofBool .. => mkConst ``Bool
  | .ofInt .. => none
  | .ofName .. => none
  | .ofSyntax .. => none

def validateOptionValue (optionName : Name) (decl : OptionDecl) (val : DataValue) : m Unit := do
  unless decl.defValue.sameCtor val do
    throwMistypedOptionValue val decl.defValue
where
  throwMistypedOptionValue (found defVal : DataValue) := do
    match ctorType? defVal with
    | some defValType =>
      let foundType := ctorType? found |>.get!
      throwError "set_option value type mismatch: The value{indentD (toMessageData found)}\nhas type\
        {indentD (toMessageData foundType)}\nbut the option `{optionName}` expects a value of type\
        {indentExpr defValType}"
    | _ => throwUnconfigurable optionName

/--
Elaborates `id` as an identifier representing an option name with value given by `val`, adding
appropriate info to the infotrees.

Validates that `val` has the correct type for values of the option `id`, and returns the updated
`Options`. Does **not** update the options in the monad `m`.
-/
def elabSetOption (id : Syntax) (val : Syntax) : m (Options × OptionDecl) := do
  let ref ← getRef
  -- For completion purposes, we discard `val` and any later arguments.
  -- We include the first argument (the keyword) for position information in case `id` is `missing`.
  addCompletionInfo <| CompletionInfo.option (ref.setArgs (ref.getArgs[*...3]))
  let optionName := id.getId.eraseMacroScopes
  let decl ← IO.toEIO (fun (ex : IO.Error) => Exception.error ref ex.toString) (getOptionDecl optionName)
  pushInfoLeaf <| .ofOptionInfo { stx := id, optionName, declName := decl.declName }
  let rec setOption (val : DataValue) : m (Options × OptionDecl) := do
    validateOptionValue optionName decl val
    return ((← getOptions).set optionName val, decl)
  match val.isStrLit? with
  | some str => setOption (DataValue.ofString str)
  | none     =>
  match val.isNatLit? with
  | some num => setOption (DataValue.ofNat num)
  | none     =>
  match val with
  | Syntax.atom _ "true"  => setOption (DataValue.ofBool true)
  | Syntax.atom _ "false" => setOption (DataValue.ofBool false)
  | _ =>
    if let some ctorType := ctorType? decl.defValue then
      throwError "Unexpected set_option value `{val}`; expected a literal of type `{ctorType}`"
    else
      throwUnconfigurable optionName

end Lean.Elab

namespace Lean.Elab

variable {m : Type → Type} [Monad m] [MonadOptions m] [MonadLog m] [AddMessageContext m]

def checkDeprecatedOption (optionName : Name) (decl : OptionDecl) : m Unit := do
  unless linter.deprecated.options.get (← getOptions) do return
  let some dep := decl.deprecation? | return
  let extraMsg := match dep.text? with
    | some text => m!": {text}"
    | none => m!""
  logWarning m!"`{optionName}` has been deprecated{extraMsg}"

end Lean.Elab
