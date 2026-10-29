# exists_subalgebra_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab2fc868-3b1c-1f6b-3fa2-55000414cf00",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.DescentAux.Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.Algebra.IsStandardSmoothOfRelativeDimension.exists_subalgebra_fg",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exists-subalgebra-fg-source-line-278-occurrence-2",
  "source": {
    "blob": "2755b2b19d3f590bf08e0342c37f71ba9a7974d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 278,
    "path": "GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d8419f4c45b8f388d723ad08dc2b223671eeaf6454b5bede00a8b34b1c8dd8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/NoetherianDescentNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab2fc868-3b1c-1f6b-3fa2-55000414cf00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem _root_.GRWTSK.Algebra.DescentAux.Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.Algebra.IsStandardSmoothOfRelativeDimension.exists_subalgebra_fg
    (n : ℕ) [IsStandardSmoothOfRelativeDimension n A B] :
    ∃ (A₀ : Subalgebra R A) (B₀ : Type u) (_ : CommRing B₀) (_ : Algebra A₀ B₀),
      A₀.FG ∧ IsStandardSmoothOfRelativeDimension n A₀ B₀ ∧ Nonempty (B ≃ₐ[A] A ⊗[A₀] B₀) := by
  obtain ⟨ι, σ, _, _, P, hP⟩ := IsStandardSmoothOfRelativeDimension.out (n := n) (R := A) (S := B)
  let A₀ := Algebra.adjoin R P.coeffs
  have : P.HasCoeffs A₀ := ⟨by simp [A₀]⟩
  exact ⟨A₀, (P.ModelOfHasCoeffs A₀:), inferInstance, inferInstance,
    ⟨P.finite_coeffs.toFinset, by simp [A₀]⟩, ⟨_, _, _, inferInstance,
      P.ofHasCoeffs A₀, hP⟩, ⟨(P.tensorModelOfHasCoeffsEquiv A₀).symm⟩⟩

/--
Let `A` be an `R`-algebra. If `B` is an etale `A`-algebra, there exists an
`R`-subalgebra of finite type `A₀` of `A` and an etale `A₀`-algebra `B₀` such that
`B ≃ₐ A ⊗[A₀] B₀`.
-/
@[stacks 00U2 "(8)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/NoetherianDescentNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2755b2b19d3f590bf08e0342c37f71ba9a7974d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73ce139daee18f31f8366221b8d3aa4a0ded5bc21c4e605ad3b6268b9733558d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NoetherianDescent/Variant097219ea744ce12ec94f8026390ecc25e19b658a7839bf365e7104c60c17ca8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
