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
