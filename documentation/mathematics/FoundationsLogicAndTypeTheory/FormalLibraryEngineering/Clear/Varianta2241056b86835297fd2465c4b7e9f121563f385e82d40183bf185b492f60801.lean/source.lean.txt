-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clear.Variante458f7893b0d8f6cc63f52c4e15407501beb9e99d384e2e1f32d9fd5c8c9cc18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e458f7893b0d8f6cc63f52c4e15407501beb9e99d384e2e1f32d9fd5c8c9cc18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Clear.Variante458f7893b0d8f6cc63f52c4e15407501beb9e99d384e2e1f32d9fd5c8c9cc18","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e458f7893b0d8f6cc63f52c4e15407501beb9e99d384e2e1f32d9fd5c8c9cc18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Clear_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Clear_
import Mathlib.Tactic.Replace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clear.Variante458f7893b0d8f6cc63f52c4e15407501beb9e99d384e2e1f32d9fd5c8c9cc18

set_option linter.unusedTactic false

-- Most basic test
example (_delete_this : Nat) : Nat := by
  clear_
  fail_if_success assumption
  exact 0

-- Confirms that clear_ does not delete class instances
example [_dont_delete_this : Inhabited Nat] : Inhabited Nat := by
  clear_
  assumption

-- Confirms that clear_ clears _delete_this but not dont_delete_this
example (_delete_this : Nat) (dont_delete_this : Int) : Nat := by
  clear_
  fail_if_success assumption
  exact dont_delete_this.toNat

-- Confirms that clear_ can clear hypotheses even when they have dependencies
example (_delete_this : Type) (_delete_this_dep : _delete_this)
    (_delete_this_rw : _delete_this = Nat)
    (_delete_this_dep_dep : _delete_this_dep = _delete_this_dep) : Nat := by
  clear_
  fail_if_success
    rw [← _delete_this_rw]
  exact 0

-- Confirms that clear_ does not clear hypotheses
-- when they have dependencies that should not be cleared
example (_dont_delete_this : Type) (dep : _dont_delete_this) : _dont_delete_this := by
  clear_
  assumption

-- Confirms that clear_ does not break the goal
example (_dont_delete_this : Type) : _dont_delete_this = _dont_delete_this := by
  clear_
  rfl

-- Confirms that clear_ clears all that it can even if some underscored hypotheses cannot be cleared
example (_dont_delete_this : Type) (_delete_this : _dont_delete_this = _dont_delete_this) :
  _dont_delete_this = _dont_delete_this := by
  clear_
  fail_if_success assumption
  rfl
