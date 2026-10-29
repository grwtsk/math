# Noninterference Certified Stratified Presentation Change — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e2a3c06e58415237909b6f4b79a649d8ffedec7` · SHA-256 `45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Presentation.StratifiedNode

/-!
# Presentation/ordinal noninterference
-/

namespace Mathematics.StratifiedBoundary

structure CertifiedStratifiedPresentationChange
    (before after : StratifiedPresentationNode) where
  persistentIdentity :
    after.persistentIdentity = before.persistentIdentity
  ordinalProfile :
    after.ordinalProfileRef = before.ordinalProfileRef
  ordinalSemantics :
    after.normalizedStratumRef = before.normalizedStratumRef
  proposalOnly : Bool := true
  proposalOnly_exact : proposalOnly = true

theorem presentation_change_does_not_change_ordinal_semantics
    {before after : StratifiedPresentationNode}
    (change :
      CertifiedStratifiedPresentationChange before after) :
    after.normalizedStratumRef =
      before.normalizedStratumRef :=
  change.ordinalSemantics

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9fdd63f3b154eb365da9be52a1eee1768510f4f5ffa06c2fdae697d2e051e5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
