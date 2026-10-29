import Mathematics.Attention.ErrorTransform

/-!
# Controlled heterogeneous maps

This module gives the Möbius-ontology neighborhood a local name for the
theorem-bearing heterogeneous approximation already proved by the attention
kernel.  No carrier equality is erased and only the reference map is required
to be Lipschitz.
-/

namespace Mathematics.MobiusOntology

open scoped NNReal

universe u v w x

abbrev ControlledMap
    (X : Type u) (Y : Type v)
    [PseudoMetricSpace X] [PseudoMetricSpace Y] :=
  Mathematics.Attention.ControlledApproximation X Y

namespace ControlledMap

def identity
    (X : Type u) [PseudoMetricSpace X] :
    ControlledMap X X :=
  Mathematics.Attention.ControlledApproximation.id X

def comp
    {X : Type u} {Y : Type v} {Z : Type w}
    [PseudoMetricSpace X] [PseudoMetricSpace Y] [PseudoMetricSpace Z]
    (later : ControlledMap Y Z)
    (earlier : ControlledMap X Y) :
    ControlledMap X Z :=
  Mathematics.Attention.ControlledApproximation.comp later earlier

theorem comp_sound
    {X : Type u} {Y : Type v} {Z : Type w}
    [PseudoMetricSpace X] [PseudoMetricSpace Y] [PseudoMetricSpace Z]
    (later : ControlledMap Y Z)
    (earlier : ControlledMap X Y)
    (input : X) :
    nndist
        ((comp later earlier).implementation input)
        ((comp later earlier).reference input) ≤
      later.lipschitz * earlier.localError + later.localError :=
  (comp later earlier).localSound input

/--
Parenthesization preserves all proof-relevant behavior.  Proof terms need not
be propositionally equal.
-/
theorem comp_assoc_behavior
    {X : Type u} {Y : Type v} {Z : Type w} {W : Type x}
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    [PseudoMetricSpace Z] [PseudoMetricSpace W]
    (third : ControlledMap Z W)
    (second : ControlledMap Y Z)
    (first : ControlledMap X Y) :
    (comp (comp third second) first).reference =
        (comp third (comp second first)).reference ∧
      (comp (comp third second) first).implementation =
        (comp third (comp second first)).implementation ∧
      (comp (comp third second) first).localError =
        (comp third (comp second first)).localError ∧
      (comp (comp third second) first).lipschitz =
        (comp third (comp second first)).lipschitz := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact
      Mathematics.Attention.ControlledApproximation.comp_reference_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_implementation_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_error_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_lipschitz_assoc
        third second first

end ControlledMap

end Mathematics.MobiusOntology
