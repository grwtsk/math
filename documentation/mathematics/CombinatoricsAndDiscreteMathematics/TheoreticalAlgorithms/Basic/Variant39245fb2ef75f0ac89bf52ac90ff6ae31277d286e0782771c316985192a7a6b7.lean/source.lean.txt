import Boolean.Tree.Variadic

namespace Surface

universe u

/-!
A finite proof-carrying homological operating system for Cambridge-style
variadic Polish notation.

The module is intentionally symbolic and finite. It does not import a
set-theoretic Zorn lemma. Instead, it makes the Zorn step proof-carrying:
`Homology.ZornMaximalLimit` stores the finite alphabet, the chain ordered by
subset, the selected maximal limit, and Boolean certificates that the chosen
limit is an upper bound and is maximal inside the finite alphabet.

Architectural roles:

* `maximal_limit` injects the Zorn-style maximal orthogonal chain directly into
  the syntax tree.
* `FinitePrismaticSurfaceModel` is a finite matrix surface motivated by a prism `(A, I)`;
  `frob_phi` is the Frobenius-lift matrix and `prism_d` is the rigidity bound.
* `KakeyaTubeCover` is represented by a Cambridge-style variadic tree whose
  `partition_node` mirrors Wang/Zahl polynomial partitioning.
* `EulerObstruction` explicitly blocks boundary propagation, modeling the
  obstruction to non-vanishing vector fields on even spheres.
-/

/-- Compact orthogonal symbols used by the homological operating system. -/
inductive Homology.FiniteOS.Symbol where
  | zorn_limit
  | symmetry_group
  | finite_prismatic_surface_model
  | prism_A
  | prism_I
  | prism_d
  | frob_phi
  | delta_ring
  | kakeya_tube_cover
  | boundary
  | partition_node
  | wang_partition
  | zahl_partition
  | euler_obstruction
  | hairy_ball_even_sphere
  | homology
  | prismatic_tag
  | sieve
deriving Repr, DecidableEq

/-- A compact printable code for each symbol. -/
def Homology.FiniteOS.Symbol.code : Homology.FiniteOS.Symbol → String
  | .zorn_limit => "ZORN"
  | .symmetry_group => "G"
  | .finite_prismatic_surface_model => "Σ"
  | .prism_A => "A"
  | .prism_I => "I"
  | .prism_d => "d"
  | .frob_phi => "φ"
  | .delta_ring => "δ"
  | .kakeya_tube_cover => "KAK"
  | .boundary => "∂"
  | .partition_node => "Π"
  | .wang_partition => "Wang"
  | .zahl_partition => "Zahl"
  | .euler_obstruction => "χ!"
  | .hairy_ball_even_sphere => "S²ⁿ"
  | .homology => "H"
  | .prismatic_tag => "PrismH"
  | .sieve => "Sieve"

/-- Boolean membership in a finite list. -/
def Homology.contains [DecidableEq α] (x : α) : List α → Bool
  | [] => false
  | y :: ys => decide (x = y) || Homology.contains x ys

/-- Boolean finite-subset relation on lists. -/
def Homology.subsetBool [DecidableEq α] (xs ys : List α) : Bool :=
  xs.all (fun x => Homology.contains x ys)

/-- Boolean no-duplicate test, used as finite orthogonality. -/
def Homology.orthogonalList [DecidableEq α] : List α → Bool
  | [] => true
  | x :: xs =>
      !(Homology.contains x xs) &&
        Homology.orthogonalList xs

/--
Finite-chain predicate for chains ordered by subset.

This is the finite proof-carrying analogue of `IsChain (· ⊆ ·)`.
-/
def Homology.IsChain [DecidableEq α] (chains : List (List α)) : Bool :=
  chains.all
    (fun a =>
      chains.all
        (fun b =>
          Homology.subsetBool a b ||
            Homology.subsetBool b a))

/-- Boolean predicate saying that `limit` is an upper bound for all chains. -/
def Homology.isUpperBound [DecidableEq α]
    (chains : List (List α))
    (limit : List α) :
    Bool :=
  chains.all (fun c => Homology.subsetBool c limit)

