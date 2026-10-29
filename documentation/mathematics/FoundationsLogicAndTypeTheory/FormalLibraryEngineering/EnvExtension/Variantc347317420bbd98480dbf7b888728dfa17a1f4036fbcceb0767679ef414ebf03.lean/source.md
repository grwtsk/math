# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvExtension.Variantc347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ca1adad43b48cc1b35fa1b946182e9caf1ecf29` · SHA-256 `c347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Init
import Lean.ScopedEnvExtension

/-!
# Helper function for environment extensions and attributes.
-/

open Lean

instance {σ : Type} [Inhabited σ] : Inhabited (ScopedEnvExtension.State σ) := ⟨{state := default}⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ae878fe39b411b7e24df62b8fd0ff578d91023ca5778d1e29b338922f9804ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variantc347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
