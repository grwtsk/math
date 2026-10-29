-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FlowTraceCertificate.Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FlowTraceCertificate.Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26","mathematical_subject":"Foundations.Unclassified","original_sha256":"7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Flow/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Flow.Matrix
import Surface.Arithmetic.EllipticCurve.BSD


namespace GRWTSK.Algebra.LinearAlgebra.FlowTraceCertificate.Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26

namespace Surface

universe u v

/-!
Trace layer for matrix flow.

This module follows the Möbius inversion pattern established in
`Surface.Flow.Matrix`.

The main objects are:

* `Flow.IntMatrix.trace`: diagonal trace of an integer matrix;
* `Flow.Expression.mobiusTrace`: trace of the tree-poset Möbius matrix;
* `Flow.Expression.zetaTrace`: trace of the tree-poset zeta matrix;
* `Flow.TraceTriple`: finite Möbius trace bridge

    [matrix, trace, midpoint-balance metadata, tree].

For the preorder tree-poset matrices, both zeta and Möbius have diagonal entries
equal to `1`; therefore their trace is the number of flow-tree nodes.
-/

/--
Auxiliary diagonal trace over the first `limit` diagonal entries of an
`n × n` integer matrix.

The proof `limit ≤ n` makes the diagonal index valid.
-/
def Flow.IntMatrix.traceAux
    {n : Nat}
    (A : Flow.IntMatrix n n) :
    (limit : Nat) → limit ≤ n → Int
  | 0, _ => 0
  | k + 1, hk =>
      Flow.IntMatrix.traceAux
        A
        k
        (Nat.le_trans (Nat.le_succ k) hk) +
        A ⟨k, hk⟩ ⟨k, hk⟩

/-- Trace of a square integer matrix: the sum of diagonal entries. -/
def Flow.IntMatrix.trace
    {n : Nat}
    (A : Flow.IntMatrix n n) :
    Int :=
  Flow.IntMatrix.traceAux A n (Nat.le_refl n)

@[simp] theorem Flow.IntMatrix.traceAux_zero
    {n : Nat}
    (A : Flow.IntMatrix n n)
    (h : 0 ≤ n) :
    Flow.IntMatrix.traceAux A 0 h = 0 :=
  rfl

/--
If every diagonal entry is `1`, then the partial trace over `limit` entries is
`limit`.
-/
theorem Flow.IntMatrix.traceAux_eq_of_diag_one
    {n : Nat}
    (A : Flow.IntMatrix n n)
    (hdiag : ∀ i : Fin n, A i i = 1)
    (limit : Nat)
    (hlimit : limit ≤ n) :
    Flow.IntMatrix.traceAux A limit hlimit = (limit : Int) := by
  induction limit with
  | zero =>
      rfl
  | succ k ih =>
      have hk : k ≤ n := Nat.le_trans (Nat.le_succ k) hlimit
      have hdiagk : A ⟨k, hlimit⟩ ⟨k, hlimit⟩ = 1 :=
        hdiag ⟨k, hlimit⟩
      simp [Flow.IntMatrix.traceAux, ih hk, hdiagk]

/--
If every diagonal entry of a square integer matrix is `1`, then its trace is the
matrix size.
-/
theorem Flow.IntMatrix.trace_eq_of_diag_one
    {n : Nat}
    (A : Flow.IntMatrix n n)
    (hdiag : ∀ i : Fin n, A i i = 1) :
    Flow.IntMatrix.trace A = (n : Int) :=
  Flow.IntMatrix.traceAux_eq_of_diag_one
    A
    hdiag
    n
    (Nat.le_refl n)

/-- The trace of the integer identity matrix is the matrix size. -/
theorem Flow.IntMatrix.trace_identity
    (n : Nat) :
    Flow.IntMatrix.trace
      (Flow.IntMatrix.identity n) = (n : Int) := by
  apply Flow.IntMatrix.trace_eq_of_diag_one
  intro i
  simp [Flow.IntMatrix.identity]

/-- Trace of the zeta matrix associated to a flow tree. -/
def Flow.Expression.zetaTrace
    (t : Flow.Expression α) :
    Int :=
  Flow.IntMatrix.trace
    (Flow.Expression.zetaMatrix t)

/-- Trace of the Möbius matrix associated to a flow tree. -/
def Flow.Expression.mobiusTrace
    (t : Flow.Expression α) :
    Int :=
  Flow.IntMatrix.trace
    (Flow.Expression.mobiusMatrix t)

/--
The zeta trace of a flow tree is its preorder node count.

