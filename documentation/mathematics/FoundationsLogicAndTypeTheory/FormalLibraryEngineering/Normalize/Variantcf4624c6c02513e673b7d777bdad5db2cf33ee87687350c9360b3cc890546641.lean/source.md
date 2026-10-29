# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variantcf4624c6c02513e673b7d777bdad5db2cf33ee87687350c9360b3cc890546641

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a670c21a800ae37e3e02c327d1b32f4406aaaf3` · SHA-256 `7ecf2ad2b631d431d26ce5cd920418e814b90e09c4e70e1b1ed76c53b0e36243`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalBVNormalize.Variant5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalBVNormalize.Variant5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/BVDecide/Normalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module
prelude
public import Lean.Meta.Tactic.BVDecide.Normalize


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalBVNormalize.Variant5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c

namespace Lean.Elab.Tactic.BVDecide
namespace Normalize

@[builtin_tactic Lean.Parser.Tactic.bvNormalize]
def evalBVNormalize : Tactic := fun
  | `(tactic| bv_normalize $cfg:optConfig) => do
    let cfg ← Meta.Tactic.BVDecide.elabBVDecideConfig cfg
    let g ← getMainGoal
    match ← Meta.Tactic.BVDecide.Normalize.bvNormalize g cfg with
    | some newGoal => replaceMainGoal [newGoal]
    | none => replaceMainGoal []
  | _ => throwUnsupportedSyntax

end Normalize
end Lean.Elab.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c2eb4d8af4b8e4106f8ff6c9cadd83ff34d3032e54551fbd616c96f70883042 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantcf4624c6c02513e673b7d777bdad5db2cf33ee87687350c9360b3cc890546641.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
