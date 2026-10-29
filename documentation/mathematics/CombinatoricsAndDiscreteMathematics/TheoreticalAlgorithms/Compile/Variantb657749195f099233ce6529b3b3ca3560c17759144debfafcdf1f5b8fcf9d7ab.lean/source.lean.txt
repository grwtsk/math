-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeToFormula.Variant6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TreeToFormula.Variant6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781","mathematical_subject":"Foundations.Unclassified","original_sha256":"6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Compile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree.Eval
import Boolean.Formula.Eval


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeToFormula.Variant6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781

namespace Boolean

universe u

/-- Forget NAND as a primitive and compile a Boolean tree into `Formula`. -/
def Tree.toFormula : Tree α → Formula α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => .neg (Tree.toFormula p)
  | .conj p q => .conj (Tree.toFormula p) (Tree.toFormula q)
  | .disj p q => .disj (Tree.toFormula p) (Tree.toFormula q)
  | .impl p q => .impl (Tree.toFormula p) (Tree.toFormula q)
  | .eqv p q => .eqv (Tree.toFormula p) (Tree.toFormula q)
  | .nand p q => .neg (.conj (Tree.toFormula p) (Tree.toFormula q))

@[simp] theorem Tree.eval_toFormula
    (ν : Valuation α)
    (p : Tree α) :
    Formula.eval ν (Tree.toFormula p) = Tree.eval ν p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [Tree.toFormula, Tree.eval, ih]
  | conj p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | impl p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | nand p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]

end Boolean
