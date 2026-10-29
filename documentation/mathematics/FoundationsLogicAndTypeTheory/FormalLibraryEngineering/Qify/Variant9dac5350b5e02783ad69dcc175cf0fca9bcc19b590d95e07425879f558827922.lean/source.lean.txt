-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cast.Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Cast.Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Qify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll, Mario Carneiro, Robert Y. Lewis
-/
import Mathlib.Algebra.Order.Ring.Cast
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.NNRat.Defs
import Mathlib.Tactic.Basic
import Mathlib.Tactic.Zify

/-!
# `qify` tactic

The `qify` tactic is used to shift propositions from `ℕ` or `ℤ` to `ℚ`.
This is often useful since `ℚ` has well-behaved division.
```
example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) : c < a + 3*b := by
  qify
  qify at h
  /-
  h : ¬↑x * ↑y * ↑z < 0
  ⊢ ↑c < ↑a + 3 * ↑b
  -/
  sorry
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cast.Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a

namespace Mathlib.Tactic.Qify

open Lean
open Lean.Meta
open Lean.Parser.Tactic
open Lean.Elab.Tactic

/--
The `qify` tactic is used to shift propositions from `ℕ` or `ℤ` to `ℚ`.
This is often useful since `ℚ` has well-behaved division.
```
example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) : c < a + 3*b := by
  qify
  qify at h
  /-
  h : ¬↑x * ↑y * ↑z < 0
  ⊢ ↑c < ↑a + 3 * ↑b
  -/
  sorry
```
`qify` can be given extra lemmas to use in simplification. This is especially useful in the
presence of nat subtraction: passing `≤` arguments will allow `push_cast` to do more work.
```
example (a b c : ℤ) (h : a / b = c) (hab : b ∣ a) (hb : b ≠ 0) : a = c * b := by
  qify [hab] at h hb ⊢
  exact (div_eq_iff hb).1 h
```
`qify` makes use of the `@[zify_simps]` and `@[qify_simps]` attributes to move propositions,
and the `push_cast` tactic to simplify the `ℚ`-valued expressions. -/
syntax (name := qify) "qify" (simpArgs)? (location)? : tactic

macro_rules
| `(tactic| qify $[[$simpArgs,*]]? $[at $location]?) =>
  let args := simpArgs.map (·.getElems) |>.getD #[]
  `(tactic|
    simp -decide only [zify_simps, qify_simps, push_cast, $args,*]
      $[at $location]?)

@[qify_simps] lemma intCast_eq (a b : ℤ) : a = b ↔ (a : ℚ) = (b : ℚ) := by simp only [Int.cast_inj]
@[qify_simps] lemma intCast_le (a b : ℤ) : a ≤ b ↔ (a : ℚ) ≤ (b : ℚ) := Int.cast_le.symm
@[qify_simps] lemma intCast_lt (a b : ℤ) : a < b ↔ (a : ℚ) < (b : ℚ) := Int.cast_lt.symm
@[qify_simps] lemma intCast_ne (a b : ℤ) : a ≠ b ↔ (a : ℚ) ≠ (b : ℚ) := by
  simp only [ne_eq, Int.cast_inj]

end Qify

end Mathlib.Tactic
