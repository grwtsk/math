-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirectionSystem.Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DirectionSystem.Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276","mathematical_subject":"Computation.DataStructures","original_sha256":"5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/DirectionalChain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.ListTools

/-!
# Directional chains

Finite directed graphs, finite 0-chains, finite 1-chains, boundaries, closed
1-cycles, and non-boundary certificates. This is a finite homological
interface: it proves no analytic or prismatic comparison theorem, and a
non-boundary claim is always a supplied proof field, never inferred.

Object index:

* `DirectionSystem` — generalized direction system
* `Chain0`, `Chain1` — finite chains with explicit support
* `Chain1.boundary`, `Chain1.Closed`
* `BoundaryCertificate`, `NonBoundaryCertificate`
* `OppositeDirectionPair`, `OppositeDirectionPair.edgeCircle`
* `EdgeCircleClosureCertificate`
* `binaryDirectionSystem`, `binaryOppositePair`
* `binary_edgeCircle_closed`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirectionSystem.Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276

universe u v

namespace Boolean
namespace Cube
namespace DirectionalChain

/--
A generalized direction system: vertices, directed edges, a reversal
involution, finite labels, an orientation polarity, and a distinguished null
anchor vertex. The binary `[0,1]`/`[1,0]` case is one instance; cyclic,
graph, group-action, phase, or spectral direction systems are others.
-/
structure DirectionSystem where
  Vertex : Type u
  Edge : Type v
  source : Edge → Vertex
  target : Edge → Vertex
  reverse : Edge → Edge
  reverse_source :
    ∀ e : Edge, source (reverse e) = target e
  reverse_target :
    ∀ e : Edge, target (reverse e) = source e
  reverse_involutive :
    ∀ e : Edge, reverse (reverse e) = e
  directionLabel : Edge → String
  vertexLabel : Vertex → String
  polarity : Edge → Int
  nullVertex : Vertex

/-- A finite 0-chain with explicit integer-weighted support. -/
structure Chain0 (D : DirectionSystem.{u, v}) where
  terms : List (Int × D.Vertex)

/-- A finite 1-chain with explicit integer-weighted support. -/
structure Chain1 (D : DirectionSystem.{u, v}) where
  terms : List (Int × D.Edge)

/-- Coefficient of a 0-chain at a vertex. -/
def Chain0.coeffAt {D : DirectionSystem.{u, v}}
    [DecidableEq D.Vertex]
    (c : Chain0 D)
    (v : D.Vertex) : Int :=
  ListTools.sumInt
    (c.terms.map
      (fun t => if t.2 = v then t.1 else 0))

/-- Boundary of a single directed edge. -/
def edgeBoundary (D : DirectionSystem.{u, v})
    (e : D.Edge) : Chain0 D :=
  { terms := [(-1, D.source e), (1, D.target e)] }

/-- Boundary of a finite 1-chain. -/
def Chain1.boundary {D : DirectionSystem.{u, v}}
    (c : Chain1 D) : Chain0 D :=
  { terms :=
      c.terms.flatMap
        (fun t =>
          let a := t.1
          let e := t.2
          [(-a, D.source e), (a, D.target e)]) }

/-- A finite 1-chain is closed when its boundary vanishes at every vertex. -/
def Chain1.Closed {D : DirectionSystem.{u, v}}
    [DecidableEq D.Vertex]
    (c : Chain1 D) : Prop :=
  ∀ v : D.Vertex, (c.boundary.coeffAt v) = 0

/-- An explicit boundary certificate. Being a boundary is supplied, not
inferred. -/
structure BoundaryCertificate {D : DirectionSystem.{u, v}}
    [DecidableEq D.Vertex]
    (c : Chain1 D) where
  witness : Type u
  isBoundary : Prop
  proof : isBoundary

/-- An explicit non-boundary certificate. Nontriviality is supplied, not
inferred. -/
structure NonBoundaryCertificate {D : DirectionSystem.{u, v}}
    [DecidableEq D.Vertex]
    (c : Chain1 D) where
  nonBoundary : Prop
  proof : nonBoundary

