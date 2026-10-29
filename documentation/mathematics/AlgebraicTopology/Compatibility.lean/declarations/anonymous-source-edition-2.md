# υ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a27e2e6247787150e5bed177b44f45ea8576eeb689d6da78f1f96fee85b13b9",
  "kind": "def",
  "lexical_name": "υ",
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
  "slug": "anonymous-source-edition-2",
  "source": {
    "blob": "2a33870472448f4f31ddc6dac70c5e600dbe1f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 216,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7367247bfe8061ed65968e8d4fba32760e858273835be2c6236c726dfe5496ec",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/Compatibility.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a27e2e6247787150e5bed177b44f45ea8576eeb689d6da78f1f96fee85b13b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def υ : eA.functor ≅ F ⋙ e'.inverse :=
  calc
    eA.functor ≅ eA.functor ⋙ 𝟭 A' := (Functor.leftUnitor _).symm
    _ ≅ eA.functor ⋙ e'.functor ⋙ e'.inverse := isoWhiskerLeft _ e'.unitIso
    _ ≅ (eA.functor ⋙ e'.functor) ⋙ e'.inverse := Iso.refl _
    _ ≅ F ⋙ e'.inverse := isoWhiskerRight hF _

variable (ε : eA.functor ≅ F ⋙ e'.inverse) (hG)

/-- The unit isomorphism of `equivalence`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/Compatibility.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a33870472448f4f31ddc6dac70c5e600dbe1f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fde3b2f0b6f09efee943b6ccc8c8c7632f5ca38c504a585df5e6dcb7f79dbf90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
