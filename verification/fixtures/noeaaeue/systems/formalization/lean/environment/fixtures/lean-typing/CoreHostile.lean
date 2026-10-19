import Init

/-! Deliberately unaccepted placeholder and axiom controls for the inventory. -/
namespace TypingHostile
axiom localAx : True
theorem usesAx : True := localAx
theorem placeholder : True := by sorry
theorem clean : True := True.intro
namespace First
def identity (n : Nat) := n
end First
namespace Second
def identity (n : Nat) := n
end Second
end TypingHostile
