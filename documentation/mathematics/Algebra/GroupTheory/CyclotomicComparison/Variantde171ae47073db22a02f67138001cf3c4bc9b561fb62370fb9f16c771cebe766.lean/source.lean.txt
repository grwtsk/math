-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.PrimeIndexedActionCandidate.Variantf8073cf3d128916a6342362c66cd88d74784ac3442ac2023456f29e7368409a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8073cf3d128916a6342362c66cd88d74784ac3442ac2023456f29e7368409a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.PrimeIndexedActionCandidate.Variantf8073cf3d128916a6342362c66cd88d74784ac3442ac2023456f29e7368409a1","mathematical_subject":"Algebra.Groups","original_sha256":"f8073cf3d128916a6342362c66cd88d74784ac3442ac2023456f29e7368409a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/CyclotomicComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Prismatic.StablePointEmbedding

/-!
# Prime-indexed action and comparison candidates

A monoid action plus prime-indexed maps is not yet a cyclotomic spectrum: this
file supplies no spectrum object, genuine `S¹` action, or Tate construction.
The records below therefore retain the exact maps and proof obligations while
remaining candidates.  K/TC and prismatic/TC identifications are never inferred
from their names.
-/


namespace GRWTSK.Algebra.GroupTheory.PrimeIndexedActionCandidate.Variantf8073cf3d128916a6342362c66cd88d74784ac3442ac2023456f29e7368409a1

namespace Mathematics.Prismatic

universe u v w x

/--
The algebraic data visible before a cyclotomic-spectrum formalization: a
monoid action and one map to an externally supplied target at each certified
prime.
-/
structure PrimeIndexedActionCandidate
    (Symmetry : Type u)
    (Carrier : Type v)
    (PrimeTarget : CertifiedPrime → Type w)
    [Monoid Symmetry] where
  action : Symmetry → Carrier → Carrier
  one_action :
    ∀ value, action 1 value = value
  mul_action :
    ∀ left right value,
      action (left * right) value =
        action left (action right value)
  primeMap :
    (prime : CertifiedPrime) →
      Carrier → PrimeTarget prime
  actionDigest : Digest
  primeMapDigest : CertifiedPrime → Digest
  candidateAddress : ObjectAddress

/--
Candidate relative K/TC comparison under an explicit theorem hypothesis.  The
equivalence is real at the supplied carrier types, but this record does not by
itself prove that those types realize algebraic K-theory and TC.
-/
structure RelativeKTCComparisonCandidate
    (KTheoryCarrier : Type u)
    (TCCarrier : Type v)
    (hypothesis : Prop) where
  hypothesisProof : hypothesis
  comparison : KTheoryCarrier ≃ TCCarrier
  coefficientDigest : Digest
  henselianPairDigest : Digest
  claimedTheoremAddress : ObjectAddress
  evidenceAddress : ObjectAddress

/--
Candidate directional comparison between supplied prismatic and cyclotomic
carriers.  No inverse, equivalence, or identification of either carrier is
inferred.
-/
structure PrismaticCyclotomicComparisonCandidate
    (PrismaticCarrier : Type u)
    (CyclotomicCarrier : Type v) where
  prime : CertifiedPrime
  map : PrismaticCarrier → CyclotomicCarrier
  comparisonHypotheses : Prop
  hypothesesProved : comparisonHypotheses
  preservesFrobenius : Prop
  frobeniusCompatibilityProved : preservesFrobenius
  preservesFiltration : Prop
  filtrationCompatibilityProved : preservesFiltration
  comparisonDigest : Digest
  evidenceAddress : ObjectAddress

end Mathematics.Prismatic
