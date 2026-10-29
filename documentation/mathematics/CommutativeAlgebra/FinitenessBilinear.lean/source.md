# Finiteness Bilinear — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f639e81aa6f3bf661f4980e3d6aee7f341fbbe70` · SHA-256 `8b65f30fb1153cb2a201370535ed57af7c3b4ed6432e92cf55ca558975f20319`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.RingTheory.Finiteness.Defs
import Mathlib.Algebra.Module.Submodule.Bilinear

/-!
# Finitely generated submodules and bilinear maps

-/

open Function (Surjective)
open Finsupp

namespace Submodule

section Map₂

variable {R M N P : Type*}
variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid N] [AddCommMonoid P]
variable [Module R M] [Module R N] [Module R P]

theorem FG.map₂ (f : M →ₗ[R] N →ₗ[R] P) {p : Submodule R M} {q : Submodule R N} (hp : p.FG)
    (hq : q.FG) : (map₂ f p q).FG :=
  let ⟨sm, hfm, hm⟩ := fg_def.1 hp
  let ⟨sn, hfn, hn⟩ := fg_def.1 hq
  fg_def.2
    ⟨Set.image2 (fun m n => f m n) sm sn, hfm.image2 _ hfn,
      map₂_span_span R f sm sn ▸ hm ▸ hn ▸ rfl⟩

end Map₂

end Submodule
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e165a7d7501f44d970155507df14e75c25efc98b3deb7a882b644e301a75266d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant8b65f30fb1153cb2a201370535ed57af7c3b4ed6432e92cf55ca558975f20319.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
