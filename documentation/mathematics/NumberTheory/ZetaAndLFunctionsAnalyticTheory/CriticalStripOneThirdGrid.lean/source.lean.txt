/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdSeed
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMidpointGrid
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverDepth
import Mathlib.Analysis.Normed.Module.Convex

set_option autoImplicit false

/-!
# An explicit rational disk family covering the one-third right seed

There are 512 by 768 midpoint centers, indexed arithmetically by Fin 393216.
Every center lies in the independently proved seed and has source norm >=1/42.
The radius is 1/1024. On the FULL disks, including portions outside the seed,
Re(z)>=15/32 and |z|<=9/8; the actual Mellin derivative supplier gives |H'|<=20.
Thus all leaf patches have the positive lower bound 23/5376.

Nearest-cell geometry proves clearance 1/18432 on the complete closed seed.
The existing unchanged search therefore succeeds at fuel 35 by its depth theorem.
Neither the disk list nor the search is expanded or executed in this increment.
Analytic patch values are the actual H(center), with a theorem-based lower bound,
not a new table of numerical evaluations. This is a bounded seed construction,
not WindowRH 1, an all-height family, or an RH/Weil/spectral theorem.
Source proof scripts only; elaboration and transitive axiom replay remain unrun.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.OneThirdGrid

open Complex Set RationalPatchCover

/-- Explicit mixed-radix indexing; no noncomputable reindexing of a chosen Finset. -/
def row (k : Fin 393216) : Fin 512 := ⟨k.val / 768, by have hk := k.isLt; omega⟩
def column (k : Fin 393216) : Fin 768 := ⟨k.val % 768, by omega⟩
def join (i : Fin 512) (j : Fin 768) : Fin 393216 :=
  ⟨i.val * 768 + j.val, by have hi := i.isLt; have hj := j.isLt; omega⟩

@[simp] theorem row_join (i : Fin 512) (j : Fin 768) : row (join i j) = i := by
  apply Fin.ext
  dsimp only [row, join]
  have hi := i.isLt
  have hj := j.isLt
  omega

@[simp] theorem column_join (i : Fin 512) (j : Fin 768) : column (join i j) = j := by
  apply Fin.ext
  dsimp only [column, join]
  have hj := j.isLt
  omega

theorem join_row_column (k : Fin 393216) : join (row k) (column k) = k := by
  apply Fin.ext
  dsimp only [join, row, column]
  omega

/-- Closed root, including the critical-line, pole-side, and height boundary points. -/
def box : Rectangle := ⟨1 / 2, 1, -(1 / 3), 1 / 3⟩

/-- Rational midpoint centers and one uniform positive radius. -/
def rawDisk (i : Fin 512) (j : Fin 768) : Disk where
  re := 1 / 2 + ((i.val : ℚ) + 1 / 2) / 1024
  im := -(1 / 3) + ((j.val : ℚ) + 1 / 2) / 1152
  radius := 1 / 1024

def disks (k : Fin 393216) : Disk := rawDisk (row k) (column k)

@[simp] theorem disks_join (i : Fin 512) (j : Fin 768) :
    disks (join i j) = rawDisk i j := by simp only [disks, row_join, column_join]

noncomputable section

@[simp] theorem disk_radius_value (k : Fin 393216) :
    ((disks k).radius : ℝ) = (1 / 1024 : ℝ) := by
  norm_num [disks, rawDisk]

lemma disk_carrier (k : Fin 393216) :
    (disks k).carrier = Metric.closedBall (disks k).center (1 / 1024 : ℝ) := by
  simp only [Disk.carrier, disk_radius_value]

@[simp] theorem raw_center_re (i : Fin 512) (j : Fin 768) :
    (rawDisk i j).center.re = 1 / 2 + ((i.val : ℝ) + 1 / 2) / 1024 := by
  norm_num [rawDisk, Disk.center]

@[simp] theorem raw_center_im (i : Fin 512) (j : Fin 768) :
    (rawDisk i j).center.im = -(1 / 3) + ((j.val : ℝ) + 1 / 2) / 1152 := by
  norm_num [rawDisk, Disk.center]

lemma box_wellFormed : box.WellFormed := by norm_num [box, Rectangle.WellFormed]

lemma box_carrier_eq_seed : box.carrier = oneThirdRightSeed := by
  ext z
  norm_num [box, Rectangle.carrier, oneThirdRightSeed, abs_le]

/-- Every arithmetic center is inside the independently established right seed. -/
lemma raw_center_mem_seed (i : Fin 512) (j : Fin 768) :
    (rawDisk i j).center ∈ oneThirdRightSeed := by
  have hi0 : (0 : ℝ) ≤ (i.val : ℝ) := Nat.cast_nonneg _
  have hj0 : (0 : ℝ) ≤ (j.val : ℝ) := Nat.cast_nonneg _
  have hi : (i.val : ℝ) < 512 := by exact_mod_cast i.isLt
  have hj : (j.val : ℝ) < 768 := by exact_mod_cast j.isLt
  change (1 / 2 : ℝ) ≤ (rawDisk i j).center.re ∧
    (rawDisk i j).center.re ≤ 1 ∧ |(rawDisk i j).center.im| ≤ (1 / 3 : ℝ)
  rw [raw_center_re, raw_center_im, abs_le]
  constructor
  · linarith
  constructor
  · linarith
  constructor <;> linarith

