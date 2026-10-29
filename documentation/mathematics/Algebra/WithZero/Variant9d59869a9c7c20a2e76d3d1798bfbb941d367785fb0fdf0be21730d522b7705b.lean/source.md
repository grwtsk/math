# Complete source: GRWTSK.Algebra.WithZero.Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25dd019cdf566aea882169f7c6ce8cfffa6df0a5` · SHA-256 `9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Mario Carneiro, Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Johan Commelin
-/
import Mathlib.Algebra.GroupWithZero.WithZero
import Mathlib.Algebra.Ring.Defs

/-!
# Adjoining a zero to a semiring
-/

namespace WithZero
variable {α : Type*}

instance instLeftDistribClass [Mul α] [Add α] [LeftDistribClass α] :
    LeftDistribClass (WithZero α) where
  left_distrib a b c := by
    cases a; · rfl
    cases b <;> cases c <;> try rfl
    exact congr_arg some (left_distrib _ _ _)

instance instRightDistribClass [Mul α] [Add α] [RightDistribClass α] :
    RightDistribClass (WithZero α) where
  right_distrib a b c := by
    cases c; · simp
    cases a <;> cases b <;> try rfl
    exact congr_arg some (right_distrib _ _ _)

instance instDistrib [Distrib α] : Distrib (WithZero α) where
  left_distrib := left_distrib
  right_distrib := right_distrib

instance instSemiring [Semiring α] : Semiring (WithZero α) where

end WithZero
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7285d978ca057ef8626551751d1a3ba7b22280a64b088bc6331cf48c3d9d7a53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/WithZero/Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
