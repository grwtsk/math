# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RationalChamberSelector.Variant7fdeb040997e1c814ecffcd5a202e940ca282b6c9675ba36a116b19c2252d88f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48d2dea2cf71f250529f019ae251677b1260e9ad` · SHA-256 `7fdeb040997e1c814ecffcd5a202e940ca282b6c9675ba36a116b19c2252d88f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# A fixed rational enumeration selects every open finite-level chamber

For any declared surjective enumeration of the rationals, the least index
whose value lies inside a nonempty real interval is well defined and minimal.
Its next consumer recovers exactly the superlevel set of a finite height
packet throughout every gap containing no packet height. More generally it
preserves a declared chamber-constant consumer. It does not recover the exact
critical real values or establish all-real continuity for moving prime atoms.

Source: audited RH conversation Batch 6, HC08. Human choice/refinement
direction: grwtsk contributors. Local formalization: OpenAI Codex. Mathlib's
Archimedean rational density and least-index machinery remain upstream.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RationalChamberSelector

noncomputable section

theorem enumerated_rational_in_chamber (enumeration : ℕ → ℚ)
    (hsurj : Function.Surjective enumeration) {a b : ℝ} (hab : a < b) :
    ∃ n, a < (enumeration n : ℝ) ∧ (enumeration n : ℝ) < b := by
  obtain ⟨q, hqa, hqb⟩ := exists_rat_btwn hab
  obtain ⟨n, hn⟩ := hsurj q
  exact ⟨n, by simpa [hn] using hqa, by simpa [hn] using hqb⟩

def firstIndex (enumeration : ℕ → ℚ) (hsurj : Function.Surjective enumeration)
    (a b : ℝ) (hab : a < b) : ℕ := by
  classical
  exact Nat.find (enumerated_rational_in_chamber enumeration hsurj hab)

def selectedLevel (enumeration : ℕ → ℚ) (hsurj : Function.Surjective enumeration)
    (a b : ℝ) (hab : a < b) : ℝ :=
  enumeration (firstIndex enumeration hsurj a b hab)

theorem selected_level_in_chamber (enumeration : ℕ → ℚ)
    (hsurj : Function.Surjective enumeration) {a b : ℝ} (hab : a < b) :
    a < selectedLevel enumeration hsurj a b hab ∧
      selectedLevel enumeration hsurj a b hab < b := by
  classical
  exact Nat.find_spec (enumerated_rational_in_chamber enumeration hsurj hab)

theorem first_index_is_minimal (enumeration : ℕ → ℚ)
    (hsurj : Function.Surjective enumeration) {a b : ℝ} (hab : a < b)
    {n : ℕ} (hn : a < (enumeration n : ℝ) ∧ (enumeration n : ℝ) < b) :
    firstIndex enumeration hsurj a b hab ≤ n := by
  classical
  exact Nat.find_min' (enumerated_rational_in_chamber enumeration hsurj hab) hn

theorem chamber_constant_consumer_preserved {D : Type*}
    (enumeration : ℕ → ℚ) (hsurj : Function.Surjective enumeration)
    (consumer : ℝ → D) {a b theta : ℝ} (hab : a < b)
    (htheta : a < theta ∧ theta < b)
    (hconstant : ∀ x y, a < x ∧ x < b → a < y ∧ y < b → consumer x = consumer y) :
    consumer (selectedLevel enumeration hsurj a b hab) = consumer theta :=
  hconstant _ _ (selected_level_in_chamber enumeration hsurj hab) htheta

theorem gap_preserves_pointwise_superlevels {ι : Type*} (heights : ι → ℝ)
    {a b alpha beta : ℝ} (ha : a < alpha ∧ alpha < b)
    (hb : a < beta ∧ beta < b)
    (hgap : ∀ i, heights i ≤ a ∨ b ≤ heights i) (i : ι) :
    alpha < heights i ↔ beta < heights i := by
  rcases hgap i with hlow | hhigh
  · constructor <;> intro h <;> linarith
  · constructor <;> intro h <;> linarith

theorem finite_chamber_superlevel_recovered {ι : Type*} [Fintype ι]
    [DecidableEq ι] (enumeration : ℕ → ℚ) (hsurj : Function.Surjective enumeration)
    (heights : ι → ℝ) {a b theta : ℝ} (hab : a < b)
    (htheta : a < theta ∧ theta < b)
    (hgap : ∀ i, heights i ≤ a ∨ b ≤ heights i) :
    (Finset.univ.filter fun i ↦ selectedLevel enumeration hsurj a b hab < heights i) =
      (Finset.univ.filter fun i ↦ theta < heights i) := by
  classical
  ext i
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  exact gap_preserves_pointwise_superlevels heights
    (selected_level_in_chamber enumeration hsurj hab) htheta hgap i

end
end GRWTSK.RiemannHypothesis.Conversation.RationalChamberSelector
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=776f4c8ad828f818a63a0b1adb798a6b1f96602279098c21b7769bf89e5b9c35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RationalChamberSelector/Variant7fdeb040997e1c814ecffcd5a202e940ca282b6c9675ba36a116b19c2252d88f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
