# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TypesAxioms.Variant91c8fe81fa766a51b89f997432991f5a1f27673836bc2468c8ac29ebf462a014

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9da163262fa470a04870b8299085bcda39dc1ab8` · SHA-256 `f93f20671542ce0c221d1e5bf28e6c8903092e69f210baa53c33524a949628e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPoleMomentAnnihilation.Variantccfa1ae665e820254a6cf92b4f973c609f691498f914040bc366a38d22b544fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ccfa1ae665e820254a6cf92b4f973c609f691498f914040bc366a38d22b544fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SourceActualPoleMomentAnnihilation.Variantccfa1ae665e820254a6cf92b4f973c609f691498f914040bc366a38d22b544fb","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ccfa1ae665e820254a6cf92b4f973c609f691498f914040bc366a38d22b544fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/pole-annihilation/TypesAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPoleMomentAnnihilation

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPoleMomentAnnihilation.Variantccfa1ae665e820254a6cf92b4f973c609f691498f914040bc366a38d22b544fb

set_option autoImplicit false
set_option pp.fullNames true
set_option pp.explicit true
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_plain_pole_derivative_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_plain_pole_derivative_integrable
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_plain_pole_derivative_integral_zero
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_plain_pole_derivative_integral_zero
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_log_pole_derivative_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_log_pole_derivative_integrable
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_log_pole_derivative_integral_zero
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_log_pole_derivative_integral_zero
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_mellin_pole_derivative_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_mellin_pole_derivative_integrable
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_mellin_pole_derivative_integral_zero
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_mellin_pole_derivative_integral_zero
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorDensity
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorDensity
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorPairing
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorPairing
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorDensity_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiFloorDensity_integrable
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiContinuousPairing_eq_psi_floor
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actualPsiContinuousPairing_eq_psi_floor
#check FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_leading_full_complement_sub_psi_floor_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation.actual_leading_full_complement_sub_psi_floor_abs_le
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1342f6da405a85387fe57e18bb1cd62fd68be311979e1e7c04d17eae91a5fbd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TypesAxioms/Variant91c8fe81fa766a51b89f997432991f5a1f27673836bc2468c8ac29ebf462a014.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
