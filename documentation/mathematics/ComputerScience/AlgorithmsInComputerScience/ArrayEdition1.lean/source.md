# Array Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82e44730885fbcccbfb3f9908f4308447e9365b6` · SHA-256 `27a13dd15dad973c66d090cd71e7f677f4e7a9ff8a307f24b45ff0ef03ed719a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.Array

section
variable {α : Type _}
variable [Inhabited α]
variable (a : Array α)
variable (i j : Nat)
variable (v d : α)
variable (g : i < (a.set! i v).size)
variable (j_lt : j < (a.set! i v).size)

#check_simp (a.set! i v)[i] ~> v
#check_simp (a.set! i v)[i]! ~> (a.setIfInBounds i v)[i]!
#check_simp (a.set! i v).getD i d ~> if i < a.size then v else d
#check_simp (a.set! i v)[i] ~> v

-- Checks with different index values.
#check_simp (a.set! i v)[j]'j_lt  ~> (a.setIfInBounds i v)[j]'_
#check_simp (a.setIfInBounds i v)[j]'j_lt !~>

-- This doesn't work currently.
-- It will be address in the comprehensive overhaul of array lemmas.
-- #check_simp (a.set! i v)[i]? ~> .some v

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f239e9b6dd61f41c21fe091b7ae5c21386f77280612133baedfcd318d93072cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant27a13dd15dad973c66d090cd71e7f677f4e7a9ff8a307f24b45ff0ef03ed719a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
