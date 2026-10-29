import Folder.Fiber.Bundle

/-!
# Folder.Fiber.TotalSpace

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.total_space
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

universe u v

def TotalSpace {Base : Type u} (B : Bundle.{u, v} Base) :
    Type (max u v) :=
  Σ b : Base, B.Fiber b

def projection {Base : Type u} (B : Bundle.{u, v} Base) :
    TotalSpace B → Base :=
  Sigma.fst

@[simp]
theorem projection_mk {Base : Type u}
    (B : Bundle.{u, v} Base)
    (b : Base)
    (x : B.Fiber b) :
    projection B ⟨b, x⟩ = b :=
  rfl

end Fiber
end Folder