/-- The minimal orthogonal alphabet for the homological OS. -/
def Homology.minimalAlphabet : List Homology.FiniteOS.Symbol :=
  [ .zorn_limit
  , .symmetry_group
  , .finite_prismatic_surface_model
  , .prism_A
  , .prism_I
  , .prism_d
  , .frob_phi
  , .delta_ring
  , .kakeya_tube_cover
  , .boundary
  , .partition_node
  , .wang_partition
  , .zahl_partition
  , .euler_obstruction
  , .hairy_ball_even_sphere
  , .homology
  , .prismatic_tag
  , .sieve
  ]

/-- The canonical alphabet is finite and orthogonal. -/
theorem Homology.minimalAlphabet_orthogonal :
    Homology.orthogonalList Homology.minimalAlphabet = true := by
  decide

/--
Proof-carrying finite Zorn-style maximal limit.

The syntax does not choose an arbitrary basis.  It carries:
* a finite alphabet;
* a chain under subset;
* a selected limit;
* proof that the chain is linearly ordered by subset;
* proof that the limit is an upper bound;
* proof that the limit is orthogonal;
* proof that the finite alphabet lies inside the limit.
-/
structure Homology.ZornMaximalLimit where
  alphabet : List Homology.FiniteOS.Symbol
  candidates : List (List Homology.FiniteOS.Symbol)
  limit : List Homology.FiniteOS.Symbol
  chain_certificate :
    Homology.IsChain candidates = true
  upper_bound_certificate :
    Homology.isUpperBound candidates limit = true
  orthogonal_limit_certificate :
    Homology.orthogonalList limit = true
  limit_within_alphabet :
    Homology.subsetBool limit alphabet = true
  alphabet_within_limit :
    Homology.subsetBool alphabet limit = true

/-- Candidate chain used in the canonical Zorn-style limit. -/
def Homology.standardZornCandidates :
    List (List Homology.FiniteOS.Symbol) :=
  [ []
  , [.zorn_limit]
  , [.zorn_limit, .symmetry_group]
  , [.zorn_limit, .symmetry_group, .finite_prismatic_surface_model]
  , [.zorn_limit, .symmetry_group, .finite_prismatic_surface_model, .kakeya_tube_cover]
  , Homology.minimalAlphabet
  ]

/-- Canonical finite proof-carrying Zorn-style maximal limit. -/
def Homology.standardZornLimit :
    Homology.ZornMaximalLimit where
  alphabet := Homology.minimalAlphabet
  candidates := Homology.standardZornCandidates
  limit := Homology.minimalAlphabet
  chain_certificate := by
    decide
  upper_bound_certificate := by
    decide
  orthogonal_limit_certificate := by
    decide
  limit_within_alphabet := by
    decide
  alphabet_within_limit := by
    decide

/-- A Zorn-style limit carries its finite chain certificate. -/
theorem Homology.ZornMaximalLimit.carries_chain
    (z : Homology.ZornMaximalLimit) :
    Homology.IsChain z.candidates = true :=
  z.chain_certificate

/-- A Zorn-style limit carries its upper-bound certificate. -/
theorem Homology.ZornMaximalLimit.carries_upper_bound
    (z : Homology.ZornMaximalLimit) :
    Homology.isUpperBound z.candidates z.limit = true :=
  z.upper_bound_certificate

/-- A finite Klein-four symmetry envelope. -/
inductive Homology.Symmetry where
  | unit
  | frobenius
  | boundary
  | frobeniusBoundary
deriving Repr, DecidableEq

/-- Boolean exclusive-or on bits. -/
def Homology.bxor (a b : Bool) : Bool :=
  match a, b with
  | true, false => true
  | false, true => true
  | _, _ => false

/-- Frobenius bit of a symmetry element. -/
def Homology.Symmetry.frobBit : Homology.Symmetry → Bool
  | .unit => false
  | .frobenius => true
  | .boundary => false
  | .frobeniusBoundary => true

/-- Boundary bit of a symmetry element. -/
def Homology.Symmetry.boundaryBit : Homology.Symmetry → Bool
  | .unit => false
  | .frobenius => false
  | .boundary => true
  | .frobeniusBoundary => true

