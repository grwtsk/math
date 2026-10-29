import Surface.Boolean.Syntax.Basic

/-!
# Ordered factor-tree syntax

What is formalized:
Finite ordered binary factor trees over simple Boolean-syntax atoms. The binary
constructor preserves left/right order and bracketing.

What is certificate-gated:
Any interpretation as matrices, flows, homology, arithmetic, topology,
Prismatic Cohomology, Hilbert-space data, or spectral data must be supplied by a
separate typed adapter or certificate.

What is not claimed:
Raw ordered factor trees are not quotiented by commutativity or associativity.
This file does not prove prime factorization, topology-prime uniqueness,
analytic number theory, BSD, Connes trace formulas, or spectral correspondence.

Primary mathematical source:
Internal Surface Boolean-syntax discipline.
-/

namespace Surface.Boolean

/-- Atoms for the pre-interpretation ordered factor-tree syntax. -/
inductive OrderedFactorAtom where
  | token : String -> OrderedFactorAtom
  | matrixCell : Nat -> Nat -> OrderedFactorAtom
  | constant : Bool -> OrderedFactorAtom
deriving Repr, DecidableEq

/--
Finite ordered binary syntax tree.

The constructor `node left right` is deliberately ordered and bracket-sensitive.
-/
inductive OrderedFactorTree where
  | atom : OrderedFactorAtom -> OrderedFactorTree
  | node : OrderedFactorTree -> OrderedFactorTree -> OrderedFactorTree
deriving Repr, DecidableEq

namespace OrderedFactorTree

/-- Number of syntax nodes. -/
def size : OrderedFactorTree -> Nat
  | atom _ => 1
  | node l r => 1 + size l + size r

/-- Maximum root-to-leaf depth, counting a single atom as depth one. -/
def depth : OrderedFactorTree -> Nat
  | atom _ => 1
  | node l r => 1 + Nat.max (depth l) (depth r)

/-- Primitive ordered binary composition. -/
def compose (left right : OrderedFactorTree) : OrderedFactorTree :=
  node left right

theorem size_pos (t : OrderedFactorTree) :
    t.size > 0 := by
  induction t with
  | atom _ =>
      simp [size]
  | node l r ihl ihr =>
      simp [size]
      omega

theorem depth_le_size (t : OrderedFactorTree) :
    t.depth <= t.size := by
  induction t with
  | atom _ =>
      simp [depth, size]
  | node l r ihl ihr =>
      have hmax : Nat.max l.depth r.depth <= l.size + r.size := by
        exact Nat.max_le.mpr <| by
          constructor <;> omega
      simp [depth, size]
      omega

theorem compose_eq_node (left right : OrderedFactorTree) :
    compose left right = node left right := rfl

theorem node_left_right_visible
    {A B C D : OrderedFactorTree}
    (h : node A B = node C D) :
    A = C /\ B = D := by
  cases h
  exact ⟨rfl, rfl⟩

theorem bracketing_visible
    {A B C D E F : OrderedFactorTree}
    (h : node (node A B) C = node (node D E) F) :
    A = D /\ B = E /\ C = F := by
  cases h
  exact ⟨rfl, rfl, rfl⟩

/-- Boundary descriptor: no commutativity quotient is installed. -/
def order_not_quotiented : List String := [
  "OrderedFactorTree preserves left and right children.",
  "No commutativity quotient is installed by this layer."
]

/-- Boundary descriptor: no associativity quotient is installed. -/
def bracketing_not_quotiented : List String := [
  "OrderedFactorTree preserves binary bracketing.",
  "No associativity quotient is installed by this layer."
]

end OrderedFactorTree

theorem orderedFactorTree_size_pos (t : OrderedFactorTree) :
    t.size > 0 :=
  OrderedFactorTree.size_pos t

theorem orderedFactorTree_depth_le_size (t : OrderedFactorTree) :
    t.depth <= t.size :=
  OrderedFactorTree.depth_le_size t

theorem orderedFactorTree_raw_order_visible
    {A B C D : OrderedFactorTree}
    (h : OrderedFactorTree.node A B = OrderedFactorTree.node C D) :
    A = C /\ B = D :=
  OrderedFactorTree.node_left_right_visible h

theorem orderedFactorTree_raw_bracketing_visible
    {A B C D E F : OrderedFactorTree}
    (h :
      OrderedFactorTree.node (OrderedFactorTree.node A B) C =
        OrderedFactorTree.node (OrderedFactorTree.node D E) F) :
    A = D /\ B = E /\ C = F :=
  OrderedFactorTree.bracketing_visible h

end Surface.Boolean
