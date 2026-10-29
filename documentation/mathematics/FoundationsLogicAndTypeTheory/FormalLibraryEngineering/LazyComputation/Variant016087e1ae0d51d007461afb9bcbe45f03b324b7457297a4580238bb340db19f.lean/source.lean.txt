-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetaMStringCont.Variant9b879c88f39c523f2252e9107fd164cafb41f975a69c5c75a9d779d6d790416c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b879c88f39c523f2252e9107fd164cafb41f975a69c5c75a9d779d6d790416c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MetaMStringCont.Variant9b879c88f39c523f2252e9107fd164cafb41f975a69c5c75a9d779d6d790416c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9b879c88f39c523f2252e9107fd164cafb41f975a69c5c75a9d779d6d790416c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/LazyComputation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ProofWidgets.Component.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetaMStringCont.Variant9b879c88f39c523f2252e9107fd164cafb41f975a69c5c75a9d779d6d790416c

public meta section

open ProofWidgets
open Lean Meta Server Elab Tactic

/-- A `MetaM String` continuation, containing both the computation and all monad state. -/
structure MetaMStringCont where
  ci : Elab.ContextInfo
  lctx : LocalContext
  -- We can only derive `TypeName` for type constants, so this must be monomorphic.
  k : MetaM String
  deriving TypeName

structure RunnerWidgetProps where
  /-- A continuation to run and print the results of when the button is clicked. -/
  k : WithRpcRef MetaMStringCont
  -- Make it possible for widgets to receive `RunnerWidgetProps`. Uses the `TypeName` instance.
  deriving RpcEncodable

@[server_rpc_method]
def runMetaMStringCont : RunnerWidgetProps → RequestM (RequestTask String)
  | {k := ref} => RequestM.asTask do
    let {ci, lctx, k} := ref.val
    ci.runMetaM lctx k

@[widget_module]
def runnerWidget : Component RunnerWidgetProps where
  javascript := "
    import { RpcContext, mapRpcError } from '@leanprover/infoview'
    import * as React from 'react';
    const e = React.createElement;

    export default function(props) {
      const [contents, setContents] = React.useState('Run!')
      const rs = React.useContext(RpcContext)
      return e('button', { onClick: () => {
        setContents('Running..')
        rs.call('runMetaMStringCont', props)
          .then(setContents)
          .catch(e => { setContents(mapRpcError(e).message) })
      }}, contents)
    }
  "

syntax (name := makeRunnerTac) "make_runner" : tactic

@[tactic makeRunnerTac] def makeRunner : Tactic
  | `(tactic| make_runner%$tk) => do
    let x : MetaM String := do
      return "Hello, world!"
    -- Store the continuation and monad context.
    let props : RunnerWidgetProps := {
      k := ← WithRpcRef.mk {
        ci := { ← CommandContextInfo.save with }
        lctx := (← getLCtx)
        k := x
      }
    }
    -- Save a widget together with a pointer to `props`.
    Widget.savePanelWidgetInfo runnerWidget.javascriptHash (rpcEncode props) tk
  | _ => throwUnsupportedSyntax

example : True := by
  make_runner
  trivial
