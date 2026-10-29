import Mathematics.MobiusOntology.ErrorTransform

/-!
# Contractive asymptotic boundaries

Finite rewrite paths need not agree.  A common invariant basin, fixed boundary,
and one uniform contraction factor make every admitted schedule converge to
the same asymptotic boundary.  This is asymptotic confluence, not finite
normal-form equality.
-/

namespace Mathematics.MobiusOntology

open Filter Set
open scoped NNReal Topology

universe u v w

/--
Proof-bearing common contraction law for a family of scheduled rewrites.
The boundary is supplied and proved fixed, so completeness is deliberately
not required for the convergence theorems below.
-/
structure ContractiveBoundaryCertificate
    (State : Type u)
    (Schedule : Type v)
    [PseudoMetricSpace State] where
  basin : Set State
  step : Schedule → State → State
  boundary : State
  contraction : ℝ≥0
  contraction_lt_one : contraction < 1
  boundary_mem : boundary ∈ basin
  invariant :
    ∀ schedule {state},
      state ∈ basin →
      step schedule state ∈ basin
  boundary_fixed :
    ∀ schedule,
      step schedule boundary = boundary
  contractive :
    ∀ schedule {left right},
      left ∈ basin →
      right ∈ basin →
      nndist (step schedule left) (step schedule right) ≤
        contraction * nndist left right

/--
Optional completeness evidence for constructions that derive a boundary
rather than receiving one as certified data.
-/
structure CompleteContractiveBasin
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) where
  complete : IsComplete certificate.basin

/-- Execute the first `depth` entries of a schedule. -/
def iterateSchedule
    (step : Schedule → State → State)
    (schedule : ℕ → Schedule) :
    ℕ → State → State
  | 0, state => state
  | depth + 1, state =>
      step (schedule depth)
        (iterateSchedule step schedule depth state)

namespace ContractiveBoundaryCertificate

variable {State : Type u} {Schedule : Type v}
variable [PseudoMetricSpace State]

theorem contraction_nonnegative
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :
    (0 : ℝ≥0) ≤ certificate.contraction :=
  bot_le

theorem iterate_mem
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin) :
    ∀ depth,
      iterateSchedule certificate.step schedule depth initial ∈
        certificate.basin := by
  intro depth
  induction depth with
  | zero =>
      simpa [iterateSchedule] using initial_mem
  | succ depth inductionHypothesis =>
      simpa [iterateSchedule] using
        certificate.invariant
          (schedule depth) inductionHypothesis

/-- Every schedule approaches the common boundary at geometric rate. -/
theorem nndist_to_boundary_le_pow
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin) :
    ∀ depth,
      nndist
          (iterateSchedule
            certificate.step schedule depth initial)
          certificate.boundary ≤
        certificate.contraction ^ depth *
          nndist initial certificate.boundary := by
  intro depth
  induction depth with
  | zero =>
      simp [iterateSchedule]
  | succ depth inductionHypothesis =>
      calc
        nndist
            (iterateSchedule
              certificate.step schedule (depth + 1) initial)
            certificate.boundary =
          nndist
            (certificate.step
              (schedule depth)
              (iterateSchedule
                certificate.step schedule depth initial))
            (certificate.step
              (schedule depth) certificate.boundary) := by
                simp [iterateSchedule,
                  certificate.boundary_fixed]
        _ ≤
            certificate.contraction *
              nndist
                (iterateSchedule
                  certificate.step schedule depth initial)
                certificate.boundary :=
          certificate.contractive
            (schedule depth)
            (certificate.iterate_mem
              schedule initial_mem depth)
            certificate.boundary_mem
        _ ≤
            certificate.contraction *
              (certificate.contraction ^ depth *
                nndist initial certificate.boundary) :=
          mul_le_mul_left'
            inductionHypothesis certificate.contraction
        _ =
            certificate.contraction ^ (depth + 1) *
              nndist initial certificate.boundary := by
          rw [pow_succ]
          ac_rfl

/--
Exact traversal never escapes the closed boundary ball determined by its
initial state, even when the declared basin itself is unbounded.
-/
theorem nndist_to_boundary_le_initial
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin)
    (depth : ℕ) :
    nndist
        (iterateSchedule
          certificate.step schedule depth initial)
        certificate.boundary ≤
      nndist initial certificate.boundary := by
  calc
    nndist
        (iterateSchedule
          certificate.step schedule depth initial)
        certificate.boundary ≤
      certificate.contraction ^ depth *
        nndist initial certificate.boundary :=
      certificate.nndist_to_boundary_le_pow
        schedule initial_mem depth
    _ ≤
      1 * nndist initial certificate.boundary :=
      mul_le_mul_right'
        (pow_le_one_of_le
          (le_of_lt certificate.contraction_lt_one)
          depth)
        _
    _ =
      nndist initial certificate.boundary := by
        rw [one_mul]

