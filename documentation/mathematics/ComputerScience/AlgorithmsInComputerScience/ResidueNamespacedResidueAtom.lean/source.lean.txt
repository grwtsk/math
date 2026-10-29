-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueAtom.Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ResidueAtom.Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c","mathematical_subject":"Computation.DataStructures","original_sha256":"d8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Residue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueAtom.Variantd8f3cc322559952eb56ea697f5569a5d546e64fdb58f714fbd0feaf35c8b976c

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

inductive ResidueAtom where
  | kakeyaMedoidNotKakeyaTheorem
  | weightedMemoryNotProof
  | retrievalContextNotAuthority
  | ringInverseMissing
  | semiringOnlyUntilInverseDefined
  | sourceTreeProjectionMayEraseEdges
  | runtimePressureNotReasoningAuthority
  | toolTransitionWeightNotCorrectness
  | gistFactExtractionNotVerifiedFact
  | boundaryResidueUnclosed
  | externalMemoryPaperNotRepoAuthority
  | medoidSelectorNotTargetSettlement
deriving DecidableEq, Repr

def ResidueAtom.key : ResidueAtom -> String
  | .kakeyaMedoidNotKakeyaTheorem => "kakeya_medoid_not_kakeya_theorem"
  | .weightedMemoryNotProof => "weighted_memory_not_proof"
  | .retrievalContextNotAuthority => "retrieval_context_not_authority"
  | .ringInverseMissing => "ring_inverse_missing"
  | .semiringOnlyUntilInverseDefined => "semiring_only_until_inverse_defined"
  | .sourceTreeProjectionMayEraseEdges => "source_tree_projection_may_erase_edges"
  | .runtimePressureNotReasoningAuthority =>
      "runtime_pressure_not_reasoning_authority"
  | .toolTransitionWeightNotCorrectness =>
      "tool_transition_weight_not_correctness"
  | .gistFactExtractionNotVerifiedFact =>
      "gist_fact_extraction_not_verified_fact"
  | .boundaryResidueUnclosed => "boundary_residue_unclosed"
  | .externalMemoryPaperNotRepoAuthority =>
      "external_memory_paper_not_repo_authority"
  | .medoidSelectorNotTargetSettlement =>
      "medoid_selector_not_target_settlement"

def RequiredResidues : List ResidueAtom :=
  [ .kakeyaMedoidNotKakeyaTheorem
  , .weightedMemoryNotProof
  , .retrievalContextNotAuthority
  , .ringInverseMissing
  , .semiringOnlyUntilInverseDefined
  , .sourceTreeProjectionMayEraseEdges
  , .runtimePressureNotReasoningAuthority
  , .toolTransitionWeightNotCorrectness
  , .gistFactExtractionNotVerifiedFact
  , .boundaryResidueUnclosed
  , .externalMemoryPaperNotRepoAuthority
  , .medoidSelectorNotTargetSettlement
  ]

theorem RequiredResidues_count :
    RequiredResidues.length = 12 := by
  rfl

theorem RequiredResidues_complete (a : ResidueAtom) :
    a ∈ RequiredResidues := by
  cases a <;> simp [RequiredResidues]

structure ResidueClass where
  atom : Option ResidueAtom
  magnitude : Nat
deriving DecidableEq, Repr

namespace ResidueClass

def zero : ResidueClass :=
  { atom := none, magnitude := 0 }

def ofAtom (a : ResidueAtom) (magnitude : Nat) : ResidueClass :=
  { atom := some a, magnitude := magnitude }

def add (r s : ResidueClass) : ResidueClass :=
  { atom := match r.atom with
      | some a => some a
      | none => s.atom
    magnitude := r.magnitude + s.magnitude }

def closed (r : ResidueClass) : Prop :=
  r.magnitude = 0

theorem zero_closed :
    zero.closed := by
  rfl

end ResidueClass

structure ResidueLedger where
  atoms : List ResidueAtom
deriving DecidableEq, Repr

namespace ResidueLedger

def empty : ResidueLedger :=
  { atoms := [] }

def emit (L : ResidueLedger) (a : ResidueAtom) : ResidueLedger :=
  { atoms := a :: L.atoms }

def contains (L : ResidueLedger) (a : ResidueAtom) : Prop :=
  a ∈ L.atoms

theorem emit_contains (L : ResidueLedger) (a : ResidueAtom) :
    (L.emit a).contains a := by
  simp [emit, contains]

end ResidueLedger

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
