# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsOrdinary.Variant1e0e7896a75bd375a20aa23a26da132c9321da821fed8a9532f7343d98228171

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b185af8630d8ae97fd902442bb202a2893d167d8` · SHA-256 `a28f7f155854a1811d5811aac412e04b18c2fae1db8989cbc76a85db6016e865`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPoleMomentAnnihilation.Variant0f623f2cd6a1c2fa4db0cb0b39e230b763057df20cbbfb7d0f245d1b831e8b90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f623f2cd6a1c2fa4db0cb0b39e230b763057df20cbbfb7d0f245d1b831e8b90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SourceActualPoleMomentAnnihilation.Variant0f623f2cd6a1c2fa4db0cb0b39e230b763057df20cbbfb7d0f245d1b831e8b90","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0f623f2cd6a1c2fa4db0cb0b39e230b763057df20cbbfb7d0f245d1b831e8b90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/pole-annihilation/ProofsOrdinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPoleMomentAnnihilation

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPoleMomentAnnihilation.Variant0f623f2cd6a1c2fa4db0cb0b39e230b763057df20cbbfb7d0f245d1b831e8b90

set_option autoImplicit false
set_option pp.all true
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_plain_pole_derivative_integrable
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_plain_pole_derivative_integral_zero
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_log_pole_derivative_integrable
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_log_pole_derivative_integral_zero
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_mellin_pole_derivative_integrable
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_mellin_pole_derivative_integral_zero
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorDensity
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorPairing
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorDensity_integrable
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiContinuousPairing_eq_psi_floor
#print FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_leading_full_complement_sub_psi_floor_abs_le
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7903042e2836950cfcae97bd05d0906f7e7a688dae8dd6856cf8d2aff54445ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProofsOrdinary/Variant1e0e7896a75bd375a20aa23a26da132c9321da821fed8a9532f7343d98228171.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