/-- Rebuild a symmetry element from its two bits. -/
def Homology.Symmetry.ofBits (frob boundary : Bool) :
    Homology.Symmetry :=
  match frob, boundary with
  | false, false => .unit
  | true, false => .frobenius
  | false, true => .boundary
  | true, true => .frobeniusBoundary

/-- Group multiplication in the Klein-four symmetry envelope. -/
def Homology.Symmetry.mul
    (a b : Homology.Symmetry) :
    Homology.Symmetry :=
  Homology.Symmetry.ofBits
    (Homology.bxor
      (Homology.Symmetry.frobBit a)
      (Homology.Symmetry.frobBit b))
    (Homology.bxor
      (Homology.Symmetry.boundaryBit a)
      (Homology.Symmetry.boundaryBit b))

/-- Every element is self-inverse in this envelope. -/
def Homology.Symmetry.inv
    (a : Homology.Symmetry) :
    Homology.Symmetry :=
  a

theorem Homology.Symmetry.unit_mul
    (a : Homology.Symmetry) :
    Homology.Symmetry.mul .unit a = a := by
  cases a <;> rfl

theorem Homology.Symmetry.mul_unit
    (a : Homology.Symmetry) :
    Homology.Symmetry.mul a .unit = a := by
  cases a <;> rfl

theorem Homology.Symmetry.inv_mul_self
    (a : Homology.Symmetry) :
    Homology.Symmetry.mul
      (Homology.Symmetry.inv a) a = .unit := by
  cases a <;> rfl

theorem Homology.Symmetry.mul_assoc
    (a b c : Homology.Symmetry) :
    Homology.Symmetry.mul
        (Homology.Symmetry.mul a b) c =
      Homology.Symmetry.mul
        a (Homology.Symmetry.mul b c) := by
  cases a <;> cases b <;> cases c <;> rfl

/-- A finite proof-carrying group envelope. -/
structure Homology.FiniteGroupEnvelope where
  carrier : List Homology.Symmetry
  one : Homology.Symmetry
  mul : Homology.Symmetry → Homology.Symmetry → Homology.Symmetry
  inv : Homology.Symmetry → Homology.Symmetry
  one_mul : ∀ a, mul one a = a
  mul_one : ∀ a, mul a one = a
  inv_mul_self : ∀ a, mul (inv a) a = one
  mul_assoc : ∀ a b c, mul (mul a b) c = mul a (mul b c)

/-- The canonical symmetry-group envelope. -/
def Homology.standardSymmetryEnvelope :
    Homology.FiniteGroupEnvelope where
  carrier :=
    [ .unit
    , .frobenius
    , .boundary
    , .frobeniusBoundary
    ]
  one := .unit
  mul := Homology.Symmetry.mul
  inv := Homology.Symmetry.inv
  one_mul := Homology.Symmetry.unit_mul
  mul_one := Homology.Symmetry.mul_unit
  inv_mul_self := Homology.Symmetry.inv_mul_self
  mul_assoc := Homology.Symmetry.mul_assoc

/-- A finite natural-valued matrix. -/
abbrev Homology.NatMatrix (rows cols : Nat) :=
  Fin rows → Fin cols → Nat

/-- Data of a symbolic prism `(A, I)` with distinguished scalar `d`. -/
structure Homology.PrismData where
  prism_A : Nat
  prism_I : Nat
  prism_d : Nat
deriving Repr, DecidableEq

/-- A finite proof-carrying prismatic matrix surface. -/
structure Homology.FinitePrismaticSurfaceModel (n : Nat) where
  prism : Homology.PrismData
  frob_phi : Homology.NatMatrix n n
  frob_bounded_by_d :
    ∀ i j, frob_phi i j ≤ prism.prism_d
  delta_ring_label : String
  proof_label : String

/-- The Frobenius-lift matrix is bounded by `prism_d`. -/
theorem Homology.FinitePrismaticSurfaceModel.frob_phi_bound
    {n : Nat}
    (S : Homology.FinitePrismaticSurfaceModel n)
    (i j : Fin n) :
    S.frob_phi i j ≤ S.prism.prism_d :=
  S.frob_bounded_by_d i j

