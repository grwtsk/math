# Complete source: GRWTSK.Algebra.Order.Variantfff2528d433bae5630b231a0933b022696ddbcbbb94bf2ccc20a57d23d7dc0e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0002a14b9cf399f6dd9510f3b6afb0ba5205260` · SHA-256 `fff2528d433bae5630b231a0933b022696ddbcbbb94bf2ccc20a57d23d7dc0e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Algebra.Algebra.Subalgebra.Basic
import Mathlib.Algebra.Module.Submodule.Order
import Mathlib.Algebra.Ring.Subsemiring.Order

/-!
# Order instances on subalgebras
-/

namespace Subalgebra

variable {R A : Type*}

instance toIsOrderedRing [CommSemiring R] [Semiring A] [PartialOrder A] [IsOrderedRing A]
    [Algebra R A] (S : Subalgebra R A) : IsOrderedRing S :=
  S.toSubsemiring.toIsOrderedRing

instance toIsStrictOrderedRing [CommSemiring R] [Semiring A] [PartialOrder A]
    [IsStrictOrderedRing A] [Algebra R A] (S : Subalgebra R A) : IsStrictOrderedRing S :=
  S.toSubsemiring.toIsStrictOrderedRing

end Subalgebra
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d43ff80880db33e2c1003ed2d2059f46741934c110f735d23a012d15e131ed7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Order/Variantfff2528d433bae5630b231a0933b022696ddbcbbb94bf2ccc20a57d23d7dc0e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
