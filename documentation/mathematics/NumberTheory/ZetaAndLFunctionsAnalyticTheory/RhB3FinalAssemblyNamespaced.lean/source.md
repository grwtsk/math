# Rh B3 Final Assembly Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd0f0628e355c50b9ca3ce0bdfeeb016565685cb` · SHA-256 `e185aeecaf96315807d9923e15d4c282218efda441ae87ff219f8af1bce344a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Assembly.Variantca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Assembly.Variantca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/tests/rh_b3_3_final_assembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Assembly


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Assembly.Variantca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34

#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.positive_candidate_eq
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_meromorphic
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_analytic_positive_real
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.meromorphic_laplace_pole

example :
    MeromorphicOn
      FormalResearch.RiemannHypothesis.Laplace.Continuation.continuedTransform
      {s : ℂ | 0 < s.re} :=
  FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_meromorphic

example :
    FormalResearch.RiemannHypothesis.Laplace.Assembly.MeromorphicLaplacePoleObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Assembly.meromorphic_laplace_pole
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44143af32085ef066bcfc3afa8940b442cb2fd6b3a6e61d0c404a599c60cb5e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhB33FinalAssembly/Variant204f874a5619138f1918d4315984d81a00c1c7364256303e34c3fe882cc18ec7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