/-- Canonical small prism data. -/
def Homology.standardPrism :
    Homology.PrismData where
  prism_A := 1
  prism_I := 0
  prism_d := 1

/-- A two-node finite prismatic surface model with identity Frobenius lift. -/
def Homology.standardFinitePrismaticSurfaceModel2 :
    Homology.FinitePrismaticSurfaceModel 2 where
  prism := Homology.standardPrism
  frob_phi := fun i j =>
    if i = j then
      1
    else
      0
  frob_bounded_by_d := by
    intro i j
    by_cases h : i = j
    · simp [Homology.standardPrism, h]
    · simp [Homology.standardPrism, h]
  delta_ring_label := "δ-ring Frobenius lift over a prism (A,I)"
  proof_label := "finite matrix entries bounded by prism_d"

/-- Euler obstruction data for even spheres. -/
structure Homology.EulerObstruction where
  sphereHalfDimension : Nat
  sphereDimension : Nat
  eulerCharacteristic : Int
  obstructionActive : Bool
  reason : String
deriving Repr, DecidableEq

/--
Euler obstruction for `S^{2n}`.

The encoded Euler characteristic is `2`, so the obstruction is active.
-/
def Homology.evenSphereEulerObstruction
    (n : Nat) :
    Homology.EulerObstruction where
  sphereHalfDimension := n
  sphereDimension := 2 * n
  eulerCharacteristic := 2
  obstructionActive := true
  reason := "χ(S^{2n}) = 2 blocks a global non-vanishing vector field"

/-- The even-sphere Euler obstruction is active. -/
theorem Homology.evenSphereEulerObstruction_active
    (n : Nat) :
    (Homology.evenSphereEulerObstruction n).obstructionActive = true :=
  rfl

/-- Homological operations used as Cambridge-style variadic prefix nodes. -/
inductive Homology.Op where
  | homological_os
  | proof_kernel
  | homology
  | prismatic_tag
  | symmetry_group
  | sieve
  | partition_node
  | wang_partition
  | zahl_partition
  | boundary
  | kakeya_tube_cover (ambientDimension : Nat)
  | finite_prismatic_surface_model_node (rank : Nat)
  | frobenius_lift
  | maximal_orthogonal_chain
deriving Repr, DecidableEq

/--
Cambridge-style variadic Polish tree for the homological operating system.

The node `.op op args` is the variadic prefix form: the operator precedes all of
its arguments.
-/
inductive Homology.FiniteOS.Expression (α : Type u) : Type u where
  | atom : α → Homology.FiniteOS.Expression α
  | symbol : Homology.FiniteOS.Symbol → Homology.FiniteOS.Expression α
  | op :
      Homology.Op →
      List (Homology.FiniteOS.Expression α) →
      Homology.FiniteOS.Expression α
  | maximal_limit :
      Homology.ZornMaximalLimit →
      Homology.FiniteOS.Expression α
  | finite_prismatic_surface_model :
      (n : Nat) →
      Homology.FinitePrismaticSurfaceModel n →
      Homology.FiniteOS.Expression α
  | euler_obstruction :
      Homology.EulerObstruction →
      Homology.FiniteOS.Expression α

/-- Compact tokens for serializing the homological OS tree. -/
inductive Homology.FiniteOS.Token (α : Type u) where
  | atom : α → Homology.FiniteOS.Token α
  | symbol : Homology.FiniteOS.Symbol → Homology.FiniteOS.Token α
  | beginOp : Homology.Op → Homology.FiniteOS.Token α
  | beginMaximalLimit : Homology.FiniteOS.Token α
  | beginFinitePrismaticSurfaceModel :
      (rank : Nat) → (prism_d : Nat) → Homology.FiniteOS.Token α
  | eulerObstruction :
      (sphereDimension : Nat) →
      (eulerCharacteristic : Int) →
      Homology.FiniteOS.Token α
  | endNode : Homology.FiniteOS.Token α
deriving Repr

mutual

