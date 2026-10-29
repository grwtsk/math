-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PowerTowerDynamics.Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PowerTowerDynamics.Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac","mathematical_subject":"Topology.GeneralTopology","original_sha256":"89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/PowerTowerBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Exponential
import Mathematics.MobiusOntology.PerturbedBoundary

/-!
# Branch-certified power-tower boundary

The logarithm branch, invariant basin, fixed point, and contraction proof are
all explicit.  The derivative magnitude is recorded as a diagnostic; it does
not silently construct the required basin-wide Lipschitz theorem.
-/


namespace GRWTSK.Topology.GeneralTopology.PowerTowerDynamics.Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac

namespace Mathematics.MobiusOntology

open Set
open scoped ComplexConjugate

structure PowerTowerDynamics where
  base : ℂ
  logBase : ℂ
  logBaseCorrect :
    Complex.exp logBase = base
  basin : Set ℂ
  verificationDomain : Set ℂ
  basinInVerificationDomain :
    basin ⊆ verificationDomain
  inverseBranch : ℂ → ℂ
  step : ℂ → ℂ :=
    fun state => Complex.exp (logBase * state)
  stepInVerificationDomain :
    ∀ {state},
      state ∈ basin →
      step state ∈ verificationDomain
  logarithmicVerification :
    ∀ {state},
      state ∈ basin →
      inverseBranch (step state) = state
  boundary : ℂ
  boundary_mem : boundary ∈ basin
  boundary_fixed :
    step boundary = boundary

def PowerTowerDynamics.derivativeFactor
    (dynamics : PowerTowerDynamics) : ℝ :=
  ‖dynamics.boundary * dynamics.logBase‖

def PowerTowerDynamics.derivativeMagnitudeAt
    (dynamics : PowerTowerDynamics)
    (state : ℂ) : ℝ :=
  ‖dynamics.step state * dynamics.logBase‖

def PowerTowerDynamics.verificationResidual
    (dynamics : PowerTowerDynamics)
    (current next : ℂ) : ℝ≥0 :=
  nndist (dynamics.inverseBranch next) current

theorem PowerTowerDynamics.exact_verificationResidual_eq_zero
    (dynamics : PowerTowerDynamics)
    {state : ℂ}
    (state_mem : state ∈ dynamics.basin) :
    dynamics.verificationResidual
        state (dynamics.step state) = 0 := by
  simp [PowerTowerDynamics.verificationResidual,
    dynamics.logarithmicVerification state_mem]

def PowerTowerDynamics.verificationLeftInverse
    (dynamics : PowerTowerDynamics) :
    Set.LeftInvOn
      dynamics.inverseBranch
      dynamics.step
      dynamics.basin :=
  fun _ state_mem =>
    dynamics.logarithmicVerification state_mem

/--
Branch-sound logarithmic verification forces construction injectivity on the
certified basin.  Branch labels alone would not prove this.
-/
theorem PowerTowerDynamics.step_injectiveOn
    (dynamics : PowerTowerDynamics) :
    Set.InjOn dynamics.step dynamics.basin :=
  dynamics.verificationLeftInverse.injOn

inductive PowerTowerBasinGeometry
  | explicitGlobalLipschitz
  | convex
  | controlledPathFamily
  deriving DecidableEq, Repr, Fintype

/--
A derivative supremum is retained only together with the domain geometry and
the resulting global Lipschitz theorem.  No implication from a pointwise
derivative bound on an arbitrary nonconvex domain is admitted.
-/
structure PowerTowerDerivativeToLipschitzBridge
    (dynamics : PowerTowerDynamics)
    (contraction : ℝ≥0) where
  geometry : PowerTowerBasinGeometry
  pathLengthConstant : ℝ≥0
  derivativeBound :
    ∀ {state},
      state ∈ dynamics.basin →
      dynamics.derivativeMagnitudeAt state ≤
        (contraction : ℝ)
  globalLipschitz :
    ∀ {left right},
      left ∈ dynamics.basin →
      right ∈ dynamics.basin →
      nndist
          (dynamics.step left)
          (dynamics.step right) ≤
        contraction * nndist left right

