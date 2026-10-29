# cstar_nnnorm_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10437cb5-f7ee-0411-1750-57bbb46e6f05",
  "kind": "lemma",
  "lexical_name": "cstar_nnnorm_def",
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
  "slug": "cstar-nnnorm-def",
  "source": {
    "blob": "d429f61bc7c296bd85ba94fbda9ca2395031d93f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 297,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c3fb9bc0c4c723f22e12bbfaa5bb1fdbbde937478728b659164d429b45f8a0e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/CStarAlgebraMatrixNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10437cb5-f7ee-0411-1750-57bbb46e6f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cstar_nnnorm_def (A : Matrix n n 𝕜) : ‖A‖₊ = ‖toEuclideanCLM (n := n) (𝕜 := 𝕜) A‖₊ := rfl

/-- The normed algebra structure on `Matrix n n 𝕜` arising from the operator norm given by the
identification with (continuous) linear endomorphisms of `EuclideanSpace 𝕜 n`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/CStarAlgebraMatrixNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d429f61bc7c296bd85ba94fbda9ca2395031d93f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26690495db1ef4765ba80a0ac556ff9f428208c4433501412ec6777bbb07ad56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean","GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
