import Surface.AST.Core

namespace Surface

namespace AST

structure Slug where
  value : String
deriving Repr

namespace Slug

def Nonempty (slug : Slug) : Prop :=
  slug.value ≠ ""

end Slug

structure TrustedDeclaration where
  fullName : String
  trusted : Bool
  nonemptyName : fullName ≠ ""

def slugOfDeclaration (d : TrustedDeclaration) : Slug where
  value := d.fullName

def TrustedDeclarationValid (d : TrustedDeclaration) : Prop :=
  d.trusted = true ∧ d.fullName ≠ ""

theorem slug_nonempty_for_trusted_declaration
    {d : TrustedDeclaration} :
    TrustedDeclarationValid d ->
      Slug.Nonempty (slugOfDeclaration d) := by
  intro h
  exact h.2

end AST

end Surface
