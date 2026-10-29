-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variantdae44e9afa142d3271e019c91c53aa08ed6fb32178e4c36023f0637a8e18ad66","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dae44e9afa142d3271e019c91c53aa08ed6fb32178e4c36023f0637a8e18ad66","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Name.Variantdae44e9afa142d3271e019c91c53aa08ed6fb32178e4c36023f0637a8e18ad66","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"dae44e9afa142d3271e019c91c53aa08ed6fb32178e4c36023f0637a8e18ad66","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/LeanLibConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Compiler.NameMangling
public import Lake.Util.Casing
public import Lake.Build.Facets
public import Lake.Config.LeanConfig
public import Lake.Config.Glob
meta import all Lake.Config.Meta
import Lake.Config.Meta


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variantdae44e9afa142d3271e019c91c53aa08ed6fb32178e4c36023f0637a8e18ad66

namespace Lake
open Lean System

/-- A Lean library's declarative configuration. -/
public configuration LeanLibConfig (name : Name) extends LeanConfig where
  /--
  The subdirectory of the package's source directory containing the library's
  Lean source files. Defaults simply to said `srcDir`.

  (This will be passed to `lean` as the `-R` option.)
  -/
  srcDir : FilePath := "."

  /--
  The root module(s) of the library.
  Submodules of these roots (e.g., `Lib.Foo` of `Lib`) are considered
  part of the library.
  Defaults to a single root of the target's name.
  -/
  roots : Array Name := #[name]

  /--
  An `Array` of module `Glob`s to build for the library.
  Defaults to a `Glob.one` of each of the library's  `roots`.

  Submodule globs build every source file within their directory.
  Local imports of glob'ed files (i.e., fellow modules of the workspace) are
  also recursively built.
  -/
  globs : Array Glob := roots.map Glob.one

  /--
  The name of the library artifact.
  Used as a base for the file names of its static and dynamic binaries.
  Defaults to the mangled name of the target.
  -/
  libName : String := ""

  /--
  Whether static and shared binaries of this library should be prefixed with `lib` on Windows.

  Unlike Unix, Windows does not require native libraries to start with `lib` and,
  by convention, they usually do not. However, for consistent naming across all platforms,
  users may wish to enable this.

  Defaults to `false`.
  -/
  libPrefixOnWindows : Bool := false

  /-- An `Array` of targets to build before the executable's modules. -/
  needs : Array PartialBuildKey := #[]

  /--
   **Deprecated. Use `needs` instead.**
  An `Array` of target names to build before the library's modules.
  -/
  extraDepTargets : Array Name := #[]

  /--
  Whether to compile each of the library's modules into a native shared library
  that is loaded whenever the module is imported. This speeds up evaluation of
  metaprograms and enables the interpreter to run functions marked `@[extern]`.

  Defaults to `false`.
  -/
  precompileModules : Bool := false

  /--
  An `Array` of library facets to build on a bare `lake build` of the library.
  For example, `#[LeanLib.sharedFacet]` will build the shared library facet.
  -/
  defaultFacets : Array Name := #[LeanLib.leanArtsFacet]

  /--
  The module facets to build and combine into the library's static
  and shared libraries. If `shouldExport` is true, the module facets should
  export any symbols a user may expect to lookup in the library. For example,
  the Lean interpreter will use exported symbols in linked libraries.

  Defaults to a singleton of `Module.oExportFacet` (if `shouldExport`) or
  `Module.oFacet`. That is, the  object files compiled from the Lean sources,
  potentially with exported Lean symbols.
  -/
  nativeFacets (shouldExport : Bool) : Array (ModuleFacet FilePath) :=
    #[if shouldExport then Module.oExportFacet else Module.oFacet]

  /--
  Whether downstream packages can `import all` modules of this library.

  If enabled, downstream users will be able to access the `private` internals of modules,
  including definition bodies not marked as `@[expose]`.
  This may also, in the future, prevent compiler optimization which rely on `private`
  definitions being inaccessible outside their own package.

  Defaults to `false`.
  -/
  allowImportAll : Bool := false

deriving Inhabited

namespace LeanLibConfig

/-- The library's name. -/
public abbrev name (_ : LeanLibConfig n) := n

/-- Whether the given module is considered local to the library. -/
public def isLocalModule (mod : Name) (self : LeanLibConfig n) : Bool :=
  self.roots.any (fun root => root.isPrefixOf mod) ||
  self.globs.any (fun glob => glob.matches mod)

/-- Whether the given module is a buildable part of the library. -/
public def isBuildableModule (mod : Name) (self : LeanLibConfig n) : Bool :=
  self.globs.any (fun glob => glob.matches mod) ||
  self.roots.any (fun root => root.isPrefixOf mod && self.globs.any (·.matches root))
