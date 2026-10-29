# Complete source: GRWTSK.Algebra.GroupTheory.Primal.Variant43ce850aaa07f8cda99cded34b2a3068b323aff16dafd61e57c9e9a6daf4de23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22ea2d6a07d97dc5f2f8e3aea7ae89a3272327e2` · SHA-256 `43ce850aaa07f8cda99cded34b2a3068b323aff16dafd61e57c9e9a6daf4de23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Divisibility

/-!
# Submonoid of primal elements
-/

assert_not_exists RelIso Ring

/-- The submonoid of primal elements in a cancellative commutative monoid with zero. -/
def Submonoid.isPrimal (M₀ : Type*) [CancelCommMonoidWithZero M₀] : Submonoid M₀ where
  carrier := {a | IsPrimal a}
  mul_mem' := .mul
  one_mem' := isUnit_one.isPrimal
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ec1f52ead5d7d1cca0686e5dd0bf493ba3ac8207807a24ca98f6219176ef977 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Primal/Variant43ce850aaa07f8cda99cded34b2a3068b323aff16dafd61e57c9e9a6daf4de23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
