/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_ADAPTER_SOURCE_CANDIDATE /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Upstream: The Tau Ceti contributors, Apache-2.0.
Revision 2bdb755239d3bd84760e99bc83166bdf7cc75a6b,
Lean v4.36.0-rc1. NOT a root grwtsk/math Lean v4.34.1 import.
-/
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Selmer.Basic
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Coefficients
import TauCeti.AlgebraicGeometry.EllipticCurve.TateModule.Basic
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Source-typed real local E(F) Kummer point fiber and its H0 Tate tower

At level n, m=p^(n+1), with P=E(F), A=E[m](Fsep),
B=E(Fsep), G=Gal(Fsep/F).

U0=A x P, U1=C_cont^1(G,A) x B,
U2=C_cont^2(G,A) x C_cont^1(G,B).
The point correction is -W.basePointCoeff P, not zero.

The actual local H0 is E(F)[m], and its inverse system is
TauCeti.TateModule p W.toAffine.Point using the authentic
tateModuleTransition. This is NOT the geometric T_pE:
TauCeti.TateModule p W.PointCoeff.

All actual cochain and Galois coefficient objects below are sourced
from Tau Ceti; this is an uncompiled adapter candidate.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiPointKummerTower

open TauCeti TauCeti.ContCohomology

variable {F : Type*} [Field F] (W : WeierstrassCurve F)
variable [W.IsElliptic] (p : ℕ) [Fact p.Prime]

abbrev Geo := W.PointCoeff
abbrev LocalPoints := W.toAffine.Point
abbrev LocalGalois := AbsoluteGaloisGroup F
abbrev Level (n : ℕ) := W.TorsionCoeff (p ^ (n + 1))

abbrev Uzero (n : ℕ) := Level W p n × LocalPoints W
abbrev Uone (n : ℕ) :=
  C1 (LocalGalois (F := F)) (Level W p n) × Geo W
abbrev Utwo (n : ℕ) :=
  C2 (LocalGalois (F := F)) (Level W p n) ×
    C1 (LocalGalois (F := F)) (Geo W)

/-- Exact degree-zero cochain differential, with the genuine local
F-rational point correction. -/
def localD0 (n : ℕ) (x : Uzero W p n) : Uone W p n :=
  (⟨d0 (LocalGalois (F := F)) (Level W p n) x.1,
      continuous_d0_apply x.1⟩,
   (W.torsionCoeffIncl (p ^ (n + 1))) x.1 -
      W.basePointCoeff x.2)

/-- Exact next differential using the TRUE geometric E-point action.
No truncation or selected local H1 subgroup replaces the cochain. -/
def localD1 (n : ℕ) (x : Uone W p n) : Utwo W p n :=
  (⟨d1 (LocalGalois (F := F)) (Level W p n) x.1.1,
      continuous_d1_apply x.1.2⟩,
   ⟨fun g =>
      (W.torsionCoeffIncl (p ^ (n + 1))) (x.1.1 g) -
        (d0 (LocalGalois (F := F)) (Geo W) x.2) g,
     (continuous_of_discreteTopology.comp x.1.2).sub
       (continuous_d0_apply x.2)⟩)

/-- The ACTUAL invariant-point equivalence, upstream theorem of
Galois descent, rather than an arbitrary chosen point section. -/
def localPointInvariants :
    W.toAffine.Point ≃+
      H0 (LocalGalois (F := F)) W.PointCoeff :=
  W.basePointEquivInvariants

/-- The original local rational p^n-torsion and the exact
cohomological H0 of the point-corrected local cone. -/
abbrev localH0Level (n : ℕ) :=
  AddSubgroup.torsionBy W.toAffine.Point (p ^ (n + 1))

/-- Actual source-defined H0 inverse limit of the rational-point
torsion tower. It need NOT vanish at real or complex places. -/
abbrev localH0Tate :=
  TateModule p W.toAffine.Point

/-- Distinct geometric Tate module: this is the coefficient object
for continuous Galois cochains, not local H0. -/
abbrev geometricTate :=
  TateModule p W.PointCoeff

/-- The H0 transition is literally multiplication by p, as
proved by upstream TateModule.tateModuleTransition_apply. -/
theorem localH0_transition (n : ℕ)
    (x : TateModuleLevel p W.toAffine.Point (n + 1)) :
    ((tateModuleTransition p W.toAffine.Point n x :
      TateModuleLevel p W.toAffine.Point n) : W.toAffine.Point) =
      p • (x : W.toAffine.Point) := by
  exact tateModuleTransition_apply p W.toAffine.Point n x

/-- Every point-inclusion map respects p-smul. The same formal
naturality supplies the coefficient diagram under genuine torsion
level maps; no arbitrary scalar comparison is allowed. -/
theorem point_inclusion_p_natural (x : W.toAffine.Point) :
    W.basePointCoeff (p • x) = p • W.basePointCoeff x := by
  exact map_nsmul W.basePointCoeff p x

/-- The ACTUAL cochain differential squared to zero, contingent
only on Tau Ceti's genuine d1*d0=0, coefficient equivariance and
the fixed-point theorem for rational points. -/
theorem localD1_localD0 (n : ℕ) (x : Uzero W p n) :
    localD1 W p n (localD0 W p n x) = 0 := by
  apply Prod.ext
  · apply Subtype.ext
    exact d1_comp_d0_apply (LocalGalois (F := F))
      (Level W p n) x.1
  · apply Subtype.ext
    funext g
    change (W.torsionCoeffIncl (p ^ (n + 1)))
      ((d0 (LocalGalois (F := F)) (Level W p n) x.1) g) -
      (d0 (LocalGalois (F := F)) (Geo W)
        ((W.torsionCoeffIncl (p ^ (n + 1))) x.1 -
            W.basePointCoeff x.2)) g = 0
    rw [map_sub]
    have hCoeff :=
      map_d0_apply
        (W.torsionCoeffIncl (p ^ (n + 1)) :
          Level W p n →+ Geo W)
        (fun σ a => (W.torsionCoeffIncl (p ^ (n + 1))).map_smul σ a)
        x.1 g
    have hRat :
        (d0 (LocalGalois (F := F)) (Geo W)
          (W.basePointCoeff x.2)) g = 0 := by
      simp [d0_apply, W.smul_basePointCoeff]
    rw [← hCoeff, hRat]
    abel

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiPointKummerTower
