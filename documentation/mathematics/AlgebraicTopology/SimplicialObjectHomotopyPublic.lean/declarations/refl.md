# refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17760b99686b997d10fdd3e049bcd8124fa2cb88df1c72ac355fc035c0d7ef28",
  "kind": "def",
  "lexical_name": "refl",
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
  "slug": "refl",
  "source": {
    "blob": "003eaa3042c9988c0f3450451650a4fef87875af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 81,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c62ae627b2d65e9c61646480c8ba4436d312066cdbf5e42bb2db42e6f253582",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/SimplicialObjectHomotopyPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17760b99686b997d10fdd3e049bcd8124fa2cb88df1c72ac355fc035c0d7ef28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def refl (f : X ⟶ Y) : Homotopy f f where
  h i := X.σ i ≫ f.app _
  h_zero_comp_δ_zero n := by
    have := Y.δ_comp_σ_self (n := n) (i := 0)
    dsimp at this
    simp only [SimplicialObject.σ_naturality, Category.assoc, this, Category.comp_id]
  h_last_comp_δ_last n := by
    have := Y.δ_comp_σ_succ (i := Fin.last n)
    dsimp at this
    simp only [SimplicialObject.σ_naturality, Category.assoc, this, Category.comp_id]
  h_succ_comp_δ_castSucc_of_lt i j hij := by simp [Y.δ_comp_σ_of_le hij]
  h_succ_comp_δ_castSucc_succ j := by
    have h₁ := Y.δ_comp_σ_self (i := j.succ)
    have h₂ := Y.δ_comp_σ_succ (i := j.castSucc)
    dsimp at h₁ h₂
    simp only [SimplicialObject.σ_naturality, Category.assoc, h₁, Category.comp_id, h₂]
  h_castSucc_comp_δ_succ_of_lt i j hji := by simp [Y.δ_comp_σ_of_gt hji]
  h_comp_σ_castSucc_of_le i j hij := by simp [Y.σ_comp_σ hij]
  h_comp_σ_succ_of_lt i j hji := by simp [Y.σ_comp_σ hji]

/-- Postcompose a simplicial homotopy with a functor `F : C ⥤ D`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/SimplicialObjectHomotopyPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003eaa3042c9988c0f3450451650a4fef87875af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2ca1d3d742ef7efe6bb0fe1e2fe7dc89e6b37411ed1662f0eade2b78711980f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
