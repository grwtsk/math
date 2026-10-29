-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variant68836e454b47019c96b8235cdb60ae3c7d28d5f5b61894abda4dfc184005de88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68836e454b47019c96b8235cdb60ae3c7d28d5f5b61894abda4dfc184005de88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Kind.Variant68836e454b47019c96b8235cdb60ae3c7d28d5f5b61894abda4dfc184005de88","mathematical_subject":"Foundations.Unclassified","original_sha256":"68836e454b47019c96b8235cdb60ae3c7d28d5f5b61894abda4dfc184005de88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/ProofStrategy/Kind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-! # Governed proof-strategy vocabulary -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variant68836e454b47019c96b8235cdb60ae3c7d28d5f5b61894abda4dfc184005de88

namespace Mathematics.ProofStrategy

open Mathematics

inductive Kind
  | directConstruction
  | introduction
  | application
  | caseAnalysis
  | structuralInduction
  | wellFoundedInduction
  | contradiction
  | exFalso
  | rewriting
  | congruence
  | extensionality
  | witnessConstruction
  | uniqueness
  | quotientInduction
  | finiteEnumeration
  | normalization
  | decisionProcedure
  | reflection
  | orderReasoning
  | algebraicCalculation
  | classicalChoice
  | dependencyDelegation
  deriving DecidableEq, Inhabited

def Kind.id : Kind → ProofStrategyId
  | .directConstruction => ⟨"proof-strategy:direct-construction"⟩
  | .introduction => ⟨"proof-strategy:introduction"⟩
  | .application => ⟨"proof-strategy:application"⟩
  | .caseAnalysis => ⟨"proof-strategy:case-analysis"⟩
  | .structuralInduction => ⟨"proof-strategy:structural-induction"⟩
  | .wellFoundedInduction => ⟨"proof-strategy:well-founded-induction"⟩
  | .contradiction => ⟨"proof-strategy:contradiction"⟩
  | .exFalso => ⟨"proof-strategy:ex-falso"⟩
  | .rewriting => ⟨"proof-strategy:rewriting"⟩
  | .congruence => ⟨"proof-strategy:congruence"⟩
  | .extensionality => ⟨"proof-strategy:extensionality"⟩
  | .witnessConstruction => ⟨"proof-strategy:witness-construction"⟩
  | .uniqueness => ⟨"proof-strategy:uniqueness"⟩
  | .quotientInduction => ⟨"proof-strategy:quotient-induction"⟩
  | .finiteEnumeration => ⟨"proof-strategy:finite-enumeration"⟩
  | .normalization => ⟨"proof-strategy:normalization"⟩
  | .decisionProcedure => ⟨"proof-strategy:decision-procedure"⟩
  | .reflection => ⟨"proof-strategy:reflection"⟩
  | .orderReasoning => ⟨"proof-strategy:order-reasoning"⟩
  | .algebraicCalculation => ⟨"proof-strategy:algebraic-calculation"⟩
  | .classicalChoice => ⟨"proof-strategy:classical-choice"⟩
  | .dependencyDelegation => ⟨"proof-strategy:dependency-delegation"⟩

end Mathematics.ProofStrategy
