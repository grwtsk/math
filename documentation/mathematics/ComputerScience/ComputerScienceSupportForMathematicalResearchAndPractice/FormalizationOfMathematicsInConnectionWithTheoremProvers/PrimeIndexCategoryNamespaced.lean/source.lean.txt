-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeStateInclusion.Variant017d92446d17caa1c9647c6387ed28dfc96ac59d8f14e3fcc6632e83501e7858","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"017d92446d17caa1c9647c6387ed28dfc96ac59d8f14e3fcc6632e83501e7858","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrimeStateInclusion.Variant017d92446d17caa1c9647c6387ed28dfc96ac59d8f14e3fcc6632e83501e7858","mathematical_subject":"Foundations.Unclassified","original_sha256":"017d92446d17caa1c9647c6387ed28dfc96ac59d8f14e3fcc6632e83501e7858","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/PrimeIndexCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Prismatic.FinitePrimeState

/-!
# Inclusion category of finite certified prime states

Objects are finite prime states.  Morphisms are exact inclusions preserving
every pre-existing local fiber and the represented global object.  Restriction
is the opposite inclusion; neither direction discovers a prime.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeStateInclusion.Variant017d92446d17caa1c9647c6387ed28dfc96ac59d8f14e3fcc6632e83501e7858

namespace Mathematics.Prismatic

/-- Inclusion of one finite certified prime state into another. -/
structure PrimeStateInclusion
    (source target : FinitePrimeState) where
  subset :
    source.primes ⊆ target.primes
  fibersPreserved :
    ∀ prime (membership : prime ∈ source.primes),
      target.fiberAddress prime (subset membership) =
        source.fiberAddress prime membership
  globalObjectPreserved :
    target.globalObject = source.globalObject
  inclusionCertificate : ObjectAddress

/-- Identity inclusion, with an explicit certificate address. -/
def PrimeStateInclusion.identity
    (state : FinitePrimeState)
    (certificate : ObjectAddress) :
    PrimeStateInclusion state state where
  subset := by
    intro prime membership
    exact membership
  fibersPreserved := by
    intro prime membership
    rfl
  globalObjectPreserved := rfl
  inclusionCertificate := certificate

/-- Composition of certified finite-prime inclusions. -/
def PrimeStateInclusion.compose
    {first second third : FinitePrimeState}
    (left : PrimeStateInclusion first second)
    (right : PrimeStateInclusion second third)
    (certificate : ObjectAddress) :
    PrimeStateInclusion first third where
  subset := by
    intro prime membership
    exact right.subset (left.subset membership)
  fibersPreserved := by
    intro prime membership
    have middleMembership : prime ∈ second.primes :=
      left.subset membership
    have targetMembership : prime ∈ third.primes :=
      right.subset middleMembership
    calc
      third.fiberAddress prime targetMembership =
          second.fiberAddress prime middleMembership :=
        right.fibersPreserved prime middleMembership
      _ = first.fiberAddress prime membership :=
        left.fibersPreserved prime membership
  globalObjectPreserved :=
    right.globalObjectPreserved.trans left.globalObjectPreserved
  inclusionCertificate := certificate

/--
Restriction from `large` to `small` is represented by an inclusion of the
retained state into the larger state, so discarded fibers cannot masquerade as
new data.
-/
abbrev PrimeStateRestriction
    (large small : FinitePrimeState) :=
  PrimeStateInclusion small large

end Mathematics.Prismatic
