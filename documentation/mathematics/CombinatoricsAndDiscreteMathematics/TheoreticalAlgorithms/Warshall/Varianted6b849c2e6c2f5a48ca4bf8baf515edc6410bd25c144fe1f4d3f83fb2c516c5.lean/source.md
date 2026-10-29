# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Warshall.Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e3299a6a27d3a735b9823d7fb94d3782ab50c04` · SHA-256 `ed6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Matrix.Basic

namespace Surface.Boolean

/--
One Warshall update at intermediate vertex `k`.

The new entry `(i, j)` is true precisely when it was already true, or when
there is an `i → k` connection and a `k → j` connection.
-/
def BoolMatrix.warshallStep
    {n : Nat}
    (k : Fin n)
    (A : BoolMatrix n n) :
    BoolMatrix n n :=
  fun i j => A i j || (A i k && A k j)

@[simp] theorem BoolMatrix.entry_warshallStep
    {n : Nat}
    (k : Fin n)
    (A : BoolMatrix n n)
    (i j : Fin n) :
    BoolMatrix.entry (BoolMatrix.warshallStep k A) i j =
      (BoolMatrix.entry A i j ||
        (BoolMatrix.entry A i k && BoolMatrix.entry A k j)) :=
  rfl

/--
`warshallAux limit h A` performs Warshall updates for all intermediate
vertices with indices `< limit`.

The proof `h : limit ≤ n` ensures that each intermediate index is a valid
`Fin n`.
-/
def BoolMatrix.warshallAux {n : Nat} :
    (limit : Nat) → limit ≤ n → BoolMatrix n n → BoolMatrix n n
  | 0, _, A => A
  | k + 1, hk, A =>
      BoolMatrix.warshallStep
        ⟨k, hk⟩
        (BoolMatrix.warshallAux
          k
          (Nat.le_trans (Nat.le_succ k) hk)
          A)

/--
Warshall's algorithm on a square Boolean matrix.

For a relation matrix, this repeatedly applies the Boolean update

`A[i,j] := A[i,j] || (A[i,k] && A[k,j])`

for every intermediate index `k`.
-/
def BoolMatrix.warshall
    {n : Nat}
    (A : BoolMatrix n n) :
    BoolMatrix n n :=
  BoolMatrix.warshallAux n (Nat.le_refl n) A

@[simp] theorem BoolMatrix.warshallAux_zero
    {n : Nat}
    (h : 0 ≤ n)
    (A : BoolMatrix n n) :
    BoolMatrix.warshallAux 0 h A = A :=
  rfl

end Surface.Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=295762b2cb5dcf8df6560196ab2dbc150f123999f39b4934218d949e6bc377e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
