# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Body.Variantdaace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57857954dd1cc7fa66e1e3a482d848455b55e087` · SHA-256 `daace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.Body.Basic
public import Std.Http.Data.Body.Length
public import Std.Http.Data.Body.Any
public import Std.Http.Data.Body.Stream
public import Std.Http.Data.Body.Empty
public import Std.Http.Data.Body.Full

public section

/-!
# Body

This module re-exports all HTTP body types: `Body.Empty`, `Body.Full`, `Body.Stream`,
`Body.Any`, and `Body.Length`, along with the `Http.Body` typeclass and conversion
utilities (`ToByteArray`, `FromByteArray`).
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a053c7f4abcf2ded86c118b4f5e19538e745e5b5f914fdbd37472ea20dd91868 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Body/Variantdaace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
