import Mathlib
import GRWTSK.Algebra.KTheory.GrothendieckPort

namespace GRWTSK.LinearAlgebra.FramedFiberPort

universe u v w x v₀ v₁ w₀ w₁ m n p

section OperatorDefect

variable {R : Type u} [Ring R]
variable {E : Type v} {F : Type w} {G : Type x}
variable [AddCommGroup E] [Module R E]
variable [AddCommGroup F] [Module R F]
variable [AddCommGroup G] [Module R G]

/-- The exact residual of transporting an operator through a linear fiber port. -/
def operatorDefect (U : E →ₗ[R] F) (D_E : E →ₗ[R] E) (D_F : F →ₗ[R] F) :
    E →ₗ[R] F :=
  U.comp D_E - D_F.comp U

/-- Port defects obey the exact composition identity
`R_(V ∘ U) = V R_U + R_V U`. -/
theorem operatorDefect_comp
    (U : E →ₗ[R] F) (V : F →ₗ[R] G)
    (D_E : E →ₗ[R] E) (D_F : F →ₗ[R] F) (D_G : G →ₗ[R] G) :
    operatorDefect (V.comp U) D_E D_G =
      V.comp (operatorDefect U D_E D_F) +
        (operatorDefect V D_F D_G).comp U := by
  ext e
  simp [operatorDefect, LinearMap.comp_apply]

/-- Exact operator transport through a port. -/
def Intertwines (U : E →ₗ[R] F) (D_E : E →ₗ[R] E) (D_F : F →ₗ[R] F) : Prop :=
  U.comp D_E = D_F.comp U

/-- Exact transport is precisely vanishing defect. -/
theorem intertwines_iff_defect_eq_zero
    (U : E →ₗ[R] F) (D_E : E →ₗ[R] E) (D_F : F →ₗ[R] F) :
    Intertwines U D_E D_F ↔ operatorDefect U D_E D_F = 0 := by
  simp [Intertwines, operatorDefect, sub_eq_zero]

/-- Exact intertwiners compose. -/
theorem Intertwines.comp
    {U : E →ₗ[R] F} {V : F →ₗ[R] G}
    {D_E : E →ₗ[R] E} {D_F : F →ₗ[R] F} {D_G : G →ₗ[R] G}
    (hU : Intertwines U D_E D_F) (hV : Intertwines V D_F D_G) :
    Intertwines (V.comp U) D_E D_G := by
  rw [intertwines_iff_defect_eq_zero] at hU hV ⊢
  rw [operatorDefect_comp, hU, hV]
  simp

end OperatorDefect

section HodgeTransport

variable {R : Type u} [Ring R]
variable {A₀ : Type v₀} {A₁ : Type v₁} {B₀ : Type w₀} {B₁ : Type w₁}
variable [AddCommGroup A₀] [Module R A₀]
variable [AddCommGroup A₁] [Module R A₁]
variable [AddCommGroup B₀] [Module R B₀]
variable [AddCommGroup B₁] [Module R B₁]

/-- A finite two-term Hodge datum with a chosen differential and codifferential.

The structure records the algebraic data needed for transport. Positivity and the assertion that
`deltaStar` is the metric adjoint remain separate hypotheses of a concrete realization. -/
structure TwoTermHodgeData (R : Type u) [Ring R]
    (C₀ : Type v₀) (C₁ : Type v₁)
    [AddCommGroup C₀] [Module R C₀]
    [AddCommGroup C₁] [Module R C₁] where
  delta : C₀ →ₗ[R] C₁
  deltaStar : C₁ →ₗ[R] C₀

namespace TwoTermHodgeData

/-- The degree-zero Hodge-shaped Laplacian `δ*δ`. -/
def laplacian0 (A : TwoTermHodgeData R A₀ A₁) : A₀ →ₗ[R] A₀ :=
  A.deltaStar.comp A.delta

