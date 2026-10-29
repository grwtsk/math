/- Local attribution: grwtsk contributors.
STATIC EXPECTED-TYPE CONSUMER / NOT_RUN. This file has not been compiled.
It is an acceptance requirement, not a replay receipt. -/
import GRWTSK.Algebra.LinearAlgebra.EquivariantRetractionSplitting

set_option autoImplicit false
universe uR uM uB uA uI

open GRWTSK.Algebra.LinearAlgebra

variable {R : Type uR} {M : Type uM} {B : Type uB}
    [CommRing R] [AddCommGroup M] [Module R M]
    [AddCommGroup B] [Module R B]

-- The restricted object is an actual linear endomorphism of the original kernel.
example (r : M →ₗ[R] B) (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hT : ∀ x, r (T x) = S (r x)) :
    LinearMap.ker r →ₗ[R] LinearMap.ker r :=
  retractionKernelEnd r T S hT

example (r : M →ₗ[R] B) (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hT : ∀ x, r (T x) = S (r x)) (x : LinearMap.ker r) :
    (retractionKernelEnd r T S hT x : M) = T (x : M) :=
  retractionKernelEnd_apply r T S hT x

-- The expected first coordinate is the supplied S acting on r x.
example (i : B →ₗ[R] M) (r : M →ₗ[R] B) (hret : ∀ b, r (i b) = b)
    (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hi : ∀ b, T (i b) = i (S b)) (hT : ∀ x, r (T x) = S (r x)) (x : M) :
    retractionSplitEquiv i r hret (T x) =
      (S (r x), retractionKernelEnd r T S hT (retractionSplitEquiv i r hret x).2) :=
  retractionSplitEquiv_intertwines i r hret T S hi hT x

example (i : B →ₗ[R] M) (r : M →ₗ[R] B) (hret : ∀ b, r (i b) = b)
    (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hi : ∀ b, T (i b) = i (S b)) (hT : ∀ x, r (T x) = S (r x))
    (y : B × LinearMap.ker r) :
    T ((retractionSplitEquiv i r hret).symm y) =
      (retractionSplitEquiv i r hret).symm (S y.1, retractionKernelEnd r T S hT y.2) :=
  retractionSplitEquiv_inverse_intertwines i r hret T S hi hT y

example {I : Type uI} (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hret : ∀ b, r (i b) = b) (T : I → M →ₗ[R] M) (S : I → B →ₗ[R] B)
    (hi : ∀ a b, T a (i b) = i (S a b))
    (hT : ∀ a x, r (T a x) = S a (r x)) (a : I) (x : M) :
    retractionSplitEquiv i r hret (T a x) =
      (S a (r x), retractionKernelEnd r (T a) (S a) (hT a)
        (retractionSplitEquiv i r hret x).2) :=
  retractionSplitEquiv_family_intertwines i r hret T S hi hT a x

-- Full action laws are required through actual semiring homomorphisms.
example {A : Type uA} [Semiring A] (r : M →ₗ[R] B)
    (ρM : A →+* Module.End R M) (ρB : A →+* Module.End R B)
    (hT : ∀ a x, r (ρM a x) = ρB a (r x)) :
    A →+* Module.End R (LinearMap.ker r) :=
  retractionKernelRepresentation r ρM ρB hT

example {A : Type uA} [Semiring A] (r : M →ₗ[R] B)
    (ρM : A →+* Module.End R M) (ρB : A →+* Module.End R B)
    (hT : ∀ a x, r (ρM a x) = ρB a (r x)) (a : A) (x : LinearMap.ker r) :
    (retractionKernelRepresentation r ρM ρB hT a x : M) = ρM a (x : M) :=
  retractionKernelRepresentation_apply r ρM ρB hT a x

example {A : Type uA} [Semiring A] (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hret : ∀ b, r (i b) = b)
    (ρM : A →+* Module.End R M) (ρB : A →+* Module.End R B)
    (hi : ∀ a b, ρM a (i b) = i (ρB a b))
    (hT : ∀ a x, r (ρM a x) = ρB a (r x)) (a : A) (x : M) :
    retractionSplitEquiv i r hret (ρM a x) =
      (ρB a (r x), retractionKernelRepresentation r ρM ρB hT a
        (retractionSplitEquiv i r hret x).2) :=
  retractionSplitEquiv_representation_intertwines i r hret ρM ρB hi hT a x
