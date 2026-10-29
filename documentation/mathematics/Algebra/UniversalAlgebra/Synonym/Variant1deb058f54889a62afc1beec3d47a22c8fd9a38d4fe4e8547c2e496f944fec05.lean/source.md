# Complete source: GRWTSK.Algebra.UniversalAlgebra.Synonym.Variant1deb058f54889a62afc1beec3d47a22c8fd9a38d4fe4e8547c2e496f944fec05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `858df1e0658ea408683df6dd1386ee6cf76ca2d4` · SHA-256 `1deb058f54889a62afc1beec3d47a22c8fd9a38d4fe4e8547c2e496f944fec05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Order.GroupWithZero.Action.Synonym
import Mathlib.Algebra.Order.Ring.Synonym

/-!
# Action instances for `OrderDual`


This PR transfers group action with zero instances from a type `α` to `αᵒᵈ` and `Lex α`. Note that
the `SMul` instances are already defined in `Mathlib/Algebra/Order/Group/Synonym.lean`.

## See also

* `Mathlib/Algebra/Order/Group/Action/Synonym.lean`
* `Mathlib/Algebra/Order/GroupWithZero/Action/Synonym.lean`
-/

variable {α β : Type*}

namespace OrderDual

instance instModule [Semiring α] [AddCommMonoid β] [Module α β] : Module αᵒᵈ β where
  add_smul := add_smul (R := α)
  zero_smul := zero_smul _

instance instModule' [Semiring α] [AddCommMonoid β] [Module α β] : Module α βᵒᵈ where
  add_smul := add_smul (M := β)
  zero_smul := zero_smul _

end OrderDual

namespace Lex

instance instModule [Semiring α] [AddCommMonoid β] [Module α β] : Module (Lex α) β :=
  ‹Module α β›

instance instModule' [Semiring α] [AddCommMonoid β] [Module α β] : Module α (Lex β) :=
  ‹Module α β›

end Lex
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b46aaae43c85edd4d58fda603982247368c275e5d226ab14d9e320636ef41f1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Synonym/Variant1deb058f54889a62afc1beec3d47a22c8fd9a38d4fe4e8547c2e496f944fec05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
