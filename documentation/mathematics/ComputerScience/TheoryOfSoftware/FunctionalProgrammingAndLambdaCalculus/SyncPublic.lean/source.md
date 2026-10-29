# Sync Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca568c15118cfb5b9469334d95c73d41ffb260e2` · SHA-256 `92f7db29d8b9693757877360dbba9f6d340befbe60974c7cccbd808baaa6059a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sync.Basic
public import Std.Sync.Channel
public import Std.Sync.Mutex
public import Std.Sync.RecursiveMutex
public import Std.Sync.Barrier
public import Std.Sync.Semaphore
public import Std.Sync.SharedMutex
public import Std.Sync.Notify
public import Std.Sync.Broadcast
public import Std.Sync.StreamMap
public import Std.Sync.CancellationToken
public import Std.Sync.CancellationContext

@[expose] public section
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10ab4694ae688609d566653f9cedd861aacf0bbb2050c85667cd6d515fdc9c5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sync/Variant92f7db29d8b9693757877360dbba9f6d340befbe60974c7cccbd808baaa6059a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