lemma center_mem_seed (k : Fin 393216) : (disks k).center ∈ oneThirdRightSeed :=
  raw_center_mem_seed (row k) (column k)

/-- This norm estimate is used to control the whole disk, not merely its center. -/
lemma center_norm_le (k : Fin 393216) : ‖(disks k).center‖ ≤ (17 / 16 : ℝ) := by
  have hc := center_mem_seed k
  have hre0 : 0 ≤ (disks k).center.re := by linarith [hc.1]
  have hre2 : (disks k).center.re ^ 2 ≤ (1 : ℝ) := by
    have hprod := mul_le_mul hc.2.1 hc.2.1 hre0 (by norm_num : (0 : ℝ) ≤ 1)
    nlinarith
  have him2 : (disks k).center.im ^ 2 ≤ (1 / 9 : ℝ) := by
    have hprod := mul_le_mul hc.2.2 hc.2.2 (abs_nonneg _)
      (by norm_num : (0 : ℝ) ≤ 1 / 3)
    nlinarith [sq_abs (disks k).center.im]
  have hsq : ‖(disks k).center‖ ^ 2 ≤ (10 / 9 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 17 / 16)).mp
  exact hsq.trans (by norm_num)

lemma disk_radius {k : Fin 393216} {z : ℂ} (hz : z ∈ (disks k).carrier) :
    ‖z - (disks k).center‖ ≤ (1 / 1024 : ℝ) := by
  simpa only [disk_carrier, Metric.mem_closedBall, dist_eq_norm] using hz

/-- Disks cross the boundary of the seed: a separate enlarged analytic domain is used. -/
lemma disk_domain {k : Fin 393216} {z : ℂ} (hz : z ∈ (disks k).carrier) :
    (15 / 32 : ℝ) ≤ z.re ∧ ‖z‖ ≤ (9 / 8 : ℝ) := by
  have hc := center_mem_seed k
  have hr := disk_radius hz
  have hx : (disks k).center.re - z.re ≤ (1 / 1024 : ℝ) := by
    have h := (Complex.re_le_norm ((disks k).center - z)).trans
      (by simpa only [norm_sub_rev] using hr)
    simpa only [Complex.sub_re] using h
  constructor
  · linarith [hc.1]
  · calc
      ‖z‖ = ‖(z - (disks k).center) + (disks k).center‖ := by congr 1; ring
      _ ≤ ‖z - (disks k).center‖ + ‖(disks k).center‖ := norm_add_le _ _
      _ ≤ (1 / 1024 : ℝ) + 17 / 16 := add_le_add hr (center_norm_le k)
      _ ≤ 9 / 8 := by norm_num

lemma derivative_bound {k : Fin 393216} {z : ℂ} (hz : z ∈ (disks k).carrier) :
    ‖deriv poleNormalizedZeta z‖ ≤ (20 : ℝ) := by
  have hd := disk_domain hz
  have h := poleNormalized_deriv_norm_le_subtracted (σ := (15 / 32 : ℝ))
    (a := (1 / 32 : ℝ)) (B := (9 / 8 : ℝ))
    (by norm_num) (by norm_num) hd.1 hd.2
  norm_num at h
  exact h.trans (by norm_num)

lemma center_sample_lower (k : Fin 393216) :
    (1 / 42 : ℝ) ≤ ‖poleNormalizedZeta (disks k).center‖ := by
  have hc := center_mem_seed k
  exact poleNormalized_norm_lower_oneThird hc.1 hc.2.1 hc.2.2

/-- All analytic leaf witnesses are constructed uniformly, not supplied as an oracle
array. The exact sample is H(center), with its independently proved lower bound. -/
def patch (k : Fin 393216) : SampleVariationPatch poleNormalizedZeta (disks k).carrier :=
  SampleVariationPatch.ofDerivativeEnclosure
    (U := (disks k).carrier) (V := (disks k).carrier)
    (disks k).center (poleNormalizedZeta (disks k).center)
    (1 / 42) 0 20 (1 / 1024)
    (by norm_num) (by norm_num) (by norm_num)
    (by simpa only [disk_carrier] using
      convex_closedBall (disks k).center (1 / 1024 : ℝ))
    (by rw [disk_carrier]; norm_num)
    (fun _ hz => hz)
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun _ hz => derivative_bound hz)
    (fun _ hz => disk_radius hz)
    (center_sample_lower k) (by simp) (by norm_num)

