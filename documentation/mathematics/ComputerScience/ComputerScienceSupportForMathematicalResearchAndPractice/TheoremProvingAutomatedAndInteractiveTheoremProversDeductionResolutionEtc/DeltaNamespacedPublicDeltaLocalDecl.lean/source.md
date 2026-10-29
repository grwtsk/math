# Delta Namespaced Public Delta Local Decl — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b33e8db5e8bf4c18ad5ac4a4fb818a19b34b92d1` · SHA-256 `242af7eb2c476d4e910c9b8b5262a9d3fba2e551023a80104d1446a1fb37a794`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeltaLocalDecl.Variant9660e4fd9282ea465439d493d53ecd676163d1af07e2f8d9149bfe3396a22ae8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9660e4fd9282ea465439d493d53ecd676163d1af07e2f8d9149bfe3396a22ae8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeltaLocalDecl.Variant9660e4fd9282ea465439d493d53ecd676163d1af07e2f8d9149bfe3396a22ae8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9660e4fd9282ea465439d493d53ecd676163d1af07e2f8d9149bfe3396a22ae8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Delta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Delta
public import Lean.Elab.Tactic.Location


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeltaLocalDecl.Variant9660e4fd9282ea465439d493d53ecd676163d1af07e2f8d9149bfe3396a22ae8

public section

namespace Lean.Elab.Tactic
open Meta

def deltaLocalDecl (declNames : Array Name) (fvarId : FVarId) : TacticM Unit := do
  let mvarId ← getMainGoal
  let localDecl ← fvarId.getDecl
  let typeNew ← deltaExpand localDecl.type declNames.contains
  if typeNew == localDecl.type then
    throwTacticEx `delta mvarId m!"did not delta reduce {declNames} at {localDecl.userName}"
  replaceMainGoal [← mvarId.replaceLocalDeclDefEq fvarId typeNew]

def deltaTarget (declNames : Array Name) : TacticM Unit := do
  let mvarId ← getMainGoal
  let target ← getMainTarget
  let targetNew ← deltaExpand target declNames.contains
  if targetNew == target then
    throwTacticEx `delta mvarId m!"did not delta reduce {declNames}"
  replaceMainGoal [← mvarId.replaceTargetDefEq targetNew]

/-- "delta " ident+ (location)? -/
@[builtin_tactic Lean.Parser.Tactic.delta] def evalDelta : Tactic := fun stx => do
  let declNames ← stx[1].getArgs.mapM fun stx => realizeGlobalConstNoOverloadWithInfo stx
  let loc := expandOptLocation stx[2]
  withLocation loc (deltaLocalDecl declNames) (deltaTarget declNames)
    (throwTacticEx `delta · m!"did not delta reduce {declNames}")

end Lean.Elab.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acadb35237f6d5745c243b9270332ea0d3e464ad0c3e40abc76696f46241c611 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delta/Variant3d1b1bd2026c3e9fe9425004f684f6c430ed7d6ad70d794e4bfb34320c1636ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
