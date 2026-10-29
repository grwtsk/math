-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TripleId.Varianteac6c23f0cd2ec077a438048a5a3e25b05bedad0f56d5a77455790dbb540fe3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eac6c23f0cd2ec077a438048a5a3e25b05bedad0f56d5a77455790dbb540fe3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TripleId.Varianteac6c23f0cd2ec077a438048a5a3e25b05bedad0f56d5a77455790dbb540fe3d","mathematical_subject":"Computation.DataStructures","original_sha256":"eac6c23f0cd2ec077a438048a5a3e25b05bedad0f56d5a77455790dbb540fe3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit0/Bit0/Bit1/Bit1/M506970656c696e652f43656e7465722f42726169645461786f6e6f6d792e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f43656e7465722f42726169644e6f6465732e6c65616e

/- source-tree-label: STL1|L|addr=0000011|role=proof_code_atom|slug=pipeline-center-braidtaxonomy|owner=canonical_owner|core=Pipeline/Center/BraidTaxonomy.lean|leaf=M506970656c696e652f43656e7465722f42726169645461786f6e6f6d792e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TripleId.Varianteac6c23f0cd2ec077a438048a5a3e25b05bedad0f56d5a77455790dbb540fe3d

set_option autoImplicit false

namespace Think.Braid.Taxonomy

inductive TripleId where
  | T0 | T1 | T2 | T3 | T4 | T5 | T6 | T7 | T8
deriving DecidableEq, Repr

def TripleId.all : List TripleId :=
  [.T0, .T1, .T2, .T3, .T4, .T5, .T6, .T7, .T8]

def TripleId.code : TripleId -> String
  | .T0 => "T0"
  | .T1 => "T1"
  | .T2 => "T2"
  | .T3 => "T3"
  | .T4 => "T4"
  | .T5 => "T5"
  | .T6 => "T6"
  | .T7 => "T7"
  | .T8 => "T8"

def declaredTripleIds : List String :=
  TripleId.all.map TripleId.code

theorem declaredTripleIds_has_nine :
    declaredTripleIds.length = 9 := rfl

structure Triple where
  abstractSource : AbstractNode
  concreteMiddle : ConcreteNode
  abstractTarget : AbstractNode
deriving Repr

def declaredBraid : List Triple := [
  ⟨.A0, .C0, .A1⟩,
  ⟨.A1, .C1, .A2⟩,
  ⟨.A2, .C2, .A3⟩,
  ⟨.A3, .C3, .A4⟩,
  ⟨.A4, .C4, .A5⟩,
  ⟨.A5, .C5, .A6⟩,
  ⟨.A6, .C6, .A7⟩,
  ⟨.A7, .C7, .A8⟩,
  ⟨.A8, .C8, .A0⟩
]

theorem declaredBraid_has_nine : declaredBraid.length = 9 := by rfl

end Think.Braid.Taxonomy
