# Metadata Assertion — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5dbe0e607248a6749dac3bfaea50626b5275f0e` · SHA-256 `c2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.MetadataType

/-! # Span-indexed typed metadata assertions -/

namespace Mathematics.SemanticTokenization

structure MetadataAssertion
    (text : TextCarrier)
    (kind : MetadataType) where
  assertionId : StableId
  span : Span text
  value : MetadataValue kind

structure SomeMetadataAssertion (text : TextCarrier) where
  kind : MetadataType
  assertion : MetadataAssertion text kind

structure MetadataProfile (text : TextCarrier) where
  assertions : List (SomeMetadataAssertion text)

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98f414bf896831b730fda992b8483590243c07d9d6e3d675ebc4d45f553a0676 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MetadataAssertion/Variantc2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