/-- The degree-one Hodge-shaped Laplacian `δδ*`. -/
def laplacian1 (A : TwoTermHodgeData R A₀ A₁) : A₁ →ₗ[R] A₁ :=
  A.delta.comp A.deltaStar

/-- Algebraic harmonicity in degree zero. -/
def IsHarmonic0 (A : TwoTermHodgeData R A₀ A₁) (x : A₀) : Prop :=
  A.laplacian0 x = 0

end TwoTermHodgeData

/-- A chain-and-codifferential port between two finite Hodge data. -/
structure HodgePort
    (A : TwoTermHodgeData R A₀ A₁) (B : TwoTermHodgeData R B₀ B₁) where
  map0 : A₀ →ₗ[R] B₀
  map1 : A₁ →ₗ[R] B₁
  delta_comm : map1.comp A.delta = B.delta.comp map0
  deltaStar_comm : map0.comp A.deltaStar = B.deltaStar.comp map1

namespace HodgePort

variable {A : TwoTermHodgeData R A₀ A₁} {B : TwoTermHodgeData R B₀ B₁}

/-- A Hodge port raises the degree-zero Laplacian. -/
theorem laplacian0_comm (P : HodgePort A B) :
    P.map0.comp A.laplacian0 = B.laplacian0.comp P.map0 := by
  ext x
  change P.map0 (A.deltaStar (A.delta x)) =
    B.deltaStar (B.delta (P.map0 x))
  calc
    P.map0 (A.deltaStar (A.delta x)) =
        B.deltaStar (P.map1 (A.delta x)) := by
      simpa [LinearMap.comp_apply] using
        congrArg (fun L : A₁ →ₗ[R] B₀ => L (A.delta x)) P.deltaStar_comm
    _ = B.deltaStar (B.delta (P.map0 x)) := by
      apply congrArg B.deltaStar
      simpa [LinearMap.comp_apply] using
        congrArg (fun L : A₀ →ₗ[R] B₁ => L x) P.delta_comm

/-- Harmonic degree-zero vectors are transported to harmonic vectors. -/
theorem map_harmonic0 (P : HodgePort A B) {x : A₀}
    (hx : A.IsHarmonic0 x) : B.IsHarmonic0 (P.map0 x) := by
  unfold TwoTermHodgeData.IsHarmonic0 at *
  have hcomm := congrArg (fun L : A₀ →ₗ[R] B₀ => L x) P.laplacian0_comm
  calc
    B.laplacian0 (P.map0 x) = P.map0 (A.laplacian0 x) := by
      simpa [LinearMap.comp_apply] using hcomm.symm
    _ = 0 := by rw [hx]; exact P.map0.map_zero

end HodgePort

/-- A chain-level projector compatible with both `δ` and the chosen `δ*`. -/
structure HodgeProjector (A : TwoTermHodgeData R A₀ A₁) where
  p0 : A₀ →ₗ[R] A₀
  p1 : A₁ →ₗ[R] A₁
  p0_idempotent : p0.comp p0 = p0
  p1_idempotent : p1.comp p1 = p1
  delta_comm : p1.comp A.delta = A.delta.comp p0
  deltaStar_comm : p0.comp A.deltaStar = A.deltaStar.comp p1

namespace HodgeProjector

variable {A : TwoTermHodgeData R A₀ A₁}

/-- A compatible projector is a Hodge port from a complex to itself. -/
def toPort (P : HodgeProjector A) : HodgePort A A where
  map0 := P.p0
  map1 := P.p1
  delta_comm := P.delta_comm
  deltaStar_comm := P.deltaStar_comm

/-- A compatible chain-level projector commutes with the degree-zero Laplacian. -/
theorem laplacian0_comm (P : HodgeProjector A) :
    P.p0.comp A.laplacian0 = A.laplacian0.comp P.p0 :=
  P.toPort.laplacian0_comm

end HodgeProjector

