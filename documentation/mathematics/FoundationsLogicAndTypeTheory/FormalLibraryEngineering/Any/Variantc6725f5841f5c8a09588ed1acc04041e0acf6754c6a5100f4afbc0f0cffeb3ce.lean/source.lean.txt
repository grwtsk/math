-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Any.Variantfab2c5497fc6039970f727094d97c1446b092bdfbfdbcc4a56fee5b98e3763b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fab2c5497fc6039970f727094d97c1446b092bdfbfdbcc4a56fee5b98e3763b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Any.Variantfab2c5497fc6039970f727094d97c1446b092bdfbfdbcc4a56fee5b98e3763b2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fab2c5497fc6039970f727094d97c1446b092bdfbfdbcc4a56fee5b98e3763b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Body/Any.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.Body.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Any.Variantfab2c5497fc6039970f727094d97c1446b092bdfbfdbcc4a56fee5b98e3763b2

public section

/-!
# Body.Any

A type-erased body backed by closures. Implements `Http.Body` and can be constructed from any
type that also implements `Http.Body`. Used as the default handler response body type.
-/

namespace Std.Http.Body
open Std Async

set_option linter.all true

/--
A type-erased body handle. Operations are stored as closures, making it open to any body type
that implements `Http.Body`.
-/
structure Any where

  /--
  Receives the next body chunk. Returns `none` at end-of-stream.
  -/
  recv : Async (Option Chunk)

  /--
  Closes the body stream.
  -/
  close : Async Unit

  /--
  Returns `true` when the body stream is closed.
  -/
  isClosed : Async Bool

  /--
  Selector that resolves when a chunk is available or EOF is reached.
  -/
  recvSelector : Selector (Option Chunk)

  /--
  Non-blocking receive attempt. Returns `none` if no chunk is immediately available,
  `some (some chunk)` when a chunk is ready, or `some none` at end-of-stream.
  -/
  tryRecv : Async (Option (Option Chunk))

  /--
  Returns the declared size.
  -/
  getKnownSize : Async (Option Body.Length)

  /--
  Sets the size of the body.
  -/
  setKnownSize : Option Body.Length → Async Unit
namespace Any

/--
Erases a body of any `Http.Body` instance into a `Body.Any`.
-/
def ofBody [Http.Body α] (body : α) : Any where
  recv := Http.Body.recv body
  close := Http.Body.close body
  isClosed := Http.Body.isClosed body
  recvSelector := Http.Body.recvSelector body
  tryRecv := Http.Body.tryRecv body
  getKnownSize := Http.Body.getKnownSize body
  setKnownSize := Http.Body.setKnownSize body

end Any

instance : Http.Body Any where
  recv := Any.recv
  close := Any.close
  isClosed := Any.isClosed
  recvSelector := Any.recvSelector
  tryRecv := Any.tryRecv
  getKnownSize := Any.getKnownSize
  setKnownSize := Any.setKnownSize

end Std.Http.Body
