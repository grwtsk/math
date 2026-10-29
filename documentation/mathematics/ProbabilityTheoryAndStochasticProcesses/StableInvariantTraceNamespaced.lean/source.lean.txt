-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.StableFiniteInvariantTrace.Variant1ca464da275c27c1847c502d36200da43dda854d62b56db3a22a799b406d3af1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ca464da275c27c1847c502d36200da43dda854d62b56db3a22a799b406d3af1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.StableFiniteInvariantTrace.Variant1ca464da275c27c1847c502d36200da43dda854d62b56db3a22a799b406d3af1","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"1ca464da275c27c1847c502d36200da43dda854d62b56db3a22a799b406d3af1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/StableInvariantTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.FiniteCrossedProduct

/-!
# Stable finite invariant trace

Positivity, traciality, normalization, and automorphism invariance are
independent proof fields.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.StableFiniteInvariantTrace.Variant1ca464da275c27c1847c502d36200da43dda854d62b56db3a22a799b406d3af1

namespace Mathematics.StratifiedBoundary

structure StableFiniteInvariantTrace
    (Observable GroupElement : Type u) where
  trace : Observable → Int
  positiveCone : Observable → Prop
  multiply : Observable → Observable → Observable
  unit : Observable
  act : GroupElement → Observable → Observable
  positive :
    ∀ observable,
      positiveCone observable →
        0 ≤ trace observable
  tracial :
    ∀ left right,
      trace (multiply left right) =
        trace (multiply right left)
  normalized :
    trace unit = 1
  automorphismInvariant :
    ∀ groupElement observable,
      trace (act groupElement observable) =
        trace observable
  sampledRealizationIndependent : Bool := true
  sampledRealizationIndependent_exact :
    sampledRealizationIndependent = true

end Mathematics.StratifiedBoundary
