# Complete source: GRWTSK.Analysis.RCLike.Variant08053c26462b80de1ec1ba96136c49fcd6c76b84d2e0464d88127777ab0e80bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e2d6596e64977a228bd6edf7a35201ae0f2bc63` · SHA-256 `08053c26462b80de1ec1ba96136c49fcd6c76b84d2e0464d88127777ab0e80bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stefan Kebekus
-/
module

public import Mathlib.Analysis.Meromorphic.Order
public import Mathlib.Analysis.RCLike.Basic

/-!
# Meromorphic Functions over the Real and Complex Numbers

This file gathers results on meromorphic functions specifict to the real and complex numbers.
-/

public section

open Set

variable
  {𝕜 : Type*} [RCLike 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/--
If `f` is meromorphic function on `ℝ` or `ℂ`, then there exists a point where a meromorphic function
`f` has finite order iff `f` has finite order at every point.
-/
theorem Meromorphic.exists_meromorphicOrderAt_ne_top_iff_forall {f : 𝕜 → E} (hf : Meromorphic f) :
    (∃ u, meromorphicOrderAt f u ≠ ⊤) ↔ (∀ u, meromorphicOrderAt f u ≠ ⊤) := by
  simpa using (meromorphicOn_univ.2 hf).exists_meromorphicOrderAt_ne_top_iff_forall isConnected_univ
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b374c06f0d2208902d77f55caf400a90e01e48104c6621f4de4a5c47828fa12f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RCLike/Variant08053c26462b80de1ec1ba96136c49fcd6c76b84d2e0464d88127777ab0e80bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
