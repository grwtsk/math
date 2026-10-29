# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MangoldtPrimeDisclosureAudit.Variantd2ff8383348df39c285235d55c7e5032e13d78732d18cb451b9fe30d6f53a645

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ff19676615d089636005ca89dfa2fd704a4b95a` · SHA-256 `7fbe8da192664fe173042dfd0f91d4a855612d762614d2e74f88b5757ff66b0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtPrimeDisclosure.Variant80830a7b487a5ca99cff0583a9ee0be343c154f2f10b5bd54543eaf3c6fca241","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80830a7b487a5ca99cff0583a9ee0be343c154f2f10b5bd54543eaf3c6fca241","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceMangoldtPrimeDisclosure.Variant80830a7b487a5ca99cff0583a9ee0be343c154f2f10b5bd54543eaf3c6fca241","mathematical_subject":"Foundations.Unclassified","original_sha256":"80830a7b487a5ca99cff0583a9ee0be343c154f2f10b5bd54543eaf3c6fca241","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/prime-power-refinement/MangoldtPrimeDisclosureAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMangoldtPrimeDisclosure


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtPrimeDisclosure.Variant80830a7b487a5ca99cff0583a9ee0be343c154f2f10b5bd54543eaf3c6fca241

#print RH16MangoldtPrimeDisclosure.disclosedMangoldtRow
#print axioms RH16MangoldtPrimeDisclosure.disclosedMangoldtRow
#print RH16MangoldtPrimeDisclosure.freshMangoldtRow
#print axioms RH16MangoldtPrimeDisclosure.freshMangoldtRow
#print RH16MangoldtPrimeDisclosure.freshPowerInventory
#print axioms RH16MangoldtPrimeDisclosure.freshPowerInventory
#print RH16MangoldtPrimeDisclosure.disclosedMangoldtRow_insert
#print axioms RH16MangoldtPrimeDisclosure.disclosedMangoldtRow_insert
#print RH16MangoldtPrimeDisclosure.freshMangoldtRow_eq_exact_power_weight
#print axioms RH16MangoldtPrimeDisclosure.freshMangoldtRow_eq_exact_power_weight
#print RH16MangoldtPrimeDisclosure.mem_freshPowerInventory_iff
#print axioms RH16MangoldtPrimeDisclosure.mem_freshPowerInventory_iff
#print RH16MangoldtPrimeDisclosure.freshMangoldtRow_at_prime_power
#print axioms RH16MangoldtPrimeDisclosure.freshMangoldtRow_at_prime_power
#print RH16MangoldtPrimeDisclosure.fresh_profile_eq_complete_power_sum
#print axioms RH16MangoldtPrimeDisclosure.fresh_profile_eq_complete_power_sum
#print RH16MangoldtPrimeDisclosure.disclosedMangoldtRow_eq_actual_on_long
#print axioms RH16MangoldtPrimeDisclosure.disclosedMangoldtRow_eq_actual_on_long
#print RH16MangoldtPrimeDisclosure.disclosed_profile_eq_actual_mangoldtAt
#print axioms RH16MangoldtPrimeDisclosure.disclosed_profile_eq_actual_mangoldtAt
#print RH16MangoldtPrimeDisclosure.disclosedBetaRow
#print axioms RH16MangoldtPrimeDisclosure.disclosedBetaRow
#print RH16MangoldtPrimeDisclosure.freshBetaRow
#print axioms RH16MangoldtPrimeDisclosure.freshBetaRow
#print RH16MangoldtPrimeDisclosure.disclosedBetaRow_insert
#print axioms RH16MangoldtPrimeDisclosure.disclosedBetaRow_insert
#print RH16MangoldtPrimeDisclosure.disclosedReadoutAt
#print axioms RH16MangoldtPrimeDisclosure.disclosedReadoutAt
#print RH16MangoldtPrimeDisclosure.disclosedReadoutAt_fresh_prime
#print axioms RH16MangoldtPrimeDisclosure.disclosedReadoutAt_fresh_prime
#print RH16MangoldtPrimeDisclosure.disclosedReadoutAt_eq_actual
#print axioms RH16MangoldtPrimeDisclosure.disclosedReadoutAt_eq_actual
#print RH16MangoldtPrimeDisclosure.actual_readoutAt_fresh_prime
#print axioms RH16MangoldtPrimeDisclosure.actual_readoutAt_fresh_prime
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af36a0d14b79f4cca2ff7416163416000e9fcb90ba553370bb1b7125e4117f90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MangoldtPrimeDisclosureAudit/Variantd2ff8383348df39c285235d55c7e5032e13d78732d18cb451b9fe30d6f53a645.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
