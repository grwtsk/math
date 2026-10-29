# Complete source: GRWTSK.Algebra.LinearAlgebra.Countable.Variant7c68385f7edc15179dea3dba267ae91a8ca26ff493f2fd9ecf50065b8f46587e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b55032284e9626cdbd1dca0e0cbd86b37afc7be` · SHA-256 `7c68385f7edc15179dea3dba267ae91a8ca26ff493f2fd9ecf50065b8f46587e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Data.Finsupp.Encodable
import Mathlib.Data.Set.Countable
import Mathlib.LinearAlgebra.Finsupp.LinearCombination

/-!
# Countable modules
-/

noncomputable section

namespace Finsupp

variable {M : Type*} {R : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

/-- If `R` is countable, then any `R`-submodule spanned by a countable family of vectors is
countable. -/
instance {ι : Type*} [Countable R] [Countable ι] (v : ι → M) :
    Countable (Submodule.span R (Set.range v)) := by
  refine Set.countable_coe_iff.mpr (Set.Countable.mono ?_ (Set.countable_range
      (fun c : (ι →₀ R) => c.sum fun i _ => (c i) • v i)))
  exact fun _ h => Finsupp.mem_span_range_iff_exists_finsupp.mp (SetLike.mem_coe.mp h)

end Finsupp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c91c5d7ca375515ed725a059c0c103de1c530d9c4e5421dd00616d7942443d01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Countable/Variant7c68385f7edc15179dea3dba267ae91a8ca26ff493f2fd9ecf50065b8f46587e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
