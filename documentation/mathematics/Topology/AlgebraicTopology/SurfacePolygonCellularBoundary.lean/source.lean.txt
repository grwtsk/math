/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Finite list sums, integer modules and linear maps: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#758. Parent draft PR #751 exact head
d5fc75717c806cc1587cdaceb123437ee39b6e12.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam
import Mathlib.Algebra.BigOperators.Group.List.Basic
import Mathlib.Tactic

/-!
# The exact integral incidence of an oriented genus-g polygon word

The earlier source defines an ordered list of *source-identified* signed
edges and proves that their free-group evaluation is the actual one-
relator word for the abstract genus-(k+2) presented group.

Here we derive the source-specific **integral signed-incidence vector**
directly from that same ordered word, rather than postulating a zero
boundary. Each a b a^-1 b^-1 handle block contributes zero net
incidence at EVERY generator (including the possibility a=b).
Consequently its full polygon word has zero signed incidence.

We construct a finite one-vertex/one-face candidate cellular chain
profile C2=Z, C1=(GenusLetter k -> Z), C0=Z, with d2 defined from
the actual incidence vector and d1=0 for a single vertex. We show
d2=0, d1 o d2=0, all one-chains are cycles, and the only boundary is 0.
The number of one-cell source IDs is exactly 2*(k+2).

This is *algebraic candidate cellular data*, NOT the cellular chain
complex or singular H1 of a constructed topological genus-g surface.
No polygon quotient, van Kampen result, authentic separating curve,
hyperbolic metric, Selberg trace or RH statement is constructed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam

/-- The signed coefficient contributed to a named one-cell by a literal
directed polygon side: +1 forward, -1 reverse, 0 if a different ID. -/
def signedSideIncidence (k : ℕ) (x : GenusLetter k)
    (side : SignedSide k) : ℤ :=
  if side.1 = x then (if side.2 then 1 else -1) else 0

/-- Integrate signed incidence over the EXACT ordered source-edge list.
This is not an arbitrary zero map. -/
def signedWordCoefficient (k : ℕ) (x : GenusLetter k)
    (sides : List (SignedSide k)) : ℤ :=
  (sides.map (signedSideIncidence k x)).sum

/-- Signed coefficients add over literal ordered concatenation; the
additive target forgets ordering, but the underlying free-group word
and its noncommutative evaluation from #745 retain that order. -/
theorem signedWordCoefficient_append (k : ℕ) (x : GenusLetter k)
    (u v : List (SignedSide k)) :
    signedWordCoefficient k x (u ++ v) =
      signedWordCoefficient k x u + signedWordCoefficient k x v := by
  simp [signedWordCoefficient, List.map_append, List.sum_append]

/-- A flattened list of blocks has the sum of each block's integer
coefficient. Unlike free-group products, this calculation is additive. -/
theorem signedWordCoefficient_flatten (k : ℕ) (x : GenusLetter k)
    (blocks : List (List (SignedSide k))) :
    signedWordCoefficient k x blocks.flatten =
      (blocks.map (signedWordCoefficient k x)).sum := by
  induction blocks with
  | nil =>
      simp [signedWordCoefficient]
  | cons block rest ih =>
      simp only [List.flatten_cons, List.map_cons, List.sum_cons]
      rw [signedWordCoefficient_append, ih]

/-- Net signed incidence of the four edges a b a^-1 b^-1 is ZERO
for every named generator x. It remains zero even if a=b, because
the proof uses the identical source identities and actual opposite
orientations rather than assuming the two letters differ. -/
theorem signedWordCoefficient_handleBlock (k : ℕ)
    (x a b : GenusLetter k) :
    signedWordCoefficient k x (handleBlock k a b) = 0 := by
  classical
  simp [signedWordCoefficient, handleBlock, signedSideIncidence]
  split_ifs <;> omega

