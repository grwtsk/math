import GRWTSK.LinearAlgebra.HodgePortConsequences

namespace GRWTSK.LinearAlgebra.FramedFiberPort

universe u v₀ v₁ w₀ w₁ x₀ x₁

variable {R : Type u} [Ring R]
variable {A₀ : Type v₀} {A₁ : Type v₁}
variable {B₀ : Type w₀} {B₁ : Type w₁}
variable {C₀ : Type x₀} {C₁ : Type x₁}
variable [AddCommGroup A₀] [Module R A₀]
variable [AddCommGroup A₁] [Module R A₁]
variable [AddCommGroup B₀] [Module R B₀]
variable [AddCommGroup B₁] [Module R B₁]
variable [AddCommGroup C₀] [Module R C₀]
variable [AddCommGroup C₁] [Module R C₁]

/-- Exact equivalence of two-term Hodge data.

Both the differential and the selected codifferential must commute with the degreewise linear
equivalences. An equivalence of underlying modules alone does not construct this record. -/
structure HodgeEquiv
    (A : TwoTermHodgeData R A₀ A₁)
    (B : TwoTermHodgeData R B₀ B₁) where
  equiv0 : A₀ ≃ₗ[R] B₀
  equiv1 : A₁ ≃ₗ[R] B₁
  delta_comm :
    equiv1.toLinearMap.comp A.delta = B.delta.comp equiv0.toLinearMap
  deltaStar_comm :
    equiv0.toLinearMap.comp A.deltaStar = B.deltaStar.comp equiv1.toLinearMap

namespace HodgeEquiv

variable {A : TwoTermHodgeData R A₀ A₁}
variable {B : TwoTermHodgeData R B₀ B₁}
variable {C : TwoTermHodgeData R C₀ C₁}

/-- Forget an exact Hodge equivalence to its forward Hodge port. -/
def toPort (P : HodgeEquiv A B) : HodgePort A B where
  map0 := P.equiv0.toLinearMap
  map1 := P.equiv1.toLinearMap
  delta_comm := P.delta_comm
  deltaStar_comm := P.deltaStar_comm

/-- Pointwise differential compatibility. -/
theorem delta_apply (P : HodgeEquiv A B) (x : A₀) :
    P.equiv1 (A.delta x) = B.delta (P.equiv0 x) :=
  P.toPort.delta_apply x

/-- Pointwise codifferential compatibility. -/
theorem deltaStar_apply (P : HodgeEquiv A B) (x : A₁) :
    P.equiv0 (A.deltaStar x) = B.deltaStar (P.equiv1 x) :=
  P.toPort.deltaStar_apply x

/-- Identity Hodge equivalence. -/
def refl (A : TwoTermHodgeData R A₀ A₁) : HodgeEquiv A A where
  equiv0 := LinearEquiv.refl R A₀
  equiv1 := LinearEquiv.refl R A₁
  delta_comm := by ext x; rfl
  deltaStar_comm := by ext x; rfl

/-- Inverse Hodge equivalence. -/
def symm (P : HodgeEquiv A B) : HodgeEquiv B A where
  equiv0 := P.equiv0.symm
  equiv1 := P.equiv1.symm
  delta_comm := by
    ext y
    apply P.equiv1.injective
    simpa using (P.delta_apply (P.equiv0.symm y)).symm
  deltaStar_comm := by
    ext y
    apply P.equiv0.injective
    simpa using (P.deltaStar_apply (P.equiv1.symm y)).symm

/-- Composition through the exact intermediate Hodge datum. -/
def trans (P : HodgeEquiv A B) (Q : HodgeEquiv B C) : HodgeEquiv A C where
  equiv0 := P.equiv0.trans Q.equiv0
  equiv1 := P.equiv1.trans Q.equiv1
  delta_comm := by
    ext x
    change Q.equiv1 (P.equiv1 (A.delta x)) =
      C.delta (Q.equiv0 (P.equiv0 x))
    rw [P.delta_apply, Q.delta_apply]
  deltaStar_comm := by
    ext x
    change Q.equiv0 (P.equiv0 (A.deltaStar x)) =
      C.deltaStar (Q.equiv1 (P.equiv1 x))
    rw [P.deltaStar_apply, Q.deltaStar_apply]

/-- Degree-zero harmonicity is preserved and reflected by an exact Hodge equivalence. -/
theorem harmonic0_iff (P : HodgeEquiv A B) (x : A₀) :
    A.IsHarmonic0 x ↔ B.IsHarmonic0 (P.equiv0 x) := by
  constructor
  · exact P.toPort.map_harmonic0
  · intro h
    have hs := P.symm.toPort.map_harmonic0 h
    simpa [symm, toPort] using hs

/-- Degree-one harmonicity is preserved and reflected by an exact Hodge equivalence. -/
theorem harmonic1_iff (P : HodgeEquiv A B) (x : A₁) :
    A.IsHarmonic1 x ↔ B.IsHarmonic1 (P.equiv1 x) := by
  constructor
  · exact P.toPort.map_harmonic1
  · intro h
    have hs := P.symm.toPort.map_harmonic1 h
    simpa [symm, toPort] using hs

/-- Exact Hodge equivalences commute with the degree-zero Laplacian. -/
theorem laplacian0_apply (P : HodgeEquiv A B) (x : A₀) :
    P.equiv0 (A.laplacian0 x) = B.laplacian0 (P.equiv0 x) := by
  have h := congrArg (fun L : A₀ →ₗ[R] B₀ => L x) P.toPort.laplacian0_comm
  simpa [toPort, LinearMap.comp_apply] using h

/-- Exact Hodge equivalences commute with the degree-one Laplacian. -/
theorem laplacian1_apply (P : HodgeEquiv A B) (x : A₁) :
    P.equiv1 (A.laplacian1 x) = B.laplacian1 (P.equiv1 x) := by
  have h := congrArg (fun L : A₁ →ₗ[R] B₁ => L x) P.toPort.laplacian1_comm
  simpa [toPort, LinearMap.comp_apply] using h

end HodgeEquiv

end GRWTSK.LinearAlgebra.FramedFiberPort
