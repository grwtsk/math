# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inductive.Variantb6a729221ae61f2c8b23fe6b2a410c7f2eaa2e562be2bdc7ccc4f0148b3b515f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d7f760f8e8ee2b0e516bac77a998fcea007ed46` · SHA-256 `73a8d197475d8c56d4b8f1ede445629c030343c76a1ba9e376e960cf582e1fc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibleCtors.Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"efe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CompatibleCtors.Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"efe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Inductive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibleCtors.Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60

public section

/-! # Helper methods for inductive datatypes -/

namespace Lean.Meta

/-- Return true if the types of the given constructors are compatible. -/
def compatibleCtors (ctorName₁ ctorName₂ : Name) : MetaM Bool := do
  let ctorInfo₁ ← getConstInfoCtor ctorName₁
  let ctorInfo₂ ← getConstInfoCtor ctorName₂
  if ctorInfo₁.induct != ctorInfo₂.induct then
    return false
  else
    let (_, _, ctorType₁) ← forallMetaTelescope ctorInfo₁.type
    let (_, _, ctorType₂) ← forallMetaTelescope ctorInfo₂.type
    isDefEq ctorType₁ ctorType₂

end Lean.Meta
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d357ffa81b4c03a57c47ef60208741de1858906b5766150964614d266e8d093 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantb6a729221ae61f2c8b23fe6b2a410c7f2eaa2e562be2bdc7ccc4f0148b3b515f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
