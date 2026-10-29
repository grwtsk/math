-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WidgetInstance.Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.WidgetInstance.Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Widget/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Wojciech Nawrocki. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Wojciech Nawrocki
-/
module

prelude
public import Lean.Server.Rpc.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WidgetInstance.Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7

public section

namespace Lean.Widget

/-- An instance of a widget component:
the identifier of a widget module and the hash of its JS source code
together with props.

See the [manual entry](https://lean-lang.org/documentation/widgets/)
for more information about widgets. -/
structure WidgetInstance where
  /-- Name of the `@[widget_module]`. -/
  id : Name
  /-- Hash of the JS source of the widget module. -/
  javascriptHash : UInt64
  /-- Arguments to be passed to the component's default exported function.
  Must be a JSON object.

  In certain contexts
  (such as when rendering as a panel widget; see `Widget.savePanelWidgetInfo`),
  the Lean infoview appends additional fields to this object.

  Props may contain RPC references,
  so must be stored as a `StateM` computation
  with access to the RPC object store. -/
  props : StateM Server.RpcObjectStore Json
  deriving Server.RpcEncodable

/-- A widget module is a unit of source code that can execute in the infoview.

Every module definition must either be annotated with `@[widget_module]`,
or use a value of `javascript` identical to that of another definition
annotated with `@[widget_module]`.
This makes it possible for the infoview to load the module.

See the [manual entry](https://lean-lang.org/examples/1900-1-1-widgets/)
for more information on how to use the widgets system. -/
structure Module where
  /-- A JS [module](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules)
  intended for use in user widgets.

  The JS environment in which modules execute
  provides a fixed set of libraries accessible via direct `import`,
  notably [`@leanprover/infoview`](https://www.npmjs.com/package/@leanprover/infoview)
  and [`react`](https://www.npmjs.com/package/react).

  To initialize this field from an external JS file,
  you may use `include_str "path"/"to"/"file.js"`.
  However **beware** that this does not register a dependency with Lake,
  so your Lean module will not automatically be rebuilt
  when the `.js` file changes. -/
  javascript : String
  /-- The hash is cached to avoid recomputing it whenever the `Module` is used. -/
  javascriptHash : { x : UInt64 // x = hash javascript } := ⟨hash javascript, rfl⟩

end Lean.Widget
