set_option autoImplicit false
theorem spectral_address_not_checked_theorem (status : String)
  (h : status = "candidate_generalization" ∨ status = "finite_witness_only" ∨ status = "refused") : status ≠ "checked_theorem" := by
  intro hc
  cases h with
  | inl hcg => rw [hcg] at hc; contradiction
  | inr rest =>
      cases rest with
      | inl hfw => rw [hfw] at hc; contradiction
      | inr href => rw [href] at hc; contradiction
