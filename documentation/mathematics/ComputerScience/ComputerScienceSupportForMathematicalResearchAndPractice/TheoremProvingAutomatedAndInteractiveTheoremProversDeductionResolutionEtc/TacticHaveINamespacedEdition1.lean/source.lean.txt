-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variantb7af311b07f221281e32882da622eed0207fe84cf9344d110b9b9228d1522998","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7af311b07f221281e32882da622eed0207fe84cf9344d110b9b9228d1522998","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SourceUnit.Variantb7af311b07f221281e32882da622eed0207fe84cf9344d110b9b9228d1522998","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b7af311b07f221281e32882da622eed0207fe84cf9344d110b9b9228d1522998","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/HaveI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/

import Mathlib.Init
/-!
# Variants of `haveI`/`letI` for use in do-notation.

This files implements the `haveI'` and `letI'` macros which have the same semantics as
`haveI` and `letI`, but are `doElem`s and can be used inside do-notation.

They need an apostrophe after their name for disambiguation with the term variants.
This is necessary because the do-notation has a hardcoded list of keywords which can appear both
as term-mode and do-elem syntax (like for example `let` or `have`).
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variantb7af311b07f221281e32882da622eed0207fe84cf9344d110b9b9228d1522998

namespace Mathlib.Tactic.HaveI

local syntax "haveIDummy" haveDecl : term
macro_rules
  | `(assert! haveIDummy $hd:haveDecl; $body) => `(haveI $hd:haveDecl; $body)

/--
`haveI'` behaves like `have`, but inlines the value instead of producing a `let_fun` term.

(This is the do-notation version of the term-mode `haveI`.)
-/
macro "haveI' " hd:haveDecl : doElem =>
  `(doElem| assert! haveIDummy $hd:haveDecl)

local syntax "letIDummy" haveDecl : term
macro_rules
  | `(assert! letIDummy $hd:haveDecl; $body) => `(letI $hd:haveDecl; $body)

/--
`letI` behaves like `let`, but inlines the value instead of producing a `let_fun` term.

(This is the do-notation version of the term-mode `haveI`.)
-/
macro "letI' " hd:haveDecl : doElem =>
  `(doElem| assert! letIDummy $hd:haveDecl)

end Mathlib.Tactic.HaveI
