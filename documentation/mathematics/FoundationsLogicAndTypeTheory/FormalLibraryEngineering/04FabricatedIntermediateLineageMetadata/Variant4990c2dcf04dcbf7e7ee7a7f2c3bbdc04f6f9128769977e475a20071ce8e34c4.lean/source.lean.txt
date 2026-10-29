-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stage.Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Stage.Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5","mathematical_subject":"Foundations.Unclassified","original_sha256":"ab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-formal-conformance-cycle-5/reproductions/04_fabricated_intermediate_lineage_metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Derivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stage.Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5

namespace FCRS.TheoremTransfer.Cycle5LineageMetadata

def v (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-5", name, "1", "sha256:" ++ name⟩

def expectedMiddleTheoryVersion : VersionId := v "expected-middle-theory"
def expectedMiddleProposition : VersionId := v "expected-middle-proposition"
def fabricatedMiddleTheoryVersion : VersionId := v "fabricated-middle-theory"
def fabricatedMiddleProposition : VersionId := v "fabricated-middle-proposition"

example : fabricatedMiddleTheoryVersion ≠ expectedMiddleTheoryVersion := by decide
example : fabricatedMiddleProposition ≠ expectedMiddleProposition := by decide

inductive Stage where
  | source
  | middle
  | target
deriving DecidableEq

def stageNode : Stage → TransferNode
  | .source => {
      nodeArtifact := ⟨.roleTagged "cycle-5-lineage" 0 (v "source-node")⟩
      kind := .SourceTheorem
      theoryVersionArtifact := ⟨v "source-theory"⟩
      theoremArtifact := some ⟨v "source-theorem"⟩
      propositionArtifact := some ⟨v "source-proposition"⟩
      supportingArtifacts := []
    }
  | .middle => {
      nodeArtifact := ⟨.roleTagged "cycle-5-lineage" 1 (v "middle-node")⟩
      kind := .GenericIntermediate
      theoryVersionArtifact := ⟨fabricatedMiddleTheoryVersion⟩
      theoremArtifact := none
      propositionArtifact := some ⟨fabricatedMiddleProposition⟩
      supportingArtifacts := []
    }
  | .target => {
      nodeArtifact := ⟨.roleTagged "cycle-5-lineage" 2 (v "target-node")⟩
      kind := .TargetTheorem
      theoryVersionArtifact := ⟨v "target-theory"⟩
      theoremArtifact := some ⟨v "target-theorem"⟩
      propositionArtifact := some ⟨v "target-proposition"⟩
      supportingArtifacts := []
    }

inductive StageDependency : Stage → Stage → Type where
  | first : StageDependency .source .middle
  | second : StageDependency .middle .target

def fabricatedMiddleGraph : TransferDependencyGraph where
  Node := Stage
  node := stageNode
  nodeInjective := by intro a b h; cases a <;> cases b <;> simp_all [stageNode]
  nodeArtifactInjective := by intro a b h; cases a <;> cases b <;> simp_all [stageNode]
  dependsOn := StageDependency
  edge := fun {_ _} dependency => match dependency with
    | .first => ⟨v "first-edge", .Preserves, v "first", v "first-evidence"⟩
    | .second => ⟨v "second-edge", .Preserves, v "second", v "second-evidence"⟩
  dependencyRank := fun | .source => 0 | .middle => 1 | .target => 2
  rankIncreases := by intro _ _ dependency; cases dependency <;> decide
  validationPolicy := ⟨v "policy", fun _ => True⟩
  validation := fun _ => ⟨v "result", True.intro⟩

/-!
The lineage contains only the two atomic artifact IDs.  Its composite
realization accepts the graph's fabricated middle version/proposition because
there is no expected middle theory or proposition in `TranslationLineage` to
which either value could be compared.
-/
def acceptsFabricatedMiddleMetadata :
    TranslationLineageRealization fabricatedMiddleGraph
      (.composite (.atomic (v "first")) (.atomic (v "second")))
      .source .target :=
  .composite .middle
    fabricatedMiddleTheoryVersion rfl
    fabricatedMiddleProposition rfl
    (.atomic .first (Or.inl rfl))
    (.atomic .second (Or.inl rfl))

#check acceptsFabricatedMiddleMetadata

end FCRS.TheoremTransfer.Cycle5LineageMetadata