/-- Serialize a homological OS tree into Cambridge-style variadic Polish tokens. -/
def Homology.FiniteOS.Expression.toCambridgeTokens :
    Homology.FiniteOS.Expression α → List (Homology.FiniteOS.Token α)
  | .atom a => [.atom a]
  | .symbol s => [.symbol s]
  | Homology.FiniteOS.Expression.op operator args =>
      [.beginOp operator] ++
        Homology.FiniteOS.Expression.toCambridgeTokensList args ++
        [.endNode]
  | .maximal_limit _ =>
      [.beginMaximalLimit, .endNode]
  | .finite_prismatic_surface_model n S =>
      [.beginFinitePrismaticSurfaceModel n S.prism.prism_d, .endNode]
  | .euler_obstruction e =>
      [.eulerObstruction e.sphereDimension e.eulerCharacteristic]

/-- Serialize a list of homological OS trees. -/
def Homology.FiniteOS.Expression.toCambridgeTokensList :
    List (Homology.FiniteOS.Expression α) → List (Homology.FiniteOS.Token α)
  | [] => []
  | t :: ts =>
      Homology.FiniteOS.Expression.toCambridgeTokens t ++
        Homology.FiniteOS.Expression.toCambridgeTokensList ts

end

/-- Extract a Zorn-style limit from a syntax node, if present. -/
def Homology.FiniteOS.Expression.maximalLimit? :
    Homology.FiniteOS.Expression α → Option Homology.ZornMaximalLimit
  | .maximal_limit z => some z
  | _ => none

/-- The `maximal_limit` AST node carries its Zorn-style certificate. -/
theorem Homology.FiniteOS.Expression.maximal_limit_carries_certificate
    {α : Type u}
    (z : Homology.ZornMaximalLimit) :
    Homology.FiniteOS.Expression.maximalLimit?
      (.maximal_limit z : Homology.FiniteOS.Expression α) = some z :=
  rfl

/-- Variadic partition node, modeling polynomial partitioning. -/
def Homology.FiniteOS.Expression.partitionNode
    (pieces : List (Homology.FiniteOS.Expression α)) :
    Homology.FiniteOS.Expression α :=
  .op .partition_node pieces

/-- Wang partitioning wrapper. -/
def Homology.FiniteOS.Expression.wangPartition
    (pieces : List (Homology.FiniteOS.Expression α)) :
    Homology.FiniteOS.Expression α :=
  .op .wang_partition pieces

/-- Zahl partitioning wrapper. -/
def Homology.FiniteOS.Expression.zahlPartition
    (pieces : List (Homology.FiniteOS.Expression α)) :
    Homology.FiniteOS.Expression α :=
  .op .zahl_partition pieces

/--
Combined Wang/Zahl partition node.

The outer `partition_node` is variadic and contains both partitioning regimes.
-/
def Homology.FiniteOS.Expression.wangZahlPartition
    (pieces : List (Homology.FiniteOS.Expression α)) :
    Homology.FiniteOS.Expression α :=
  .op .partition_node
    [ Homology.FiniteOS.Expression.wangPartition pieces
    , Homology.FiniteOS.Expression.zahlPartition pieces
    ]

/-- Motivated homological boundary `∂`, including partitioning and obstruction. -/
def Homology.FiniteOS.Expression.boundary
    (sphereHalfDimension : Nat)
    (pieces : List (Homology.FiniteOS.Expression α)) :
    Homology.FiniteOS.Expression α :=
  .op .boundary
    [ Homology.FiniteOS.Expression.wangZahlPartition pieces
    , .euler_obstruction
        (Homology.evenSphereEulerObstruction sphereHalfDimension)
    ]

/-- Kakeya tube cover with a motivated homological boundary. -/
def Homology.FiniteOS.Expression.kakeyaTubeCover
    (ambientDimension : Nat)
    (pieces : List (Homology.FiniteOS.Expression α)) :
    Homology.FiniteOS.Expression α :=
  .op (.kakeya_tube_cover ambientDimension)
    [Homology.FiniteOS.Expression.boundary ambientDimension pieces]

