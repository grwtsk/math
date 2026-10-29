# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalReal.Variant336cc72b71249722ee1614a4a52b2002dbff9b0e8b3d36d6f85487726b3c54ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16ca677121540e62637c463cf64d917bc246bd62` · SHA-256 `336cc72b71249722ee1614a4a52b2002dbff9b0e8b3d36d6f85487726b3c54ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Core.IntervalRat.Basic
import LeanCert.Core.IntervalRat.Transcendental
import LeanCert.Core.IntervalRat.Taylor

/-!
# Rational Endpoint Intervals

This file defines `IntervalRat`, a concrete interval type with rational endpoints
suitable for computation. We prove the Fundamental Theorem of Interval Arithmetic
(FTIA) for each operation.

## Module Structure

* `IntervalRat.Basic` - Core types: `IntervalRat`, membership, basic operations
* `IntervalRat.Transcendental` - Noncomputable transcendental bounds (exp, log, sqrt, atanh)
* `IntervalRat.Taylor` - Computable Taylor series evaluators

## Main definitions

* `LeanCert.Core.IntervalRat` - Intervals with rational endpoints
* `LeanCert.Core.IntervalRat.toSet` - Semantic interpretation as a subset of ℝ
* Operations: `add`, `neg`, `sub`, `mul`, `inv`, `div`
* Computable: `expComputable`, `sinComputable`, `cosComputable`

## Main theorems

* `mem_add` - FTIA for addition
* `mem_neg` - FTIA for negation
* `mem_sub` - FTIA for subtraction
* `mem_mul` - FTIA for multiplication
* `mem_expComputable`, `mem_sinComputable`, `mem_cosComputable` - FTIA for computable functions

## Design notes

All operations maintain the invariant `lo ≤ hi`. Domain restrictions for partial
operations (like `inv`) are encoded via separate types or explicit hypotheses.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15248965de8a85d7e75d01f0d3ac63936ab4d350674283a8cf8d06ab05d8ffbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalReal/Variant336cc72b71249722ee1614a4a52b2002dbff9b0e8b3d36d6f85487726b3c54ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