/-- The two initial handle blocks independently cancel in integral
incidence, without changing their noncommutative free-group relator. -/
theorem signedWordCoefficient_firstTwo (k : ℕ) (x : GenusLetter k) :
    signedWordCoefficient k x (firstTwoBoundary k) = 0 := by
  unfold firstTwoBoundary
  rw [signedWordCoefficient_append]
  simp [signedWordCoefficient_handleBlock]

/-- Every additional handle block also has zero signed incidence.
The blocks themselves remain source-distinct and ordered. -/
theorem signedWordCoefficient_extraBlocks (k : ℕ)
    (x : GenusLetter k) :
    ((extraHandleBlocks k).map
      (signedWordCoefficient k x)).sum = 0 := by
  apply List.sum_eq_zero
  intro coefficient hcoefficient
  obtain ⟨block, hblock, rfl⟩ := List.mem_map.mp hcoefficient
  change block ∈ List.ofFn
      (fun j : Fin k =>
        handleBlock k (extraLetter k j false)
          (extraLetter k j true)) at hblock
  obtain ⟨j, rfl⟩ := List.mem_ofFn.mp hblock
  exact signedWordCoefficient_handleBlock k x
    (extraLetter k j false) (extraLetter k j true)

/-- The flattened additional polygon boundary has zero integral
coefficient on every generator, for arbitrary k including k=0. -/
theorem signedWordCoefficient_extra (k : ℕ) (x : GenusLetter k) :
    signedWordCoefficient k x (extraBoundary k) = 0 := by
  unfold extraBoundary
  rw [signedWordCoefficient_flatten]
  exact signedWordCoefficient_extraBlocks k x

/-- CENTRAL EXACT INCIDENCE RESULT. The finite polygon source word
from #745 has no net oriented coefficient on ANY of its one-cell IDs.
This is derived from the full edge list, not a selected quotient or
a fictitious topological H1 statement. -/
theorem signedWordCoefficient_polygon_zero (k : ℕ)
    (x : GenusLetter k) :
    signedWordCoefficient k x (polygonBoundaryWord k) = 0 := by
  unfold polygonBoundaryWord
  rw [signedWordCoefficient_append,
    signedWordCoefficient_firstTwo, signedWordCoefficient_extra]
  norm_num

/-- One oriented one-cell per true source generator. -/
abbrev OneCellChains (k : ℕ) : Type :=
  GenusLetter k → ℤ

/-- The explicitly induced signed one-cell incidence vector of the
single candidate two-cell, obtained from the SAME polygonBoundaryWord. -/
def polygonFaceBoundaryVector (k : ℕ) : OneCellChains k :=
  fun x => signedWordCoefficient k x (polygonBoundaryWord k)

/-- The actual signed incidence vector is zero at every source ID.
The ordered noncommutative polygon RELATOR is not thereby made trivial. -/
theorem polygonFaceBoundaryVector_eq_zero (k : ℕ) :
    polygonFaceBoundaryVector k = 0 := by
  funext x
  exact signedWordCoefficient_polygon_zero k x

/-- The candidate C2->C1 differential is a genuine Z-linear map
induced by the actual signed incidence of the one polygon face. -/
def differentialTwo (k : ℕ) : ℤ →ₗ[ℤ] OneCellChains k where
  toFun n := n • polygonFaceBoundaryVector k
  map_add' a b := by
    simp only [add_smul]
  map_smul' a b := by
    simp only [smul_assoc, RingHom.id_apply]

/-- The one-vertex convention means every one-cell is a based loop;
hence its C1->C0 differential is the zero Z-linear map. This is a
specified combinatorial convention, not a theorem about a space. -/
def differentialOne (k : ℕ) : OneCellChains k →ₗ[ℤ] ℤ := 0

/-- The C2 boundary vanishes only because the ACTUAL source incidence
vector was proved zero. -/
theorem differentialTwo_apply_zero (k : ℕ) (n : ℤ) :
    differentialTwo k n = 0 := by
  change n • polygonFaceBoundaryVector k = 0
  rw [polygonFaceBoundaryVector_eq_zero]
  simp