/-- A finite prismatic surface model as a syntax node. -/
def Homology.FiniteOS.Expression.prismaticSurface
    (n : Nat)
    (S : Homology.FinitePrismaticSurfaceModel n) :
    Homology.FiniteOS.Expression α :=
  .finite_prismatic_surface_model n S

mutual

/-- Detect whether a tree contains an active Euler obstruction. -/
def Homology.FiniteOS.Expression.hasEulerObstruction :
    Homology.FiniteOS.Expression α → Bool
  | .atom _ => false
  | .symbol _ => false
  | .maximal_limit _ => false
  | .finite_prismatic_surface_model _ _ => false
  | .euler_obstruction e => e.obstructionActive
  | .op _ args =>
      Homology.FiniteOS.Expression.listHasEulerObstruction args

/-- Detect whether a list of trees contains an active Euler obstruction. -/
def Homology.FiniteOS.Expression.listHasEulerObstruction :
    List (Homology.FiniteOS.Expression α) → Bool
  | [] => false
  | t :: ts =>
      Homology.FiniteOS.Expression.hasEulerObstruction t ||
        Homology.FiniteOS.Expression.listHasEulerObstruction ts

end

/-- Boundary-evaluation status. -/
inductive Homology.BoundaryStatus where
  | propagates
  | blockedByEulerObstruction
deriving Repr, DecidableEq

/--
Boundary propagation is blocked exactly when the tree contains an active Euler
obstruction.
-/
def Homology.FiniteOS.Expression.boundaryStatus
    (t : Homology.FiniteOS.Expression α) :
    Homology.BoundaryStatus :=
  if Homology.FiniteOS.Expression.hasEulerObstruction t then
    .blockedByEulerObstruction
  else
    .propagates

/-- A single Euler obstruction node blocks boundary propagation. -/
theorem Homology.FiniteOS.Expression.euler_obstruction_blocks
    {α : Type u}
    (n : Nat) :
    Homology.FiniteOS.Expression.boundaryStatus
      (.euler_obstruction
        (Homology.evenSphereEulerObstruction n) :
          Homology.FiniteOS.Expression α) =
      .blockedByEulerObstruction := by
  rfl

/--
A Kakeya tube cover over an even-sphere obstruction blocks invalid boundary
propagation.
-/
theorem Homology.FiniteOS.Expression.kakeyaTubeCover_boundary_obstructed
    {α : Type u}
    (n : Nat)
    (pieces : List (Homology.FiniteOS.Expression α)) :
    Homology.FiniteOS.Expression.boundaryStatus
      (Homology.FiniteOS.Expression.kakeyaTubeCover n pieces) =
      .blockedByEulerObstruction := by
  simp [Homology.FiniteOS.Expression.boundaryStatus,
    Homology.FiniteOS.Expression.kakeyaTubeCover,
    Homology.FiniteOS.Expression.boundary,
    Homology.FiniteOS.Expression.wangZahlPartition,
    Homology.FiniteOS.Expression.wangPartition,
    Homology.FiniteOS.Expression.zahlPartition,
    Homology.FiniteOS.Expression.hasEulerObstruction,
    Homology.FiniteOS.Expression.listHasEulerObstruction,
    Homology.evenSphereEulerObstruction]

/-- Standard Kakeya tube pieces. -/
def Homology.standardTubePieces :
    List (Homology.FiniteOS.Expression String) :=
  [ .atom "tube_0"
  , .atom "tube_1"
  , .atom "tube_2"
  ]

/-- Standard Kakeya tube cover with obstruction-carrying boundary. -/
def Homology.standardKakeyaTubeCover :
    Homology.FiniteOS.Expression String :=
  Homology.FiniteOS.Expression.kakeyaTubeCover 2
    Homology.standardTubePieces

/-- Standard maximal-limit syntax node. -/
def Homology.standardMaximalLimitNode :
    Homology.FiniteOS.Expression String :=
  .maximal_limit Homology.standardZornLimit

/-- Standard finite prismatic surface model syntax node. -/
def Homology.standardFinitePrismaticSurfaceModelNode :
    Homology.FiniteOS.Expression String :=
  Homology.FiniteOS.Expression.prismaticSurface
    2
    Homology.standardFinitePrismaticSurfaceModel2

