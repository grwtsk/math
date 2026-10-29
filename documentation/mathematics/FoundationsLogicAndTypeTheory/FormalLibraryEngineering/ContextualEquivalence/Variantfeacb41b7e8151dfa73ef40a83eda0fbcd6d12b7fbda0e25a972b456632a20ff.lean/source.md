# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContextualEquivalence.Variantfeacb41b7e8151dfa73ef40a83eda0fbcd6d12b7fbda0e25a972b456632a20ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `757521293064f465ceee4ceb80cb69771cf14884` · SHA-256 `feacb41b7e8151dfa73ef40a83eda0fbcd6d12b7fbda0e25a972b456632a20ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Concept

/-! # Exact and tolerable contextual equivalence remain distinct -/

namespace Mathematics.SemanticTokenization

structure ExactContextualEquivalenceCertificate
    (text : TextCarrier)
    (left right : ConceptProfile text) where
  context_exact :
    left.context.contextId = right.context.contextId
  core_meaning_exact :
    left.coreMeaning.meaningId =
      right.coreMeaning.meaningId
  protected_features_exact :
    left.protectedFeatures.features =
      right.protectedFeatures.features
  evidence : EvidenceBundle text

structure TolerableContextualEquivalenceCertificate
    (text : TextCarrier)
    (left right : ConceptProfile text) where
  tolerance : Nat
  observedDistance : Nat
  within_tolerance :
    observedDistance ≤ tolerance
  protectedFeaturePolicyId : StableId
  evidence : EvidenceBundle text

inductive EquivalenceStrength
  | exact
  | tolerable
  deriving DecidableEq, Repr

def EquivalenceStrength.mayDefineQuotient :
    EquivalenceStrength → Bool
  | .exact => true
  | .tolerable => false

@[simp] theorem approximate_relation_not_quotient_without_equivalence :
    EquivalenceStrength.tolerable.mayDefineQuotient = false :=
  rfl

theorem exact_core_meaning_trans
    {text : TextCarrier}
    {left middle right : ConceptProfile text}
    (first :
      ExactContextualEquivalenceCertificate text left middle)
    (second :
      ExactContextualEquivalenceCertificate text middle right) :
    left.coreMeaning.meaningId =
      right.coreMeaning.meaningId :=
  first.core_meaning_exact.trans second.core_meaning_exact

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6eeeb888fc2ec2416c63540ba74e9920f37b294449151a45e80648d38cb5bf85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextualEquivalence/Variantfeacb41b7e8151dfa73ef40a83eda0fbcd6d12b7fbda0e25a972b456632a20ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
