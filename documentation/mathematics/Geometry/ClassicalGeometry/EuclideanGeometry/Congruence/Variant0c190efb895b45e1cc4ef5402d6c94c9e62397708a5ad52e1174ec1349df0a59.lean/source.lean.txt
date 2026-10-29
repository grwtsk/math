import Mathematics.Geometry.Primitive

/-!
# Congruence channel

Segment and angle congruence are comparison relations.  Reflexivity,
symmetry, transitivity, and compatibility with other geometric channels are
separate propositions.
-/

namespace Mathematics.Geometry

universe u

/-- Bare segment- and angle-congruence data. -/
structure CongruenceSignature (Point : Type u) where
  segmentCongruent : Segment Point → Segment Point → Prop
  angleCongruent : Angle Point → Angle Point → Prop

def SegmentCongruenceReflexive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ segment, congruence.segmentCongruent segment segment

def SegmentCongruenceSymmetric
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ left right,
    congruence.segmentCongruent left right →
      congruence.segmentCongruent right left

def SegmentCongruenceTransitive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ first second third,
    congruence.segmentCongruent first second →
    congruence.segmentCongruent second third →
      congruence.segmentCongruent first third

def AngleCongruenceReflexive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ angle, congruence.angleCongruent angle angle

/-- Fixed semantic meaning of an equilateral labeled triangle. -/
def IsEquilateral
    {Point : Type u}
    (congruence : CongruenceSignature Point)
    (triangle : Triangle Point) : Prop :=
  congruence.segmentCongruent
      triangle.firstSecond
      triangle.firstThird ∧
    congruence.segmentCongruent
      triangle.firstSecond
      triangle.secondThird

end Mathematics.Geometry
