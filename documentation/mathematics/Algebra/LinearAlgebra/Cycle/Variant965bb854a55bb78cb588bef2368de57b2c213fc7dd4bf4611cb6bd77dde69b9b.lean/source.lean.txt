import Boolean.Matrix

namespace Boolean

namespace Matrix

/-- Directed edge relation represented by a square Boolean matrix. -/
def Edge {n : Nat}
    (A : Matrix n n)
    (source target : Fin n) :
    Prop :=
  Matrix.entry A source target = true

/-- Finite directed walk through a Boolean relation matrix. -/
def IsWalkFrom {n : Nat}
    (A : Matrix n n) :
    Fin n → List (Fin n) → Fin n → Prop
  | source, [], target => source = target
  | source, next :: rest, target =>
      Matrix.Edge A source next ∧
        Matrix.IsWalkFrom A next rest target

/-- A positive-length closed walk starting and ending at `start`. -/
def CycleAt {n : Nat}
    (A : Matrix n n)
    (start : Fin n) :
    Prop :=
  ∃ path : List (Fin n),
    path ≠ [] ∧ Matrix.IsWalkFrom A start path start

/-- A square Boolean relation matrix has some directed cycle. -/
def HasCycle {n : Nat}
    (A : Matrix n n) :
    Prop :=
  ∃ start : Fin n, Matrix.CycleAt A start

@[simp] theorem edge_iff_entry {n : Nat}
    (A : Matrix n n)
    (source target : Fin n) :
    Matrix.Edge A source target ↔
      Matrix.entry A source target = true :=
  Iff.rfl

@[simp] theorem isWalkFrom_nil {n : Nat}
    (A : Matrix n n)
    (source target : Fin n) :
    Matrix.IsWalkFrom A source [] target ↔ source = target :=
  Iff.rfl

@[simp] theorem isWalkFrom_cons {n : Nat}
    (A : Matrix n n)
    (source next target : Fin n)
    (rest : List (Fin n)) :
    Matrix.IsWalkFrom A source (next :: rest) target ↔
      Matrix.Edge A source next ∧
        Matrix.IsWalkFrom A next rest target :=
  Iff.rfl

theorem walk_nil {n : Nat}
    (A : Matrix n n)
    (source : Fin n) :
    Matrix.IsWalkFrom A source [] source :=
  rfl

theorem walk_cons {n : Nat}
    {A : Matrix n n}
    {source next target : Fin n}
    {rest : List (Fin n)}
    (hedge : Matrix.Edge A source next)
    (hrest : Matrix.IsWalkFrom A next rest target) :
    Matrix.IsWalkFrom A source (next :: rest) target :=
  ⟨hedge, hrest⟩

theorem walk_single {n : Nat}
    {A : Matrix n n}
    {source target : Fin n}
    (hedge : Matrix.Edge A source target) :
    Matrix.IsWalkFrom A source [target] target :=
  ⟨hedge, rfl⟩

theorem walk_append {n : Nat}
    {A : Matrix n n}
    {source middle target : Fin n}
    {left right : List (Fin n)}
    (hleft : Matrix.IsWalkFrom A source left middle)
    (hright : Matrix.IsWalkFrom A middle right target) :
    Matrix.IsWalkFrom A source (left ++ right) target := by
  induction left generalizing source with
  | nil =>
      cases hleft
      exact hright
  | cons next rest ih =>
      rcases hleft with ⟨hedge, hrest⟩
      exact ⟨hedge, ih hrest⟩

theorem cycleAt_of_loop {n : Nat}
    {A : Matrix n n}
    {start : Fin n}
    (hedge : Matrix.Edge A start start) :
    Matrix.CycleAt A start := by
  refine ⟨[start], ?_, ?_⟩
  · simp
  · exact Matrix.walk_single hedge

theorem cycleAt_of_two_step {n : Nat}
    {A : Matrix n n}
    {source target : Fin n}
    (hforward : Matrix.Edge A source target)
    (hback : Matrix.Edge A target source) :
    Matrix.CycleAt A source := by
  refine ⟨[target, source], ?_, ?_⟩
  · simp
  · exact ⟨hforward, ⟨hback, rfl⟩⟩

theorem cycleAt_of_walks {n : Nat}
    {A : Matrix n n}
    {source target : Fin n}
    {forward back : List (Fin n)}
    (hforward : Matrix.IsWalkFrom A source forward target)
    (hback : Matrix.IsWalkFrom A target back source)
    (hnonempty : forward ++ back ≠ []) :
    Matrix.CycleAt A source := by
  exact
    ⟨forward ++ back, hnonempty,
      Matrix.walk_append hforward hback⟩

theorem hasCycle_of_cycleAt {n : Nat}
    {A : Matrix n n}
    {start : Fin n}
    (hcycle : Matrix.CycleAt A start) :
    Matrix.HasCycle A :=
  ⟨start, hcycle⟩

theorem hasCycle_of_loop {n : Nat}
    {A : Matrix n n}
    {start : Fin n}
    (hedge : Matrix.Edge A start start) :
    Matrix.HasCycle A :=
  Matrix.hasCycle_of_cycleAt
    (Matrix.cycleAt_of_loop hedge)

theorem hasCycle_of_two_step {n : Nat}
    {A : Matrix n n}
    {source target : Fin n}
    (hforward : Matrix.Edge A source target)
    (hback : Matrix.Edge A target source) :
    Matrix.HasCycle A :=
  Matrix.hasCycle_of_cycleAt
    (Matrix.cycleAt_of_two_step hforward hback)

end Matrix

end Boolean
