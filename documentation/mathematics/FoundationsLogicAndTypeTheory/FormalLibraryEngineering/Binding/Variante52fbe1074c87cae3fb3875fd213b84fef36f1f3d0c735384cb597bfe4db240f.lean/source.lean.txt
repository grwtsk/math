import Mathematics.SourceAnalysis.Context

/-! # Exact source/compiled alignment records -/

namespace Mathematics.SourceAnalysis

open Mathematics

inductive BindingClassification
  | direct
  | generated
  | external
  | sourceOnly
  | ambiguous
  deriving DecidableEq, Repr, Inhabited

structure CommandDeclarationBinding where
  commandId : SourceCommandId
  declarationId : Option ExtractorDeclarationId
  classification : BindingClassification
  evidenceDigest : Digest
  exact : Bool
  deriving DecidableEq, Repr

end Mathematics.SourceAnalysis
