# Data KVMap Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62e8061120c24a45e5b322c7488872cd229870c4` · SHA-256 `d3bc05847d5d96a8318cf6a91d683a09aa8afbe6406c6be4c155351fa3d0ff80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EraseCore.Variant674a21d281fba6866c9cd70d71649dbbd031c95bbce3afc1b0efb29f9a5497ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"674a21d281fba6866c9cd70d71649dbbd031c95bbce3afc1b0efb29f9a5497ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EraseCore.Variant674a21d281fba6866c9cd70d71649dbbd031c95bbce3afc1b0efb29f9a5497ff","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"674a21d281fba6866c9cd70d71649dbbd031c95bbce3afc1b0efb29f9a5497ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/KVMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Lean.Data.KVMap

/-!
# Additional functionality for `KVMap`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EraseCore.Variant674a21d281fba6866c9cd70d71649dbbd031c95bbce3afc1b0efb29f9a5497ff

namespace Lean.KVMap

/-- erase pairs whose names match the second argument from a list of
`Name × DataValue` pairs-/
def eraseCore : List (Name × DataValue) → Name → List (Name × DataValue)
  | l, n => List.filter (fun a ↦ a.1 ≠ n) l

/-- erase an entry from the map -/
def erase : KVMap → Name → KVMap
  | ⟨m⟩, k => ⟨eraseCore m k⟩

/-- update a Boolean entry based on its current value. -/
def updateBool (m : KVMap) (k : Name) (f : Bool → Bool) : KVMap :=
  m.insert k <| DataValue.ofBool <| f <| m.getBool k

end Lean.KVMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b6c3c81fcd95ee07d6d46ca5589c328d932cb1d9cee0453ca13b8cc10114c4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KVMap/Varianta79f5fe3e39c2a127f0c8c6c5af6ae41789ec97ccfe34625b9981badc84bd90d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
