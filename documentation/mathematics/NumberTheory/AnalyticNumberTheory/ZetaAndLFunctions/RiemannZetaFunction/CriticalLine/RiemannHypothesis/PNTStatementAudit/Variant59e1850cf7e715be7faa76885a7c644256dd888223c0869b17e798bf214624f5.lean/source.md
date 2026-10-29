# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PNTStatementAudit.Variant59e1850cf7e715be7faa76885a7c644256dd888223c0869b17e798bf214624f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fa427924f068ec97b9e33af2f9b42fe3475ce58` · SHA-256 `2b7294c8d0225cf5573b09f7d1ab9fe2653d05ab0327e97327c427787de26742`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePNTInput.Variantbfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePNTInput.Variantbfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/pnt-rate-one/PNTStatementAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePNTInput.Variantbfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb

open Filter Asymptotics

example : ∃ c > 0,
    (Chebyshev.psi - id) =O[Filter.atTop]
      fun (x : ℝ) ↦ x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10)) :=
  _root_.MediumPNT

#check @MediumPNT
#print axioms MediumPNT
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5bfa079b1e05b400204326d8ed0b608282b70ff89684e3203eaba49d96f9080 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PNTStatementAudit/Variant59e1850cf7e715be7faa76885a7c644256dd888223c0869b17e798bf214624f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
