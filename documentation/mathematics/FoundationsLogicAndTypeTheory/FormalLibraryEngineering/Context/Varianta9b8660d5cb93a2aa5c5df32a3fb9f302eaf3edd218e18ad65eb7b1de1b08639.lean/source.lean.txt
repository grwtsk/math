-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildConfig.Variant6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.BuildConfig.Variant6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/Context.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Cache
public import Lake.Config.Context
public import Lake.Build.Job.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildConfig.Variant6ef3b48c7c40c00530f57eeab7c236fe70493294aef216dd703f2dfc5dc28a9c

open System
namespace Lake

/-- Configuration options for a Lake build. -/
public structure BuildConfig extends LogConfig where
  /-- Use modification times for trace checking. -/
  oldMode : Bool := false
  /-- Whether to trust `.hash` files. -/
  trustHash : Bool := true
  /-- Early exit if a target has to be rebuilt. -/
  noBuild : Bool := false
  /-- Verbosity level (`-q`, `-v`, or neither). -/
  verbosity : Verbosity := .normal
  /-- Whether to print a message when the build finishes successfully (if not quiet). -/
  showSuccess : Bool := false
  /-- File to save input-to-output mappings from the build of the workspace's root -/
  outputsFile? : Option FilePath := none
  /--
  Per-package Lean option overrides, applied to every module whose owning
  package's `baseName` appears as a key. When `recFetchSetup` builds module
  `M`, the `LeanOptions` associated with `M.pkg.baseName` (if any) are appended
  to `M.leanOptions`, overriding clashing entries.

  Used by `lake lint` to inject `linter.extra`/`linter.all` into every module
  of a target package (so transitively-imported first-party modules capture
  linter-tagged warnings), without touching dependencies.
  -/
  leanOptOverrides : Lean.NameMap Lean.LeanOptions := {}

/--
Whether the build should show progress information.

`Verbosity.quiet` hides progress and, for a `noBuild`,
`Verbosity.verbose` shows progress.
-/
public def BuildConfig.showProgress (cfg : BuildConfig) : Bool :=
  (cfg.noBuild ∧ cfg.verbosity == .verbose) ∨ cfg.verbosity != .quiet

/-- Mutable reference of registered build jobs. -/
@[expose] -- for codegen
public def JobQueue := IO.Ref (Array OpaqueJob)

/-- Returns a new empty job queue. -/
@[inline] public def mkJobQueue : BaseIO JobQueue :=
  IO.mkRef #[]

/-- A Lake context with a build configuration and additional build data. -/
public structure BuildContext extends BuildConfig, Context where
  leanTrace : BuildTrace
  registeredJobs : JobQueue
  /--
  Input-to-output(s) map for hashes of the root package's artifacts.
  If `none`, tracking outputs is disabled for this build.
  -/
  outputsRef? : Option CacheRef := none

/-- A transformer to equip a monad with a `BuildContext`. -/
public abbrev BuildT := ReaderT BuildContext

/-- A monad equipped with a Lake build context. -/
public abbrev MonadBuild (m : Type → Type u) :=
  MonadReaderOf BuildContext m

public instance [Pure m] : MonadLift LakeM (BuildT m) where
  monadLift x := fun ctx => pure <| x.run ctx.toContext

@[inline] public def getBuildContext [MonadBuild m] : m BuildContext :=
  readThe BuildContext

@[inline] public def getLeanTrace [Functor m] [MonadBuild m] : m BuildTrace :=
  (·.leanTrace) <$> getBuildContext

@[inline] public def getBuildConfig [Functor m] [MonadBuild m] : m BuildConfig :=
  (·.toBuildConfig) <$> getBuildContext

@[inline] public def getIsOldMode [Functor m] [MonadBuild m] : m Bool :=
  (·.oldMode) <$> getBuildConfig

@[inline] public def getTrustHash [Functor m] [MonadBuild m] : m Bool :=
  (·.trustHash) <$> getBuildConfig

@[inline] public def getNoBuild [Functor m] [MonadBuild m] : m Bool :=
  (·.noBuild) <$> getBuildConfig

@[inline] public def getVerbosity [Functor m] [MonadBuild m] : m Verbosity :=
  (·.verbosity) <$> getBuildConfig

@[inline] public def getIsVerbose [Functor m] [MonadBuild m] : m Bool :=
  (· == .verbose) <$> getVerbosity

@[inline] public def getIsQuiet [Functor m] [MonadBuild m] : m Bool :=
  (· == .quiet) <$> getVerbosity

@[inline] public def getLeanOptOverrides [Functor m] [MonadBuild m]
    : m (Lean.NameMap Lean.LeanOptions) :=
  (·.leanOptOverrides) <$> getBuildConfig
