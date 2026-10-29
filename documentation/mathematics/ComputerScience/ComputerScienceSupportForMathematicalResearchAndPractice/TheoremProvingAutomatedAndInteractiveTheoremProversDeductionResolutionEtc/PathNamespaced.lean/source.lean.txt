-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Variante9ea2765ac2ed29ca54f285f17b0c314ce4ca8fc1348e7e0ffd010cf2a0aed12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9ea2765ac2ed29ca54f285f17b0c314ce4ca8fc1348e7e0ffd010cf2a0aed12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Term.Variante9ea2765ac2ed29ca54f285f17b0c314ce4ca8fc1348e7e0ffd010cf2a0aed12","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e9ea2765ac2ed29ca54f285f17b0c314ce4ca8fc1348e7e0ffd010cf2a0aed12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Util/Path.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.Term

/-!
# `compile_time_search_path%` term elaborator.

Use this as `searchPathRef.set compile_time_search_path%`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Variante9ea2765ac2ed29ca54f285f17b0c314ce4ca8fc1348e7e0ffd010cf2a0aed12

open Lean System

-- Ideally this instance would be constructed simply by `deriving instance ToExpr for FilePath`
-- but for now we have decided not to upstream the `ToExpr` derive handler from `Mathlib`.
-- https://leanprover.zulipchat.com/#narrow/stream/348111-std4/topic/ToExpr.20derive.20handler/near/386476438
instance : ToExpr FilePath where
  toTypeExpr := mkConst ``FilePath
  toExpr path := mkApp (mkConst ``FilePath.mk) (toExpr path.1)

/--
Term elaborator that retrieves the current `SearchPath`.

Typical usage is `searchPathRef.set compile_time_search_path%`.

This must not be used in files that are potentially compiled on another machine and then
imported.
(That is, if used in an imported file it will embed the search path from whichever machine
compiled the `.olean`.)
-/
elab "compile_time_search_path%" : term =>
  return toExpr (← searchPathRef.get)
