-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SomeBinaryLogicMatrix.Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SomeBinaryLogicMatrix.Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee","mathematical_subject":"Computation.DataStructures","original_sha256":"6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.AST.Core
import Surface.Legacy.BinaryLogicMatrix.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SomeBinaryLogicMatrix.Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

open Surface.AST

structure SomeBinaryLogicMatrix where
  rows : Nat
  cols : Nat
  matrix : BinaryLogicMatrix rows cols

def bitNot (b : Bool) : Bool :=
  if b then false else true

def xorBit (a b : Bool) : Bool :=
  a != b

def xorWord : List Bool → List Bool → List Bool
  | [], [] => []
  | a :: as, b :: bs => xorBit a b :: xorWord as bs
  | _, _ => []

def repeatWord (n : Nat) (w : List Bool) : List Bool :=
  match n with
  | 0 => []
  | Nat.succ k => w ++ repeatWord k w

def word010 : List Bool :=
  [false, true, false]

def word0110 : List Bool :=
  [false, true, true, false]

def word1001 : List Bool :=
  [true, false, false, true]

def word01 : List Bool :=
  [false, true]

def word10 : List Bool :=
  [true, false]

theorem split0110_reverse_symmetric :
    word0110.reverse = word0110 := by
  decide

theorem split0110_inverts_to_1001 :
    word0110.map bitNot = word1001 := by
  decide

theorem originalWord_eq_010 :
    word010 = [false, true, false] := by
  rfl

theorem splitWord_eq_0110 :
    word0110 = [false, true, true, false] := by
  rfl

theorem someBinaryLogicMatrix_has_matrix
    (M : SomeBinaryLogicMatrix) :
    Nonempty (BinaryLogicMatrix M.rows M.cols) :=
  ⟨M.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
