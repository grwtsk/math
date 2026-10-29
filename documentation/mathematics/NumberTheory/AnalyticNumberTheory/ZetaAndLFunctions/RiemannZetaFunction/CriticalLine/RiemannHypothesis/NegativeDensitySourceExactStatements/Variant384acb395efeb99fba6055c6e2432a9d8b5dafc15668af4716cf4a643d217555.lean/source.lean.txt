-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NegativeDensityLaplace.Variant9168f097d2dd6d821341c87964564de1847ece7d41639a84e68124d0409a19c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9168f097d2dd6d821341c87964564de1847ece7d41639a84e68124d0409a19c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NegativeDensityLaplace.Variant9168f097d2dd6d821341c87964564de1847ece7d41639a84e68124d0409a19c2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9168f097d2dd6d821341c87964564de1847ece7d41639a84e68124d0409a19c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/negative-density-source-exact-statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.NegativeDensityLaplace


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NegativeDensityLaplace.Variant9168f097d2dd6d821341c87964564de1847ece7d41639a84e68124d0409a19c2

set_option autoImplicit false

namespace NegativeDensityLaplaceExactStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability
open FormalResearch.RiemannHypothesis.SourceComparison.NegativeDensityLaplace

noncomputable section

example (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1)) (s : ℂ) (hs : 0 ≤ s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (f A : ℂ)) (Ioi 1) :=
  laplace_integrable f hf s hs

example (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1))
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ f A) (s : ℂ) (hs : 0 < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (f A : ℂ)) s :=
  laplace_analytic f hf hpos s hs

example (η A : ℝ) (s : ℂ) :
    Complex.exp (-(s - (η : ℂ)) * A) *
        ((Real.exp (-η * A) * negativeSource A : ℝ) : ℂ) =
      Complex.exp (-s * A) * (negativeSource A : ℂ) :=
  negative_tilt_eq η A s

example (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η ≤ s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (negativeSource A : ℂ)) (Ioi 1) :=
  negative_laplace_integrable η hη s hs

example (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (negativeSource A : ℂ)) s :=
  negative_laplace_analytic η hη s hs

end
end NegativeDensityLaplaceExactStatements
