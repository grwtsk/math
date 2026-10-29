/-
Classical Moser spindle: Leo Moser and William Moser.
Exact-coordinate Lean excerpt: OpenAI, Apache-2.0.
Source: openai/math adc7f1241b42e322a6451854ab7e4b4c146bf78a,
lean/OAI/Geometry/PlaneColoring/Moser.lean.
Only the spindle declarations are retained; imports and namespace adapted.
See LICENSES/OpenAI-Apache-2.0.txt and evidence/source-manifest.json.
-/
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

namespace GRWTSK.Combinatorics.GraphTheory.HadwigerNelson

noncomputable section

def moserA : ℂ := ((Real.sqrt 3 : ℂ)+Complex.I)/2
def moserB : ℂ := ((Real.sqrt 3 : ℂ)-Complex.I)/2
def moserT : ℂ := Real.sqrt 3
def moserU : ℂ := (5+Complex.I*(Real.sqrt 11 : ℂ))/6
def moserPoint : Fin 7 → ℂ := ![0,moserA,moserB,moserT,moserU*moserA,moserU*moserB,moserU*moserT]
@[simp] lemma moserPoint_0 : moserPoint 0=0 := rfl
@[simp] lemma moserPoint_1 : moserPoint 1=moserA := rfl
@[simp] lemma moserPoint_2 : moserPoint 2=moserB := rfl
@[simp] lemma moserPoint_3 : moserPoint 3=moserT := rfl
@[simp] lemma moserPoint_4 : moserPoint 4=moserU*moserA := rfl
@[simp] lemma moserPoint_5 : moserPoint 5=moserU*moserB := rfl
@[simp] lemma moserPoint_6 : moserPoint 6=moserU*moserT := rfl
def moserEdges : Finset (Fin 7 × Fin 7) :=
  {(0,1),(0,2),(1,2),(3,1),(3,2),(0,4),(0,5),(4,5),(6,4),(6,5),(3,6)}
lemma complex_norm_one_of_sq {z : ℂ} (h : z.re ^ 2 + z.im ^ 2 = 1) : ‖z‖=1 := by
  have he : ‖z‖^2=1 := by rw [← Complex.normSq_eq_norm_sq,Complex.normSq_apply]; nlinarith
  nlinarith [norm_nonneg z]
lemma moser_edge_unit {i j : Fin 7} (h : (i, j) ∈ moserEdges) : ‖moserPoint i-moserPoint j‖=1 := by
  have h3 := Real.sq_sqrt (show (0:ℝ)≤3 by norm_num)
  have h11 := Real.sq_sqrt (show (0:ℝ)≤11 by norm_num)
  simp only [moserEdges,Finset.mem_insert,Finset.mem_singleton,Prod.mk.injEq] at h
  rcases h with h|h|h|h|h|h|h|h|h|h|h <;> rcases h with ⟨rfl,rfl⟩
  all_goals
    apply complex_norm_one_of_sq
    norm_num [moserA,moserB,moserT,moserU,Complex.mul_re,Complex.mul_im,
      Complex.div_ofReal_re,Complex.div_ofReal_im,Complex.sub_re,Complex.sub_im,
      Complex.add_re,Complex.add_im] <;>
      (ring_nf; norm_num [h3,h11])
lemma three_color_diamond {a b p q : Fin 3} (hab : a ≠ b)
    (hpa : p ≠ a) (hpb : p ≠ b) (hqa : q ≠ a) (hqb : q ≠ b) : p=q := by
  fin_cases a <;> fin_cases b <;> fin_cases p <;> fin_cases q <;> simp_all
lemma moser_not_three_colorable (f : Fin 7 → Fin 3)
    (hf : ∀ i j, (i, j) ∈ moserEdges → f i ≠ f j) : False := by
  have h03 : f 0=f 3 := three_color_diamond
    (hf 1 2 (by decide)) (hf 0 1 (by decide)) (hf 0 2 (by decide))
    (hf 3 1 (by decide)) (hf 3 2 (by decide))
  have h06 : f 0=f 6 := three_color_diamond
    (hf 4 5 (by decide)) (hf 0 4 (by decide)) (hf 0 5 (by decide))
    (hf 6 4 (by decide)) (hf 6 5 (by decide))
  exact hf 3 6 (by decide) (h03.symm.trans h06)

end

end GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
