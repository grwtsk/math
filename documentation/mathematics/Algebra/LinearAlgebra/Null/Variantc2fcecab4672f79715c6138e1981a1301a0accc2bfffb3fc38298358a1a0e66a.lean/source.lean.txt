-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RawEnergyZeroOrthogonalAll.Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RawEnergyZeroOrthogonalAll.Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Hilbert/Null.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.Hilbert.Raw

/-!
# Null vectors of a positive kernel

The raw kernel span carries only an explicit semidefinite sesquilinear form.
Its zero-energy vectors form a complex submodule and, by the kernel
Cauchy--Schwarz inequality, are orthogonal to every raw vector.  No global
inner-product-space or norm instance is installed on the raw carrier.
-/


namespace GRWTSK.Algebra.LinearAlgebra.RawEnergyZeroOrthogonalAll.Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b

noncomputable section

namespace DAF.Rhetorical

universe u

variable {Index : Type u} (kernel : PositiveKernel Index)

/-- Zero energy forces orthogonality to every raw vector. -/
theorem rawEnergyZero_orthogonal_all
    {f : Raw kernel}
    (hf : Raw.inner kernel f f = 0)
    (g : Raw kernel) :
    Raw.inner kernel f g = 0 := by
  have bound := Raw.kernel_cauchy_schwarz kernel f g
  rw [Raw.seminorm, hf] at bound
  simp only [Complex.zero_re, Real.sqrt_zero, zero_mul] at bound
  exact norm_eq_zero.mp (le_antisymm bound (norm_nonneg _))

/-- The radical of the raw positive-semidefinite kernel form. -/
def kernelNullSubmodule : Submodule ℂ (Raw kernel) where
  carrier := {f | Raw.inner kernel f f = 0}
  zero_mem' := by
    simp [Raw.inner]
  add_mem' {f g} hf hg := by
    change Raw.inner kernel (f + g) (f + g) = 0
    rw [Raw.add_left, Raw.add_right, Raw.add_right,
      rawEnergyZero_orthogonal_all kernel hf g,
      rawEnergyZero_orthogonal_all kernel hg f, hf, hg]
    simp
  smul_mem' scalar f hf := by
    change Raw.inner kernel (scalar • f) (scalar • f) = 0
    rw [Raw.conjugate_linear_left, Raw.linear_right, hf]
    simp

@[simp]
theorem mem_kernelNullSubmodule_iff (f : Raw kernel) :
    f ∈ kernelNullSubmodule kernel ↔ Raw.inner kernel f f = 0 :=
  Iff.rfl

/-- A null vector pairs to zero with every raw vector. -/
theorem null_orthogonal_all
    {f : Raw kernel}
    (hf : f ∈ kernelNullSubmodule kernel)
    (g : Raw kernel) :
    Raw.inner kernel f g = 0 :=
  rawEnergyZero_orthogonal_all kernel hf g

/-- Zero kernel energy is exactly membership in the null radical. -/
theorem inner_self_eq_zero_iff_mem_kernelNullSubmodule
    (f : Raw kernel) :
    Raw.inner kernel f f = 0 ↔ f ∈ kernelNullSubmodule kernel :=
  Iff.rfl

/-- Replacing a left representative by a congruent raw vector does not change
the kernel form. -/
theorem rawInner_eq_of_sub_mem_left
    {f f' : Raw kernel}
    (differenceNull : f - f' ∈ kernelNullSubmodule kernel)
    (g : Raw kernel) :
    Raw.inner kernel f g = Raw.inner kernel f' g := by
  have zero := null_orthogonal_all kernel differenceNull g
  have expanded := Raw.add_left kernel (f - f') f' g
  rw [sub_add_cancel] at expanded
  rw [zero, zero_add] at expanded
  exact expanded

/-- Replacing a right representative by a congruent raw vector does not
change the kernel form. -/
theorem rawInner_eq_of_sub_mem_right
    (f : Raw kernel)
    {g g' : Raw kernel}
    (differenceNull : g - g' ∈ kernelNullSubmodule kernel) :
    Raw.inner kernel f g = Raw.inner kernel f g' := by
  have zero := null_orthogonal_all kernel differenceNull f
  have rightZero : Raw.inner kernel f (g - g') = 0 := by
    rw [Raw.inner_conj_symm, zero]
    simp
  have expanded := Raw.add_right kernel f (g - g') g'
  rw [sub_add_cancel] at expanded
  rw [rightZero, zero_add] at expanded
  exact expanded

end DAF.Rhetorical
