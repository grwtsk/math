-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SPredNotationUnpack.Variant728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SPredNotationUnpack.Variant728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Do/SPred/Notation/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license.
Authors: Lars König, Sebastian Graf
-/
module

prelude
public import Std.Do.SPred.SPred


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SPredNotationUnpack.Variant728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a

public section

set_option linter.missingDocs true

namespace Std.Do

open Lean Macro Parser PrettyPrinter

-- define `spred` embedding in `term`.
-- An explicit `spred` marker avoids exponential blowup in terms
-- that do not opt into the extended syntax.
/--
An embedding of the special syntax for `SPred` into ordinary terms that provides alternative
interpretations of logical connectives and quantifiers.

Within `spred(...)`, `term(...)` escapes to the ordinary Lean interpretation of this syntax.
-/
scoped syntax:max "spred(" term ")" : term
/--
Escapes from a surrounding `spred(...)` term, returning to the usual interpretations of quantifiers
and connectives.
-/
scoped syntax:max "term(" term ")" : term

-- allow fallback to `term`
macro_rules
  | `(spred(term($t))) => pure t
  | `(spred($t))       => pure t

-- pushes `spred` inside some `term` constructs
macro_rules
  | `(spred(($P)))                  => ``((spred($P)))
  | `(spred(fun $xs* => $b))        => ``(fun $xs* => spred($b))
  | `(spred(if $c then $t else $e)) => ``(if $c then spred($t) else spred($e))
  | `(spred(($P : $t)))             => ``((spred($P) : $t))

/-- Removes an `spred` layer from a `term` syntax object. -/
-- inverts the rules above.
partial def SPred.Notation.unpack [Monad m] [MonadRef m] [MonadQuotation m] : Term → m Term
  | `(spred($P))             => do `($P)
  | `(($P))                  => do `(($(← unpack P)))
  | `(if $c then $t else $e) => do
    let t ← unpack t
    let e ← unpack e
    `(if $c then $t else $e)
  | `(fun $xs* => $b)        => do
    let b ← unpack b
    `(fun $xs* => $b)
  | `(($P : $t))             => do ``(($(← unpack P) : $t))
  | `($t)                    => `($t)
