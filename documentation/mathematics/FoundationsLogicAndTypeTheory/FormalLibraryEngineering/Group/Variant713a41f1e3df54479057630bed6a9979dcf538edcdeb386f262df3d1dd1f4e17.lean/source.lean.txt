-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Group.Variant2f660d49d98b35b3b7706df562baf3201f59d39e7e223ce1b08f11ba890d0450","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f660d49d98b35b3b7706df562baf3201f59d39e7e223ce1b08f11ba890d0450","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Group.Variant2f660d49d98b35b3b7706df562baf3201f59d39e7e223ce1b08f11ba890d0450","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2f660d49d98b35b3b7706df562baf3201f59d39e7e223ce1b08f11ba890d0450","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Group.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Group


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Group.Variant2f660d49d98b35b3b7706df562baf3201f59d39e7e223ce1b08f11ba890d0450

variable {G : Type} [Group G]

example (a b c : G) : c*(a*b)*(b⁻¹*a⁻¹)*c = c*c := by group

example (a b c : G) : (b*c⁻¹)*c*(a*b)*(b⁻¹*a⁻¹)*c = b*c := by group

example (a b c : G) : c⁻¹*(b*c⁻¹)*c*(a*b)*(b⁻¹*a⁻¹*b⁻¹)*c = 1 := by group

-- The following is known as the Hall-Witt identity,
-- see e.g.
-- https://en.wikipedia.org/wiki/Three_subgroups_lemma#Proof_and_the_Hall%E2%80%93Witt_identity
example (g h k : G) : g*⁅⁅g⁻¹,h⁆,k⁆*g⁻¹*k*⁅⁅k⁻¹,g⁆,h⁆*k⁻¹*h*⁅⁅h⁻¹,k⁆,g⁆*h⁻¹ = 1 := by group

example (a : G) : a^2*a = a^3 := by group

example (n m : ℕ) (a : G) : a^n*a^m = a^(n+m) := by group

example (a b c : G) : c*(a*b^2)*((b*b)⁻¹*a⁻¹)*c = c*c := by group

example (n : ℕ) (a : G) : a^n*(a⁻¹)^n = 1 := by group

example (a : G) : a^2*a⁻¹*a⁻¹ = 1 := by group

example (n m : ℕ) (a : G) : a^n*a^m = a^(m+n) := by group

example (n : ℕ) (a : G) : a^(n-n) = 1 := by group

example (n : ℤ) (a : G) : a^(n-n) = 1 := by group

example (n : ℤ) (a : G) (h : a ^ (n * (n + 1) - n - n ^ 2) = a) : a = 1 := by
  group at h
  exact h.symm

example (a b c d : G) (h : c = (a * b ^ 2) * ((b * b)⁻¹ * a⁻¹) * d) : a*c*d⁻¹ = a := by
  group at h
  rw [h]
  group

-- The next example can be expanded to require an arbitrarily high number of alternations
-- between simp and ring

example (n m : ℤ) (a b : G) : a^(m-n)*b^(m-n)*b^(n-m)*a^(n-m) = 1 := by group

example (n : ℤ) (a b : G) : a^n*b^n*a^n*a^n*a^(-n)*a^(-n)*b^(-n)*a^(-n) = 1 := by group

-- Test that group deals with `1⁻¹` properly

example (x y : G) : (x⁻¹ * (x * y) * y⁻¹)⁻¹ = 1 := by group

set_option linter.unusedTactic false in
example (x : G) (h : x = 1) : x = 1 := by
  group
  exact h
