-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Edge.Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Edge.Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Order/Graph/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Vasilii Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vasilii Nesterov
-/
import Mathlib.Tactic.Order.CollectFacts

/-!
# Graphs for the `order` tactic

This module defines the `Graph` structure and basic operations on it. The `order` tactic uses
`≤`-graphs, where the vertices represent atoms, and an edge `(x, y)` exists if `x ≤ y`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Edge.Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f

namespace Mathlib.Tactic.Order

open Lean Expr Meta

/-- An edge in a graph. In the `order` tactic, the `proof` field stores the of
`atomToIdx[src] ≤ atomToIdx[dst]`. -/
structure Edge where
  /-- Source of the edge. -/
  src : Nat
  /-- Destination of the edge. -/
  dst : Nat
  /-- Proof of `atomToIdx[src] ≤ atomToIdx[dst]`. -/
  proof : Expr

-- For debugging purposes.
instance : ToString Edge where
  toString e := s!"{e.src} ⟶ {e.dst}"

/-- If `g` is a `Graph`, then for a vertex with index `v`, `g[v]` is an array containing
the edges starting from this vertex. -/
abbrev Graph := Array (Array Edge)

namespace Graph

/-- Adds an `edge` to the graph. -/
def addEdge (g : Graph) (edge : Edge) : Graph :=
  g.modify edge.src fun edges => edges.push edge

/-- Constructs a directed `Graph` using `≤` facts. -/
def constructLeGraph (nVertexes : Nat) (facts : Array AtomicFact) : MetaM Graph := do
  let mut res : Graph := Array.replicate nVertexes #[]
  for fact in facts do
    if let .le lhs rhs proof := fact then
      res := res.addEdge ⟨lhs, rhs, proof⟩
  return res

/-- State for the DFS algorithm. -/
structure DFSState where
  /-- `visited[v] = true` if and only if the algorithm has already entered vertex `v`. -/
  visited : Array Bool

/-- DFS algorithm for constructing a proof that `x ≤ y` by finding a path from `x` to `y` in the
`≤`-graph. -/
partial def buildTransitiveLeProofDFS (g : Graph) (v t : Nat) (tExpr : Expr) :
    StateT DFSState MetaM (Option Expr) := do
  modify fun s => {s with visited := s.visited.set! v true}
  if v == t then
    return ← mkAppM ``le_refl #[tExpr]
  for edge in g[v]! do
    let u := edge.dst
    if !(← get).visited[u]! then
      match ← buildTransitiveLeProofDFS g u t tExpr with
      | .some pf => return .some <| ← mkAppM ``le_trans #[edge.proof, pf]
      | .none => continue
  return .none

/-- Given a `≤`-graph `g`, finds a proof of `s ≤ t` using transitivity. -/
def buildTransitiveLeProof (g : Graph) (idxToAtom : Std.HashMap Nat Expr) (s t : Nat) :
    MetaM (Option Expr) := do
  let state : DFSState := ⟨.replicate g.size false⟩
  (buildTransitiveLeProofDFS g s t (idxToAtom.get! t)).run' state

end Graph

end Mathlib.Tactic.Order
