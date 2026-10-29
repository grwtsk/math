-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindDocString.Variantbbc0169be7ab09fff072f9c98f178a803b607bf896f18761b5abc4594bcd0286","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbc0169be7ab09fff072f9c98f178a803b607bf896f18761b5abc4594bcd0286","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindDocString.Variantbbc0169be7ab09fff072f9c98f178a803b607bf896f18761b5abc4594bcd0286","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bbc0169be7ab09fff072f9c98f178a803b607bf896f18761b5abc4594bcd0286","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/DocString.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.DocString.Extension
public import Lean.DocString.Markdown
public import Lean.DocString.Links
public import Lean.Parser.Tactic.Doc
public import Lean.Parser.Term.Doc
public import Lean.ResolveName


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindDocString.Variantbbc0169be7ab09fff072f9c98f178a803b607bf896f18761b5abc4594bcd0286

public section

set_option linter.missingDocs true

-- This module contains the main query interface for docstrings, which assembles user-visible
-- docstrings.
-- The module `Lean.DocString.Extension` contains the underlying data.

namespace Lean
open Lean.Parser.Tactic.Doc
open Lean.Parser.Term.Doc

/--
Finds the docstring for a name, taking tactic alternate forms and documentation extensions into
account.

Use `Lean.findSimpleDocString?` to look up the raw docstring without resolving alternate forms or
including extensions.
-/
def findDocString? (env : Environment) (declName : Name) (includeBuiltin := true)
    (options : Options := {}) (currNamespace : Name := .anonymous) (openDecls : List OpenDecl := []) :
    IO (Option String) := do
  let declName := alternativeOfTactic env declName |>.getD declName
  let exts := getTacticExtensionString env declName
  let spellings := getRecommendedSpellingString env declName
  let str := (← findSimpleDocString? env declName (includeBuiltin := includeBuiltin)
      (options := options) (currNamespace := currNamespace) (openDecls := openDecls)).map
    (· ++ exts ++ spellings)
  str.mapM (rewriteManualLinks ·)

/--
Finds the docstring for a name, taking the current namespace and open declarations from the ambient
monad. Tactic alternate forms and documentation extensions are taken into account.

Docstrings are rendered with the default options.
-/
def findMarkdownDocString? [Monad m] [MonadEnv m] [MonadResolveName m] [MonadLiftT IO m]
    (declName : Name) (includeBuiltin := true) : m (Option String) := do
  findDocString? (← getEnv) declName (includeBuiltin := includeBuiltin)
    (currNamespace := ← getCurrNamespace) (openDecls := ← getOpenDecls)
