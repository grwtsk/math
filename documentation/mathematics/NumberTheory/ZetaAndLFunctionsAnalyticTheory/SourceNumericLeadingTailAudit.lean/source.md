# Source Numeric Leading Tail Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08f2bbb839171ebf1f1a32c8771f3a07be084a17` · SHA-256 `8973a843156fd4739de516667ab6ff165062c4c76a4256ff4f789c1ea4d917e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceNumericLeadingTail

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.leadingFixedErrorBudget_le_numeric
#print axioms FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.leadingFixedErrorBudget_le_numeric
#check FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.renormalized_tail_sub_leading_abs_le_numeric
#print axioms FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.renormalized_tail_sub_leading_abs_le_numeric
#check FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.actual_leading_complete_pairing_numeric_comparisons
#print axioms FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.actual_leading_complete_pairing_numeric_comparisons
#check FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.residual_sub_actual_leading_sub_zeta_abs_lt_numeric
#print axioms FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.residual_sub_actual_leading_sub_zeta_abs_lt_numeric
#check FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.actual_leading_upper_iff_complete_pairing_upper_at_radius
#print axioms FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.actual_leading_upper_iff_complete_pairing_upper_at_radius
#check FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.estimate_of_actual_leading_signed_tail_numeric
#print axioms FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.estimate_of_actual_leading_signed_tail_numeric
set_option pp.proofs true
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.leadingFixedErrorBudget_le_numeric
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.renormalized_tail_sub_leading_abs_le_numeric
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.actual_leading_complete_pairing_numeric_comparisons
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.residual_sub_actual_leading_sub_zeta_abs_lt_numeric
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.actual_leading_upper_iff_complete_pairing_upper_at_radius
#print FormalResearch.RiemannHypothesis.SourceNumericLeadingTail.estimate_of_actual_leading_signed_tail_numeric
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8d28559d215a1650c5286e25d43a1657e682d09ae45dd8144836df4d23d1b73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNumericLeadingTailAudit/Variant8973a843156fd4739de516667ab6ff165062c4c76a4256ff4f789c1ea4d917e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
