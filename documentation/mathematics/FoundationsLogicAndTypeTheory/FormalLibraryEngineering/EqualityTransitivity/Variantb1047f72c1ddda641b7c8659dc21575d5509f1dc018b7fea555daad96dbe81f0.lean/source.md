# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqualityTransitivity.Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cd408c09e0ae70f4450ec5976ca23d0b3135057` · SHA-256 `b1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.CorpusElement

/-!
# Common notion: equality transitivity

Historical coordinate: common notion 1.  The coordinate is provenance; the
closed proposition below is the mathematical object.
-/

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def EqualityTransitivityStatement : Prop :=
  ∀ (α : Type) (first second third : α),
    first = second →
    second = third →
      first = third

def equalityTransitivityOpenElement :
    OpenConjectureElement EqualityTransitivityStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:equality-transitivity" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Equality is transitive"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.EqualityTransitivityStatement"
  leanDeclarationName_nonempty := by
    decide

def equalityTransitivityDependency :
    DependencyEdge equalityTransitivityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:equality-transitivity:eq-trans"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Eq.trans"
  role := .proof

def equalityTransitivitySeed :
    EuclideanSeed EqualityTransitivityStatement where
  proposal := equalityTransitivityOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      1
      (by decide)
      "Common notion 1"
  ]
  dependencies := [equalityTransitivityDependency]

theorem equalityTransitivity :
    EqualityTransitivityStatement := by
  intro α first second third firstSecond secondThird
  exact firstSecond.trans secondThird

def equalityTransitivityTheoremElement :
    LeanTheoremElement equalityTransitivityOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:equality-transitivity" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := equalityTransitivityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := equalityTransitivity

def equalityTransitivityCorpusItem :
    KernelProvedEuclideanItem equalityTransitivitySeed where
  theoremElement := equalityTransitivityTheoremElement

end Mathematics.Geometry.CommonNotions
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72e00c2e73141902f8d3c6940544b0fe26d3d16732b28e49be50ec2e3ac94014 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualityTransitivity/Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
