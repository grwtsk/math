-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AnchoredPrimeCutInsertPrime.Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AnchoredPrimeCutInsertPrime.Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/PrimeCutGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PrimeUniverse
import Mathlib.Data.Finset.Card

/-!
# Finite prime-cut insertion

One edge inserts one registered finite prime.  The archimedean anchor remains
present because it is structural rather than a mutable finite coordinate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AnchoredPrimeCutInsertPrime.Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3

namespace Mathematics.SemiLocalDefect

def AnchoredPrimeCut.insertPrime
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime)
    (prime_registered : prime ∈ cut.primeUniverse.primes) :
    AnchoredPrimeCut Prime where
  primeUniverse := cut.primeUniverse
  cutId := cut.cutId ++ "+prime"
  primes := insert prime cut.primes
  subset_universe :=
    Finset.insert_subset prime_registered cut.subset_universe

theorem insertPrime_preserves_archimedean_anchor
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime)
    (prime_registered : prime ∈ cut.primeUniverse.primes) :
    (cut.insertPrime prime prime_registered).contains
      (.archimedean : Place Prime) :=
  archimedean_anchor_present _

theorem insertPrime_finite_places
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime)
    (prime_registered : prime ∈ cut.primeUniverse.primes) :
    (cut.insertPrime prime prime_registered).primes =
      insert prime cut.primes := by
  simp [AnchoredPrimeCut.insertPrime]

theorem insertPrime_card
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime)
    (prime_registered : prime ∈ cut.primeUniverse.primes)
    (new_prime : prime ∉ cut.primes) :
    (cut.insertPrime prime prime_registered).primes.card =
      cut.primes.card + 1 := by
  simpa [AnchoredPrimeCut.insertPrime] using
    Finset.card_insert_of_notMem new_prime

end Mathematics.SemiLocalDefect