The reason is structural: the zeta matrix has `1` on every diagonal entry.
-/
theorem Flow.Expression.zeta_trace_eq_nodeCount
    (t : Flow.Expression α) :
    Flow.Expression.zetaTrace t =
      (Flow.Expression.nodeCount t : Int) :=
  Flow.IntMatrix.trace_eq_of_diag_one
    (Flow.Expression.zetaMatrix t)
    (Flow.Expression.zeta_diagonal t)

/--
The Möbius trace of a flow tree is its preorder node count.

The reason is structural: the tree-poset Möbius matrix has `1` on every
diagonal entry and `-1` on immediate cover entries.
-/
theorem Flow.Expression.mobius_trace_eq_nodeCount
    (t : Flow.Expression α) :
    Flow.Expression.mobiusTrace t =
      (Flow.Expression.nodeCount t : Int) :=
  Flow.IntMatrix.trace_eq_of_diag_one
    (Flow.Expression.mobiusMatrix t)
    (Flow.Expression.mobius_diagonal t)

/-- Zeta and Möbius matrices of the same flow tree have equal trace. -/
theorem Flow.Expression.zeta_trace_eq_mobius_trace
    (t : Flow.Expression α) :
    Flow.Expression.zetaTrace t =
      Flow.Expression.mobiusTrace t := by
  rw [Flow.Expression.zeta_trace_eq_nodeCount,
    Flow.Expression.mobius_trace_eq_nodeCount]

/-- Trace data extracted from a matrix bridge. -/
structure Flow.TraceCertificate where
  trace : Int
  reason : String
deriving Repr, DecidableEq

/-- The trace certificate for a tree-poset Möbius matrix. -/
def Flow.TraceCertificate.mobiusTree
    (t : Flow.Expression α) :
    Flow.TraceCertificate where
  trace := (Flow.Expression.nodeCount t : Int)
  reason := "Möbius matrix has unit diagonal in preorder, so trace is node count"

/-- The trace certificate stores the flow-tree node count. -/
theorem Flow.TraceCertificate.mobiusTree_trace
    (t : Flow.Expression α) :
    (Flow.TraceCertificate.mobiusTree t).trace =
      (Flow.Expression.nodeCount t : Int) :=
  rfl

/--
finite Möbius trace bridge.

The triple-level data are:

* `matrix`: the Möbius matrix produced by the flow-tree incidence structure;
* `trace`: the trace certificate of that matrix;
* `midpointBalance`: the symbolic midpoint-balance metadata metadata;
* `tree`: the original symbolic flow tree;
* `bsdTheoremInput?`: optional smooth BSD theorem input, absent from the
  standard symbolic packet.
-/
structure Flow.TraceTriple (α : Type u) where
  nodes : Nat
  matrix : Flow.IntMatrix nodes nodes
  trace : Flow.TraceCertificate
  midpointBalance : Flow.MidpointBalanceMetadata
  tree : Flow.Expression α
  bsdTheoremInput? :
    Option
      Surface.Arithmetic.EllipticCurve.BSD.PackedSmoothBSDTheoremInput.{v}

/--
Trace-level BSD theorem readiness.

This is deliberately proposition-valued.  A trace packet becomes theorem-ready
only when it actually carries a packed smooth BSD theorem input.
-/
def Flow.TraceTriple.theoremReady
    (T : Flow.TraceTriple α) :
    Prop :=
  ∃ I, T.bsdTheoremInput? = some I

/--
Build the finite Möbius trace bridge from a flow tree.

The matrix component is the same Möbius inversion matrix used by the determinant
bridge.  The generic constructor does not attach BSD theorem authority.
-/
def Flow.Expression.traceTriple
    (t : Flow.Expression α) :
    Flow.TraceTriple α where
  nodes := Flow.Expression.nodeCount t
  matrix := Flow.Expression.mobiusMatrix t
  trace := Flow.TraceCertificate.mobiusTree t
  midpointBalance :=
    Flow.MidpointBalanceMetadata.standard
  tree := t
  bsdTheoremInput? := none

/-- The matrix component of the trace bridge is the Möbius matrix. -/
theorem Flow.Expression.traceTriple_matrix_eq_mobius
    (t : Flow.Expression α) :
    (Flow.Expression.traceTriple t).matrix =
      Flow.Expression.mobiusMatrix t :=
  rfl

/-- The trace bridge stores the original flow tree. -/
theorem Flow.Expression.traceTriple_tree_eq
    (t : Flow.Expression α) :
    (Flow.Expression.traceTriple t).tree = t :=
  rfl

