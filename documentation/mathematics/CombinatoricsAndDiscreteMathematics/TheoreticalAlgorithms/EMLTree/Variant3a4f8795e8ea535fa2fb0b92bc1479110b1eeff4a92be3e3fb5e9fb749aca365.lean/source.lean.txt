-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EMLTree.Variant578f5f154cefcf65f9ecb3fb943786c945834c64bbd2af32ba6a55bc1a00b35c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"578f5f154cefcf65f9ecb3fb943786c945834c64bbd2af32ba6a55bc1a00b35c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EMLTree.Variant578f5f154cefcf65f9ecb3fb943786c945834c64bbd2af32ba6a55bc1a00b35c","mathematical_subject":"Computation.DataStructures","original_sha256":"578f5f154cefcf65f9ecb3fb943786c945834c64bbd2af32ba6a55bc1a00b35c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/EMLTree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EMLTree.Variant578f5f154cefcf65f9ecb3fb943786c945834c64bbd2af32ba6a55bc1a00b35c

namespace Surface.Legacy

inductive EMLTree (k : Nat) where
  | one : EMLTree k
  | var : Fin k -> EMLTree k
  | eml : EMLTree k -> EMLTree k -> EMLTree k
deriving DecidableEq, Repr

namespace EMLTree

def size : EMLTree k -> Nat
  | .one => 1
  | .var _ => 1
  | .eml a b => 1 + size a + size b

def depth : EMLTree k -> Nat
  | t => size t

def vars : EMLTree k -> List (Fin k)
  | .one => []
  | .var i => [i]
  | .eml a b => vars a ++ vars b

theorem size_pos (t : EMLTree k) : 0 < t.size := by
  induction t with
  | one => exact Nat.succ_pos 0
  | var _ => exact Nat.succ_pos 0
  | eml a b _ _ =>
      show 0 < 1 + a.size + b.size
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
        Nat.succ_pos (a.size + b.size)

theorem depth_le_size (t : EMLTree k) : t.depth ≤ t.size := by
  simp [depth]

theorem vars_subset_univ (t : EMLTree k) :
    ∀ v, v ∈ t.vars -> v ∈ List.finRange k := by
  intro v _
  exact List.mem_finRange v

end EMLTree

structure EMLAlgebra where
  Carrier : Type
  one : Carrier
  eml : Carrier -> Carrier -> Carrier

def EMLTree.eval (A : EMLAlgebra) (env : Fin k -> A.Carrier) :
    EMLTree k -> A.Carrier
  | .one => A.one
  | .var i => env i
  | .eml a b => A.eml (a.eval A env) (b.eval A env)

end Surface.Legacy
