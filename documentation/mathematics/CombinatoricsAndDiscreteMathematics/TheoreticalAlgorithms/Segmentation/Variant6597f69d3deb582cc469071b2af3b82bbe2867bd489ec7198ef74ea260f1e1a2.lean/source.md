# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Segmentation.Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a086040ae5882b07885fc0984e704887ee0be74e` · SHA-256 `6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Boundary

/-!
# Certified segmentation plurality
-/

namespace Mathematics.SemanticTokenization

structure CertifiedBoundaryPair
    (cut : EvidenceCut) where
  left : Span cut.text
  right : Span cut.text
  certificate : BoundaryCertificate cut left right

structure CertifiedSegmentation
    (cut : EvidenceCut) where
  tokenization : Tokenization cut.text
  boundaries : Array (CertifiedBoundaryPair cut)
  boundaryCoverage :
    ∀ index : Fin tokenization.spans.size,
      index.val + 1 < tokenization.spans.size →
      ∃ pair ∈ boundaries,
        pair.left = tokenization.spans[index] ∧
        pair.right =
          tokenization.spans[
            ⟨index.val + 1, by assumption⟩]

structure SegmentationFamily
    (cut : EvidenceCut) where
  members : Array (CertifiedSegmentation cut)
  nonempty : 0 < members.size

def UniqueSegmentation
    {cut : EvidenceCut}
    (family : SegmentationFamily cut) : Prop :=
  ∃ segmentation : CertifiedSegmentation cut,
    ∀ index : Fin family.members.size,
      family.members[index] = segmentation

inductive SegmentationStatus
    (cut : EvidenceCut)
  | unique
      (segmentation : CertifiedSegmentation cut)
      (certificate :
        ∀ family : SegmentationFamily cut,
          ∀ index : Fin family.members.size,
            family.members[index] = segmentation)
  | ambiguous
      (family : SegmentationFamily cut)

theorem ambiguity_preserves_family
    {cut : EvidenceCut}
    {family : SegmentationFamily cut}
    (status : SegmentationStatus cut)
    (equality : status = .ambiguous family) :
    0 < family.members.size := by
  exact family.nonempty

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af280018fe8e9aaf08985c7528565e918eaad6fbbf9aa587cedb10cde9959950 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
