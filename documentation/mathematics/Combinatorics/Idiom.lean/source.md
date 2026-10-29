# Idiom — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2a7417a16a3b77a00e6f6874256f5a68d90e1aa` · SHA-256 `1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Concept
import Mathematics.SemanticTokenization.Reading

/-!
# Idiom certificates
-/

namespace Mathematics.SemanticTokenization

inductive ProtectedDifference
  | denotation
  | argumentStructure
  | entailment
  | conventionalTargetConcept
  | substitutionBehavior
  | registerRestriction
  | pragmaticEffect
deriving DecidableEq, Repr

structure NoncompositionalityWitness
    {cut : EvidenceCut}
    {phrase : PhraseCandidate cut}
    (literal : LiteralReading cut phrase)
    (contextual : ContextualReading cut phrase) where
  differences : Finset ProtectedDifference
  differences_nonempty : differences.Nonempty
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty

structure IdiomRestrictions where
  domains : Finset String
  registers : Finset String
  grammaticalRestrictions : Finset String
  pragmaticRestrictions : Finset String
deriving Repr

structure IdiomVariant where
  surface : String
  evidence : Finset EvidenceId
deriving DecidableEq, Repr

structure IdiomCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  contextual : ContextualReading cut phrase
  literal : LiteralReading cut phrase
  noncompositionality :
    NoncompositionalityWitness literal contextual
  coreConcept : ConceptId
  restrictions : IdiomRestrictions
  variants : Finset IdiomVariant
  conventionalityEvidence : Finset EvidenceId
  conventionalityEvidence_nonempty :
    conventionalityEvidence.Nonempty
  distinguishedFromMetaphor : Prop
  distinguishedFromCollocation : Prop

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=490d4fc3d1b909dc929754f904ddc7e02c4dcc3e65ade5c67e5c7c1e185be932 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Idiom/Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
