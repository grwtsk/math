# dHomologyData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8609c2cad6f6279dfbf9dc5f70bc206bddc68fcdcbd4cff954f1aecb6454780d",
  "kind": "def",
  "lexical_name": "dHomologyData",
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
  "slug": "dhomologydata",
  "source": {
    "blob": "4115996232a6baa36e5c092bea8bf2b7ae7e0fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93f4f5a399a30061cb18080817b7828b215cce28bd32995a82eb3731479c6784",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralObjectHomologyPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8609c2cad6f6279dfbf9dc5f70bc206bddc68fcdcbd4cff954f1aecb6454780d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dHomologyData
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia)
    (hn₃ : n₂ + 1 = n₃ := by lia) (hn₄ : n₃ + 1 = n₄ := by lia) :
    (X.dShortComplex f₁ f₂ f₃ f₄ f₅ f₆ f₇ n₀ n₁ n₂ n₃ n₄).HomologyData :=
  ShortComplex.HomologyData.ofEpiMonoFactorisation
    (X.dShortComplex f₁ f₂ f₃ f₄ f₅ f₆ f₇ n₀ n₁ n₂ n₃ n₄)
    (X.dKernelSequence_exact f₁ f₂ f₃ f₄ f₅ f₂₃ h₂₃ n₁ n₂ n₃ n₄).fIsKernel
    (X.dCokernelSequence_exact f₃ f₄ f₅ f₆ f₇ f₅₆ h₅₆ n₀ n₁ n₂ n₃).gIsCokernel
    (X.map_fourδ₁Toδ₀_EMap_fourδ₄Toδ₃ f₂ f₃ f₄ f₅ f₆ f₂₃ h₂₃ f₅₆ h₅₆ n₁ n₂ n₃)

/-- The homology of the short complex
`E^{n-1}(f₅, f₆, f₇) ⟶ E^{n}(f₃, f₄, f₅) ⟶ E^{n+1}(f₁, f₂, f₃)` identifies to
`E^n(f₂ ≫ f₃, f₄, f₅ ≫ f₆)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralObjectHomologyPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4115996232a6baa36e5c092bea8bf2b7ae7e0fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94e12a58a02e70de681aa588c8436685ca639c3307c97108442d4431ad03ecc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
