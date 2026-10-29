# Check Tactic Namespaced Public Mk Check Goal Type — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d87f3c208873f58c440d345789315016b98af49` · SHA-256 `878ae28219dd3be31e63cd2b5cce3d4500ee577513c695e473855b362655bfac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCheckGoalType.Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkCheckGoalType.Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/CheckTactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCheckGoalType.Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7

public section

namespace Lean.Meta.CheckTactic

def mkCheckGoalType (val type : Expr) : MetaM Expr := do
  let lvl ← mkFreshLevelMVar
  pure <| mkApp2 (mkConst ``CheckGoalType [lvl]) type val

def matchCheckGoalType (stx : Syntax) (goalType : Expr) : MetaM (Expr × Expr × Level) := do
  let u ← mkFreshLevelMVar
  let type ← mkFreshExprMVar (some (.sort u))
  let val  ← mkFreshExprMVar (some type)
  let extType := mkAppN (.const ``CheckGoalType [u]) #[type, val]
  if !(← isDefEq goalType extType) then
    throwErrorAt stx "Goal{indentExpr goalType}\nis expected to match {indentExpr extType}"
  pure (val, type, u)

end Lean.Meta.CheckTactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=001b6e10403bd494e3e5aa0ac198bdba0cff9908d92b0f2159a1a574aeac9691 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant84d23005fdaabb2b48049847ddd9081b033582a68179a7df4502654f55d84c04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
