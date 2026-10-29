-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.Theorem.Variant83aed3997c04bbee6272078fdbfd8235168fa96ccc319b296069dff5c976a5bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83aed3997c04bbee6272078fdbfd8235168fa96ccc319b296069dff5c976a5bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.Theorem.Variant83aed3997c04bbee6272078fdbfd8235168fa96ccc319b296069dff5c976a5bf","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"83aed3997c04bbee6272078fdbfd8235168fa96ccc319b296069dff5c976a5bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/IEANTN/RosserSchoenfeld/RosserSchoenfeldZeta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect
import PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.Theorem.Variant83aed3997c04bbee6272078fdbfd8235168fa96ccc319b296069dff5c976a5bf

blueprint_comment /--
\section{The zeta function bounds of Rosser and Schoenfeld}\label{rs-zeta-sec}
-/

blueprint_comment /--
In this section we formalize the zeta function bounds of Rosser and Schoenfeld.
-/

namespace RS
@[blueprint "RS_theorem_19"
  (title := "Rosser--Schoenfeld Theorem 19")
  (statement := /--
    One has a Riemann von Mangoldt estimate with parameters 0.137, 0.443, and 1.588.
  -/)]
theorem theorem_19 : riemannZeta.Riemann_vonMangoldt_bound 0.137 0.443 1.588 := by sorry
end RS
