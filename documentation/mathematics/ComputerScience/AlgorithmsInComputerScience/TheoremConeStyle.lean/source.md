# Theorem Cone Style — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51ba7f76f44370161ed96052ca636ac6901cd0cd` · SHA-256 `0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace AST

/-!
# Theorem-cone style metadata

This module records Annals-style presentation metadata for theorem pages.  It is
not theorem authority, is not an AST export fixture, and is not a major theorem
gate.
-/

/-- Public theorem-cone identifiers used by style and page audits. -/
inductive TheoremConeId where
  | bsd
  | rhHilbertTrace
  | prismaticComparison
  | kakeyaOrientedFlatness
  | analyticPDE
  | ricciFlow
  | finiteOSHomology
  | finiteHilbertSpectralConvergence
  | booleanFiniteInfrastructure
  | sharedInfrastructure
deriving DecidableEq, Repr

/-- Metadata for an Annals-style theorem page. -/
structure AnnalsTheoremPage where
  cone : TheoremConeId
  publicName : String
  statementName : String
  minimalImports : List String
  hardInputs : List String
  certificateInputs : List String
  forbiddenImports : List String
  notClaimed : List String
  assumptionBudget : List String
  proofBoundary : String
deriving Repr

/-- A theorem page has an exact named statement. -/
def AnnalsTheoremPage.hasExactStatement
    (P : AnnalsTheoremPage) : Prop :=
  P.statementName ≠ ""

/-- A theorem page has an explicit non-claim boundary. -/
def AnnalsTheoremPage.hasNonclaimBoundary
    (P : AnnalsTheoremPage) : Prop :=
  P.notClaimed ≠ []

/-- Referee-style theorem pages expose the exact statement and non-claim boundary. -/
theorem AnnalsTheoremPage.refereeStyle_of_fields
    (P : AnnalsTheoremPage)
    (hStmt : P.hasExactStatement)
    (hBoundary : P.hasNonclaimBoundary) :
    P.hasExactStatement ∧ P.hasNonclaimBoundary := by
  exact ⟨hStmt, hBoundary⟩

end AST
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08c84be882466debec982ef54a129b6ff9adf8576b41138e24669741e5ae1233 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremConeStyle/Variant0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
