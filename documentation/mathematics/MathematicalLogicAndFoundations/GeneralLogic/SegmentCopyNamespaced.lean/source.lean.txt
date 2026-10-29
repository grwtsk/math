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
