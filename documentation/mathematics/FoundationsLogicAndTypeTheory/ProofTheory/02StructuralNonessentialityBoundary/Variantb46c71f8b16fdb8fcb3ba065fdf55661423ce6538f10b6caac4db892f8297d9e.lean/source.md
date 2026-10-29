# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.02StructuralNonessentialityBoundary.Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `954c3e20eac02e83f510b750b25aacfa1642ef66` · SHA-256 `b46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.MultiSourceExample

namespace FCRS.TheoremTransfer.Cycle7.StructuralNonessentiality

open FCRS.TheoremTransfer.MultiSourceExample

/--
Both exact source leaves are present, but the root rule deliberately ignores
their proof objects. This is accepted structural coverage and is not presented
as counterfactual logical essentiality by the repaired API or documentation.
-/
def decorativeExpression : MultiSourceInferenceExpression Bool
    (fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (True ∧ True) :=
  .inference
    (PremiseIndex := Bool)
    (premiseProposition := fun _ => True)
    (version "cycle-7-decorative-rule")
    (fun index => .source index)
    (fun _proofs => ⟨True.intro, True.intro⟩)

/-- A full record update succeeds only after rebuilding the dependent joins. -/
def decorativeDerivation : MultiSourceTheoremTransferDerivation
    targetVersion targetAssumptions targetScope := {
  derivation with
  jointInferenceArtifact := version "cycle-7-structural-only-inference"
  jointInferenceExpression := decorativeExpression
  derivedProofObjectExact := by intros; rfl
  sourceLeafDependency := fun index => {
    expressionUsesSource := ⟨index, rfl⟩
    dependency := match index with
      | false => .left
      | true => .right
  }
  edgeKindExact := by intro index; cases index <;> rfl
  bridgeArtifactExact := by intro index; cases index <;> rfl
  evidenceArtifactExact := by intro index; cases index <;> rfl
}

theorem decorative_expression_covers_both :
    decorativeDerivation.jointInferenceExpression.UsesSource false ∧
      decorativeDerivation.jointInferenceExpression.UsesSource true := by
  exact ⟨decorativeDerivation.sourceLeafCoverage false,
    decorativeDerivation.sourceLeafCoverage true⟩

theorem decorative_expression_keeps_exact_fan_in :
    ∃ left right : decorativeDerivation.SourceIndex,
      left ≠ right ∧
      decorativeDerivation.sourceNode left ≠ decorativeDerivation.sourceNode right := by
  obtain ⟨left, right, distinct, nodeDistinct, _, _⟩ :=
    decorativeDerivation.hasDistinctFanIn
  exact ⟨left, right, distinct, nodeDistinct⟩

#check decorativeDerivation
#check decorative_expression_covers_both
#check decorative_expression_keeps_exact_fan_in

end FCRS.TheoremTransfer.Cycle7.StructuralNonessentiality
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b1314725f24184ab1c14204226e18a6bb5b0775bc1d0d55b21cb808e100fec9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
