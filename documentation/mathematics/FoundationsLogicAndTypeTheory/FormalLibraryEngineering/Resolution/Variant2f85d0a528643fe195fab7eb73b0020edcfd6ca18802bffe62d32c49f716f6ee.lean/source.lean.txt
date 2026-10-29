/-!
# Neutral positive quantization resolutions

`ResolutionBits` is the shared lower-level representation of a finite,
strictly positive bit resolution. It contains no matrix semantics, assurance
status, evidence authority, or compiler policy. Domain and assurance modules
may depend on this carrier without depending on one another.
-/

namespace Surface.Quantization

/-- A finite, strictly positive number of quantization bits. -/
structure ResolutionBits where
  value : Nat
  positive : 0 < value
  deriving Repr

instance : DecidableEq ResolutionBits :=
  fun left right =>
    if h : left.value = right.value then
      isTrue (by cases left; cases right; simp_all)
    else
      isFalse (fun equality => h (congrArg ResolutionBits.value equality))

/-- The positivity proof carried by every resolution. -/
theorem ResolutionBits.value_pos
    (resolution : ResolutionBits) :
    0 < resolution.value :=
  resolution.positive

end Surface.Quantization
