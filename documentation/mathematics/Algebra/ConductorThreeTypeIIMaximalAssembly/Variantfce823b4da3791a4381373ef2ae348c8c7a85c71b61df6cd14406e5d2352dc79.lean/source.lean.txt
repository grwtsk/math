module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeHyperbolicCarleson
public import Surface.Core.TypeII.ShellPrefixCode
public import Surface.Core.TypeII.TransverseSquare
public import Surface.Core.ConductorThreeWangZahlTTStar
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.Tactic

/-!
# Finite maximal assembly for conductor-three Type II shell blocks

This module proves the coefficient-free part of the passage from a dyadic
square-function estimate to a prefix estimate.  A shell-prefix code writes
the matrix of `(2^q,x]` as a sum of at most `q+2` product-interval matrices.
The triangle inequality and finite Cauchy--Schwarz therefore give

`|Pair(a,H_(2^q,x],b)|^2 <= (q+2) * sum_D |Pair(a,H_D,b)|^2`.

Specializing to the fixed conductor-three Vaughan vectors and inserting a
block hyperbolic Carleson constant is entirely finite.  This file does **not**
prove the Carleson estimate, the coefficient-energy estimates needed to turn
the block bound into `sqrt (2^q)` scale, or the shell/block recombination
needed for the global Type II maximal theorem.
-/

public section

namespace Surface.Core.ConductorThreeTypeIIMaximalAssembly

noncomputable section

open scoped BigOperators

open Surface.Core.TypeII
open Surface.Core.ConductorThreeHyperbolicCarleson
open Surface.Core.ConductorThreeWangZahlTTStar

/-! ## Exact shell-prefix correlations -/

/-- Evaluating any coefficient-blind plan on the fixed conductor-three
vectors recovers exactly the public hyperbolic square mass at its root. -/
@[surface_novel, surface_published]
theorem evaluatedConductorThreeRootSquareSum_eq_hyperbolicSquareMass
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) :
    (plan.evaluate (shellBlockLeftCoefficient B)
        (shellBlockRightCoefficient B)).nodeIntervalSquareSum
          plan.tree.root =
      conductorThreeBlockHyperbolicSquareMass B := by
  rw [rootNodeIntervalSquareSum_eq_shell]
  rfl

