import Mathematics.Geometry.Kakeya.Tube

/-!
# Finite Kakeya tube families

Finiteness is intrinsic: a family is indexed by `Fin count`.  It is not an
arbitrary proposition attached to an otherwise unconstrained list.
-/

namespace Mathematics.Geometry.Kakeya

/-- A finite family of exact tubes in one fixed ambient dimension. -/
structure FiniteTubeFamily (dimension : Nat) where
  count : Nat
  tube : Fin count → Tube dimension

namespace FiniteTubeFamily

/-- The union of all exact tube carriers in the family. -/
def carrier {dimension : Nat} (family : FiniteTubeFamily dimension) :
    Set (AmbientPoint dimension) :=
  ⋃ index, (family.tube index).carrier

theorem mem_carrier_iff {dimension : Nat}
    (family : FiniteTubeFamily dimension)
    (point : AmbientPoint dimension) :
    point ∈ family.carrier ↔
      ∃ index : Fin family.count, (family.tube index).Contains point := by
  simp [carrier]

theorem carrier_nonempty_of_count_positive {dimension : Nat}
    (family : FiniteTubeFamily dimension)
    (positive : 0 < family.count) :
    family.carrier.Nonempty := by
  let index : Fin family.count := ⟨0, positive⟩
  refine ⟨(family.tube index).center, ?_⟩
  exact (family.mem_carrier_iff _).2 ⟨index, (family.tube index).center_mem⟩

end FiniteTubeFamily

end Mathematics.Geometry.Kakeya
