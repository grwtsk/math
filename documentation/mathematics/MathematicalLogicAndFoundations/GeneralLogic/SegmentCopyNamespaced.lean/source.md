# Segment Copy Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ad68a6fb1ec07e3ca4661a9557465c6ab0dd247` · SHA-256 `7baf536982c2fbd53315f8acd6ba1593897e2d2863ea804737ee44cc5dfa28f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SegmentCopyExactStatement.Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SegmentCopyExactStatement.Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67","mathematical_subject":"Foundations.Unclassified","original_sha256":"bbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/ConstructionConsequences/SegmentCopy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Construction
import Mathematics.Geometry.CorpusElement

/-!
# Exact consequence of a segment-copy constructor

Historical coordinate: Book I, proposition 2.  This theorem checks the exact
output contract; it does not manufacture or assume existence of a constructor.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SegmentCopyExactStatement.Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67

namespace Mathematics.Geometry.ConstructionConsequences

open Mathematics.Discovery

def SegmentCopyExactStatement : Prop :=
  ∀ (Point : Type)
    (congruence : CongruenceSignature Point)
    (constructor : SegmentCopyConstructor Point congruence)
    (origin : Point)
    (model : Segment Point),
      congruence.segmentCongruent
        ⟨origin, constructor.endpoint origin model⟩
        model

def segmentCopyExactOpenElement :
    OpenConjectureElement SegmentCopyExactStatement where
  elementId := {
    id := { value := "open:geometry:construction:segment-copy-exact" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "An exact segment-copy constructor meets its congruence contract"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.ConstructionConsequences.SegmentCopyExactStatement"
  leanDeclarationName_nonempty := by
    decide

def segmentCopyCongruenceDependency :
    DependencyEdge segmentCopyExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:segment-copy:congruence"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .congruence congruenceAssumptionId
  role := .statementVocabulary

def segmentCopyConstructionDependency :
    DependencyEdge segmentCopyExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:segment-copy:certificate"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .construction constructionAssumptionId
  role := .constructionCertificate

def segmentCopyExactSeed :
    EuclideanSeed SegmentCopyExactStatement where
  proposal := segmentCopyExactOpenElement
  provenance := [
    HistoricalProvenance.bookProposition
      .one
      2
      (by decide)
      "Book I, proposition 2"
      "Conditional exactness consequence; constructor existence is not claimed."
  ]
  dependencies := [
    segmentCopyCongruenceDependency,
    segmentCopyConstructionDependency
  ]

theorem segmentCopyExact :
    SegmentCopyExactStatement := by
  intro Point congruence constructor origin model
  exact constructor.copiedSegmentCongruent origin model

def segmentCopyExactTheoremElement :
    LeanTheoremElement segmentCopyExactOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:construction:segment-copy-exact" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := segmentCopyExactOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := segmentCopyExact

def segmentCopyExactCorpusItem :
    KernelProvedEuclideanItem segmentCopyExactSeed where
  theoremElement := segmentCopyExactTheoremElement

end Mathematics.Geometry.ConstructionConsequences
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=958ac51921e2f0c8ca2c5abb0e8e70bc44ed7b4a6d7180cf45377d094f5e6647 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentCopy/Variant0dba1f8af02e17f02fef0624954fe6b87e475b973f6eccb8e31fb99e2fae3cd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
