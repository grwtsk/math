# Phrase Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75ac650fd466ec6f4d84f777bc8835e2f942510e` · SHA-256 `f74cdadff14d75ddc76a3e77526ac3be9822f8744ce3ca61f88e04d7f30d3f63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhraseConnection.Variant0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PhraseConnection.Variant0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a","mathematical_subject":"Computation.DataStructures","original_sha256":"0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Phrase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.TokenGraph

/-! # Finite ordered phrase candidates and reading classes -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhraseConnection.Variant0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a

namespace Mathematics.SemanticTokenization

inductive PhraseConnection
  | surfaceAdjacent
  | certifiedSyntactic (edgeId : StableId)
  deriving DecidableEq, Repr

structure PhraseCandidate (text : TextCarrier) where
  phraseId : StableId
  spans : List (Span text)
  spans_nonempty : spans ≠ []
  ordered :
    spans.Pairwise
      (fun left right => left.start ≤ right.start)
  connection : PhraseConnection

inductive ReadingClass
  | literal
  | technical
  | collocational
  | metaphorical
  | idiomatic
  | mixed
  | unknown
  deriving DecidableEq, Repr

structure ClassifiedReading (text : TextCarrier) where
  readingId : StableId
  phrase : PhraseCandidate text
  context : Context
  readingClass : ReadingClass
  externalReading : ExternalContextualReading text
  context_exact :
    externalReading.context.contextId = context.contextId

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fd294afac8aa6050fc29c4b862683ebedfb228b7c9e931a2e371c2c9cfb3f6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Phrase/Variant233d8c8cce8c6c68fbaac9b72ecd8eec7de7f52a98f3918796228cba0d328dc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