/-- The generic trace bridge carries no BSD theorem input. -/
theorem Flow.Expression.traceTriple_not_theoremReady
    (t : Flow.Expression α) :
    ¬ (Flow.Expression.traceTriple t).theoremReady := by
  intro h
  rcases h with ⟨I, hI⟩
  cases hI

/-- The trace certificate in the trace bridge is the node count. -/
theorem Flow.Expression.traceTriple_trace_eq_nodeCount
    (t : Flow.Expression α) :
    (Flow.Expression.traceTriple t).trace.trace =
      (Flow.Expression.nodeCount t : Int) :=
  rfl

/-- The stored trace agrees with the trace of the stored matrix. -/
theorem Flow.Expression.traceTriple_trace_matches_matrix_trace
    (t : Flow.Expression α) :
    (Flow.Expression.traceTriple t).trace.trace =
      Flow.IntMatrix.trace
        (Flow.Expression.traceTriple t).matrix := by
  change (Flow.Expression.nodeCount t : Int) =
    Flow.IntMatrix.trace (Flow.Expression.mobiusMatrix t)
  exact (Flow.Expression.mobius_trace_eq_nodeCount t).symm

/-- Trace of the zeta component of a Möbius inversion package. -/
def Flow.MobiusInversion.zetaTrace
    (M : Flow.MobiusInversion α) :
    Int :=
  Flow.IntMatrix.trace M.zeta

/-- Trace of the Möbius component of a Möbius inversion package. -/
def Flow.MobiusInversion.mobiusTrace
    (M : Flow.MobiusInversion α) :
    Int :=
  Flow.IntMatrix.trace M.mobius

/-- The Möbius trace of the inversion package built from a tree is the node count. -/
theorem Flow.Expression.mobiusInversion_mobiusTrace_eq_nodeCount
    (t : Flow.Expression α) :
    (Flow.Expression.mobiusInversion t).mobiusTrace =
      (Flow.Expression.nodeCount t : Int) :=
  Flow.Expression.mobius_trace_eq_nodeCount t

/-- The zeta trace of the inversion package built from a tree is the node count. -/
theorem Flow.Expression.mobiusInversion_zetaTrace_eq_nodeCount
    (t : Flow.Expression α) :
    (Flow.Expression.mobiusInversion t).zetaTrace =
      (Flow.Expression.nodeCount t : Int) :=
  Flow.Expression.zeta_trace_eq_nodeCount t

/-- The trace bridge for the BSD-motivated symbolic flow pipeline. -/
def Flow.Examples.bsdMotivatedTraceTriple :
    Flow.TraceTriple.{0, 0} String :=
  Flow.Expression.traceTriple
    Flow.Examples.bsdMotivatedSymbolicPipeline

/-- The trace certificate for the symbolic pipeline is its node count. -/
theorem Flow.Examples.bsdMotivatedTraceTriple_trace :
    Flow.Examples.bsdMotivatedTraceTriple.trace.trace =
      (Flow.Expression.nodeCount
        Flow.Examples.bsdMotivatedSymbolicPipeline : Int) :=
  rfl

/-- The stored full-pipeline trace agrees with the actual matrix trace. -/
theorem Flow.Examples.bsdMotivatedTraceTriple_matches_matrix_trace :
    Flow.Examples.bsdMotivatedTraceTriple.trace.trace =
      Flow.IntMatrix.trace
        Flow.Examples.bsdMotivatedTraceTriple.matrix :=
by
  change
    (Flow.Expression.nodeCount
      Flow.Examples.bsdMotivatedSymbolicPipeline : Int) =
      Flow.IntMatrix.trace
        (Flow.Expression.mobiusMatrix
          Flow.Examples.bsdMotivatedSymbolicPipeline)
  exact
    (Flow.Expression.mobius_trace_eq_nodeCount
      Flow.Examples.bsdMotivatedSymbolicPipeline).symm

/--
The midpoint-balance component of the trace bridge is the same standard midpoint
balance metadata used by the determinant bridge.
-/
theorem Flow.Examples.bsdMotivatedTraceTriple_midpoint :
    Flow.Examples.bsdMotivatedTraceTriple.midpointBalance =
      Flow.MidpointBalanceMetadata.standard :=
  rfl

/--
The standard BSD-motivated symbolic trace packet is not BSD-theorem-ready.

It carries symbolic flow and trace data only; no packed BSD theorem input is
attached.
-/
theorem Flow.Examples.bsdMotivatedTraceTriple_not_theoremReady :
    ¬ Flow.Examples.bsdMotivatedTraceTriple.theoremReady :=
  Flow.Expression.traceTriple_not_theoremReady
    Flow.Examples.bsdMotivatedSymbolicPipeline

end Surface
