# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMoebiusSqrtLowerAudit.Variant9b6bb6527602fe145cc9cbfc8883c7d7ed2ec74a6dfe9721affacd059f433a1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd1910b67e48c39cf641fac53046a96c3772a97e` · SHA-256 `e8729da3afee64bdd3b2d33a8b37acbf0774d46e2ea81c2c62dfe54c704d429b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMoebiusSqrtLower.Variantb0e683e6335929055ae6cb63203707ada3d06131585adaeae07b105f7a3c3efe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0e683e6335929055ae6cb63203707ada3d06131585adaeae07b105f7a3c3efe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ActualMoebiusSqrtLower.Variantb0e683e6335929055ae6cb63203707ada3d06131585adaeae07b105f7a3c3efe","mathematical_subject":"Foundations.Unclassified","original_sha256":"b0e683e6335929055ae6cb63203707ada3d06131585adaeae07b105f7a3c3efe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T190512Z-1791313512047222000/ActualMoebiusSqrtLowerAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualMoebiusSqrtLower


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMoebiusSqrtLower.Variantb0e683e6335929055ae6cb63203707ada3d06131585adaeae07b105f7a3c3efe

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check RH16IndependentChallengeNext.actualAbsMoebius_eq_squarefreeIndicator
#print axioms RH16IndependentChallengeNext.actualAbsMoebius_eq_squarefreeIndicator
#check RH16IndependentChallengeNext.actualAbsMoebius_lower_square_sieve
#print axioms RH16IndependentChallengeNext.actualAbsMoebius_lower_square_sieve
#check RH16IndependentChallengeNext.squareDivisorSqrtMass
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_quotient
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_quotient
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_scaled
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_scaled
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_le
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_le
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_le_saved
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_le_saved
#check RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower_weighted_sieve
#print axioms RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower_weighted_sieve
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_total_le
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_total_le
#check RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower
#print axioms RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower
set_option pp.proofs true
#print RH16IndependentChallengeNext.actualAbsMoebius_eq_squarefreeIndicator
#print RH16IndependentChallengeNext.actualAbsMoebius_lower_square_sieve
#print RH16IndependentChallengeNext.squareDivisorSqrtMass
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_quotient
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_scaled
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_le
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_le_saved
#print RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower_weighted_sieve
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_total_le
#print RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2eb1c90d6a0637829c9ef97c20bf00984190cf28ea59679315a341c4cb7a64e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMoebiusSqrtLowerAudit/Variant9b6bb6527602fe145cc9cbfc8883c7d7ed2ec74a6dfe9721affacd059f433a1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
