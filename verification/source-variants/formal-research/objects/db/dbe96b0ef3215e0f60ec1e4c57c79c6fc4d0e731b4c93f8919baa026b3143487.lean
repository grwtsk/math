module

public import Surface.Core.XYZ.Hash
public import Surface.Core.XYZ.Fixed
public import Surface.Core.XYZ.Route
public import Surface.Core.XYZ.Revision
public import Surface.Core.XYZ.Transport
public import Surface.Core.XYZ.Convergence
public import Surface.Core.XYZ.RiemannSphere

/-!
# Deterministic finite XYZ transport

This aggregate exports only the finite fixed-point protocol, deterministic
routing/merge/convergence proofs, and explicitly supplied topology adapters.
It imports no analytic number-theory, torsion, cohomology, spectral,
trace-formula, Ricci-flow, PDE, Presentation, Rust, or browser module.
-/

public section

namespace Surface.Core.XYZ

/-- Categories that finite XYZ transport is specifically forbidden from
promoting to theorem authority.  These are labels, not imports of the named
mathematical theories. -/
inductive ForbiddenAnalyticAuthority
  | dirichletGRH
  | grhForConductorThreeCharacter
  | conductorThreeTypeIIMaximalEstimate
  | arithmeticTorsion
  | selmerOrBSD
  | cohomologyOrPrismaticComparison
  | traceFormulaOrSpectralClaim
  | ricciFlowOrPDEClaim
  | classicalModularFormClaim
  | ellipticCohomologyOrTMF
  | browserOrDomCorrectness
deriving DecidableEq, Repr

/-- A finite transport artifact proves none of the forbidden analytic claims. -/
@[expose]
def ProvesForbiddenAnalyticAuthority
    (_ : ForbiddenAnalyticAuthority) : Prop := False

/-- The aggregate authority predicate is false for every forbidden claim. -/
@[expose]
def FiniteXYZTransportHasAnalyticAuthority : Prop :=
  ∃ claim, ProvesForbiddenAnalyticAuthority claim

@[surface_novel, surface_published]
theorem finiteXYZTransport_has_no_analytic_authority :
    ¬ FiniteXYZTransportHasAnalyticAuthority := by
  simp [FiniteXYZTransportHasAnalyticAuthority,
    ProvesForbiddenAnalyticAuthority]

end Surface.Core.XYZ