/-- Rational specialization used by cycle-to-cellular comparison adapters. -/
abbrev RationalTwoTermHodgeData
    (C₀ : Type v₀) (C₁ : Type v₁)
    [AddCommGroup C₀] [Module ℚ C₀]
    [AddCommGroup C₁] [Module ℚ C₁] :=
  TwoTermHodgeData ℚ C₀ C₁

end HodgeTransport

section StableKOperatorPort

variable {R : Type u} [Ring R]
variable {E : Type v} {F : Type w} {G : Type x}
variable [AddCommGroup E] [Module R E]
variable [AddCommGroup F] [Module R F]
variable [AddCommGroup G] [Module R G]
variable {M : Type m} {N : Type n} {P : Type p}
variable [CommMonoid M] [CommMonoid N] [CommMonoid P]

/-- A linear operator port paired with an independent stable-object/K₀ transport channel. -/
structure StableKOperatorPort
    (D_E : E →ₗ[R] E) (D_F : F →ₗ[R] F)
    (M : Type m) (N : Type n) [CommMonoid M] [CommMonoid N] where
  linearPort : E →ₗ[R] F
  stablePort : GRWTSK.Algebra.KTheory.StablePort M N

namespace StableKOperatorPort

variable {D_E : E →ₗ[R] E} {D_F : F →ₗ[R] F} {D_G : G →ₗ[R] G}

/-- The analytic/algebraic operator residual attached to the linear port. -/
def residual (P : StableKOperatorPort D_E D_F M N) : E →ₗ[R] F :=
  operatorDefect P.linearPort D_E D_F

/-- The universal `K₀` map attached to the stable-object port. -/
noncomputable def kZeroMap (P : StableKOperatorPort D_E D_F M N) :
    GRWTSK.Algebra.KTheory.GrothendieckKZero M →*
      GRWTSK.Algebra.KTheory.GrothendieckKZero N :=
  P.stablePort.kZeroMap

/-- Composition preserves both channels without conflating them. -/
def comp
    (Q : StableKOperatorPort D_F D_G N P)
    (P₀ : StableKOperatorPort D_E D_F M N) :
    StableKOperatorPort D_E D_G M P where
  linearPort := Q.linearPort.comp P₀.linearPort
  stablePort := GRWTSK.Algebra.KTheory.StablePort.comp Q.stablePort P₀.stablePort

/-- Operator residuals accumulate under port composition. -/
theorem residual_comp
    (Q : StableKOperatorPort D_F D_G N P)
    (P₀ : StableKOperatorPort D_E D_F M N) :
    (comp Q P₀).residual =
      Q.linearPort.comp P₀.residual + Q.residual.comp P₀.linearPort := by
  exact operatorDefect_comp P₀.linearPort Q.linearPort D_E D_F D_G

/-- The independent universal `K₀` channel composes functorially. -/
theorem kZeroMap_comp
    (Q : StableKOperatorPort D_F D_G N P)
    (P₀ : StableKOperatorPort D_E D_F M N) :
    (comp Q P₀).kZeroMap = Q.kZeroMap.comp P₀.kZeroMap := by
  simpa [kZeroMap, comp] using
    (GRWTSK.Algebra.KTheory.StablePort.kZeroMap_comp
      Q.stablePort P₀.stablePort)

/-- Exact operator lifting is a separate property from the presence of a `K₀` map. -/
def IsExact (P : StableKOperatorPort D_E D_F M N) : Prop :=
  P.residual = 0

/-- Exact operator ports compose exactly. -/
theorem exact_comp
    (Q : StableKOperatorPort D_F D_G N P)
    (P₀ : StableKOperatorPort D_E D_F M N)
    (hQ : Q.IsExact) (hP : P₀.IsExact) :
    (comp Q P₀).IsExact := by
  unfold IsExact at *
  rw [residual_comp, hP, hQ]
  simp

end StableKOperatorPort

end StableKOperatorPort

end GRWTSK.LinearAlgebra.FramedFiberPort