/-- The fixed conductor-three bilinear correlation on one factor block and
one shell prefix `(2^q,x]`. -/
@[expose, surface_novel]
def conductorThreeBlockShellPrefixCorrelation
    {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (x : ℕ) : ℂ :=
  bilinearMatrixPairing
    (shellBlockLeftCoefficient B)
    (typeIIShellPrefixMatrix B x)
    (shellBlockRightCoefficient B)

/-- A shell-prefix code reconstructs the block correlation exactly as the
sum of its dyadic product-interval correlations. -/
@[surface_novel, surface_published]
theorem conductorThreeBlockShellPrefixCorrelation_eq_sum_code
    {N q x : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (code : TypeIIShellPrefixCode N q x) :
    conductorThreeBlockShellPrefixCorrelation B x =
      ∑ D ∈ code.intervals,
        conductorThreeBlockIntervalCorrelation B D := by
  have hmatrix :
      typeIIShellPrefixMatrix B x =
        ∑ D ∈ code.intervals, typeIIShellIntervalMatrix B D := by
    exact shellPrefixMatrix_eq_sum_code code
      (fun m : B.Left ↦ m.1.1) (fun k : B.Right ↦ k.1.1)
  unfold conductorThreeBlockShellPrefixCorrelation
  rw [hmatrix]
  exact bilinearMatrixPairing_finset_sum
    (shellBlockLeftCoefficient B) code.intervals
    (typeIIShellIntervalMatrix B) (shellBlockRightCoefficient B)

/-! ## Finite Cauchy--Schwarz assembly -/

/-- The squared norm of a coded shell prefix is at most the code cardinality
times the full dyadic square mass of its factor block.

No Carleson hypothesis is used here. -/
@[surface_novel, surface_published]
theorem blockShellPrefixCorrelation_sq_le_codeCard_mul_squareMass
    {N q x : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (code : TypeIIShellPrefixCode N q x) :
    ‖conductorThreeBlockShellPrefixCorrelation B x‖ ^ 2 ≤
      (code.intervals.card : ℝ) *
        conductorThreeBlockHyperbolicSquareMass B := by
  rw [conductorThreeBlockShellPrefixCorrelation_eq_sum_code B code]
  have htriangle :
      ‖∑ D ∈ code.intervals,
          conductorThreeBlockIntervalCorrelation B D‖ ≤
        ∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖ := by
    exact norm_sum_le _ _
  have hsquareTriangle :
      ‖∑ D ∈ code.intervals,
          conductorThreeBlockIntervalCorrelation B D‖ ^ 2 ≤
        (∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖) ^ 2 := by
    exact pow_le_pow_left₀ (norm_nonneg _) htriangle 2
  have hcs :
      (∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖) ^ 2 ≤
        (code.intervals.card : ℝ) *
          ∑ D ∈ code.intervals,
            ‖conductorThreeBlockIntervalCorrelation B D‖ ^ 2 := by
    exact sq_sum_le_card_mul_sum_sq
  have hsubset :
      ∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖ ^ 2 ≤
        conductorThreeBlockHyperbolicSquareMass B := by
    unfold conductorThreeBlockHyperbolicSquareMass
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro D _
      exact mem_typeIIProductDyadicIntervals D
    · intro D _ _
      positivity
  calc
    ‖∑ D ∈ code.intervals,
        conductorThreeBlockIntervalCorrelation B D‖ ^ 2 ≤
        (∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖) ^ 2 :=
      hsquareTriangle
    _ ≤ (code.intervals.card : ℝ) *
        ∑ D ∈ code.intervals,
          ‖conductorThreeBlockIntervalCorrelation B D‖ ^ 2 := hcs
    _ ≤ (code.intervals.card : ℝ) *
        conductorThreeBlockHyperbolicSquareMass B := by
      exact mul_le_mul_of_nonneg_left hsubset (by positivity)

/-- Every actual shell prefix has squared correlation bounded by `(q+2)`
times the full dyadic square mass of the block. -/
@[surface_novel, surface_published]
theorem blockShellPrefixCorrelation_sq_le_shellCard_mul_squareMass
    {N q x : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (hx : x ∈ typeIIProductShell N q) :
    ‖conductorThreeBlockShellPrefixCorrelation B x‖ ^ 2 ≤
      (q + 2 : ℝ) * conductorThreeBlockHyperbolicSquareMass B := by
  obtain ⟨code⟩ := shellPrefix_has_disjointDyadicCode hx
  calc
    ‖conductorThreeBlockShellPrefixCorrelation B x‖ ^ 2 ≤
        (code.intervals.card : ℝ) *
          conductorThreeBlockHyperbolicSquareMass B :=
      blockShellPrefixCorrelation_sq_le_codeCard_mul_squareMass B code
    _ ≤ (q + 2 : ℝ) * conductorThreeBlockHyperbolicSquareMass B := by
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast code.card_le
      · unfold conductorThreeBlockHyperbolicSquareMass
        positivity

/-! ## Route-free block-shell maximal predicate -/

/-- A constant controls every squared conductor-three block shell prefix.

The factor `q+2` is the exact finite loss retained from dyadic prefix
reconstruction.  It is intentionally not hidden in the analytic constant. -/
@[expose, surface_novel]
def IsConductorThreeBlockShellMaximalSquaredConstant
    (ε C : ℝ) : Prop :=
  0 ≤ C ∧
    ∀ (N q : ℕ),
      2 ≤ N →
      ∀ (B : TypeIIShellFactorBlock N q) (x : ℕ),
        x ∈ typeIIProductShell N q →
        ‖conductorThreeBlockShellPrefixCorrelation B x‖ ^ 2 ≤
          (q + 2 : ℝ) * C *
            Real.rpow (N : ℝ) (2 * ε) *
            conductorThreeBlockLeftEnergy B *
            conductorThreeBlockRightEnergy B

/-- Route-free squared maximal statement at the single-block/single-shell
level.  It is a consequence of the research Carleson proposition, not an
independent analytic assumption. -/
@[expose, surface_novel]
def ConductorThreeBlockShellMaximalSquared : Prop :=
  ∀ ε : ℝ,
    0 < ε →
      ∃ C : ℝ,
        IsConductorThreeBlockShellMaximalSquaredConstant ε C

/-- A fixed block Carleson constant gives the corresponding fixed squared
block-shell maximal constant with no change in `C`. -/
@[surface_novel, surface_published]
theorem blockCarlesonConstant_implies_blockShellMaximalSquaredConstant
    {ε C : ℝ}
    (hC : IsConductorThreeBlockHyperbolicCarlesonConstant ε C) :
    IsConductorThreeBlockShellMaximalSquaredConstant ε C := by
  refine ⟨hC.1, ?_⟩
  intro N q hN B x hx
  calc
    ‖conductorThreeBlockShellPrefixCorrelation B x‖ ^ 2 ≤
        (q + 2 : ℝ) * conductorThreeBlockHyperbolicSquareMass B :=
      blockShellPrefixCorrelation_sq_le_shellCard_mul_squareMass B hx
    _ ≤ (q + 2 : ℝ) *
        (C * Real.rpow (N : ℝ) (2 * ε) *
          conductorThreeBlockLeftEnergy B *
          conductorThreeBlockRightEnergy B) := by
      exact mul_le_mul_of_nonneg_left (hC.2 N q hN B) (by positivity)
    _ = (q + 2 : ℝ) * C *
        Real.rpow (N : ℝ) (2 * ε) *
        conductorThreeBlockLeftEnergy B *
        conductorThreeBlockRightEnergy B := by ring

/-- The uninhabited block hyperbolic Carleson proposition formally implies
the route-free squared block-shell maximal predicate. -/
@[surface_novel, surface_published]
theorem blockHyperbolicCarleson_implies_blockShellMaximalSquared :
    ConductorThreeBlockHyperbolicCarleson →
      ConductorThreeBlockShellMaximalSquared := by
  intro hCarleson ε hε
  obtain ⟨C, hC⟩ := hCarleson ε hε
  exact ⟨C,
    blockCarlesonConstant_implies_blockShellMaximalSquaredConstant hC⟩

/-! ## Explicit remaining global bridge -/

/-- The still-unproved bridge from the finite block-shell estimate to the
existing route-level Type II maximal predicate.

`ProductShellReindex` now checks the exact canonical shell/block
recombination, while `ConductorThreeTypeIIBlockNorms` checks the exact-scale
left logarithmic energy and sharp harmonic-cube right energy.  An inhabitant
still has to aggregate those estimates uniformly over all completed shells
and blocks and absorb every cardinality, harmonic, and logarithmic loss into
the requested exponent.  That quantitative theorem is not encoded as a
structure field here, so it cannot be hidden in a certificate. -/
@[expose, surface_novel]
def ConductorThreeBlockShellToGlobalTypeIIMaximalBridge : Prop :=
  ConductorThreeBlockShellMaximalSquared →
    ∀ route : ConductorThreeVaughanPacketRoute,
      UniformConductorThreeTypeIIMaximal route

end

end Surface.Core.ConductorThreeTypeIIMaximalAssembly

end
