/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorIsolation

set_option autoImplicit false

/-!
# An exact height-fiber criterion for the canonical zero predicate

A mirror-stable region satisfies local RH exactly when each signed root-height
fiber contains at most one ACTUAL target-zero location. Different heights may
contain different zeros. Existence, simplicity, a complete divisor and a common
quantitative gap are not part of this equivalence. The height map is not asserted
injective on ambient complex points. It is the maintained commutator-root readout.

Derivative disks on the fibers are a sufficient analytic supplier, not an
RH-equivalent realization theorem. Their margins may depend on height. Their
source is the actual poleNormalizedZeta, not an anonymous polynomial surrogate.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.HeightFiber
open Complex Set
noncomputable section

/-- The whole complex point is retained; only the common signed height is fixed. -/
def carrier (U : Set ℂ) (t : ℝ) : Set ℂ :=
  {z | z ∈ U ∧ ZetaCommutatorRoot.root.heightAt z = t}

/-- Capacity is per height, not a bound on all locations in the region. -/
def TargetCapacity (U : Set ℂ) : Prop :=
  ∀ t : ℝ, AtMostOneTarget (carrier U t)

/-- A source-function supplier is distinct from the canonical target predicate. -/
def SourceCapacity (F : ℂ → ℂ) (U : Set ℂ) : Prop :=
  ∀ t : ℝ, AtMostOneZero F (carrier U t)

/-- Injectivity is restricted to actual target-zero locations in the region. -/
def TargetHeightInjective (U : Set ℂ) : Prop :=
  ∀ z ∈ U, ∀ w ∈ U, NontrivialZetaZero z → NontrivialZetaZero w →
    ZetaCommutatorRoot.root.heightAt z = ZetaCommutatorRoot.root.heightAt w → z = w

lemma carrier_subset (U : Set ℂ) (t : ℝ) : carrier U t ⊆ U := fun _ hz => hz.1

lemma carrier_mirror_stable {U : Set ℂ} (hm : MirrorStable U) (t : ℝ) :
    MirrorStable (carrier U t) := by
  intro z hz
  exact ⟨hm z hz.1, (root_height_criticalReflection z).trans hz.2⟩

lemma targetCapacity_restrict {U V : Set ℂ} (hVU : V ⊆ U)
    (h : TargetCapacity U) : TargetCapacity V := by
  intro t z hz w hw hz0 hw0
  exact h t z ⟨hVU hz.1,hz.2⟩ w ⟨hVU hw.1,hw.2⟩ hz0 hw0

lemma targetCapacity_of_capacity {U : Set ℂ} (h : AtMostOneTarget U) : TargetCapacity U := by
  intro t z hz w hw hz0 hw0
  exact h z hz.1 w hw.1 hz0 hw0

lemma targetCapacity_of_source {U : Set ℂ} (h : SourceCapacity poleNormalizedZeta U) :
    TargetCapacity U := fun t => target_capacity_of_source (h t)

/-- This equivalence uses no mirror assumption and does not identify ambient points. -/
theorem capacity_iff_height_injective {U : Set ℂ} :
    TargetCapacity U ↔ TargetHeightInjective U := by
  constructor
  · intro h z hz w hw hz0 hw0 heq
    exact h (ZetaCommutatorRoot.root.heightAt z) z ⟨hz,rfl⟩ w ⟨hw,heq.symm⟩ hz0 hw0
  · intro h t z hz w hw hz0 hw0
    exact h z hz.1 w hw.1 hz0 hw0 (hz.2.trans hw.2.symm)

/-- On the critical line, equality of the ACTUAL signed heights identifies locations. -/
theorem targetCapacity_of_rhOn {U : Set ℂ} (h : RHOn U) : TargetCapacity U := by
  apply capacity_iff_height_injective.mpr
  intro z hz w hw hz0 hw0 heq
  apply Complex.ext
  · exact (h z hz hz0).trans (h w hw hw0).symm
  · simpa only [ZetaCommutatorRoot.heightAt_eq_im] using heq

