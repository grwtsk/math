# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualStrictWindowAudit.Variantbe859d8ac22ef0a0022ec4f8c5e3da6e842a66dfa9cb842358282954c954c92e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b593f50ce8f5bc3775b106e84ca4663b3e4dd3c` · SHA-256 `be3bbc4c24f92a7d74282c9d636ec8c0b264b641c8ca08c1c5a193b759eb906b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualStrictWindow.Variant0ee59ba848e694ebd13a71842479d9f53d9368334cdacf24219ab9ca3fd201f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ee59ba848e694ebd13a71842479d9f53d9368334cdacf24219ab9ca3fd201f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualStrictWindow.Variant0ee59ba848e694ebd13a71842479d9f53d9368334cdacf24219ab9ca3fd201f3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0ee59ba848e694ebd13a71842479d9f53d9368334cdacf24219ab9ca3fd201f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T205033Z-1791319833046570000/SourceActualStrictWindowAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualStrictWindow


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualStrictWindow.Variant0ee59ba848e694ebd13a71842479d9f53d9368334cdacf24219ab9ca3fd201f3

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_cutoff_square_gap
#print axioms FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_cutoff_square_gap
#check FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_quotient_lower
#print axioms FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_quotient_lower
#check FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_first_strict_cell_mem
#print axioms FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_first_strict_cell_mem
#check FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_integer_box_mem
#print axioms FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_integer_box_mem
#check FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_log_window
#print axioms FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_log_window
#check FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_real_rectangle
#print axioms FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_real_rectangle
#check FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_rectangle_source_support
#print axioms FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_rectangle_source_support
set_option pp.proofs true
#print FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_cutoff_square_gap
#print FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_quotient_lower
#print FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_first_strict_cell_mem
#print FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_integer_box_mem
#print FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_log_window
#print FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_real_rectangle
#print FormalResearch.RiemannHypothesis.SourceActualStrictWindow.actual_strict_rectangle_source_support
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c33a2a7152ff0423f9c40a678b48f0b6a5735975977d43b7c522117d043c0d50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualStrictWindowAudit/Variantbe859d8ac22ef0a0022ec4f8c5e3da6e842a66dfa9cb842358282954c954c92e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