/-- A generalized pair of opposite directed edges. -/
structure OppositeDirectionPair
    (D : DirectionSystem.{u, v}) where
  forward : D.Edge
  backward : D.Edge
  backward_eq_reverse : backward = D.reverse forward
  sourceTargetDistinct : Prop
  sourceTargetDistinctProof : sourceTargetDistinct

/-- The two-edge circle generated by an opposite pair. -/
def OppositeDirectionPair.edgeCircle {D : DirectionSystem.{u, v}}
    (P : OppositeDirectionPair D) : Chain1 D :=
  { terms := [(1, P.forward), (1, P.backward)] }

/-- Closure certificate for the two-edge circle of an opposite pair. -/
structure EdgeCircleClosureCertificate {D : DirectionSystem.{u, v}}
    [DecidableEq D.Vertex]
    (P : OppositeDirectionPair D) where
  closed : P.edgeCircle.Closed
  closedProof : P.edgeCircle.Closed := closed

/-! ## Binary specialization -/

/-- The two binary endpoints. -/
inductive BinaryVertex where
  | zero
  | one
deriving Repr, DecidableEq

/-- The two directed binary transitions `[0,1]` and `[1,0]`. -/
inductive BinaryEdge where
  | zeroToOne
  | oneToZero
deriving Repr, DecidableEq

/-- The binary `[0,1]`/`[1,0]` direction system. `nullVertex` is only a
distinguished anchor; the balanced analytic null point is represented by a
separate certificate, not by a single binary endpoint. -/
def binaryDirectionSystem : DirectionSystem where
  Vertex := BinaryVertex
  Edge := BinaryEdge
  source := fun e =>
    match e with
    | BinaryEdge.zeroToOne => BinaryVertex.zero
    | BinaryEdge.oneToZero => BinaryVertex.one
  target := fun e =>
    match e with
    | BinaryEdge.zeroToOne => BinaryVertex.one
    | BinaryEdge.oneToZero => BinaryVertex.zero
  reverse := fun e =>
    match e with
    | BinaryEdge.zeroToOne => BinaryEdge.oneToZero
    | BinaryEdge.oneToZero => BinaryEdge.zeroToOne
  reverse_source := by
    intro e
    cases e <;> rfl
  reverse_target := by
    intro e
    cases e <;> rfl
  reverse_involutive := by
    intro e
    cases e <;> rfl
  directionLabel := fun e =>
    match e with
    | BinaryEdge.zeroToOne => "[0,1]"
    | BinaryEdge.oneToZero => "[1,0]"
  vertexLabel := fun v =>
    match v with
    | BinaryVertex.zero => "0"
    | BinaryVertex.one => "1"
  polarity := fun e =>
    match e with
    | BinaryEdge.zeroToOne => 1
    | BinaryEdge.oneToZero => -1
  nullVertex := BinaryVertex.zero

instance : DecidableEq binaryDirectionSystem.Vertex :=
  inferInstanceAs (DecidableEq BinaryVertex)

/-- The binary opposite pair `[0,1]` / `[1,0]`. -/
def binaryOppositePair :
    OppositeDirectionPair binaryDirectionSystem where
  forward := BinaryEdge.zeroToOne
  backward := BinaryEdge.oneToZero
  backward_eq_reverse := rfl
  sourceTargetDistinct := BinaryVertex.zero ≠ BinaryVertex.one
  sourceTargetDistinctProof := by
    intro h
    cases h

/-- The binary two-edge circle is closed: its boundary vanishes at both
endpoints. Proved directly by evaluation. -/
theorem binary_edgeCircle_closed :
    (binaryOppositePair.edgeCircle).Closed := by
  intro v
  cases v <;> rfl

/-- The binary two-edge circle closure certificate. -/
def binaryEdgeCircleClosure :
    EdgeCircleClosureCertificate binaryOppositePair where
  closed := binary_edgeCircle_closed

end DirectionalChain
end Cube
end Boolean
