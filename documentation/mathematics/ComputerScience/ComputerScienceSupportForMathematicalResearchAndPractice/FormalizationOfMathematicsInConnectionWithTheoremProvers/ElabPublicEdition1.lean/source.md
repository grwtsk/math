# Elab Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32c0eaa849e0d11c97799c8be8316ae8bd6d7c89` · SHA-256 `cbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Toml.Elab.Value
public import Lake.Toml.Elab.Expression

/-!
# TOML Elaboration

Elaborates TOML syntax into Lean data types.
At top-level, elaborates a whole TOML file into a `Toml.Table`.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78cf1fccb2aec9f3d835f386b229b84e5bfc71d21f938b7b50082113ed7a6a49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variantcbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