/-- One schedule converges to the common boundary. -/
theorem nndist_tendsto_zero
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin) :
    Tendsto
      (fun depth =>
        nndist
          (iterateSchedule
            certificate.step schedule depth initial)
          certificate.boundary)
      atTop
      (𝓝 0) := by
  have powerTends :
      Tendsto
        (fun depth : ℕ =>
          certificate.contraction ^ depth)
        atTop
        (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one
      certificate.contraction_nonnegative
      certificate.contraction_lt_one
  have upperTends :
      Tendsto
        (fun depth : ℕ =>
          certificate.contraction ^ depth *
            nndist initial certificate.boundary)
        atTop
        (𝓝 0) :=
    powerTends.mul_const _
  exact
    tendsto_of_tendsto_of_tendsto_of_le_of_le
      tendsto_const_nhds
      upperTends
      (fun _ => bot_le)
      (certificate.nndist_to_boundary_le_pow
        schedule initial_mem)

theorem traversal_tendsto_boundary
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin) :
    Tendsto
      (fun depth =>
        iterateSchedule
          certificate.step schedule depth initial)
      atTop
      (𝓝 certificate.boundary) := by
  apply tendsto_iff_dist_tendsto_zero.mpr
  have nonnegativeDistance :=
    certificate.nndist_tendsto_zero schedule initial_mem
  have realDistance :=
    (NNReal.continuous_coe.tendsto 0).comp
      nonnegativeDistance
  simpa [coe_nndist] using realDistance

/--
Different schedules are compared through their common boundary.  A direct
bound by `qⁿ d(x₀,y₀)` would be invalid when the scheduled maps differ.
-/
theorem cross_schedule_nndist_le
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (leftSchedule rightSchedule : ℕ → Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ certificate.basin)
    (right_mem : rightInitial ∈ certificate.basin) :
    ∀ depth,
      nndist
          (iterateSchedule
            certificate.step leftSchedule depth leftInitial)
          (iterateSchedule
            certificate.step rightSchedule depth rightInitial) ≤
        certificate.contraction ^ depth *
          (nndist leftInitial certificate.boundary +
            nndist rightInitial certificate.boundary) := by
  intro depth
  calc
    nndist
        (iterateSchedule
          certificate.step leftSchedule depth leftInitial)
        (iterateSchedule
          certificate.step rightSchedule depth rightInitial) ≤
      nndist
          (iterateSchedule
            certificate.step leftSchedule depth leftInitial)
          certificate.boundary +
        nndist
          certificate.boundary
          (iterateSchedule
            certificate.step rightSchedule depth rightInitial) :=
      nndist_triangle _ _ _
    _ =
      nndist
          (iterateSchedule
            certificate.step leftSchedule depth leftInitial)
          certificate.boundary +
        nndist
          (iterateSchedule
            certificate.step rightSchedule depth rightInitial)
          certificate.boundary := by
            rw [nndist_comm certificate.boundary]
    _ ≤
      certificate.contraction ^ depth *
          nndist leftInitial certificate.boundary +
        certificate.contraction ^ depth *
          nndist rightInitial certificate.boundary :=
      add_le_add
        (certificate.nndist_to_boundary_le_pow
          leftSchedule left_mem depth)
        (certificate.nndist_to_boundary_le_pow
          rightSchedule right_mem depth)
    _ =
      certificate.contraction ^ depth *
        (nndist leftInitial certificate.boundary +
          nndist rightInitial certificate.boundary) := by
      rw [mul_add]

