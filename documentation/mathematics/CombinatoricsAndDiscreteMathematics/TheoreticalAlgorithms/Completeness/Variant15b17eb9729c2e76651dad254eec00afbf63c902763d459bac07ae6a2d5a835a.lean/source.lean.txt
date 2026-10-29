-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NandNeg.Variant097c4774ed206703a5e7829d3592ed1246a3f07dfdf130c925e099c9dcac4fba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"097c4774ed206703a5e7829d3592ed1246a3f07dfdf130c925e099c9dcac4fba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NandNeg.Variant097c4774ed206703a5e7829d3592ed1246a3f07dfdf130c925e099c9dcac4fba","mathematical_subject":"Foundations.Unclassified","original_sha256":"097c4774ed206703a5e7829d3592ed1246a3f07dfdf130c925e099c9dcac4fba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Completeness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree.Eval


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NandNeg.Variant097c4774ed206703a5e7829d3592ed1246a3f07dfdf130c925e099c9dcac4fba

namespace Boolean

universe u

namespace Tree

/-- Negation expressed through NAND. -/
def nandNeg (p : Tree α) : Tree α :=
  .nand p p

/-- Conjunction expressed through NAND. -/
def nandConj (p q : Tree α) : Tree α :=
  let n := .nand p q
  .nand n n

/-- Disjunction expressed through NAND. -/
def nandDisj (p q : Tree α) : Tree α :=
  .nand (.nand p p) (.nand q q)

/-- NOR as a derived tree operator. -/
def nor (p q : Tree α) : Tree α :=
  .neg (.disj p q)

/-- Negation expressed through NOR. -/
def norNeg (p : Tree α) : Tree α :=
  nor p p

/-- Disjunction expressed through NOR. -/
def norDisj (p q : Tree α) : Tree α :=
  let n := nor p q
  nor n n

/-- Conjunction expressed through NOR. -/
def norConj (p q : Tree α) : Tree α :=
  nor (nor p p) (nor q q)

/-- Translate a Boolean tree into the NAND fragment, preserving variables and constants. -/
def toNand : Tree α → Tree α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => nandNeg (toNand p)
  | .conj p q => nandConj (toNand p) (toNand q)
  | .disj p q => nandDisj (toNand p) (toNand q)
  | .impl p q => nandDisj (nandNeg (toNand p)) (toNand q)
  | .eqv p q =>
      nandConj
        (nandDisj (nandNeg (toNand p)) (toNand q))
        (nandDisj (nandNeg (toNand q)) (toNand p))
  | .nand p q => .nand (toNand p) (toNand q)

/-- Translate a Boolean tree into the NOR fragment, preserving variables and constants. -/
def toNor : Tree α → Tree α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => norNeg (toNor p)
  | .conj p q => norConj (toNor p) (toNor q)
  | .disj p q => norDisj (toNor p) (toNor q)
  | .impl p q => norDisj (norNeg (toNor p)) (toNor q)
  | .eqv p q =>
      norConj
        (norDisj (norNeg (toNor p)) (toNor q))
        (norDisj (norNeg (toNor q)) (toNor p))
  | .nand p q => norNeg (norConj (toNor p) (toNor q))

@[simp] theorem eval_nandNeg
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (nandNeg p) = !(Tree.eval ν p) := by
  cases hp : Tree.eval ν p <;> simp [nandNeg, Tree.eval, hp]

@[simp] theorem eval_nandConj
    (ν : Valuation α)
    (p q : Tree α) :
    Tree.eval ν (nandConj p q) = (Tree.eval ν p && Tree.eval ν q) := by
  cases hp : Tree.eval ν p <;>
    cases hq : Tree.eval ν q <;>
    simp [nandConj, Tree.eval, hp, hq]

@[simp] theorem eval_nandDisj
    (ν : Valuation α)
    (p q : Tree α) :
    Tree.eval ν (nandDisj p q) = (Tree.eval ν p || Tree.eval ν q) := by
  cases hp : Tree.eval ν p <;>
    cases hq : Tree.eval ν q <;>
    simp [nandDisj, Tree.eval, hp, hq]

@[simp] theorem eval_nor
    (ν : Valuation α)
    (p q : Tree α) :
    Tree.eval ν (nor p q) = !(Tree.eval ν p || Tree.eval ν q) := by
  cases hp : Tree.eval ν p <;>
    cases hq : Tree.eval ν q <;>
    simp [nor, Tree.eval, hp, hq]

@[simp] theorem eval_norNeg
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (norNeg p) = !(Tree.eval ν p) := by
  cases hp : Tree.eval ν p <;> simp [norNeg, hp]

@[simp] theorem eval_norDisj
    (ν : Valuation α)
    (p q : Tree α) :
    Tree.eval ν (norDisj p q) = (Tree.eval ν p || Tree.eval ν q) := by
  cases hp : Tree.eval ν p <;>
    cases hq : Tree.eval ν q <;>
    simp [norDisj, hp, hq]

@[simp] theorem eval_norConj
    (ν : Valuation α)
    (p q : Tree α) :
    Tree.eval ν (norConj p q) = (Tree.eval ν p && Tree.eval ν q) := by
  cases hp : Tree.eval ν p <;>
    cases hq : Tree.eval ν q <;>
    simp [norConj, hp, hq]

@[simp] theorem eval_toNand
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (toNand p) = Tree.eval ν p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [toNand, Tree.eval, ih]
  | conj p q ihp ihq => simp [toNand, Tree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [toNand, Tree.eval, ihp, ihq]
  | impl p q ihp ihq =>
      cases hp : Tree.eval ν p <;>
        cases hq : Tree.eval ν q <;>
        simp [toNand, Tree.eval, ihp, ihq, hp, hq]
  | eqv p q ihp ihq =>
      cases hp : Tree.eval ν p <;>
        cases hq : Tree.eval ν q <;>
        simp [toNand, Tree.eval, ihp, ihq, hp, hq]
  | nand p q ihp ihq => simp [toNand, Tree.eval, ihp, ihq]

@[simp] theorem eval_toNor
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (toNor p) = Tree.eval ν p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [toNor, Tree.eval, ih]
  | conj p q ihp ihq => simp [toNor, Tree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [toNor, Tree.eval, ihp, ihq]
  | impl p q ihp ihq =>
      cases hp : Tree.eval ν p <;>
        cases hq : Tree.eval ν q <;>
        simp [toNor, Tree.eval, ihp, ihq, hp, hq]
  | eqv p q ihp ihq =>
      cases hp : Tree.eval ν p <;>
        cases hq : Tree.eval ν q <;>
        simp [toNor, Tree.eval, ihp, ihq, hp, hq]
  | nand p q ihp ihq =>
      cases hp : Tree.eval ν p <;>
        cases hq : Tree.eval ν q <;>
        simp [toNor, Tree.eval, ihp, ihq, hp, hq]

end Tree

end Boolean
