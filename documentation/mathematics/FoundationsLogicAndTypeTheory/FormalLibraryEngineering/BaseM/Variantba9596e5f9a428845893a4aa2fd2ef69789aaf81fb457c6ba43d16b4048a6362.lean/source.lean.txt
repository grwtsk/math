-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseMState.Variant1363357eb12f4245c05cb3bb1c0e4bd0ea11df60a9ac2018fc280c0498e93f89","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1363357eb12f4245c05cb3bb1c0e4bd0ea11df60a9ac2018fc280c0498e93f89","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BaseMState.Variant1363357eb12f4245c05cb3bb1c0e4bd0ea11df60a9ac2018fc280c0498e93f89","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1363357eb12f4245c05cb3bb1c0e4bd0ea11df60a9ac2018fc280c0498e93f89","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BaseM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Stats.Basic
public import Aesop.RulePattern.Cache


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseMState.Variant1363357eb12f4245c05cb3bb1c0e4bd0ea11df60a9ac2018fc280c0498e93f89

public section

set_option linter.missingDocs true

open Lean

namespace Aesop

/-- State of the `BaseM` monad. -/
structure BaseM.State where
  /-- The rule pattern cache. -/
  rulePatternCache : RulePatternCache
  /-- Stats collected during an Aesop call. -/
  stats : Stats
  deriving Inhabited

instance : EmptyCollection BaseM.State :=
  ⟨by refine' { .. } <;> exact ∅⟩

/-- Aesop's base monad. Contains no interesting data, only various caches and
stats. -/
abbrev BaseM := StateRefT BaseM.State MetaM

namespace BaseM

/-- Run a `BaseM` action. -/
protected def run (x : BaseM α) (stats : Stats := ∅) : MetaM (α × Stats) := do
  let (a, s) ← StateRefT'.run x { stats, rulePatternCache := ∅ }
  return (a, s.stats)

instance : MonadHashMapCacheAdapter Expr RulePatternCache.Entry BaseM where
  getCache := return (← get).rulePatternCache.map
  modifyCache f := modify λ s =>
    { s with rulePatternCache.map := f s.rulePatternCache.map }

instance : MonadStats BaseM where
  modifyGetStats f := modifyGet λ s =>
    let (a, stats) := f s.stats
    (a, { s with stats })
  getStats := return (← get).stats
  modifyStats f := modify λ s => { s with stats := f s.stats }

instance : MonadBacktrack Meta.SavedState BaseM where
  saveState := Meta.saveState
  restoreState := (·.restore)

end Aesop.BaseM
