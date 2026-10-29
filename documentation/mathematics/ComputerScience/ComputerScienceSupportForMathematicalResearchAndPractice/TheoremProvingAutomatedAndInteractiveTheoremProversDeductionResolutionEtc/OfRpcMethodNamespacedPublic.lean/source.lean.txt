-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfRpcMethodTemplate.Variantc50bd8731e2fd0237cdb0dacc5b72c7e03a42f2bc889acc3a95fd660ef04e61d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c50bd8731e2fd0237cdb0dacc5b72c7e03a42f2bc889acc3a95fd660ef04e61d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OfRpcMethodTemplate.Variantc50bd8731e2fd0237cdb0dacc5b72c7e03a42f2bc889acc3a95fd660ef04e61d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c50bd8731e2fd0237cdb0dacc5b72c7e03a42f2bc889acc3a95fd660ef04e61d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/OfRpcMethod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import ProofWidgets.Data.Html
public import ProofWidgets.Cancellable


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfRpcMethodTemplate.Variantc50bd8731e2fd0237cdb0dacc5b72c7e03a42f2bc889acc3a95fd660ef04e61d

public meta section

namespace ProofWidgets
open Lean Server Meta Elab Term

def ofRpcMethodTemplate := include_str ".." / ".." / "widget" / "js" / "ofRpcMethod.js"

/-- The elaborator `mk_rpc_widget%` allows writing certain widgets in Lean instead of JavaScript.
Specifically, it translates an RPC method of type `MyProps → RequestM (RequestTask Html)`
into a widget component of type `Component MyProps`.

Even more specifically, we can write:
```lean
open Lean Server

structure MyProps where
  ...
  deriving RpcEncodable

@[server_rpc_method]
def MyComponent.rpc (ps : MyProps) : RequestM (RequestTask Html) :=
  ...

@[widget_module]
def MyComponent : Component MyProps :=
  mk_rpc_widget% MyComponent.rpc
```

This is convenient because we can program the logic that computes an output HTML tree
given input props in Lean directly.

⚠️ However, note that there are several limitations on what such component can do
compared to ones written natively in TypeScript or JavaScript:
- It must be pure, i.e. cannot directly store any React state.
  Child components may store state as usual.
- It cannot pass closures as props to the child components that it returns.
  For example, it is not currently possible to write click event handlers in Lean
  and pass them to a `<button onClick={..}>` child.
- Every time the input props change, the infoview has to send a message to the Lean server
  in order to invoke the RPC method.
  Thus there can be a noticeable visual delay between the input props changing
  and the display updating.
  Consequently, components whose props change at a high frequency
  (e.g. depending on the mouse position)
  should not be implemented using this method.

💡 Note that an inverse transformation is already possible.
Given `MyComponent : Component MyProps`, we can write:
```lean
open Lean Server

@[server_rpc_method]
def MyComponent.rpc (ps : MyProps) : RequestM (RequestTask Html) :=
  RequestM.asTask do
    return Html.ofComponent MyComponent ps #[]
```
-/
elab "mk_rpc_widget%" fn:term : term <= expectedType => do
  let α ← mkFreshExprMVar (some (.sort .one)) (userName := `α)
  let compT ← mkAppM ``Component #[α]
  if !(← isDefEq expectedType compT) then
    throwError "expected type{indentD expectedType}\nis not of the form{indentD compT}"
  let arr ← mkArrow α (← mkAppM ``RequestM #[← mkAppM ``RequestTask #[.const ``Html []]])
  let fn ← Term.elabTermEnsuringType fn arr
  let fn ← instantiateMVars fn
  if let .const nm .. := fn then
    let cancellableNm := nm ++ cancellableSuffix
    if (← existsBuiltinRpcProcedure cancellableNm) || userRpcProcedures.contains (← getEnv) cancellableNm then
      -- Use the cancellable variant if possible.
      let code : StrLit := quote $ ofRpcMethodTemplate
        |>.replace "$RPC_METHOD" (toString cancellableNm)
        |>.replace "window.toString()" "'true'"
      let valStx ← `({ javascript := $code })
      let ret ← elabTerm valStx expectedType
      return ret
    if !(← existsBuiltinRpcProcedure nm) && !userRpcProcedures.contains (← getEnv) nm then
      throwError s!"'{nm}' is not a known RPC method. Use `@[server_rpc_method]` to register it."
    -- https://github.com/leanprover/lean4/issues/1415
    let code : StrLit := quote $ ofRpcMethodTemplate
      |>.replace "$RPC_METHOD" (toString nm)
      |>.replace "window.toString()" "'false'"
    let valStx ← `({ javascript := $code })
    let ret ← elabTerm valStx expectedType
    return ret
  throwError "Expected the name of a constant, got a complex term{indentD fn}"

end ProofWidgets
