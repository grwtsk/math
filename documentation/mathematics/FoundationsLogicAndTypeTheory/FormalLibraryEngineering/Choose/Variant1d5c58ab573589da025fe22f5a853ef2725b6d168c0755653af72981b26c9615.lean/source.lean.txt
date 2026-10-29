-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtendedBinder.Variant0ae9ebef1cd85b303e31b35f14abfb2bdaff3bb51519e003983846815d150bac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ae9ebef1cd85b303e31b35f14abfb2bdaff3bb51519e003983846815d150bac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExtendedBinder.Variant0ae9ebef1cd85b303e31b35f14abfb2bdaff3bb51519e003983846815d150bac","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0ae9ebef1cd85b303e31b35f14abfb2bdaff3bb51519e003983846815d150bac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/choose.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Util.ExtendedBinder
import Mathlib.Tactic.Choose

/-!
# Tests for the `choose` tactic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtendedBinder.Variant0ae9ebef1cd85b303e31b35f14abfb2bdaff3bb51519e003983846815d150bac

set_option autoImplicit true

example {α : Type} (h : ∀ n m : α, ∀ (h : n = m), ∃ i j : α, i ≠ j ∧ h = h) : True := by
  choose! i j _x _y using h
  trivial

example (h : ∀ n m : Nat, ∃ i j, m = n + i ∨ m + j = n) : True := by
  choose i j h using h
  guard_hyp i : Nat → Nat → Nat
  guard_hyp j : Nat → Nat → Nat
  guard_hyp h : ∀ (n m : Nat), m = n + i n m ∨ m + j n m = n
  trivial

example (h : ∀ i : Nat, i < 7 → ∃ j, i < j ∧ j < i+i) : True := by
  choose! f h h' using h
  guard_hyp f : Nat → Nat
  guard_hyp h : ∀ (i : Nat), i < 7 → i < f i
  guard_hyp h' : ∀ (i : Nat), i < 7 → f i < i + i
  trivial

/- choice -/
example (h : ∀ n m : Nat, n < m → ∃ i j, m = n + i ∨ m + j = n) : True := by
  choose i j h using h
  guard_hyp i : ∀ n m : Nat, n < m → Nat
  guard_hyp j : ∀ n m : Nat, n < m → Nat
  guard_hyp h : ∀ (n m : Nat) (h : n < m), m = n + i n m h ∨ m + j n m h = n
  trivial

-- `choose!` eliminates dependencies on props, whenever possible
example (h : ∀ n m : Nat, n < m → ∃ i j, m = n + i ∨ m + j = n) : True := by
  choose! i j h using h
  guard_hyp i : Nat → Nat → Nat
  guard_hyp j : Nat → Nat → Nat
  guard_hyp h : ∀ (n m : Nat), n < m → m = n + i n m ∨ m + j n m = n
  trivial

-- without the `using hyp` syntax, `choose` will intro the hyp first
example : (∀ m : Nat, ∃ i, ∀ n : Nat, ∃ j, m = n + i ∨ m + j = n) → True := by
  choose i j h
  guard_hyp i : Nat → Nat
  guard_hyp j : Nat → Nat → Nat
  guard_hyp h : ∀ (m k : Nat), m = k + i m ∨ m + j m k = k
  trivial

example (h : ∀ _n m : Nat, ∃ i, ∀ n:Nat, ∃ j, m = n + i ∨ m + j = n) : True := by
  choose i j h using h
  guard_hyp i : Nat → Nat → Nat
  guard_hyp j : Nat → Nat → Nat → Nat
  guard_hyp h : ∀ (n m k : Nat), m = k + i n m ∨ m + j n m k = k
  trivial

-- Test `simp only [exists_prop]` gets applied after choosing.
-- Because of this simp, we need a non-rfl goal
example (h : ∀ n, ∃ k ≥ 0, n = k) : ∀ _ : Nat, 1 = 1 := by
  choose u hu using h
  guard_hyp hu : ∀ n, u n ≥ 0 ∧ n = u n
  intro; rfl

-- test choose with conjunction
example (h : ∀ i : Nat, ∃ j, i < j ∧ j < i+i) : True := by
  choose f h h' using h
  guard_hyp f : Nat → Nat
  guard_hyp h : ∀ (i : Nat), i < f i
  guard_hyp h' : ∀ (i : Nat), f i < i + i
  trivial

instance : ∀ [Nonempty α], Nonempty (α × α) := @fun ⟨a⟩ => ⟨(a, a)⟩

-- test choose with nonempty instances
instance : ∀ [Nonempty α] [Nonempty β], Nonempty (α × β)
  | ⟨a⟩, ⟨b⟩ => ⟨(a, b)⟩

example {α : Type u} (p : α → Prop) (h : ∀ i : α, p i → ∃ j : α × α, p j.1) : True := by
  choose! f h using h
  guard_hyp f : α → α × α
  guard_hyp h : ∀ (i : α), p i → p (f i).1
  trivial
