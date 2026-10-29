import GRWTSK.Algebra.QuarticBaseResolventRootSet
import GRWTSK.Algebra.QuarticGaloisMatching

/-!
# Quartic perfect matchings and actual cubic-resolvent roots

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The codomain is the actual root subtype of the base-field cubic after
scalar extension, not a fabricated three-element coordinate set. Four
distinct quartic roots give injectivity; root-set exhaustion gives
surjectivity. The automorphism comparison is a separate conditional
statement using the actual quartic automorphism-permutation map.
-/

namespace GRWTSK.Algebra.QuarticResolventRootEquiv

open Polynomial
open GRWTSK.Algebra.QuarticBaseResolvent
open GRWTSK.Algebra.QuarticBaseResolventRootSet
open GRWTSK.Algebra.QuarticBaseResolventMatching
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingAdjacency
open GRWTSK.Algebra.QuarticGaloisMatching
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

def CubicRootCarrier (A B C₀ D : K) : Type :=
  {x : L // ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).IsRoot x}

/-- Matching values provide an equivalence with all actual cubic roots. -/
def perfectMatchingEquivCubicRoots
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 + C B * X ^ 2 + C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    PerfectMatching ≃ CubicRootCarrier (L := L) A B C₀ D :=
  Equiv.ofBijective
    (fun m : PerfectMatching =>
      (⟨complementaryAdjacency e.r m,
        matching_value_is_resolvent_root p A B C₀ D hp hs hm e m⟩ :
          CubicRootCarrier (L := L) A B C₀ D))
    ⟨(fun a b h =>
        matching_value_injective_of_separable p hsep e (congrArg Subtype.val h)),
      (by
        intro x
        have hroot : x.1 ∈ Set.range (complementaryAdjacency e.r) := by
          rw [← mapped_resolvent_rootSet_eq_matching_range p A B C₀ D hp hs hm e]
          exact x.2
        obtain ⟨m, hm'⟩ := hroot
        refine ⟨m, ?_⟩
        apply Subtype.ext
        exact hm')⟩

/-- Actual automorphisms act on the root subtype through their action on L.
The proof uses the established quartic matching covariance rather than
assuming a classification of the Galois group. -/
theorem cubicRootCarrier_automorphism_compatible
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 + C B * X ^ 2 + C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0)
    (φ : L ≃ₐ[K] L) (m : PerfectMatching) :
    φ ((perfectMatchingEquivCubicRoots p A B C₀ D hp hs hm hsep e m).1) =
      (perfectMatchingEquivCubicRoots p A B C₀ D hp hs hm hsep e
        ((actualMatchingPermutationHom p e hne
          (enumeration_injective_of_separable p hsep e) φ) m)).1 := by
  exact actual_matching_adjacency_automorphism p e hne
    (enumeration_injective_of_separable p hsep e) φ m

end
end GRWTSK.Algebra.QuarticResolventRootEquiv
