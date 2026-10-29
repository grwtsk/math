-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SourceUnit.Variantf3b38898f633fdcfb50bbf913f27102a768aa9c844f85978bff6f1b47ea9f32f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3b38898f633fdcfb50bbf913f27102a768aa9c844f85978bff6f1b47ea9f32f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.SourceUnit.Variantf3b38898f633fdcfb50bbf913f27102a768aa9c844f85978bff6f1b47ea9f32f","mathematical_subject":"Algebra.OrderTheory","original_sha256":"f3b38898f633fdcfb50bbf913f27102a768aa9c844f85978bff6f1b47ea9f32f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Delab/SupInf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SourceUnit.Variantf3b38898f633fdcfb50bbf913f27102a768aa9c844f85978bff6f1b47ea9f32f

/-- info: max 1 2 : ℕ -/
#guard_msgs in
#check max (1 : ℕ) 2

/-- info: max 1 2 : ℝ -/
#guard_msgs in
#check max (1 : ℝ) 2

/-- info: ({0} ⊔ {1} ⊔ ({2} ⊔ {3})) ⊓ ({4} ⊔ {5}) ⊔ {6} ⊓ {7} ⊓ ({8} ⊓ {9}) : Set ℕ -/
#guard_msgs in
#check (max (min (max (max {0} {1}) (max {2} {3})) (max {4} {5})) (min (min {6} {7}) (min {8} {9})) : Set ℕ)


section

variable {α : Type*} (a b : α)

variable [Lattice α] in
/-- info: a ⊔ b : α -/
#guard_msgs in
#check max a b

variable [LinearOrder α] in
/-- info: max a b : α -/
#guard_msgs in
#check max a b

variable [CompleteLinearOrder α] in
/-- info: max a b : α -/
#guard_msgs in
#check max a b

variable [ConditionallyCompleteLinearOrder α] in
/-- info: max a b : α -/
#guard_msgs in
#check max a b

end

universe u

/-- info: fun α [Lattice α] a b => a ⊔ b : (α : Type u) → [Lattice α] → α → α → α -/
#guard_msgs in
#check fun (α : Type u) [Lattice α] (a b : α) => max a b

/-- info: fun α [LinearOrder α] a b => max a b : (α : Type u) → [LinearOrder α] → α → α → α -/
#guard_msgs in
#check fun (α : Type u) [LinearOrder α] (a b : α) => max a b

/--
info: fun α [CompleteLinearOrder α] a b => max a b : (α : Type u) → [CompleteLinearOrder α] → α → α → α
-/
#guard_msgs in
#check fun (α : Type u) [CompleteLinearOrder α] (a b : α) => max a b

/--
info: fun α [ConditionallyCompleteLinearOrder α] a b =>
  max a b : (α : Type u) → [ConditionallyCompleteLinearOrder α] → α → α → α
-/
#guard_msgs in
#check fun (α : Type u) [ConditionallyCompleteLinearOrder α] (a b : α) => max a b