/-- Schedule-independent asymptotic determinism. -/
theorem traversal_limit_deterministic
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (leftSchedule rightSchedule : ℕ → Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ certificate.basin)
    (right_mem : rightInitial ∈ certificate.basin) :
    Tendsto
      (fun depth =>
        nndist
          (iterateSchedule
            certificate.step leftSchedule depth leftInitial)
          (iterateSchedule
            certificate.step rightSchedule depth rightInitial))
      atTop
      (𝓝 0) := by
  have powerTends :
      Tendsto
        (fun depth : ℕ =>
          certificate.contraction ^ depth)
        atTop
        (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one
      certificate.contraction_nonnegative
      certificate.contraction_lt_one
  have upperTends :
      Tendsto
        (fun depth : ℕ =>
          certificate.contraction ^ depth *
            (nndist leftInitial certificate.boundary +
              nndist rightInitial certificate.boundary))
        atTop
        (𝓝 0) :=
    powerTends.mul_const _
  exact
    tendsto_of_tendsto_of_tendsto_of_le_of_le
      tendsto_const_nhds
      upperTends
      (fun _ => bot_le)
      (certificate.cross_schedule_nndist_le
        leftSchedule rightSchedule left_mem right_mem)

def AsymptoticallyEquivalent
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (leftSchedule rightSchedule : ℕ → Schedule)
    (leftInitial rightInitial : State) : Prop :=
  Tendsto
    (fun depth =>
      nndist
        (iterateSchedule
          certificate.step leftSchedule depth leftInitial)
        (iterateSchedule
          certificate.step rightSchedule depth rightInitial))
    atTop
    (𝓝 0)

theorem all_basin_traversals_asymptoticallyEquivalent
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (leftSchedule rightSchedule : ℕ → Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ certificate.basin)
    (right_mem : rightInitial ∈ certificate.basin) :
    certificate.AsymptoticallyEquivalent
      leftSchedule rightSchedule leftInitial rightInitial :=
  certificate.traversal_limit_deterministic
    leftSchedule rightSchedule left_mem right_mem

/--
In a pseudometric carrier a fixed state is unique only up to zero distance.
-/
theorem contractive_fixed_point_zero_nndist
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : Schedule)
    {state : State}
    (state_mem : state ∈ certificate.basin)
    (fixed : certificate.step schedule state = state) :
    nndist state certificate.boundary = 0 := by
  have bounded :=
    certificate.contractive
      schedule state_mem certificate.boundary_mem
  rw [fixed, certificate.boundary_fixed] at bounded
  by_contra nonzero
  have positive :
      0 < nndist state certificate.boundary :=
    lt_of_le_of_ne bot_le (Ne.symm nonzero)
  have strict :
      certificate.contraction *
          nndist state certificate.boundary <
        nndist state certificate.boundary := by
    exact
      mul_lt_mul_of_pos_right
        certificate.contraction_lt_one positive
  exact (not_lt_of_ge bounded) strict

/--
A positive-period cycle in a pseudometric basin collapses to the boundary's
zero-distance class.  Equality requires metric separation.
-/
theorem scheduled_cycle_zero_nndist
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {state : State}
    (state_mem : state ∈ certificate.basin)
    (period : ℕ)
    (period_pos : 0 < period)
    (cycle :
      iterateSchedule
        certificate.step schedule period state = state) :
    nndist state certificate.boundary = 0 := by
  have period_contracts :
      certificate.contraction ^ period < 1 :=
    pow_lt_one_of_lt
      certificate.contraction_lt_one
      (Nat.ne_of_gt period_pos)
  have bounded :=
    certificate.nndist_to_boundary_le_pow
      schedule state_mem period
  rw [cycle] at bounded
  by_contra nonzero
  have positive :
      0 < nndist state certificate.boundary :=
    lt_of_le_of_ne bot_le (Ne.symm nonzero)
  have strict :
      certificate.contraction ^ period *
          nndist state certificate.boundary <
        nndist state certificate.boundary := by
    exact
      mul_lt_mul_of_pos_right
        period_contracts positive
  exact (not_lt_of_ge bounded) strict

end ContractiveBoundaryCertificate

section MetricUniqueness

variable {State : Type u} {Schedule : Type v}
variable [MetricSpace State]

theorem contractive_fixed_point_unique
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : Schedule)
    {state : State}
    (state_mem : state ∈ certificate.basin)
    (fixed : certificate.step schedule state = state) :
    state = certificate.boundary := by
  exact nndist_eq_zero.mp
    (certificate.contractive_fixed_point_zero_nndist
      schedule state_mem fixed)

/--
A finite scheduled cycle in the basin collapses to the common boundary once
the supplied period is itself strictly contractive.  This is a metric
separation theorem; it does not classify cycles outside the certified basin.
-/
theorem scheduled_cycle_eq_boundary
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {state : State}
    (state_mem : state ∈ certificate.basin)
    (period : ℕ)
    (period_pos : 0 < period)
    (cycle :
      iterateSchedule
        certificate.step schedule period state = state) :
    state = certificate.boundary := by
  exact nndist_eq_zero.mp
    (certificate.scheduled_cycle_zero_nndist
      schedule state_mem period period_pos cycle)

end MetricUniqueness

/-- A Lipschitz trace or frontier observation inherits geometric stability. -/
structure ContractiveBoundaryObservable
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (Observation : Type w)
    [PseudoMetricSpace Observation] where
  observe : State → Observation
  lipschitz : ℝ≥0
  controlled : LipschitzWith lipschitz observe

theorem observable_nndist_le
    {State : Type u}
    {Schedule : Type v}
    {Observation : Type w}
    [PseudoMetricSpace State]
    [PseudoMetricSpace Observation]
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (observable :
      ContractiveBoundaryObservable certificate Observation)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin)
    (depth : ℕ) :
    nndist
        (observable.observe
          (iterateSchedule
            certificate.step schedule depth initial))
        (observable.observe certificate.boundary) ≤
      observable.lipschitz *
        (certificate.contraction ^ depth *
          nndist initial certificate.boundary) := by
  exact le_trans
    (observable.controlled.nndist_le _ _)
    (mul_le_mul_left'
      (certificate.nndist_to_boundary_le_pow
        schedule initial_mem depth)
      observable.lipschitz)

end Mathematics.MobiusOntology
