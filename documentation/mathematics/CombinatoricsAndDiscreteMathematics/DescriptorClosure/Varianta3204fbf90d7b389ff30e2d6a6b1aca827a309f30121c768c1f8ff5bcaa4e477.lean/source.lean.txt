-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DescriptorRelationClosed.Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DescriptorRelationClosed.Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/DescriptorClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PointUniverse
import Mathematics.Discovery.OpenElement
import Mathlib.Data.Finset.Basic

/-!
# Open target: intrinsic descriptor closure

The target asks for the least finite point set containing a seed, every
descriptor-referenced point, and every target of an admitted relation whose
source has entered the set.  It is a low-dependency finite closure obligation;
it does not use names, paths, embeddings, or model similarity.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DescriptorRelationClosed.Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129

namespace Mathematics.Concept

def DescriptorRelationClosed
    (pointUniverse : PointUniverse)
    (points : Finset ElementId) : Prop :=
  points ⊆
      (pointUniverse.points.map MathematicalPoint.pointId).toFinset ∧
  (∀ descriptor ∈ pointUniverse.descriptors.descriptors,
    ∀ pointId ∈ descriptor.disposition.pointReferences,
      pointId ∈ points) ∧
  (∀ relation ∈ pointUniverse.relations,
    relation.source ∈ points →
      relation.target ∈ points)

def LeastDescriptorRelationClosure
    (pointUniverse : PointUniverse)
    (seed closure : Finset ElementId) : Prop :=
  seed ⊆ closure ∧
  DescriptorRelationClosed pointUniverse closure ∧
  ∀ candidate,
    seed ⊆ candidate →
    DescriptorRelationClosed pointUniverse candidate →
      closure ⊆ candidate

/-- Closed finite target emitted as an immutable proposal element. -/
def IntrinsicDescriptorClosureStatement : Prop :=
  ∀ (pointUniverse : PointUniverse)
    (seed : Finset ElementId),
      seed ⊆
        (pointUniverse.points.map
          MathematicalPoint.pointId).toFinset →
      ∃ closure,
        LeastDescriptorRelationClosure
          pointUniverse seed closure

/-- Immutable proposal-only element for the finite closure target. -/
def intrinsicDescriptorClosureOpenElement :
    Discovery.OpenConjectureElement
      IntrinsicDescriptorClosureStatement where
  elementId := {
    id := {
      value := "open:concept:intrinsic-descriptor-closure"
    }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Intrinsic descriptor and relation closure"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Concept.IntrinsicDescriptorClosureStatement"
  leanDeclarationName_nonempty := by
    decide

end Mathematics.Concept
