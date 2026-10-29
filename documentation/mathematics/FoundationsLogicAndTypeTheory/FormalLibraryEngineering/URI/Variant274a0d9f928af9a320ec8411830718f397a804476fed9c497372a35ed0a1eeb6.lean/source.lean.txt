-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parse.Variante5fa97e8a7216c87734341b18799879245bb7b6f2e66b494b96117ec349816c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5fa97e8a7216c87734341b18799879245bb7b6f2e66b494b96117ec349816c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Parse.Variante5fa97e8a7216c87734341b18799879245bb7b6f2e66b494b96117ec349816c9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e5fa97e8a7216c87734341b18799879245bb7b6f2e66b494b96117ec349816c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/URI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.URI.Basic
public import Std.Http.Data.URI.Parser


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parse.Variante5fa97e8a7216c87734341b18799879245bb7b6f2e66b494b96117ec349816c9

public section

/-!
# URI

This module defines the `URI` and `RequestTarget` types that represent and manipulate components of
URIs as defined by RFC 3986. It provides parsing, rendering, and normalization utilities for working
with URIs and request targets in HTTP messages.

References:
* https://www.rfc-editor.org/rfc/rfc3986.html
* https://www.rfc-editor.org/rfc/rfc9112.html#section-3.3
-/

namespace Std.Http.RequestTarget

set_option linter.all true

/--
Attempts to parse a `RequestTarget` from the given string.
-/
@[inline]
def parse? (string : String) : Option RequestTarget :=
  (URI.Parser.parseRequestTarget <* Std.Internal.Parsec.eof).run string.toUTF8 |>.toOption

/--
Parses a `RequestTarget` from the given string. Panics if parsing fails. Use `parse?`
if you need a safe option-returning version.
-/
@[inline]
def parse! (string : String) : RequestTarget :=
  match parse? string with
  | some res => res
  | none => panic! "invalid request target"

/--
Creates an origin-form request target from a path string.
The path should start with '/' (e.g., "/api/users" or "/search?q=test").
Panics if the string is not a valid origin-form request target.
-/
@[inline]
def originForm! (path : String) : RequestTarget :=
  match parse? path with
  | some (.originForm p q) => .originForm p q
  | _ => panic! s!"invalid origin-form request target: {path}"

end RequestTarget

namespace URI

/--
Attempts to parse a `URI` from the given string.
-/
@[inline]
def parse? (string : String) : Option URI :=
  (Parser.parseURI <* Std.Internal.Parsec.eof).run string.toUTF8 |>.toOption

/--
Parses a `URI` from the given string. Panics if parsing fails. Use `parse?` if you need a safe
option-returning version.
-/
@[inline]
def parse! (string : String) : URI :=
  match parse? string with
  | some res => res
  | none => panic! "invalid URI"

namespace Path

/--
Attempts to parse a URI path from the given string.
Returns `none` if the string is not a valid path.
-/
@[inline]
def parse? (s : String) : Option Std.Http.URI.Path :=
  (Std.Http.URI.Parser.parsePath {} true true <* Std.Internal.Parsec.eof).run s.toUTF8 |>.toOption

/--
Parses a URI path from the given string. Returns the root path `"/"` if parsing fails.
-/
@[inline]
def parseOrRoot (s : String) : Std.Http.URI.Path :=
  parse? s |>.getD { segments := #[], absolute := true }

end Std.Http.URI.Path
