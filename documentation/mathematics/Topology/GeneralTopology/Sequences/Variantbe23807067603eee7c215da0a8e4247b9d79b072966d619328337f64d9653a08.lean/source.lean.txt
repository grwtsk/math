-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoSubseqOfFrequentlyBounded.Variant8a534e6ade14080f3e42cf73e950a300715f612b0c8da9fb2f64cad0668ea282","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a534e6ade14080f3e42cf73e950a300715f612b0c8da9fb2f64cad0668ea282","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoSubseqOfFrequentlyBounded.Variant8a534e6ade14080f3e42cf73e950a300715f612b0c8da9fb2f64cad0668ea282","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8a534e6ade14080f3e42cf73e950a300715f612b0c8da9fb2f64cad0668ea282","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/MetricSpace/Sequences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Jan-David Salchow. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jan-David Salchow, Patrick Massot, Yury Kudryashov
-/
module

public import Mathlib.Topology.Sequences
public import Mathlib.Topology.MetricSpace.Bounded

/-!
# Sequential compacts in metric spaces

In this file we prove 2 versions of Bolzano-Weierstrass theorem for proper metric spaces.
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoSubseqOfFrequentlyBounded.Variant8a534e6ade14080f3e42cf73e950a300715f612b0c8da9fb2f64cad0668ea282

public section

open Filter Bornology
open scoped Topology

variable {X : Type*} [PseudoMetricSpace X]

variable [ProperSpace X] {s : Set X}

/-- A version of **Bolzano-Weierstrass**: in a proper metric space (e.g. $ℝ^n$),
every bounded sequence has a converging subsequence. This version assumes only
that the sequence is frequently in some bounded set. -/
theorem tendsto_subseq_of_frequently_bounded (hs : IsBounded s) {x : ℕ → X}
    (hx : ∃ᶠ n in atTop, x n ∈ s) :
    ∃ a ∈ closure s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  have hcs : IsSeqCompact (closure s) := hs.isCompact_closure.isSeqCompact
  have hu' : ∃ᶠ n in atTop, x n ∈ closure s := hx.mono fun _n hn => subset_closure hn
  hcs.subseq_of_frequently_in hu'

/-- A version of **Bolzano-Weierstrass**: in a proper metric space (e.g. $ℝ^n$),
every bounded sequence has a converging subsequence. -/
theorem tendsto_subseq_of_bounded (hs : IsBounded s) {x : ℕ → X} (hx : ∀ n, x n ∈ s) :
    ∃ a ∈ closure s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  tendsto_subseq_of_frequently_bounded hs <| Frequently.of_forall hx
