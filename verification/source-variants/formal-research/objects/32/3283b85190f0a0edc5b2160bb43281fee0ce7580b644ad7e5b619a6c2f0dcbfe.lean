/-!
# Heterogeneous lists indexed by judgments

`IndexedAll P js` contains one value of `P j` for every judgment `j` in
`js`.  It is the premise container shared by raw derivations and tree plans.
-/

namespace Atomize.Formal

universe u v

/-- One indexed value for every element of a list. -/
inductive IndexedAll {α : Type u} (P : α → Type v) : List α → Type (max u v)
  | nil : IndexedAll P []
  | cons {j : α} {js : List α} : P j → IndexedAll P js → IndexedAll P (j :: js)

namespace IndexedAll

/-- Pointwise transport across an indexed family. -/
def map
    {α : Type u}
    {P Q : α → Type v}
    (f : ∀ j, P j → Q j) :
    ∀ {js}, IndexedAll P js → IndexedAll Q js
  | _, .nil => .nil
  | _, .cons head tail => .cons (f _ head) (map f tail)

end IndexedAll

end Atomize.Formal
