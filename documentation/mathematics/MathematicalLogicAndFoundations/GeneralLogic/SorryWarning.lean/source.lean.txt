import Init

/- Intentionally unsound synthetic input. A warning or sorryAx must never be
   treated as accepted mathematics, even if the compiler returns zero. -/
example : False := by
  sorry
