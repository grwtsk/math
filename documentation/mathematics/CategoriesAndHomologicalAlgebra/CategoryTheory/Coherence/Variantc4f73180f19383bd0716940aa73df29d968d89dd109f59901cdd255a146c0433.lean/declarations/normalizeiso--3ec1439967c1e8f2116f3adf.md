# normalizeIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb406c975c9c6f058c78f93e0c49330ee74e6b3357deed06379bcf0482fc243c",
  "kind": "def",
  "lexical_name": "normalizeIso",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "normalizeiso--3ec1439967c1e8f2116f3adf",
  "source": {
    "blob": "a7c1aedb0d960007d5d9c60ec6692022afb3209a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ec1439967c1e8f2116f3adf5bd60cccc02927ef84f98f2edbdd56cbf926c123",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb406c975c9c6f058c78f93e0c49330ee74e6b3357deed06379bcf0482fc243c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizeIso {a : B} :
    ∀ {b c : B} (p : Path a b) (f : Hom b c),
      (preinclusion B).map ⟨p⟩ ≫ f ≅ (preinclusion B).map ⟨normalizeAux p f⟩
  | _, _, _, Hom.of _ => Iso.refl _
  | _, _, _, Hom.id b => ρ_ _
  | _, _, p, Hom.comp f g =>
    (α_ _ _ _).symm ≪≫ whiskerRightIso (normalizeIso p f) g ≪≫ normalizeIso (normalizeAux p f) g

-- Equation lemmas for `normalizeIso`/`normalizeAux` matching `≫`/`𝟙`
-- (i.e., `CategoryStruct.comp`/`CategoryStruct.id` for `FreeBicategory`) instead of
-- `Hom.comp`/`Hom.id`. Needed because after leanprover/lean4#13363, `canUnfoldAtMatcher`
-- no longer unfolds class projections in match discriminants.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7c1aedb0d960007d5d9c60ec6692022afb3209a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21cfce8d7a3bf36f3d3697414f6dc30081b5e0ffaaa6c8b4adaa27b3a683ef24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantc4f73180f19383bd0716940aa73df29d968d89dd109f59901cdd255a146c0433.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
