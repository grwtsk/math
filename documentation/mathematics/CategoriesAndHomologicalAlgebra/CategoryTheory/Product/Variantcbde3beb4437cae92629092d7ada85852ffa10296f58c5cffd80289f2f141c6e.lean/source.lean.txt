import Folder.Basic

/-!
# Folder.Category.Product

Radiation role: category-interface
BinaryMatrix spine: This module supplies categorical interfaces used by sheaf and monodromy layers around the BinaryMatrix spine.
Ontology: category.product
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Category

open CategoryTheory

universe u v

structure BinaryProduct
    (C : Type u) [CategoryTheory.Category.{v} C]
    (A B : C) where
  obj : C
  fst : obj ⟶ A
  snd : obj ⟶ B
  lift : {X : C} → (X ⟶ A) → (X ⟶ B) → (X ⟶ obj)
  lift_fst : {X : C} → (f : X ⟶ A) → (g : X ⟶ B) → lift f g ≫ fst = f
  lift_snd : {X : C} → (f : X ⟶ A) → (g : X ⟶ B) → lift f g ≫ snd = g
  lift_unique :
    {X : C} → (h : X ⟶ obj) → (f : X ⟶ A) → (g : X ⟶ B) →
      h ≫ fst = f →
      h ≫ snd = g →
      h = lift f g

class HasChosenBinaryProducts
    (C : Type u) [CategoryTheory.Category.{v} C] where
  product : ∀ A B : C, BinaryProduct C A B

end Category
end Folder
