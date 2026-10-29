-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.CommonContractiveBoundaryLaw.Variante20900e0d87ee413e81f0f993284475e065e59a5e37c267fa86fddf6d7f9271f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e20900e0d87ee413e81f0f993284475e065e59a5e37c267fa86fddf6d7f9271f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.CommonContractiveBoundaryLaw.Variante20900e0d87ee413e81f0f993284475e065e59a5e37c267fa86fddf6d7f9271f","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"e20900e0d87ee413e81f0f993284475e065e59a5e37c267fa86fddf6d7f9271f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/Contraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Common contractive boundary law

One invariant law and one uniform factor cover the registered schedules.  The
certificate states asymptotic convergence in law, not finite path equality.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.CommonContractiveBoundaryLaw.Variante20900e0d87ee413e81f0f993284475e065e59a5e37c267fa86fddf6d7f9271f

namespace Mathematics.StratifiedBoundary

structure CommonContractiveBoundaryLaw
    (Schedule Measure Law : Type u) where
  invariantLaw : Law
  applyKernel : Schedule → Measure → Measure
  distance : Measure → Measure → Nat
  lawAsMeasure : Law → Measure
  contractionNumerator : Nat
  contractionDenominator : Nat
  contractionStrict :
    contractionNumerator < contractionDenominator
  invariant :
    ∀ schedule,
      applyKernel schedule (lawAsMeasure invariantLaw) =
        lawAsMeasure invariantLaw
  uniformlyContractive :
    ∀ schedule left right,
      contractionDenominator *
          distance
            (applyKernel schedule left)
            (applyKernel schedule right) ≤
        contractionNumerator * distance left right

end Mathematics.StratifiedBoundary