/-- Equality of genuine Z-linear maps, not just numerical coincidence. -/
theorem differentialTwo_eq_zero (k : ℕ) :
    differentialTwo k = 0 := by
  apply LinearMap.ext
  intro n
  exact differentialTwo_apply_zero k n

/-- The exact algebraic chain condition d1*d2=0, with both maps
carrying the same explicit source-indexed cell types. -/
theorem differentials_comp_eq_zero (k : ℕ) :
    (differentialOne k).comp (differentialTwo k) = 0 := by
  simp [differentialOne]

/-- The group of one-cycles, as an explicit predicate on the candidate
one-cell chain module. This is not singular homology. -/
def OneCycles (k : ℕ) : Set (OneCellChains k) :=
  {v | differentialOne k v = 0}

/-- The group of one-boundaries, as the literal range of the sourced
candidate two-cell boundary operator. -/
def OneBoundaries (k : ℕ) : Set (OneCellChains k) :=
  {v | ∃ n : ℤ, differentialTwo k n = v}

/-- Every candidate one-chain is a cycle because it begins and ends
at the sole stipulated vertex. -/
theorem oneCycles_univ (k : ℕ) :
    OneCycles k = Set.univ := by
  ext v
  simp [OneCycles, differentialOne]

/-- The ONLY one-boundary is zero. This is an exact computation for the
finite algebraic ledger, NOT the topological H1 of an actual surface. -/
theorem oneBoundaries_singleton_zero (k : ℕ) :
    OneBoundaries k = {0} := by
  ext v
  constructor
  · rintro ⟨n, hn⟩
    have hv : v = 0 := by
      calc
        v = differentialTwo k n := hn.symm
        _ = 0 := differentialTwo_apply_zero k n
    simpa using hv
  · intro hv
    have hzero : v = 0 := by simpa using hv
    subst v
    exact ⟨0, differentialTwo_apply_zero k 0⟩

/-- EXACT number of source-labelled one-cells, namely 2*g with
g=k+2. This is a finite counting theorem, not yet a CW isomorphism. -/
theorem oneCellSourceCount (k : ℕ) :
    Fintype.card (GenusLetter k) = 2 * (k + 2) := by
  simp [GenusLetter, Fintype.card_sum, Fintype.card_prod]
  omega

/-- Formal cell-count Euler ledger 1 - 2g + 1, not yet the Euler
characteristic of an authenticated topological surface. -/
def formalEulerCount (k : ℕ) : ℤ :=
  1 - (Fintype.card (GenusLetter k) : ℤ) + 1

theorem formalEulerCount_eq (k : ℕ) :
    formalEulerCount k = 2 - 2 * ((k : ℤ) + 2) := by
  unfold formalEulerCount
  rw [oneCellSourceCount]
  push_cast
  ring

/-- A hostile source corruption: dropping the inverse b edge from
one base handle leaves nonzero signed incidence at b. Thus the
zero-boundary theorem cannot be obtained by an always-zero checker. -/
def missingInverseEdge (k : ℕ) : List (SignedSide k) :=
  [(baseLetter k 0, true), (baseLetter k 1, true),
    (baseLetter k 0, false)]

theorem missingInverseEdge_nonzero (k : ℕ) :
    signedWordCoefficient k (baseLetter k 1)
      (missingInverseEdge k) = 1 := by
  norm_num [signedWordCoefficient, signedSideIncidence,
    missingInverseEdge, baseLetter]

/-- The genus-two boundary incidence is zero at EVERY source ID. -/
theorem genus_two_polygon_boundary_zero (x : GenusLetter 0) :
    signedWordCoefficient 0 x (polygonBoundaryWord 0) = 0 :=
  signedWordCoefficient_polygon_zero 0 x

/-- The genus-three extra handle is included and cancels in integer
incidence; its source identity is not deleted from the polygon word. -/
theorem genus_three_polygon_boundary_zero (x : GenusLetter 1) :
    signedWordCoefficient 1 x (polygonBoundaryWord 1) = 0 :=
  signedWordCoefficient_polygon_zero 1 x

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary
