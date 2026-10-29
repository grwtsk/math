import Mathematics.Geometry.Primitive

/-!
# Continuity channel

This signature exposes exactly which sequences are called Cauchy and which
points are proposed as their limits.  Completeness and uniqueness are
separate assumptions; neither follows from incidence or order by definition.
-/

namespace Mathematics.Geometry

universe u

/-- Bare sequential continuity data for a point carrier. -/
structure ContinuitySignature (Point : Type u) where
  cauchy : (Nat → Point) → Prop
  convergesTo : (Nat → Point) → Point → Prop

/-- Every declared Cauchy sequence has a represented limit. -/
def SequentialCompleteness
    {Point : Type u}
    (continuity : ContinuitySignature Point) : Prop :=
  ∀ sequence,
    continuity.cauchy sequence →
      ∃ limit, continuity.convergesTo sequence limit

/-- A represented sequence has at most one declared limit. -/
def SequentialLimitUniqueness
    {Point : Type u}
    (continuity : ContinuitySignature Point) : Prop :=
  ∀ sequence first second,
    continuity.convergesTo sequence first →
    continuity.convergesTo sequence second →
      first = second

end Mathematics.Geometry
