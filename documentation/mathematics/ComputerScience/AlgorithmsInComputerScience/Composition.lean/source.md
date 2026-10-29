# Composition — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d670baf1addfdcb4a94790db726ce9ddeada0923` · SHA-256 `edf6972977bcc9d5361871f22cc2db341757caa30f7988ec308c71b23fd2feff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Phrase

/-! # Explicit composition rules and literal baselines -/

namespace Mathematics.SemanticTokenization

structure CompositionRule where
  ruleId : StableId
  headSelectionRule : StableId
  argumentBindingRule : StableId
  scopeRule : StableId
  negationRule : StableId
  modalityRule : StableId
  coordinationRule : StableId
  referenceResolutionRule : StableId
  figurativeOverrideRule : StableId
  compose :
    List String → MeaningPayload

structure CompositionCertificate (text : TextCarrier) where
  phrase : PhraseCandidate text
  context : Context
  inputs : List String
  rule : CompositionRule
  meaning : MeaningPayload
  meaning_exact :
    meaning = rule.compose inputs
  evidence : EvidenceBundle text

structure LiteralReading (text : TextCarrier) where
  composition : CompositionCertificate text
  classification : ReadingClass
  literal_or_unknown :
    classification = .literal ∨
      classification = .unknown

theorem CompositionCertificate.output_exact
    {text : TextCarrier}
    (certificate : CompositionCertificate text) :
    certificate.meaning =
      certificate.rule.compose certificate.inputs :=
  certificate.meaning_exact

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82eb9861d4dd741624e907aec9975175e05234659c1b792c2c9e41213f6bf656 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Composition/Variantedf6972977bcc9d5361871f22cc2db341757caa30f7988ec308c71b23fd2feff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
