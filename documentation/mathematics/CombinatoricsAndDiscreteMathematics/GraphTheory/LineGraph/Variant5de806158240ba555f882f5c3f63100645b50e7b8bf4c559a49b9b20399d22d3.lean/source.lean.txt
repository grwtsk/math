-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.LineGraph.Variant3adae7dc1f9344f0d49f4acf03041528d44babfca90db03792f3aadf02038b73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3adae7dc1f9344f0d49f4acf03041528d44babfca90db03792f3aadf02038b73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.LineGraph.Variant3adae7dc1f9344f0d49f4acf03041528d44babfca90db03792f3aadf02038b73","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"3adae7dc1f9344f0d49f4acf03041528d44babfca90db03792f3aadf02038b73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/SimpleGraph/LineGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.Combinatorics.SimpleGraph.Basic

/-!
# LineGraph

## Main definitions

* `SimpleGraph.lineGraph` is the line graph of a simple graph `G`, with vertices as the edges of `G`
  and two vertices of the line graph adjacent if the corresponding edges share a vertex in `G`.

## Tags

line graph
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.LineGraph.Variant3adae7dc1f9344f0d49f4acf03041528d44babfca90db03792f3aadf02038b73

namespace SimpleGraph

variable {V : Type*} {G : SimpleGraph V}

/--
The line graph of a simple graph `G` has its vertex set as the edges of `G`, and two vertices of
the line graph are adjacent if the corresponding edges share a vertex in `G`.
-/
def lineGraph {V : Type*} (G : SimpleGraph V) : SimpleGraph G.edgeSet where
  Adj e₁ e₂ := e₁ ≠ e₂ ∧ (e₁ ∩ e₂ : Set V).Nonempty
  symm e₁ e₂ := by intro h; rwa [ne_comm, Set.inter_comm]

lemma lineGraph_adj_iff_exists {e₁ e₂ : G.edgeSet} :
    (G.lineGraph).Adj e₁ e₂ ↔ e₁ ≠ e₂ ∧ ∃ v, v ∈ (e₁ : Sym2 V) ∧ v ∈ (e₂ : Sym2 V) := by
  simp [Set.Nonempty, lineGraph]

@[simp] lemma lineGraph_bot : (⊥ : SimpleGraph V).lineGraph = ⊥ := by aesop (add simp lineGraph)

end SimpleGraph