/-- Reflection keeps height, so per-height capacity forces each zero to be fixed.
The mirror is applied to the actual target predicate, not to arbitrary H values. -/
theorem rhOn_of_targetCapacity {U : Set ℂ} (hm : MirrorStable U)
    (h : TargetCapacity U) : RHOn U := by
  intro z hz hzero
  exact rhOn_of_mirror_capacity (carrier_mirror_stable hm _)
    (h (ZetaCommutatorRoot.root.heightAt z)) z ⟨hz,rfl⟩ hzero

/-- BOTH directions are proved. The derivative realization below is only sufficient. -/
theorem rhOn_iff_targetCapacity {U : Set ℂ} (hm : MirrorStable U) :
    RHOn U ↔ TargetCapacity U :=
  ⟨targetCapacity_of_rhOn, rhOn_of_targetCapacity hm⟩

theorem rhOn_iff_height_injective {U : Set ℂ} (hm : MirrorStable U) :
    RHOn U ↔ TargetHeightInjective U :=
  (rhOn_iff_targetCapacity hm).trans capacity_iff_height_injective

lemma window_mirror_stable (N : ℕ) : MirrorStable (heightWindow N) := by
  intro z hz
  simpa only [heightWindow,Set.mem_setOf_eq,root_height_criticalReflection] using hz

lemma upperShell_mirror_stable (N : ℕ) : MirrorStable (upperHeightShell N) := by
  intro z hz
  simpa only [upperHeightShell,Set.mem_setOf_eq,root_height_criticalReflection] using hz

/-- A bounded statement remains bounded. Both signed heights are in the window. -/
theorem window_iff_targetCapacity (N : ℕ) :
    WindowRH N ↔ TargetCapacity (heightWindow N) :=
  rhOn_iff_targetCapacity (window_mirror_stable N)

/-- The canonical shell retains its open lower and closed upper height endpoints. -/
theorem shell_iff_upper_fiber_capacity (N : ℕ) :
    ShellRH N ↔ TargetCapacity (upperHeightShell N) :=
  (shellRH_iff_upperHeightShell N).trans (rhOn_iff_targetCapacity (upperShell_mirror_stable N))

/-- The maintained natural-height exhaustion supplies the exact global criterion. -/
theorem all_window_fibers_iff_rh :
    (∀ N : ℕ, TargetCapacity (heightWindow N)) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h
    exact all_windowRH_iff_rh.mp (fun N => (window_iff_targetCapacity N).mpr (h N))
  · intro h N
    exact (window_iff_targetCapacity N).mp (all_windowRH_iff_rh.mpr h N)

lemma rhOn_univ_iff_rh : RHOn (Set.univ : Set ℂ) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h
    exact all_windowRH_iff_rh.mp (fun _ z _ hz0 => h z (Set.mem_univ z) hz0)
  · intro h z _ hz0
    obtain ⟨N,hN⟩ := heightWindows_cover z
    exact all_windowRH_iff_rh.mpr h N z hN hz0

/-- Exact injectivity of the root-height readout on actual zero LOCATIONS only.
This is not ambient injectivity, a zero enumeration, or a multiplicity theorem. -/
theorem global_height_injective_iff_rh :
    TargetHeightInjective (Set.univ : Set ℂ) ↔ _root_.RiemannHypothesis := by
  have hm : MirrorStable (Set.univ : Set ℂ) := fun _ _ => Set.mem_univ _
  exact (rhOn_iff_height_injective hm).symm.trans rhOn_univ_iff_rh

/-- The open critical strip excludes the unrelated trivial-zero fibers. -/
def criticalCarrier : Set ℂ := {z | 0 < z.re ∧ z.re < 1}

lemma criticalCarrier_mirror_stable : MirrorStable criticalCarrier := by
  intro z hz
  change 0 < (criticalReflection z).re ∧ (criticalReflection z).re < 1
  simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re]
  exact ⟨by linarith [hz.2],by linarith [hz.1]⟩

