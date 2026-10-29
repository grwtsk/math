# rightRegularMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9619d6f2965d5a0f156d53be7b831809b8a55c1c26309a27c80c8206e3138921",
  "kind": "def",
  "lexical_name": "rightRegularMatrix",
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
  "slug": "rightregularmatrix",
  "source": {
    "blob": "1e9ae6e3b5aa1b38a8e38f114df6c24ca8b67980",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc0852903cb16cc063f86f915579e8af0b207fa53f107a893bd128e60e332701",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCharacterCoordinatesAndRegularAverage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9619d6f2965d5a0f156d53be7b831809b8a55c1c26309a27c80c8206e3138921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightRegularMatrix
    (chi : PrimitiveDirichletCharacter)
    (g : CharacterIndex chi) :
    Matrix (CharacterIndex chi) (CharacterIndex chi) ℂ :=
  fun x y ↦ if y = x * g then 1 else 0

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCharacterCoordinatesAndRegularAverage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e9ae6e3b5aa1b38a8e38f114df6c24ca8b67980` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a59d180d86cca039b984a4fb2f4f12ea54804fc5ae3a30585030e86bbcb12e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/FiniteCharacterCoordinatesAndRegularAverage.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
