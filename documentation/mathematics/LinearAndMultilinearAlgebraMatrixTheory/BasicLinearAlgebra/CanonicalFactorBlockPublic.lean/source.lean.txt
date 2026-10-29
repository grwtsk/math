module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.ProductDyadicInterval
public import Surface.Core.ConductorThreeVaughanBlocks
import Mathlib.Tactic

/-!
# Canonical factor blocks inside a dyadic product shell

`TypeIIDyadicBlock N` fixes a disjoint dyadic rectangle in the two Vaughan
factor variables.  This module adds the independent product-shell coordinate
`q`: a `TypeIIShellFactorBlock N q` is such a rectangle together with a
literal factor pair whose product lies in

`[2 ^ q, 2 ^ (q + 1)) \cap [0, 2 * N]`.

The added witness only prevents irrelevant rectangles from entering a local
shell theorem.  It carries no coefficient estimate, packet construction, or
Carleson bound.  The left and right index types are exactly those of the
underlying canonical factor block, so the checked conductor-three Vaughan
coefficient vectors restrict without any reindexing.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open Surface.Core.ConductorThreeVaughanBlocks
open Surface.Core.ConductorThreeTwistedVaughan

/-- Predicate that a canonical dyadic factor rectangle actually meets product
shell `q` on the effective Type II support inside `[0, 2 * N]`.

The shell convention is left-closed and right-open:
`2 ^ q <= m * k < 2 ^ (q + 1)`. -/
@[expose]
def TypeIIDyadicBlock.MeetsProductShell {N : ℕ}
    (block : TypeIIDyadicBlock N) (q : ℕ) : Prop :=
  ∃ (m : block.Left) (k : block.Right),
    vaughanFourthRootCutoff N < m.1.1 ∧
      vaughanFourthRootCutoff N < k.1.1 ∧
      2 ^ q ≤ m.1.1 * k.1.1 ∧
      m.1.1 * k.1.1 < 2 ^ (q + 1) ∧
      m.1.1 * k.1.1 ≤ 2 * N

/-- A canonical dyadic factor rectangle equipped with a proof that it meets
product shell `q` on the effective finite Type II support.

This is a subtype rather than a separate copy of the block structure.  The
standard subtype coercion therefore lets existing declarations such as
`blockLeftCoefficient B` and `blockRightCoefficient B` apply directly. -/
abbrev TypeIIShellFactorBlock (N q : ℕ) :=
  {block : TypeIIDyadicBlock N // block.MeetsProductShell q}

/-- Forgetting the product-shell relevance witness returns the exact
canonical dyadic factor block. -/
@[expose]
def TypeIIShellFactorBlock.toDyadicBlock {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : TypeIIDyadicBlock N :=
  B.1

/-- The finite left factor shell.  This is definitionally the left type of
the underlying canonical dyadic block. -/
abbrev TypeIIShellFactorBlock.Left {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :=
  B.1.Left

/-- The finite right factor shell.  This is definitionally the right type of
the underlying canonical dyadic block. -/
abbrev TypeIIShellFactorBlock.Right {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :=
  B.1.Right

@[ext]
theorem TypeIIShellFactorBlock.ext {N q : ℕ}
    {B C : TypeIIShellFactorBlock N q}
    (hblock : B.1 = C.1) :
    B = C := by
  exact Subtype.ext hblock

/-- Every shell factor block contains an explicit product in its advertised
half-open shell. -/
@[surface_novel, surface_published]
theorem TypeIIShellFactorBlock.exists_product_mem_shell {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    ∃ (m : B.Left) (k : B.Right),
      vaughanFourthRootCutoff N < m.1.1 ∧
        vaughanFourthRootCutoff N < k.1.1 ∧
        2 ^ q ≤ m.1.1 * k.1.1 ∧
        m.1.1 * k.1.1 < 2 ^ (q + 1) ∧
        m.1.1 * k.1.1 ≤ 2 * N :=
  B.2

/-- A shell factor block belongs to the already checked finite collection of
effective conductor-three dyadic blocks.  The proof reconstructs an actual
Type II atom from the shell witness; no membership field is stored. -/
@[surface_novel, surface_published]
theorem TypeIIShellFactorBlock.block_mem {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    B.1 ∈ conductorThreeTypeIIBlocks N := by
  classical
  obtain ⟨m, k, hm, hk, _hshellLower, _hshellUpper, hproduct⟩ :=
    B.2
  let atom : VaughanTypeIIFactorAtom N :=
    ⟨(m.1, k.1), ⟨hproduct, hm, hk⟩⟩
  have hmgt : 1 < m.1.1 :=
    (show 1 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hm)
  have hkgt : 1 < k.1.1 :=
    (show 1 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hk)
  have hM : (typeIIFactorDyadicBlock atom).M = B.1.M := by
    exact dyadicLowerEndpoint_eq_of_mem hmgt B.1.M_isPower m.2
  have hK : (typeIIFactorDyadicBlock atom).K = B.1.K := by
    exact dyadicLowerEndpoint_eq_of_mem hkgt B.1.K_isPower k.2
  have hblock : typeIIFactorDyadicBlock atom = B.1 :=
    TypeIIDyadicBlock.ext hM hK
  rw [← hblock]
  exact typeIIFactorDyadicBlock_mem atom

/-- The left conductor-three coefficient vector on a shell block is the
existing vector on its underlying canonical factor block. -/
@[expose]
def shellBlockLeftCoefficient {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : B.Left → ℂ :=
  blockLeftCoefficient B.1

/-- The right conductor-three coefficient vector on a shell block is the
existing vector on its underlying canonical factor block. -/
@[expose]
def shellBlockRightCoefficient {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : B.Right → ℂ :=
  blockRightCoefficient B.1

/-! The interval matrix is defined after the product-shell interval type.
It is a literal zero-one matrix and contains no estimate. -/

/-- Restriction of a product-shell dyadic interval to one canonical factor
rectangle.  An entry is one exactly when the product of its factor indices
belongs to the interval. -/
@[expose]
def typeIIShellIntervalMatrix {N q : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (D : TypeIIProductDyadicInterval N q) : Matrix B.Left B.Right ℂ :=
  typeIIProductIntervalMatrix (fun m ↦ m.1.1) (fun k ↦ k.1.1) D

@[surface_novel, surface_published]
theorem typeIIShellIntervalMatrix_apply {N q : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (D : TypeIIProductDyadicInterval N q)
    (m : B.Left) (k : B.Right) :
    typeIIShellIntervalMatrix B D m k =
      if m.1.1 * k.1.1 ∈ D.carrier then 1 else 0 := by
  exact typeIIProductIntervalMatrix_apply _ _ D m k

/-- The shell interval matrix is exactly the finite sum of its product-fiber
increments on the same factor block. -/
@[surface_novel, surface_published]
theorem typeIIShellIntervalMatrix_eq_sum_fibers {N q : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (D : TypeIIProductDyadicInterval N q) :
    typeIIShellIntervalMatrix B D =
      ∑ n ∈ D.carrier,
        productFiberIncrementMatrix
          (fun m : B.Left ↦ m.1.1) (fun k : B.Right ↦ k.1.1) n := by
  exact typeIIProductIntervalMatrix_eq_sum_fibers _ _ D

end

end Surface.Core.TypeII

end
