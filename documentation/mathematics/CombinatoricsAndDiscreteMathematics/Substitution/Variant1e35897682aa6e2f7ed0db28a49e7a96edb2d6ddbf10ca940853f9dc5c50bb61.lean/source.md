# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Substitution.Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96f96269e0352171c182ce1632dd1cbd55ea993f` · SHA-256 `1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.ContextualEquivalence
import Mathematics.SemanticTokenization.Phrase

/-!
# Context-bound substitution and synonymy
-/

namespace Mathematics.SemanticTokenization

structure ReplacementSite
    (text : TextCarrier) where
  container : Span text
  site : Span text
  contained : container.Contains site

structure SubstitutedText where
  text : TextCarrier
  provenanceDigest : Digest
deriving Repr

structure SubstitutionCertificate
    (cut : EvidenceCut)
    (left right : PhraseCandidate cut) where
  site : ReplacementSite cut.text
  sourceContext : ContextId
  substitutedText : SubstitutedText
  grammaticalValidity : Prop
  protectedProfile : ProtectedFeatureProfile
  tolerance : ToleranceSpecification
  leftMeaning : ConceptProfile cut
  rightMeaning : ConceptProfile cut
  meaningPreserved :
    ExactContextualEquivalent
      protectedProfile leftMeaning rightMeaning ∨
    TolerablyEquivalent
      tolerance leftMeaning rightMeaning
  registerPreserved : Prop
  discourseCommitmentsPreserved : Prop
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  snapshot : SnapshotId
  snapshotMatches :
    snapshot = cut.activeSnapshot

structure ContextualSynonymyCertificate
    (cut : EvidenceCut)
    (left right : PhraseCandidate cut) where
  context : ContextId
  task : TaskId
  tolerance : ToleranceSpecification
  leftProfile : ConceptProfile cut
  rightProfile : ConceptProfile cut
  equivalence :
    TolerablyEquivalent
      tolerance leftProfile rightProfile
  substitution :
    SubstitutionCertificate cut left right

theorem synonymy_requires_substitution
    {cut : EvidenceCut}
    {left right : PhraseCandidate cut}
    (certificate :
      ContextualSynonymyCertificate cut left right) :
    Nonempty (SubstitutionCertificate cut left right) :=
  ⟨certificate.substitution⟩

structure GlobalSynonymyCertificate
    (cut : EvidenceCut)
    (left right : PhraseCandidate cut) where
  contexts : Finset ContextId
  contexts_nonempty : contexts.Nonempty
  completeForDeclaredScope : Prop
  contextualCertificates :
    ∀ context ∈ contexts,
      ContextualSynonymyCertificate cut left right

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30500eaed40e8328ffcf1ecd8baa9aef250893b4c9c69de34b10bff07052a15f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
