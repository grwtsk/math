# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OddUpperRowDyadicSourceAudit.Variant234a5154961fe817a7e7ae65ce3c34b44fb63634319547ac0888549796c76393

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a25bf5126de2b16d4583388e2d0b961e6ab1fa76` · SHA-256 `add42a4e35ece9f65a68d4a9ec1357df7d2ab9c171d9e1d4400a385b2e186ae0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OddUpperRowDyadic.Variant7c2330cb9189bddd4828413aec4193d6069f3145408f559a94c867721e9a254b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c2330cb9189bddd4828413aec4193d6069f3145408f559a94c867721e9a254b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.OddUpperRowDyadic.Variant7c2330cb9189bddd4828413aec4193d6069f3145408f559a94c867721e9a254b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7c2330cb9189bddd4828413aec4193d6069f3145408f559a94c867721e9a254b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/OddUpperRowDyadicSourceAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OddUpperRowDyadic.Variant7c2330cb9189bddd4828413aec4193d6069f3145408f559a94c867721e9a254b

#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_zero
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_half_padding
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_half_padding
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_two_difference
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_two_difference
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.dyadic_upper_row
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.dyadic_upper_row
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_telescope
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_telescope
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_dyadic_tail_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_dyadic_tail_zero
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_eq_dyadic
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_eq_dyadic
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.dyadicCutoff_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.dyadicCutoff_le
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.positive_odd_sum_split
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.positive_odd_sum_split
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.clipped_odd_upper_row_eq
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.clipped_odd_upper_row_eq
#print FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.full_odd_upper_row_eq
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.full_odd_upper_row_eq
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9869590373958f005d6513aa1f053df512091ac33bfc172a4c688ebd4563dc82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OddUpperRowDyadicSourceAudit/Variant234a5154961fe817a7e7ae65ce3c34b44fb63634319547ac0888549796c76393.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
