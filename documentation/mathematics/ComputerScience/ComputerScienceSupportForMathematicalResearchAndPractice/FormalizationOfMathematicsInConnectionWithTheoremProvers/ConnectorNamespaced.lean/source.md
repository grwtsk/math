# Connector Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fabc8ccd13ed89278a638e753af323575ed3733` · SHA-256 `934eaf57f962430dbffb8bb91a1c85d5c43cc2473225b03ef2bec40d8428dace`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConnectorDescriptor.Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ConnectorDescriptor.Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd","mathematical_subject":"Foundations.Unclassified","original_sha256":"2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Sonin/Connector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConnectorDescriptor.Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd

namespace Mathematics.SemiLocalDefect.Sonin

structure ConnectorDescriptor where
  connectorRef : String
  sourceSpaceRef : String
  targetSpaceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninConnector

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff1385e78d9dbdf0db0828fa5c8878efd7c889eb2c9b007fff1a7ca5d5668dbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connector/Variant056b1bfeec9bf1c18fb687c1edceb21b77d2b96edce10de2ac2d7b0b447e9249.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
