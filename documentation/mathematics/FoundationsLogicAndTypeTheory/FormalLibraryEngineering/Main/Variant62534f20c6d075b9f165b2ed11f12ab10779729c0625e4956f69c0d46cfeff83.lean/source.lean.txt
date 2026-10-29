-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Search.Variant1dcc1fcfff276a1d00cdc32cf2767d93ee6cd088247c6ab8c69c31c653160a33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1dcc1fcfff276a1d00cdc32cf2767d93ee6cd088247c6ab8c69c31c653160a33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Search.Variant1dcc1fcfff276a1d00cdc32cf2767d93ee6cd088247c6ab8c69c31c653160a33","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1dcc1fcfff276a1d00cdc32cf2767d93ee6cd088247c6ab8c69c31c653160a33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public meta import Aesop.Search.Main
public meta import Aesop.Frontend.Tactic
public meta import Aesop.Stats.Extension
public meta import Aesop.Stats.File


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Search.Variant1dcc1fcfff276a1d00cdc32cf2767d93ee6cd088247c6ab8c69c31c653160a33

public section

open Lean
open Lean.Elab.Tactic

namespace Aesop

@[tactic Frontend.Parser.aesopTactic, tactic Frontend.Parser.aesopTactic?]
meta def evalAesop : Tactic := λ stx => do
  profileitM Exception "aesop" (← getOptions) do
  let goal ← getMainGoal
  goal.withContext do
    let (solved, stats) ← go stx goal |>.run ∅
    stats.trace .stats
    recordStatsForCurrentFileIfEnabled stx stats
    appendStatsToStatsFileIfEnabled stx stats solved
where
  go (stx : Syntax) (goal : MVarId) : StateRefT Stats TacticM Bool :=
    profiling (λ s _ t => { s with total := t }) do
      let config ← profiling (λ s _ t => { s with configParsing := t }) do
        Frontend.TacticConfig.parse stx goal
      let ruleSet ←
        profiling (λ s _ t => { s with ruleSetConstruction := t }) do
          config.getRuleSet goal
      withConstAesopTraceNode .ruleSet (return "Rule set") do
        ruleSet.trace .ruleSet
      profiling (λ s _ t => { s with search := t }) do
        let (goals, stats) ←
          search goal ruleSet config.options config.simpConfig
            config.simpConfigSyntax? (← getStats)
        let solved := goals.isEmpty
        replaceMainGoal goals.toList
        modifyStats λ _ => stats
        return solved

end Aesop
