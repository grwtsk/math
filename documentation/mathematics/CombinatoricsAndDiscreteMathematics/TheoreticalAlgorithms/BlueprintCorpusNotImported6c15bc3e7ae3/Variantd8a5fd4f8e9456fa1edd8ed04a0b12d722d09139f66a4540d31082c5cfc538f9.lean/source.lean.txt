import Formal.Ast.Surface.proof_authority.blueprint_cannot_close_authority_7adeba310a88

/-!
Blueprint surface marker.

This root surfaces blueprint authority-band metadata and conceptual boundary
markers only. It does not import the unresolved analytic/PNT or tactic
blueprint files.
-/

namespace Formal.Surface.Blueprint

def importsBlueprintCorpus : Bool := false

theorem blueprint_corpus_not_imported : importsBlueprintCorpus = false := by
  rfl

def conceptualBoundaries : List String :=
  [ "Formal.Blueprint.Analytic"
  , "Formal.Blueprint.PrimeNumberTheoremAnd"
  , "Formal.Blueprint.Tactic"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 3 := by
  rfl

end Formal.Surface.Blueprint
