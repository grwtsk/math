import GRWTSK.Logic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example {α ι : Type*} (domain : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, ∃ i ∈ indices, x ∈ cells i)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) : ∀ x ∈ domain, P x :=
  forall_on_of_finite_cover domain cells indices P hcover hlocal
example {α ι : Type*} (domain tail : Set α) (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
  (hcover : ∀ x ∈ domain, (∃ i ∈ indices, x ∈ cells i) ∨ x ∈ tail)
  (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) (htail : ∀ x ∈ tail, P x) : ∀ x ∈ domain, P x :=
  forall_on_of_finite_cover_and_tail domain tail cells indices P hcover hlocal htail
example (a b : ℝ) (hab : a ≤ b) : ∃ P : ℝ → Prop, (∀ x ∈ Set.Icc a b, P x) ∧ ¬ (∀ x ∈ Set.Ici a, P x) :=
  finite_range_does_not_imply_ray a b hab
example : ∃ P : ℝ → Prop, P 0 ∧ P 1 ∧ ¬ (∀ x ∈ Set.Icc (0 : ℝ) 1, P x) := endpoints_do_not_cover_interval
