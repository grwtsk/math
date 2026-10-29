# Named Patterns Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66b63a60311f924a904bcc60fa5607936ce1e542` · SHA-256 `4f67b7631668982018cc2c19245a3341a5bd0c4c659b2532d062972b292dd24d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNamedPattern.Variantc3235d971e14090c96016e297a9cf463fc87a937f3100783729613d1e338f707","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3235d971e14090c96016e297a9cf463fc87a937f3100783729613d1e338f707","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkNamedPattern.Variantc3235d971e14090c96016e297a9cf463fc87a937f3100783729613d1e338f707","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c3235d971e14090c96016e297a9cf463fc87a937f3100783729613d1e338f707","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Match/NamedPatterns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic
import Lean.Meta.AppBuilder
import Lean.Meta.WHNF
/-!
Helper functions around named patterns
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNamedPattern.Variantc3235d971e14090c96016e297a9cf463fc87a937f3100783729613d1e338f707

namespace Lean.Meta.Match

public def mkNamedPattern (x h p : Expr) : MetaM Expr :=
  mkAppM ``namedPattern #[x, p, h]

public def isNamedPattern (e : Expr) : Bool :=
  let e := e.consumeMData
  e.getAppNumArgs == 4 && e.getAppFn.consumeMData.isConstOf ``namedPattern

public def isNamedPattern? (e : Expr) : Option Expr :=
  let e := e.consumeMData
  if e.getAppNumArgs == 4 && e.getAppFn.consumeMData.isConstOf ``namedPattern then
    some e
  else
    none

public def unfoldNamedPattern (e : Expr) : MetaM Expr := do
  let visit (e : Expr) : MetaM TransformStep := do
    if let some e := isNamedPattern? e then
      if let some eNew ← unfoldDefinition? e then
        return TransformStep.visit eNew
    return .continue
  Meta.transform e (pre := visit)

end Lean.Meta.Match
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e9b39b013778dc5fb0df8395250c1a504c4f34e8747066b824cd970efaec97f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NamedPatterns/Variant3d3388b73f019378207bee9b3281223542b894d474339645e2c54416195ac580.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
