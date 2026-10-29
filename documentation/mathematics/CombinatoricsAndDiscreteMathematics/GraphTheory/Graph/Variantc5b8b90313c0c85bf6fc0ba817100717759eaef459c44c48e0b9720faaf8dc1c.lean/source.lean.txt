-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphRel.Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.GraphRel.Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/ModelTheory/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.ModelTheory.Satisfiability
import Mathlib.Combinatorics.SimpleGraph.Basic

/-!
# First-Order Structures in Graph Theory

This file defines first-order languages, structures, and theories in graph theory.

## Main Definitions

- `FirstOrder.Language.graph` is the language consisting of a single relation representing
  adjacency.
- `SimpleGraph.structure` is the first-order structure corresponding to a given simple graph.
- `FirstOrder.Language.Theory.simpleGraph` is the theory of simple graphs.
- `FirstOrder.Language.simpleGraphOfStructure` gives the simple graph corresponding to a model
  of the theory of simple graphs.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphRel.Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501

universe u

namespace FirstOrder

namespace Language

open FirstOrder

open Structure

variable {V : Type u} {n : ℕ}

/-! ### Simple Graphs -/

/-- The type of relations for the language of graphs, consisting of a single binary relation `adj`.
-/
inductive graphRel : ℕ → Type
  | adj : graphRel 2
  deriving DecidableEq

/-- The language consisting of a single relation representing adjacency. -/
protected def graph : Language := ⟨fun _ => Empty, graphRel⟩
  deriving IsRelational

/-- The symbol representing the adjacency relation. -/
abbrev adj : Language.graph.Relations 2 := .adj

/-- Any simple graph can be thought of as a structure in the language of graphs. -/
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphRel.Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.SimpleGraph.structure (G : SimpleGraph V) : Language.graph.Structure V where
  RelMap | .adj => (fun x => G.Adj (x 0) (x 1))

namespace graph

instance instSubsingleton : Subsingleton (Language.graph.Relations n) :=
  ⟨by rintro ⟨⟩ ⟨⟩; rfl⟩

end graph

/-- The theory of simple graphs. -/
protected def Theory.simpleGraph : Language.graph.Theory :=
  {adj.irreflexive, adj.symmetric}

@[simp]
theorem Theory.simpleGraph_model_iff [Language.graph.Structure V] :
    V ⊨ Theory.simpleGraph ↔
      (Irreflexive fun x y : V => RelMap adj ![x, y]) ∧
        Symmetric fun x y : V => RelMap adj ![x, y] := by
  simp [Theory.simpleGraph]

instance simpleGraph_model (G : SimpleGraph V) :
    @Theory.Model _ V G.structure Theory.simpleGraph := by
  letI := G.structure
  rw [Theory.simpleGraph_model_iff]
  exact ⟨G.loopless, G.symm⟩

variable (V) in
/-- Any model of the theory of simple graphs represents a simple graph. -/
@[simps]
def simpleGraphOfStructure [Language.graph.Structure V] [V ⊨ Theory.simpleGraph] :
    SimpleGraph V where
  Adj x y := RelMap adj ![x, y]
  symm :=
    Relations.realize_symmetric.1
      (Theory.realize_sentence_of_mem Theory.simpleGraph
        (Set.mem_insert_of_mem _ (Set.mem_singleton _)))
  loopless :=
    Relations.realize_irreflexive.1
      (Theory.realize_sentence_of_mem Theory.simpleGraph (Set.mem_insert _ _))

@[simp]
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphRel.Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.SimpleGraph.simpleGraphOfStructure (G : SimpleGraph V) :
    @simpleGraphOfStructure V G.structure _ = G := by
  ext
  rfl

@[simp]
theorem structure_simpleGraphOfStructure [S : Language.graph.Structure V] [V ⊨ Theory.simpleGraph] :
    (simpleGraphOfStructure V).structure = S := by
  ext
  case funMap n f xs =>
    exact isEmptyElim f
  case RelMap n r xs =>
    match n, r with
    | 2, .adj =>
      rw [iff_eq_eq]
      change RelMap adj ![xs 0, xs 1] = _
      refine congr rfl (funext ?_)
      simp [Fin.forall_fin_two]

theorem Theory.simpleGraph_isSatisfiable : Theory.IsSatisfiable Theory.simpleGraph :=
  ⟨@Theory.ModelType.of _ _ Unit (SimpleGraph.structure ⊥) _ _⟩

end Language

end FirstOrder
