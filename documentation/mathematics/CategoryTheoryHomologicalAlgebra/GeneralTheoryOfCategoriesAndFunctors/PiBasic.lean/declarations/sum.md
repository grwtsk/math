# sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52909be579f44a6a987295faf9dd176641da145a3aa9902deabb59b4b4dc22c8",
  "kind": "def",
  "lexical_name": "sum",
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
  "slug": "sum",
  "source": {
    "blob": "e5a77ced145189c4778a948fc69d0fce6258980d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant794b208f988edd33725c1b4256c3eef46a89fa1d895f1bef1a5e8059659913e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9aae407ff3e8d1baa91444e3251f40a85687c6a6c64bbbaa9ebf2899c3a124c9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52909be579f44a6a987295faf9dd176641da145a3aa9902deabb59b4b4dc22c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sum : (∀ i, C i) ⥤ (∀ j, D j) ⥤ ∀ s : Sum I J, Sum.elim C D s where
  obj X :=
    { obj := fun Y s =>
        match s with
        | .inl i => X i
        | .inr j => Y j
      map := fun {Y} {Y'} f s =>
        match s with
        | .inl i => 𝟙 (X i)
        | .inr j => f j }
  map {X} {X'} f :=
    { app := fun Y s =>
        match s with
        | .inl i => f i
        | .inr j => 𝟙 (Y j) }
#align category_theory.pi.sum CategoryTheory.Pi.sum

end

variable {C}

/-- An isomorphism between `I`-indexed objects gives an isomorphism between each
pair of corresponding components. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant794b208f988edd33725c1b4256c3eef46a89fa1d895f1bef1a5e8059659913e8.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a77ced145189c4778a948fc69d0fce6258980d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d26bbae16b771a3b3f894b80a5ebe3497d555635889cc6de40393d255e7b7c3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant794b208f988edd33725c1b4256c3eef46a89fa1d895f1bef1a5e8059659913e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
