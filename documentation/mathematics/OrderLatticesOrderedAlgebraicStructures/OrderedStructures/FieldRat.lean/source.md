# Field Rat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff3a00c2f07606a4f0feb7e4c565dbb0af5aba73` · SHA-256 `a31535595f8dae000b1f9a26655c394c48a6d7517ec18af1e4bafa6987e205fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Order.Nonneg.Field
import Mathlib.Algebra.Order.Ring.Rat

/-!
# The rational numbers form a linear ordered field

This file used to contain the linear ordered field instance on the rational numbers.

TODO: rename this file to `Mathlib/Algebra/Order/GroupWithZero/NNRat.lean`

See note [foundational algebra order theory].

## Tags

rat, rationals, field, ℚ, numerator, denominator, num, denom
-/

deriving instance LinearOrderedCommGroupWithZero for NNRat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=924138bcdaef3dc4beba88e265ba4c2750fab2a979b0cf001961ea0284ee1f2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Rat/Varianta31535595f8dae000b1f9a26655c394c48a6d7517ec18af1e4bafa6987e205fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
