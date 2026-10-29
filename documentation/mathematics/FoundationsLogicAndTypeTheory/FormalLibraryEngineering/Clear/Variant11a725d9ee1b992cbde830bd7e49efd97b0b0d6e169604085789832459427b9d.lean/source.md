# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clear.Variant11a725d9ee1b992cbde830bd7e49efd97b0b0d6e169604085789832459427b9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aee52621cb0cf0d18de8a3c081ec95092f77f8ac` · SHA-256 `fa70e94006f8c3d150ce24a806da3f1d21c2e31ef7569d16462717c234a75850`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabMClear.Variant5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabMClear.Variant5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Clear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Std.Tactic.Do.Syntax
public import Lean.Elab.Tactic.Do.ProofMode.Focus


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabMClear.Variant5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab Tactic Meta

@[builtin_tactic Lean.Parser.Tactic.mclear]
def elabMClear : Tactic
  | `(tactic| mclear $hyp:ident) => do
    let mvar ← getMainGoal
    mvar.withContext do
    let g ← instantiateMVars <| ← mvar.getType
    let some goal := parseMGoal? g | throwError "not in proof mode"
    let res ← goal.focusHypWithInfo hyp
    let m ← mkFreshExprSyntheticOpaqueMVar (res.restGoal goal).toExpr

    mvar.assign (mkApp7 (mkConst ``Clear.clear [goal.u]) goal.σs goal.hyps
      res.restHyps res.focusHyp goal.target res.proof m)
    replaceMainGoal [m.mvarId!]
  | _ => throwUnsupportedSyntax
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c3d5a5bb46ef8d0cf40a919aa79c923e174f206b0bd6a981a93e86131adc76e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variant11a725d9ee1b992cbde830bd7e49efd97b0b0d6e169604085789832459427b9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
