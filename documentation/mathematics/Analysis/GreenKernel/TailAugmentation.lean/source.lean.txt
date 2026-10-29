/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Standard measure-theoretic and Green-kernel results retain their attribution.
Status: candidate proof source; NOT elaborated or kernel checked.
-/
import GRWTSK.Analysis.GreenKernel.UnitInterval

/-! # The complete Green kernel, with both boundary channels retained
The kernel `1 + min r s` includes the two moments missing from the Dirichlet
kernel. Positivity supplies a representation, not a decay estimate.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.Analysis.GreenKernel.TailAugmentation
open GRWTSK.Analysis.GreenKernel.UnitInterval

def tailFeature (r t : ℝ) : ℝ := 1-step r t

def completeKernel (r s : ℝ) : ℝ := 1+min r s

def atomicTail {ι : Type*} (s : Finset ι) (a r : ι → ℝ) (t : ℝ) : ℝ :=
  ∑ i∈s, a i*tailFeature (r i) t

def atomicEnergy {ι : Type*} (s : Finset ι) (a r : ι → ℝ) : ℝ :=
  (∑ i∈s, a i)^2 + ∫ t, (atomicTail s a r t)^2 ∂unitVolume

theorem completeKernel_eq_augmented (r s : ℝ) :
    completeKernel r s=kernel r s+1+r*s := by
  unfold completeKernel kernel
  ring

theorem completeKernel_symm (r s : ℝ) : completeKernel r s=completeKernel s r := by
  simp [completeKernel,min_comm]

theorem completeKernel_endpoint (r : ℝ) (hr : r≤1) : completeKernel 1 r=1+r := by
  simp [completeKernel,min_eq_right hr]

theorem tailFeature_nonneg (r t : ℝ) : 0≤tailFeature r t := by
  by_cases h : r≤t <;> simp [tailFeature,step,Set.indicator,h]

theorem tailFeature_le_one (r t : ℝ) : tailFeature r t≤1 := by
  by_cases h : r≤t <;> simp [tailFeature,step,Set.indicator,h]

theorem tailFeature_mul (r s t : ℝ) :
    tailFeature r t*tailFeature s t=tailFeature (min r s) t := by
  by_cases hr : r≤t <;> by_cases hs : s≤t <;>
    simp [tailFeature,step,Set.indicator,hr,hs,min_le_iff]

theorem tailFeature_integrable (r : ℝ) : Integrable (tailFeature r) unitVolume :=
  (integrable_const (1:ℝ)).sub (step_integrable r)

theorem integral_tailFeature {r : ℝ} (hr : r∈Icc (0:ℝ) 1) :
    (∫ t, tailFeature r t ∂unitVolume)=r := by
  unfold tailFeature
  rw [integral_sub (integrable_const _) (step_integrable _),integral_step hr]
  simp

theorem tailFeature_product_integrable (r s : ℝ) :
    Integrable (fun t ↦ tailFeature r t*tailFeature s t) unitVolume := by
  simp_rw [tailFeature_mul]
  exact tailFeature_integrable _

theorem integral_tailFeature_product {r s : ℝ}
    (hr : r∈Icc (0:ℝ) 1) (hs : s∈Icc (0:ℝ) 1) :
    (∫ t, tailFeature r t*tailFeature s t ∂unitVolume)=min r s := by
  simp_rw [tailFeature_mul]
  exact integral_tailFeature ⟨le_min hr.1 hs.1,(min_le_left _ _).trans hr.2⟩

theorem atomicTail_integrable {ι : Type*} (s : Finset ι) (a r : ι → ℝ) :
    Integrable (atomicTail s a r) unitVolume :=
  integrable_finsetSum s (fun i hi ↦ (tailFeature_integrable (r i)).const_mul (a i))

private theorem atomic_square_expansion {ι : Type*} (s : Finset ι)
    (a r : ι → ℝ) (t : ℝ) :
    (atomicTail s a r t)^2=
      ∑ i∈s, ∑ j∈s, a i*a j*(tailFeature (r i) t*tailFeature (r j) t) := by
  unfold atomicTail
  rw [pow_two,Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  ring

theorem atomicTail_square_integrable {ι : Type*} (s : Finset ι) (a r : ι → ℝ) :
    Integrable (fun t ↦ (atomicTail s a r t)^2) unitVolume := by
  simp_rw [atomic_square_expansion]
  exact integrable_finsetSum s (fun i hi ↦ integrable_finsetSum s (fun j hj ↦
    (tailFeature_product_integrable (r i) (r j)).const_mul (a i*a j)))

theorem integral_atomicTail_sq {ι : Type*} (s : Finset ι) (a r : ι → ℝ)
    (hr : ∀ i∈s, r i∈Icc (0:ℝ) 1) :
    (∫ t, (atomicTail s a r t)^2 ∂unitVolume)=
      ∑ i∈s, ∑ j∈s, a i*a j*min (r i) (r j) := by
  simp_rw [atomic_square_expansion]
  rw [integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro i hi
    rw [integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro j hj
      rw [integral_const_mul,integral_tailFeature_product (hr i hi) (hr j hj)]
    · intro j hj
      exact (tailFeature_product_integrable (r i) (r j)).const_mul _
  · intro i hi
    exact integrable_finsetSum s (fun j hj ↦
      (tailFeature_product_integrable (r i) (r j)).const_mul _)

/-- Exact signed Gram identity. No coefficient sign has been chosen. -/
theorem atomicEnergy_eq_gram {ι : Type*} (s : Finset ι) (a r : ι → ℝ)
    (hr : ∀ i∈s, r i∈Icc (0:ℝ) 1) :
    atomicEnergy s a r=∑ i∈s, ∑ j∈s, a i*a j*completeKernel (r i) (r j) := by
  unfold atomicEnergy
  rw [integral_atomicTail_sq s a r hr]
  simp only [completeKernel,mul_add,mul_one,Finset.sum_add_distrib]
  congr 1
  simp_rw [← Finset.mul_sum]
  rw [← Finset.sum_mul,pow_two]

theorem atomicEnergy_nonneg {ι : Type*} (s : Finset ι) (a r : ι → ℝ) :
    0≤atomicEnergy s a r :=
  add_nonneg (sq_nonneg _) (integral_nonneg (fun _ ↦ sq_nonneg _))

/-- A positive removed measure costs at most twice its complete mass squared. -/
theorem positive_atomicEnergy_le {ι : Type*} (s : Finset ι) (a r : ι → ℝ)
    (ha : ∀ i∈s, 0≤a i) (hr : ∀ i∈s, r i∈Icc (0:ℝ) 1) :
    atomicEnergy s a r≤2*(∑ i∈s, a i)^2 := by
  rw [atomicEnergy_eq_gram s a r hr]
  calc
    (∑ i∈s, ∑ j∈s, a i*a j*completeKernel (r i) (r j)) ≤
        ∑ i∈s, ∑ j∈s, a i*a j*2 := by
      apply Finset.sum_le_sum
      intro i hi
      apply Finset.sum_le_sum
      intro j hj
      have hk : completeKernel (r i) (r j)≤2 := by
        unfold completeKernel
        linarith [(min_le_left (r i) (r j)).trans (hr i hi).2]
      exact mul_le_mul_of_nonneg_left hk (mul_nonneg (ha i hi) (ha j hj))
    _ = 2*(∑ i∈s, a i)^2 := by
      simp_rw [mul_assoc,← Finset.mul_sum,← Finset.sum_mul]
      ring

end GRWTSK.Analysis.GreenKernel.TailAugmentation
