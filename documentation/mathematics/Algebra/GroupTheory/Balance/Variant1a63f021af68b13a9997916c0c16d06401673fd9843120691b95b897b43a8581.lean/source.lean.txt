-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ArchimedeanBalance.Variant8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ArchimedeanBalance.Variant8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295","mathematical_subject":"Algebra.Groups","original_sha256":"8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/Balance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.Symbol

/-!
# Archimedean balance

The balance records how the archimedean ratio is paired with every admitted
finite place.  Existence is cut-local; naturality under enlargement is a
separate certificate.
-/


namespace GRWTSK.Algebra.GroupTheory.ArchimedeanBalance.Variant8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295

namespace Mathematics.SemiLocalDefect.Hardy

open scoped BigOperators

universe uPrime uSymbol

structure ArchimedeanBalance
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (quasiInner : QuasiInnerClass Symbol)
    (cut : Finset Prime) where
  residual : Symbol
  allocation : Prime → Symbol
  archimedean_factorization :
    profile.archimedeanRatio =
      residual *
        ∏ prime ∈ cut, allocation prime
  paired_quasiInner :
    ∀ prime ∈ cut,
      quasiInner.member
        (allocation prime *
          profile.finiteRatio prime)
  residualHardyCondition : Prop
  residualHardyConditionProof :
    residualHardyCondition
  digest : BalanceDigest

structure ArchimedeanBalanceExistence
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (quasiInner : QuasiInnerClass Symbol)
    (cut : Finset Prime) where
  balance :
    ArchimedeanBalance
      profile quasiInner cut

structure ArchimedeanBalanceNaturality
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {profile :
      SemiLocalSymbolProfile Prime Symbol}
    {quasiInner : QuasiInnerClass Symbol}
    {source target : Finset Prime}
    (sourceBalance :
      ArchimedeanBalance
        profile quasiInner source)
    (targetBalance :
      ArchimedeanBalance
        profile quasiInner target) where
  source_subset : source ⊆ target
  retainedPairingCompatible :
    ∀ prime ∈ source,
      sourceBalance.allocation prime =
        targetBalance.allocation prime
  residualTransition : Prop
  residualTransitionProof :
    residualTransition

end Mathematics.SemiLocalDefect.Hardy