lemma rhOn_criticalCarrier_iff_rh : RHOn criticalCarrier ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h
    apply rhOn_univ_iff_rh.mp
    intro z _ hz0
    exact h z hz0.mem_critical_strip hz0
  · intro h z _ hz0
    exact rhOn_univ_iff_rh.mpr h z (Set.mem_univ z) hz0

theorem all_strip_fibers_iff_rh : TargetCapacity criticalCarrier ↔ _root_.RiemannHypothesis :=
  (rhOn_iff_targetCapacity criticalCarrier_mirror_stable).symm.trans rhOn_criticalCarrier_iff_rh

/-- Proof-carrying chart classifications, not an inferred or mutable status label. -/
def globalHeightProfile : LocalRHProfile (TargetHeightInjective (Set.univ : Set ℂ)) :=
  LocalRHProfile.ofEquivalence global_height_injective_iff_rh

def windowFiberProfile (N : ℕ) : LocalRHProfile (TargetCapacity (heightWindow N)) :=
  LocalRHProfile.ofNecessary (fun h => (all_window_fibers_iff_rh.mpr h) N)

@[simp] theorem globalHeightProfile_status : globalHeightProfile.status = .equivalent := rfl
@[simp] theorem windowFiberProfile_status (N : ℕ) : (windowFiberProfile N).status = .necessary := rfl

/-- An arbitrary actual zero-cover composes the local equivalent statements.
Empty regions do not eliminate the universal source-zero coverage premise. -/
theorem targetCapacity_of_zero_cover {ι : Type*} {U : Set ℂ}
    (V : ι → Set ℂ)
    (hmirror : ∀ i, MirrorStable (V i))
    (hcapacity : ∀ i, TargetCapacity (V i))
    (hcover : ∀ z ∈ U, NontrivialZetaZero z → ∃ i, z ∈ V i) : TargetCapacity U := by
  apply targetCapacity_of_rhOn
  intro z hz hz0
  obtain ⟨i,hi⟩ := hcover z hz hz0
  exact rhOn_of_targetCapacity (hmirror i) (hcapacity i) z hi hz0

/-- A horizontal fiber of a convex region is convex. No complex-open set is needed
for the mean-value region, but ambient complex differentiability is still required. -/
lemma carrier_convex {U : Set ℂ} (hU : Convex ℝ U) (t : ℝ) : Convex ℝ (carrier U t) := by
  have heq : carrier U t = U ∩ ({z : ℂ | t ≤ z.im} ∩ {z : ℂ | z.im ≤ t}) := by
    ext z
    constructor
    · intro hz
      have hi : z.im = t := by simpa only [ZetaCommutatorRoot.heightAt_eq_im] using hz.2
      exact ⟨hz.1,hi.ge,hi.le⟩
    · rintro ⟨hz,hlo,hhi⟩
      exact ⟨hz,by rw [ZetaCommutatorRoot.heightAt_eq_im]; exact le_antisymm hhi hlo⟩
  rw [heq]
  exact hU.inter ((convex_halfSpace_im_ge t).inter (convex_halfSpace_im_le t))

/-- A whole-region derivative disk is one possible supplier, not the definition. -/
def restrictDerivativeDisk {F : ℂ → ℂ} {U : Set ℂ}
    (C : DerivativeDisk F U) (t : ℝ) : DerivativeDisk F (carrier U t) :=
  C.restrict (carrier_subset U t) (carrier_convex C.convex t)

/-- Each height keeps its own center and radius. No common positive gap is assumed. -/
theorem targetCapacity_of_derivativeDisks {U : Set ℂ}
    (C : ∀ t : ℝ, DerivativeDisk poleNormalizedZeta (carrier U t)) : TargetCapacity U :=
  targetCapacity_of_source (fun t => (C t).atMostOneZero)

theorem rhOn_of_derivativeDisks {U : Set ℂ} (hm : MirrorStable U)
    (C : ∀ t : ℝ, DerivativeDisk poleNormalizedZeta (carrier U t)) : RHOn U :=
  rhOn_of_targetCapacity hm (targetCapacity_of_derivativeDisks C)

