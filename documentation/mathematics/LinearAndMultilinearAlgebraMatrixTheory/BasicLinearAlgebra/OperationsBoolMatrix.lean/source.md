# Operations Bool Matrix — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22eb0ef8cf70f25172bfac1daa1b7c3b1bb79d09` · SHA-256 `2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Matrix.Basic

namespace Surface.Boolean

/-- The all-zero Boolean matrix. -/
def BoolMatrix.zeros : BoolMatrix rows cols :=
  fun _ _ => false

/-- The all-one Boolean matrix. -/
def BoolMatrix.ones : BoolMatrix rows cols :=
  fun _ _ => true

/-- Pointwise Boolean disjunction of matrices. -/
def BoolMatrix.join
    (A B : BoolMatrix rows cols) :
    BoolMatrix rows cols :=
  fun i j => A i j || B i j

/-- Pointwise Boolean conjunction of matrices. -/
def BoolMatrix.meet
    (A B : BoolMatrix rows cols) :
    BoolMatrix rows cols :=
  fun i j => A i j && B i j

/-- Pointwise Boolean complement of a matrix. -/
def BoolMatrix.compl
    (A : BoolMatrix rows cols) :
    BoolMatrix rows cols :=
  fun i j => !(A i j)

/-- Transpose a Boolean matrix. -/
def BoolMatrix.transpose
    (A : BoolMatrix rows cols) :
    BoolMatrix cols rows :=
  fun i j => A j i

/-- Change exactly one entry. -/
def BoolMatrix.set
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols)
    (value : Bool) :
    BoolMatrix rows cols :=
  fun i' j' =>
    if i' = i then
      if j' = j then value else A i' j'
    else
      A i' j'

@[simp] theorem BoolMatrix.entry_zeros
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.zeros : BoolMatrix rows cols) i j = false :=
  rfl

@[simp] theorem BoolMatrix.entry_ones
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.ones : BoolMatrix rows cols) i j = true :=
  rfl

@[simp] theorem BoolMatrix.entry_join
    (A B : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.join A B) i j =
      (BoolMatrix.entry A i j || BoolMatrix.entry B i j) :=
  rfl

@[simp] theorem BoolMatrix.entry_meet
    (A B : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.meet A B) i j =
      (BoolMatrix.entry A i j && BoolMatrix.entry B i j) :=
  rfl

@[simp] theorem BoolMatrix.entry_compl
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.compl A) i j =
      !(BoolMatrix.entry A i j) :=
  rfl

@[simp] theorem BoolMatrix.entry_transpose
    (A : BoolMatrix rows cols)
    (i : Fin cols)
    (j : Fin rows) :
    BoolMatrix.entry (BoolMatrix.transpose A) i j =
      BoolMatrix.entry A j i :=
  rfl

@[simp] theorem BoolMatrix.transpose_transpose
    (A : BoolMatrix rows cols) :
    BoolMatrix.transpose (BoolMatrix.transpose A) = A := by
  funext i
  funext j
  rfl

@[simp] theorem BoolMatrix.entry_set_same
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols)
    (value : Bool) :
    BoolMatrix.entry (BoolMatrix.set A i j value) i j = value := by
  simp [BoolMatrix.entry, BoolMatrix.set]

end Surface.Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c16c4c910ff5a129bd4226a3cc7606268daaaa4dda719e49deb546440169120 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