theorem norm_lower_on_disk {k : Fin 393216} {z : ℂ} (hz : z ∈ (disks k).carrier) :
    (23 / 5376 : ℝ) ≤ ‖poleNormalizedZeta z‖ := by
  have h := (patch k).value_norm_lower hz
  change (1 / 42 : ℝ) - 0 - 20 * (1 / 1024) ≤ _ at h
  norm_num at h
  exact h

/-- A formula-selected grid point works for every root point, including all four edges.
No sample lattice is substituted for this continuum quantifier. -/
theorem exists_close_center {z : ℂ} (hz : z ∈ box.carrier) :
    ∃ k : Fin 393216, ‖z - (disks k).center‖ ≤ (17 / 18432 : ℝ) := by
  have hz' : (1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 ∧
      -(1 / 3 : ℝ) ≤ z.im ∧ z.im ≤ (1 / 3 : ℝ) := by
    simpa [box, Rectangle.carrier] using hz
  have hlo := hz'.1
  have hhi := hz'.2.1
  have hbot := hz'.2.2.1
  have htop := hz'.2.2.2
  obtain ⟨i, hi⟩ := exists_near_grid_midpoint (n := 512) (lo := (1 / 2 : ℝ))
    (step := (1 / 1024 : ℝ)) (x := z.re) (by norm_num) (by norm_num) hlo
    (by norm_num; exact hhi)
  obtain ⟨j, hj⟩ := exists_near_grid_midpoint (n := 768) (lo := -(1 / 3 : ℝ))
    (step := (1 / 1152 : ℝ)) (x := z.im) (by norm_num) (by norm_num) hbot
    (by norm_num; exact htop)
  have hx : |z.re - (rawDisk i j).center.re| ≤ (1 / 2048 : ℝ) := by
    rw [raw_center_re]
    have heq : ((i.val : ℝ) + 1 / 2) * (1 / 1024) =
        ((i.val : ℝ) + 1 / 2) / 1024 := by ring
    rw [heq] at hi
    norm_num at hi
    exact hi
  have hy : |z.im - (rawDisk i j).center.im| ≤ (1 / 2304 : ℝ) := by
    rw [raw_center_im]
    have heq : ((j.val : ℝ) + 1 / 2) * (1 / 1152) =
        ((j.val : ℝ) + 1 / 2) / 1152 := by ring
    rw [heq] at hj
    norm_num at hj
    exact hj
  refine ⟨join i j, ?_⟩
  rw [disks_join]
  calc
    ‖z - (rawDisk i j).center‖ ≤
        |(z - (rawDisk i j).center).re| + |(z - (rawDisk i j).center).im| :=
      Complex.norm_le_abs_re_add_abs_im _
    _ ≤ (1 / 2048 : ℝ) + 1 / 2304 := by
      simpa only [Complex.sub_re, Complex.sub_im] using add_le_add hx hy
    _ = 17 / 18432 := by norm_num

/-- Geometric clearance, computed from actual center spacing and radius. -/
theorem clearance : UniformDiskClearance disks box (1 / 18432 : ℝ) := by
  refine ⟨by norm_num, ?_⟩
  intro z hz
  obtain ⟨k, hk⟩ := exists_close_center hz
  refine ⟨k, ?_⟩
  rw [disk_radius_value]
  linarith

/-- Direct finite analytic cover, using the explicit family and all-point geometry. -/
def directCover : FiniteVariationCover poleNormalizedZeta box.carrier where
  count := 393216
  region := fun k => (disks k).carrier
  patch := patch
  covers := by
    intro z hz
    obtain ⟨k, hk⟩ := exists_close_center hz
    refine ⟨k, ?_⟩
    rw [disk_carrier, Metric.mem_closedBall, dist_eq_norm]
    exact hk.trans (by norm_num)

/-- Conservative explicit fuel. No search execution or optimality claim is involved. -/
theorem depth_budget :
    (3 / 4 : ℝ) ^ 35 * (box.span : ℝ) ≤ (1 / 18432 : ℝ) := by
  norm_num [box, Rectangle.span]

theorem search_succeeds : (SquaredCover.search disks 35 box).isSome = true :=
  SquaredCover.search_complete_of_clearance disks box box_wellFormed clearance 35 depth_budget

/-- A proof-indexed output of the unchanged algorithm, not an externally accepted tree.
No reduction of this potentially large value was performed in this increment. -/
def checkedTree : SquaredCover.CheckedTree disks box :=
  (SquaredCover.search disks 35 box).get search_succeeds

def searchedCover : FiniteVariationCover poleNormalizedZeta box.carrier :=
  checkedTree.toFiniteVariationCover patch

/-- Exact carrier transport, not a cover of a plotted or sampled substitute region. -/
def seedCover : FiniteVariationCover poleNormalizedZeta oneThirdRightSeed :=
  directCover.restrict (by
    intro z hz
    simpa only [box_carrier_eq_seed] using hz)

theorem noTargetZero_box : NoTargetZero box.carrier := by
  intro z hz hzero
  exact directCover.nonzero hz (poleNormalizedZeta_zero_of_target hzero)

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.OneThirdGrid
