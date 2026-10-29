# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCorrespondence.Variant5924943e982212993e806b79ce8e6e5bb2bf0b47adbf43ef0f91d9389b0242bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `839cf3fdec08d65895b473d14aaf9fdfdb420d62` · SHA-256 `5d18ac12a0a9dab1babf1250b2c9983dceec547e1759c9be74dccacfb6b4e223`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteArithmeticCorrespondence.Variant9cbdd44a71078eb60d0bf30ac8ab318c785f0456d0d2ab8c9f534aa9704ef33f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9cbdd44a71078eb60d0bf30ac8ab318c785f0456d0d2ab8c9f534aa9704ef33f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteArithmeticCorrespondence.Variant9cbdd44a71078eb60d0bf30ac8ab318c785f0456d0d2ab8c9f534aa9704ef33f","mathematical_subject":"Foundations.Unclassified","original_sha256":"9cbdd44a71078eb60d0bf30ac8ab318c785f0456d0d2ab8c9f534aa9704ef33f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Arithmetic/FiniteCorrespondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Exact finite arithmetic correspondence

A stable trace acquires arithmetic meaning only through this separate
certificate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteArithmeticCorrespondence.Variant9cbdd44a71078eb60d0bf30ac8ab318c785f0456d0d2ab8c9f534aa9704ef33f

namespace Mathematics.StratifiedBoundary

structure FiniteArithmeticCorrespondence
    (TraceValue ArithmeticValue : Type u) where
  traceValue : TraceValue
  arithmeticValue : ArithmeticValue
  realize : TraceValue → ArithmeticValue
  exact :
    realize traceValue = arithmeticValue
  sourceChangeIsomorphismInvariantRef : String
  exactTraceFormulaRef : String

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12d5769e3b03b4582d465b9b8cbbef643f02cc56f9b32dd51fdad29bc85c8d50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCorrespondence/Variant5924943e982212993e806b79ce8e6e5bb2bf0b47adbf43ef0f91d9389b0242bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
