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
