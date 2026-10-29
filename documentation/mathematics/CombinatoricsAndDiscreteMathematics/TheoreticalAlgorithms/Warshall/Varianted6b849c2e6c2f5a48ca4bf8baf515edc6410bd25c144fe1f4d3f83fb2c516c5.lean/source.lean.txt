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