/-- An analytic realization on the actual open strip is SUFFICIENT. RH does not
supply a reverse derivative-disk realization in any theorem here. -/
theorem rh_of_strip_derivativeFibers
    (C : ∀ t : ℝ, DerivativeDisk poleNormalizedZeta (carrier criticalCarrier t)) :
    _root_.RiemannHypothesis :=
  all_strip_fibers_iff_rh.mp (targetCapacity_of_derivativeDisks C)

def derivativeFiberProfile : LocalRHProfile
    (Nonempty (∀ t : ℝ, DerivativeDisk poleNormalizedZeta (carrier criticalCarrier t))) :=
  LocalRHProfile.ofSufficient (fun h => by
    rcases h with ⟨C⟩
    exact rh_of_strip_derivativeFibers C)

@[simp] theorem derivativeFiberProfile_status : derivativeFiberProfile.status = .sufficient := rfl

/-- A quantitative mirror defect on the SAME height fiber. The coefficient depends
on that height. Only an actual certificate supplies its strict positivity. -/
theorem mirror_pair_separation {U : Set ℂ} (hm : MirrorStable U)
    (C : ∀ t : ℝ, DerivativeDisk poleNormalizedZeta (carrier U t))
    {z : ℂ} (hz : z ∈ U) :
    (‖(C (ZetaCommutatorRoot.root.heightAt z)).linearPart‖ -
      (C (ZetaCommutatorRoot.root.heightAt z)).radius) * |2*z.re-1| ≤
      ‖poleNormalizedZeta z-poleNormalizedZeta (criticalReflection z)‖ := by
  have h := (C (ZetaCommutatorRoot.root.heightAt z)).lower_lipschitz
    (show z ∈ carrier U (ZetaCommutatorRoot.root.heightAt z) from ⟨hz,rfl⟩)
    (show criticalReflection z ∈ carrier U (ZetaCommutatorRoot.root.heightAt z) from
      ⟨hm z hz,root_height_criticalReflection z⟩)
  simpa only [norm_mirror_displacement] using h

/-- The source/model derivative error and the model/center error are independent
at EVERY height. Neither is obtained by differentiating a value-error inequality. -/
def derivativeDisksOfModels {U : Set ℂ}
    (P : ℝ → ℂ → ℂ) (a : ℝ → ℂ) (eModel eSource : ℝ → ℝ)
    (hmodel0 : ∀ t, 0 ≤ eModel t) (hsource0 : ∀ t, 0 ≤ eSource t)
    (hconv : ∀ t, Convex ℝ (carrier U t))
    (hP : ∀ t z, z ∈ carrier U t → DifferentiableAt ℂ (P t) z)
    (hmodel : ∀ t z, z ∈ carrier U t → ‖deriv (P t) z-a t‖ ≤ eModel t)
    (hsource : ∀ t z, z ∈ carrier U t →
      ‖deriv poleNormalizedZeta z-deriv (P t) z‖ ≤ eSource t)
    (hmargin : ∀ t, eModel t+eSource t < ‖a t‖) :
    ∀ t, DerivativeDisk poleNormalizedZeta (carrier U t) := fun t =>
  DerivativeDisk.ofDerivativeModel (a t) (eModel t) (eSource t)
    (hmodel0 t) (hsource0 t) (hconv t)
    (fun z _ => differentiable_poleNormalizedZeta z) (hP t) (hmodel t) (hsource t) (hmargin t)

/-- Pure quantifier control: local strict margins need not have a uniform lower bound.
This is NOT an assertion about the actual zeta derivative or a spectral gap. -/
theorem positive_gaps_without_uniform_lower_bound :
    (∀ n : ℕ, 0 < 1 / ((n : ℝ)+1)) ∧
      ¬ (∃ e : ℝ, 0 < e ∧ ∀ n : ℕ, e ≤ 1 / ((n : ℝ)+1)) := by
  constructor
  · intro n
    positivity
  · rintro ⟨e,he,hbound⟩
    obtain ⟨n,hn⟩ := exists_nat_one_div_lt he
    exact (not_lt_of_ge (hbound n)) hn

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.HeightFiber
