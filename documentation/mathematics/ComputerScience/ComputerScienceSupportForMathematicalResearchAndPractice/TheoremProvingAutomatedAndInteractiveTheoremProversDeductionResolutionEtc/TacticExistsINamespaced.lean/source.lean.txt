-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant970ddcfaebbd5b57815ec5fb274766400a5c082c04ea7abc9154369df0af344c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"970ddcfaebbd5b57815ec5fb274766400a5c082c04ea7abc9154369df0af344c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SourceUnit.Variant970ddcfaebbd5b57815ec5fb274766400a5c082c04ea7abc9154369df0af344c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"970ddcfaebbd5b57815ec5fb274766400a5c082c04ea7abc9154369df0af344c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ExistsI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Gabriel Ebner, Moritz Doll
-/

import Mathlib.Init
/-!
# The `existsi` tactic
This file defines the `existsi` tactic: its purpose is to instantiate existential quantifiers.
Internally, it applies the `refine` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant970ddcfaebbd5b57815ec5fb274766400a5c082c04ea7abc9154369df0af344c

namespace Mathlib.Tactic

/--
`existsi e₁, e₂, ⋯` applies the tactic `refine ⟨e₁, e₂, ⋯, ?_⟩`. It's purpose is to instantiate
existential quantifiers.

Examples:

```lean
example : ∃ x : Nat, x = x := by
  existsi 42
  rfl

example : ∃ x : Nat, ∃ y : Nat, x = y := by
  existsi 42, 42
  rfl
```
-/
macro "existsi " es:term,+ : tactic =>
  `(tactic| refine ⟨$es,*, ?_⟩)

end Mathlib.Tactic