/--
The standard proof-carrying homological operating-system syntax.

This is a Cambridge-style variadic Polish tree with a compact orthogonal symbol
basis, Zorn-style maximal limit, prismatic matrix surface, Kakeya tube cover,
homology, prismatic tag, symmetry, and sieve views.
-/
def Homology.standardSyntax :
    Homology.FiniteOS.Expression String :=
  .op .homological_os
    [ .op .proof_kernel
        [ Homology.standardMaximalLimitNode
        , .op .symmetry_group [.symbol .symmetry_group]
        , Homology.standardFinitePrismaticSurfaceModelNode
        , Homology.standardKakeyaTubeCover
        ]
    , .op .homology
        [Homology.standardKakeyaTubeCover]
    , .op .prismatic_tag
        [Homology.standardFinitePrismaticSurfaceModelNode]
    , .op .sieve
        [Homology.standardKakeyaTubeCover]
    ]

/-- Cambridge-style variadic Polish tokenization of the standard syntax. -/
def Homology.standardSyntaxTokens :
    List (Homology.FiniteOS.Token String) :=
  Homology.FiniteOS.Expression.toCambridgeTokens
    Homology.standardSyntax

/-- Finite proof-carrying homological operating-system package. -/
structure Homology.ProofCarryingOS where
  treeSyntax : Homology.FiniteOS.Expression String
  alphabet : List Homology.FiniteOS.Symbol
  alphabet_orthogonal :
    Homology.orthogonalList alphabet = true
  zorn_limit : Homology.ZornMaximalLimit
  symmetry_envelope : Homology.FiniteGroupEnvelope
  finite_prismatic_surface_model : Homology.FinitePrismaticSurfaceModel 2
  kakeya_tube : Homology.FiniteOS.Expression String
  kakeya_boundary_obstructed :
    Homology.FiniteOS.Expression.boundaryStatus kakeya_tube =
      .blockedByEulerObstruction

/-- Canonical finite proof-carrying homological OS. -/
def Homology.standardOS :
    Homology.ProofCarryingOS where
  treeSyntax := Homology.standardSyntax
  alphabet := Homology.minimalAlphabet
  alphabet_orthogonal := Homology.minimalAlphabet_orthogonal
  zorn_limit := Homology.standardZornLimit
  symmetry_envelope := Homology.standardSymmetryEnvelope
  finite_prismatic_surface_model := Homology.standardFinitePrismaticSurfaceModel2
  kakeya_tube := Homology.standardKakeyaTubeCover
  kakeya_boundary_obstructed := by
    exact
      Homology.FiniteOS.Expression.kakeyaTubeCover_boundary_obstructed
        2
        Homology.standardTubePieces

/-- The standard OS carries an orthogonal alphabet certificate. -/
theorem Homology.standardOS_alphabet_orthogonal :
    Homology.orthogonalList
      Homology.standardOS.alphabet = true :=
  Homology.standardOS.alphabet_orthogonal

/-- The standard OS carries a Zorn-style chain certificate. -/
theorem Homology.standardOS_zorn_chain :
    Homology.IsChain
      Homology.standardOS.zorn_limit.candidates = true :=
  Homology.standardOS.zorn_limit.chain_certificate

/-- The standard OS blocks the Kakeya boundary by Euler obstruction. -/
theorem Homology.standardOS_kakeya_obstructed :
    Homology.FiniteOS.Expression.boundaryStatus
      Homology.standardOS.kakeya_tube =
        .blockedByEulerObstruction :=
  Homology.standardOS.kakeya_boundary_obstructed

/-- The standard finite prismatic surface model Frobenius lift is rigidly bounded by `prism_d`. -/
theorem Homology.standardOS_frobenius_bounded
    (i j : Fin 2) :
    Homology.standardOS.finite_prismatic_surface_model.frob_phi i j ≤
      Homology.standardOS.finite_prismatic_surface_model.prism.prism_d :=
  Homology.FinitePrismaticSurfaceModel.frob_phi_bound
    Homology.standardOS.finite_prismatic_surface_model i j

end Surface
