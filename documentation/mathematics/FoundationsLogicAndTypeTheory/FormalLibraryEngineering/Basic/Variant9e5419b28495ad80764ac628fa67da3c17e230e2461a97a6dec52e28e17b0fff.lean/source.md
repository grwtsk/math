# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant9e5419b28495ad80764ac628fa67da3c17e230e2461a97a6dec52e28e17b0fff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2705b64c8235f647d4ebfdb9a6e5aaf3d31061c3` · SHA-256 `9e5419b28495ad80764ac628fa67da3c17e230e2461a97a6dec52e28e17b0fff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Async
public import Std.Async.ContextAsync
public import Std.Http.Data.Chunk
public import Std.Http.Data.Headers
public import Std.Http.Data.Body.Length

public section

/-!
# Body.Basic

This module defines the `Body` typeclass for HTTP body streams, and shared conversion types
`ToByteArray` and `FromByteArray` used for encoding and decoding body content.
-/

namespace Std.Http
open Std Async

set_option linter.all true

/--
Typeclass for values that can be read as HTTP body streams.
-/
class Body (α : Type) where
  /--
  Receives the next body chunk. Returns `none` at end-of-stream.
  -/
  recv : α → Async (Option Chunk)

  /--
  Closes the body stream.
  -/
  close : α → Async Unit

  /--
  Returns `true` when the body stream is closed.
  -/
  isClosed : α → Async Bool

  /--
  Selector that resolves when a chunk is available or EOF is reached.
  -/
  recvSelector : α → Selector (Option Chunk)

  /--
  Non-blocking receive attempt. Returns `none` if no chunk is immediately available,
  `some (some chunk)` when a chunk is ready, or `some none` at end-of-stream.
  -/
  tryRecv (body : α) : Async (Option (Option Chunk))

  /--
  Gets the declared size of the body.
  -/
  getKnownSize : α → Async (Option Body.Length)

  /--
  Sets the declared size of a body.
  -/
  setKnownSize : α → Option Body.Length → Async Unit
end Std.Http

namespace Std.Http.Body

/--
Typeclass for types that can be converted to a `ByteArray`.
-/
class ToByteArray (α : Type) where

  /--
  Transforms into a `ByteArray`.
  -/
  toByteArray : α → ByteArray

instance : ToByteArray ByteArray where
  toByteArray := id

instance : ToByteArray String where
  toByteArray := String.toUTF8

/--
Typeclass for types that can be decoded from a `ByteArray`. The conversion may fail with an error
message if the bytes are not valid for the target type.
-/
class FromByteArray (α : Type) where

  /--
  Attempts to decode a `ByteArray` into the target type, returning an error message on failure.
  -/
  fromByteArray : ByteArray → Except String α

instance : FromByteArray ByteArray where
  fromByteArray := .ok

instance : FromByteArray String where
  fromByteArray bs :=
    match String.fromUTF8? bs with
    | some s => .ok s
    | none => .error "invalid UTF-8 encoding"

end Std.Http.Body
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61bfb6cc5e6c65958a61c5e389153cf222acb1fdca5c885089dce49ff3d9147d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9e5419b28495ad80764ac628fa67da3c17e230e2461a97a6dec52e28e17b0fff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
