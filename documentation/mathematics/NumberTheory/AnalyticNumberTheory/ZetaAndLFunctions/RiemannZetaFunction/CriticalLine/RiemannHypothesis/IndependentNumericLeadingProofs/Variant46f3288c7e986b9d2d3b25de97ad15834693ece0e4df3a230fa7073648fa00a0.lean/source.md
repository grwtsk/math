# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IndependentNumericLeadingProofs.Variant46f3288c7e986b9d2d3b25de97ad15834693ece0e4df3a230fa7073648fa00a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1c0393512db7f36a0308a6e344080101a905441` · SHA-256 `3196b789188f4bea9b018f64e00148f216553e608d758ce7c4e830e5f96ce813`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceNumericLeadingTail.Variant38f798c891f418e1775eaf021eb616bf31f23976d2b969f7c1e74c3728fa810d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38f798c891f418e1775eaf021eb616bf31f23976d2b969f7c1e74c3728fa810d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceNumericLeadingTail.Variant38f798c891f418e1775eaf021eb616bf31f23976d2b969f7c1e74c3728fa810d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"38f798c891f418e1775eaf021eb616bf31f23976d2b969f7c1e74c3728fa810d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/independent-numeric-leading-tail/IndependentNumericLeadingProofs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceNumericLeadingTail

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceNumericLeadingTail.Variant38f798c891f418e1775eaf021eb616bf31f23976d2b969f7c1e74c3728fa810d

#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.actualLeadingRenormalizedTail
#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.leadingFixedErrorBudget
#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.leadingFixedErrorBudget_nonneg
#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.actual_cutoff_logs_le_scale
#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.fullKappaShortBudget_le_fixed
#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.renormalized_tail_sub_actual_leading_abs_le
#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.renormalized_tail_sub_actual_leading_abs_le_fixed
#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.actual_leading_upper_iff_renormalized_upper_at_radius
#print FormalResearch.RiemannHypothesis.SourceLeadingTailBudget.estimate_of_actual_leading_signed_tail
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.leadingFixedErrorBudget_le_numeric
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.renormalized_tail_sub_leading_abs_le_numeric
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.actual_leading_complete_pairing_numeric_comparisons
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.residual_sub_actual_leading_sub_zeta_abs_lt_numeric
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.actual_leading_upper_iff_complete_pairing_upper_at_radius
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.estimate_of_actual_leading_signed_tail_numeric
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f6b514b4ec65e3759b0d1f14af6973523643dafcc7b0f204ac8c5e203a6f38f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IndependentNumericLeadingProofs/Variant46f3288c7e986b9d2d3b25de97ad15834693ece0e4df3a230fa7073648fa00a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
