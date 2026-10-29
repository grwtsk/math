import Mathematics.Discovery.OpenElement
import Mathematics.Prismatic.EulerData

/-!
# Parameterized target: prime-local Euler extraction

This is a proposition-valued target for supplied data, not a closed
conjecture element.  A genuine open element must first bind one concrete
candidate and one frozen specification.
-/

namespace Mathematics.Prismatic

universe u

/-- Exact local extraction target; no certificate is embedded in the seed. -/
def LocalEulerExtractionTarget
    {Coefficient : Type u} [CommRing Coefficient]
    (specification : LocalEulerSpecification Coefficient)
    (candidate : CandidateLocalEulerDatum Coefficient) : Prop :=
  specification.accepts candidate.prime.value candidate.factor

end Mathematics.Prismatic
