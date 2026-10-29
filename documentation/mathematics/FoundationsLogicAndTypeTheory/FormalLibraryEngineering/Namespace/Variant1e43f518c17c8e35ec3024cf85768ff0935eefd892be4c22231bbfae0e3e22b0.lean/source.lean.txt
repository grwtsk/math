-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant2c57f58257d03fa961507c1cf7896dfdf15d22b47a8c3689d3bbaf0db09eab61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c57f58257d03fa961507c1cf7896dfdf15d22b47a8c3689d3bbaf0db09eab61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant2c57f58257d03fa961507c1cf7896dfdf15d22b47a8c3689d3bbaf0db09eab61","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2c57f58257d03fa961507c1cf7896dfdf15d22b47a8c3689d3bbaf0db09eab61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Namespace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.EnvExtension


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant2c57f58257d03fa961507c1cf7896dfdf15d22b47a8c3689d3bbaf0db09eab61

namespace Lean

/--
Map from namespace name to (max) visibility of (any) defining module. Namespaces do not have
visibility of their own. We use this information to avoid redeclaring namespaces that would always
be provided by an import anyway.
-/
abbrev State := SMap Name Environment.Visibility

/--
Environment extension for tracking all `namespace` declared by users.
-/
private builtin_initialize namespacesExt : PersistentEnvExtension Name Name State ←
  registerPersistentEnvExtension {
    mkInitial       := pure {}
    addImportedFn   := fun as => do
      let env := (← read).env
      /-
      We compute a `HashMap` and then convert to `SMap` to improve Lean startup time.
      Note: we have used `perf` to profile Lean startup cost when processing a file containing just `import Lean`.
      6.18% of the runtime is here. It was 9.31% before the `HashMap` optimization.
      -/
      let capacity := as.foldl (init := 0) fun r e => r + e.size
      let mut map : Std.HashMap Name Environment.Visibility := Std.HashMap.emptyWithCapacity capacity
      for mod in env.header.modules, modEntries in as do
        let vis := if mod.isExported then .public else .private
        for e in modEntries do
          map := map.alter e fun
            | some .public => some .public
            | _            => some vis
      return SMap.fromHashMap map |>.switch
    -- local entries are not from private imports, so mark public
    addEntryFn      := fun s n => s.insert n .public
    exportEntriesFn s :=
      let entries := s.map₂.toArray.map (·.1)
      entries.qsort (·.quickLt)
    -- Namespaces from local helper constants can be disregarded in other environment branches. We
    -- do *not* want `getNamespaces` to have to wait on all prior branches.
    asyncMode       := .local
  }

namespace Environment

/-- Register a new namespace in the environment. -/
public def registerNamespace (env : Environment) (n : Name) : Environment :=
  -- Can only skip registering imported namespaces for public imports
  if namespacesExt.getState env |>.find? n |>.any (· == .public) then env else
    namespacesExt.addEntry env n

/-- Return `true` if `n` is the name of a namespace in `env`. -/
public def isNamespace (env : Environment) (n : Name) : Bool :=
  namespacesExt.getState env |>.contains n

/-- Returns an iterator over all namespaces in `env`. -/
public def getNamespaces (env : Environment) :=
  namespacesExt.getState env |>.iter.map (·.1)