structure PowerTowerBoundaryCertificate where
  dynamics : PowerTowerDynamics
  contractive :
    ContractiveBoundaryCertificate ℂ Unit
  basinMatches :
    contractive.basin = dynamics.basin
  stepMatches :
    contractive.step () = dynamics.step
  boundaryMatches :
    contractive.boundary = dynamics.boundary
  derivativeToLipschitz :
    PowerTowerDerivativeToLipschitzBridge
      dynamics contractive.contraction

/--
Implemented power-tower steps carry two separate residual coordinates.
`stateDefect` enters the boundary-distance recurrence.  The logarithmic
verification residual remains independently visible and acquires no metric
authority without an additional bridge.
-/
structure PowerTowerImplementationCertificate
    (exact : PowerTowerBoundaryCertificate) where
  implementedStep : ℕ → ℂ → ℂ
  stateDefect : ℕ → ℝ≥0
  verificationDefect : ℕ → ℝ≥0
  implementedInvariant :
    ∀ depth {state},
      state ∈ exact.contractive.basin →
      implementedStep depth state ∈ exact.contractive.basin
  implementedInVerificationDomain :
    ∀ depth {state},
      state ∈ exact.contractive.basin →
      implementedStep depth state ∈
        exact.dynamics.verificationDomain
  stateDefectSound :
    ∀ depth {state},
      state ∈ exact.contractive.basin →
      nndist
          (implementedStep depth state)
          (exact.contractive.step () state) ≤
        stateDefect depth
  verificationDefectSound :
    ∀ depth {state},
      state ∈ exact.contractive.basin →
      exact.dynamics.verificationResidual
          state (implementedStep depth state) ≤
        verificationDefect depth

def PowerTowerImplementationCertificate.toPerturbedBoundary
    {exact : PowerTowerBoundaryCertificate}
    (implementation :
      PowerTowerImplementationCertificate exact) :
    PerturbedBoundaryCertificate exact.contractive where
  implementedStep := fun depth _ =>
    implementation.implementedStep depth
  perturbation := fun depth _ =>
    implementation.stateDefect depth
  implementedInvariant := fun depth _ state_mem =>
    implementation.implementedInvariant depth state_mem
  localDefect := fun depth _ state_mem =>
    implementation.stateDefectSound depth state_mem

structure PowerTowerResidualLedgerEntry where
  stateChannel : ErrorFactor
  verificationChannel : ℝ≥0

def PowerTowerImplementationCertificate.residualLedgerEntry
    {exact : PowerTowerBoundaryCertificate}
    (implementation :
      PowerTowerImplementationCertificate exact)
    (depth : ℕ) :
    PowerTowerResidualLedgerEntry where
  stateChannel :=
    {
      error := implementation.stateDefect depth
      gain := exact.contractive.contraction
    }
  verificationChannel :=
    implementation.verificationDefect depth

def finitePowerTower
    (dynamics : PowerTowerDynamics) :
    ℕ → ℂ → ℂ
  | 0, seed => seed
  | depth + 1, seed =>
      dynamics.step
        (finitePowerTower dynamics depth seed)

theorem finitePowerTower_eq_scheduleIteration
    (certificate : PowerTowerBoundaryCertificate)
    (depth : ℕ)
    (seed : ℂ) :
    finitePowerTower certificate.dynamics depth seed =
      iterateSchedule
        certificate.contractive.step
        (fun _ => ())
        depth seed := by
  induction depth with
  | zero =>
      rfl
  | succ depth inductionHypothesis =>
      simp only [finitePowerTower, iterateSchedule]
      rw [← certificate.stepMatches, inductionHypothesis]

theorem powerTower_tendsto_boundary
    (certificate : PowerTowerBoundaryCertificate)
    {seed : ℂ}
    (seed_mem : seed ∈ certificate.dynamics.basin) :
    Filter.Tendsto
      (fun depth =>
        finitePowerTower
          certificate.dynamics depth seed)
      Filter.atTop
      (𝓝 certificate.dynamics.boundary) := by
  have contractiveSeed :
      seed ∈ certificate.contractive.basin := by
    simpa [certificate.basinMatches] using seed_mem
  have convergence :=
    certificate.contractive.traversal_tendsto_boundary
      (fun _ => ()) contractiveSeed
  simpa
    [finitePowerTower_eq_scheduleIteration,
      certificate.boundaryMatches] using convergence

end Mathematics.MobiusOntology
