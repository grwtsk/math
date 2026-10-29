# Error Public Error — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ac1b68e58d6510878abf5cc7b3c8de4979333c5` · SHA-256 `10f72711e695a4359cb1a3e2d5fca0a0dac4fabf1601d015ba5aad215ba72691`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time
public import Std.Http.Data
public import Std.Http.Internal
public import Std.Http.Protocol.H1.Parser
public import Std.Http.Protocol.H1.Config
public import Std.Http.Protocol.H1.Message

public section

/-!
# HTTP/1.1 Errors

This module defines the error types for HTTP/1.1 protocol processing,
including parsing errors, timeout errors, and connection errors.
-/

namespace Std.Http.Protocol.H1

set_option linter.all true

/--
Specific HTTP processing errors with detailed information.
-/
inductive Error
  /--
  Malformed start line (request-line or status-line).
  -/
  | invalidStatusLine

  /--
  Invalid or malformed header.
  -/
  | invalidHeader

  /--
  Request timeout occurred.
  -/
  | timeout

  /--
  Request entity too large.
  -/
  | entityTooLarge

  /--
  Request URI is too long.
  -/
  | uriTooLong

  /--
  Unsupported HTTP version.
  -/
  | unsupportedVersion

  /--
  Invalid chunk encoding.
  -/
  | invalidChunk

  /--
  Connection closed.
  -/
  | connectionClosed

  /--
  Bad request or response message.
  -/
  | badMessage

  /--
  The number of header fields in the message exceeds the configured limit.
  Maps to HTTP 431 Request Header Fields Too Large.
  -/
  | tooManyHeaders

  /--
  The aggregate byte size of all header fields exceeds the configured limit.
  Maps to HTTP 431 Request Header Fields Too Large.
  -/
  | headersTooLarge

  /--
  Generic error with message.
  -/
  | other (message : String)
deriving Repr, BEq

instance : ToString Error where
  toString
  | .invalidStatusLine => "Invalid status line"
  | .invalidHeader => "Invalid header"
  | .timeout => "Timeout"
  | .entityTooLarge => "Entity too large"
  | .uriTooLong => "URI too long"
  | .unsupportedVersion => "Unsupported version"
  | .invalidChunk => "Invalid chunk"
  | .connectionClosed => "Connection closed"
  | .badMessage => "Bad message"
  | .tooManyHeaders => "Too many headers"
  | .headersTooLarge => "Headers too large"
  | .other msg => s!"Other error: {msg}"

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ed327d82eedad498874a7395fd94ccd6de6b15e04fd38b3ec705c749a078d75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Error/Variant10f72711e695a4359cb1a3e2d5fca0a0dac4fabf1601d015ba5aad215ba72691.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
