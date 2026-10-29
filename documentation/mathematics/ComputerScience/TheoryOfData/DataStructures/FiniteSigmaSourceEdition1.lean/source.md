# Finite Sigma Source Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0790e22aae6824ada6007e3387cda3be894dcbf` · SHA-256 `e2e18aeb26911ff28b22043caa115b62691440b1ba78cb388f57e61d067202ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Sigma

/-!
# Finiteness of sigma types
-/

variable {α : Type*}

namespace Finite

instance {β : α → Type*} [Finite α] [∀ a, Finite (β a)] : Finite (Σa, β a) := by
  letI := Fintype.ofFinite α
  letI := fun a => Fintype.ofFinite (β a)
  infer_instance

instance {ι : Sort*} {π : ι → Sort*} [Finite ι] [∀ i, Finite (π i)] : Finite (Σ'i, π i) :=
  of_equiv _ (Equiv.psigmaEquivSigmaPLift π).symm

end Finite
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76e7f1ba9666afbfacfb978890b47cbd8b0f2743bebc142dfb729ce3985d3f5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variante2e18aeb26911ff28b22043caa115b62691440b1ba78cb388f57e61d067202ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
