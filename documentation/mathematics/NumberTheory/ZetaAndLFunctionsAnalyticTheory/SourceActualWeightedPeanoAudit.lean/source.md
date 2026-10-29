# Source Actual Weighted Peano Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33da7210c7a4bb412f917141ab32dedb41afdbb2` · SHA-256 `34844a75ca6ff0e023a224d9c72d6756df1db386b8c99ec2af9a228df544427e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualWeightedPeano

/-! Dedicated exact declaration and transitive-axiom audit. -/

set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourceActualWeightedPeano
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check weightedCorrelation_contDiff_two
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print weightedCorrelation_contDiff_two
#print axioms weightedCorrelation_contDiff_two

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check actual_correlation_deriv_zero
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print actual_correlation_deriv_zero
#print axioms actual_correlation_deriv_zero

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check weightedCorrelation_zero
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print weightedCorrelation_zero
#print axioms weightedCorrelation_zero

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check weightedCorrelation_deriv_zero
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print weightedCorrelation_deriv_zero
#print axioms weightedCorrelation_deriv_zero

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check weightedCorrelation_peano
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print weightedCorrelation_peano
#print axioms weightedCorrelation_peano

end FormalResearch.RiemannHypothesis.SourceActualWeightedPeano
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6913353453eb9ee5088233af197c01b7130a390a28f12382a9b5684474703c39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualWeightedPeanoAudit/Variant34844a75ca6ff0e023a224d9c72d6756df1db386b8c99ec2af9a228df544427e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
