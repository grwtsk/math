import Mathematics.Boolean.Identity

/-!
# Boolean absorption neighborhood

Absorption and left-commutation follow from the distributive lattice already
carried by `BooleanAlgebra`.
-/

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

@[simp] theorem join_absorption (a b : B) :
    a ⊔ (a ⊓ b) = a := by simp

@[simp] theorem meet_absorption (a b : B) :
    a ⊓ (a ⊔ b) = a := by simp

theorem join_left_commutative (a b c : B) :
    a ⊔ (b ⊔ c) = b ⊔ (a ⊔ c) :=
  sup_left_comm a b c

theorem meet_left_commutative (a b c : B) :
    a ⊓ (b ⊓ c) = b ⊓ (a ⊓ c) :=
  inf_left_comm a b c

end Mathematics.Boolean
