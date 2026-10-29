# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nonempty.Variant3ecc0eb9b40cf9d75b35494a1909ec8ad564bde0b89b92daf3d2cb9b8ec6a5a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a14cab0ad636e7731e4d1990b77c1210bb5bfdd` · SHA-256 `c48df6539eef4daf72b58cbfd18ea509101ea05707a299360b9b03497c2eb6f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNonemptyInstance.Variant52b0305e85cd5b5cbe6512f47f8d5933b81c5e14bb633e8dc3b2f236049ce40c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52b0305e85cd5b5cbe6512f47f8d5933b81c5e14bb633e8dc3b2f236049ce40c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkNonemptyInstance.Variant52b0305e85cd5b5cbe6512f47f8d5933b81c5e14bb633e8dc3b2f236049ce40c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"52b0305e85cd5b5cbe6512f47f8d5933b81c5e14bb633e8dc3b2f236049ce40c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Deriving/Nonempty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNonemptyInstance.Variant52b0305e85cd5b5cbe6512f47f8d5933b81c5e14bb633e8dc3b2f236049ce40c

public section

namespace Lean.Elab.Deriving
open Command Meta Parser Term

private def mkNonemptyInstance (declName : Name) : TermElabM Syntax.Command := do
  let indVal ← getConstInfoInduct declName
  forallTelescopeReducing indVal.type fun paramsIndices _ => do
  let mut indArgs := #[]
  let mut binders := #[]
  for x in paramsIndices do
    let arg := mkIdent (← mkFreshUserName (← x.fvarId!.getUserName).eraseMacroScopes)
    indArgs := indArgs.push arg
    binders := binders.push (← `(bracketedBinderF| {$arg}))
    if let .sort u ← whnf (← inferType x) then
      if let .some _ ← decLevel? u then
        binders := binders.push (← `(bracketedBinderF| [Nonempty $arg]))
  let ctorTacs ← indVal.ctors.toArray.mapM fun ctor =>
    `(tactic| apply @$(mkCIdent ctor) <;> exact Classical.ofNonempty)
  `(command| variable $binders* in
    instance : Nonempty (@$(mkCIdent declName) $indArgs*) :=
      by constructor; first $[| $ctorTacs:tactic]*)

def mkNonemptyInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    for declName in declNames do
      withoutExposeFromCtors declName do
        elabCommand (← liftTermElabM do mkNonemptyInstance declName)
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler `Nonempty mkNonemptyInstanceHandler
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e4fc121599078d5fe4257aeaf19af6c93af2ec92d9d737c6416d7f8cc420d08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nonempty/Variant3ecc0eb9b40cf9d75b35494a1909ec8ad564bde0b89b92daf3d2cb9b8ec6a5a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
