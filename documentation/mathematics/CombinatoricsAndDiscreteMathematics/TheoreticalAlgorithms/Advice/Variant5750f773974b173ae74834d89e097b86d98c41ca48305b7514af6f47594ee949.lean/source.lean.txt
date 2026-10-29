import Mathematics.Resolution.Result

/-!
# Advice is not authority

Heuristic guidance has its own constructor and cannot inhabit a certificate
constructor without an explicit, independently checked conversion.
-/

namespace Mathematics.Resolution

universe u v

structure ResolutionAdvice (Obligation : Type u) where
  suggested : List Obligation
  summaryDigest : String

inductive ResolverArtifact
    (Obligation : Type u)
    (Certificate : Type v)
  | advice (value : ResolutionAdvice Obligation)
  | observation (digest : String)
  | certificate (value : Certificate)

theorem advice_constructor_ne_certificate
    (advice : ResolutionAdvice Obligation)
    (certificate : Certificate) :
    ResolverArtifact.advice advice ≠
      ResolverArtifact.certificate certificate := by
  intro equal
  cases equal

end Mathematics.Resolution
