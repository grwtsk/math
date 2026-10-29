import GRWTSK.LinearAlgebra.RetractionComplement

/-! Actual direct-product linear equivalence from a supplied retraction (B2).
No geometric localization sequence or retraction is supplied. -/
namespace GRWTSK.LinearAlgebra
variable {R M B : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    [AddCommGroup B] [Module R B]

/-- Construct the full splitting into the included component and retraction kernel. -/
def retractionSplitEquiv (i : B →ₗ[R] M) (r : M →ₗ[R] B) (hr : ∀ b, r (i b) = b) :
    M ≃ₗ[R] B × LinearMap.ker r where
  toFun x := (r x, ⟨retractionComplement i r x, retractionComplement_in_kernel i r hr x⟩)
  invFun y := i y.1 + y.2
  left_inv x := (retractionComplement_decomposition i r x).symm
  right_inv y := by
    rcases y with ⟨b, k, hk⟩
    have hk0 : r k = 0 := hk
    apply Prod.ext
    · simp [hr, hk0]
    · apply Subtype.ext
      simp [retractionComplement, hr, hk0]
  map_add' x y := by
    apply Prod.ext
    · simp
    · apply Subtype.ext
      simp
  map_smul' c x := by
    apply Prod.ext
    · simp
    · apply Subtype.ext
      simp

/-- The complementary part is exactly the retraction-kernel coordinate. -/
theorem retractionSplitEquiv_coordinates (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hr : ∀ b, r (i b) = b) (x : M) :
    (retractionSplitEquiv i r hr x).1 = r x ∧
      ((retractionSplitEquiv i r hr x).2 : M) = retractionComplement i r x := by
  exact ⟨rfl, rfl⟩

/-- Its inverse reconstructs the state from the actual two components. -/
theorem retractionSplitEquiv_inverse (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hr : ∀ b, r (i b) = b) (b : B) (k : LinearMap.ker r) :
    (retractionSplitEquiv i r hr).symm (b, k) = i b + k := rfl

/-- The zero locus of the complementary projector is the actual inclusion range. -/
theorem retractionComplement_zero_iff_range (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hr : ∀ b, r (i b) = b) (x : M) :
    retractionComplement i r x = 0 ↔ x ∈ LinearMap.range i := by
  constructor
  · intro hx
    refine ⟨r x, ?_⟩
    have h := retractionComplement_decomposition i r x
    simpa [hx] using h.symm
  · rintro ⟨b, rfl⟩
    exact retractionComplement_on_image i r hr b
end GRWTSK.LinearAlgebra
