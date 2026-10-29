# squareSum_doubled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb1c1717-36ae-6c3a-8063-721648e25158",
  "kind": "theorem",
  "lexical_name": "squareSum_doubled",
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
  "slug": "squaresum-doubled--1143769fab6e065a707df24e",
  "source": {
    "blob": "34b83ba36bdd11d4052f123b8f60a8e986d92d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 103,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1143769fab6e065a707df24e663d0e525198a7cf1048a3301e6b08305144e4ea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb1c1717-36ae-6c3a-8063-721648e25158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareSum_doubled (A C : Matrix (Fin n) (Fin n) ℝ) :
    squareSum (doubled A C) = 2*squareSum A+squareSum C := by
  rw [doubled, squareSum_blocks]
  simp only [squareSum, Matrix.zero_apply, zero_pow (by decide : 2 ≠ 0),
    Finset.sum_const_zero]
  ring

end Real
end GRWTSK.LinearAlgebra.ToeplitzHankel
#print axioms GRWTSK.LinearAlgebra.ToeplitzHankel.toeplitz_doubling
#print axioms GRWTSK.LinearAlgebra.ToeplitzHankel.cut_commutator
#print axioms GRWTSK.LinearAlgebra.ToeplitzHankel.squareSum_doubled
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b83ba36bdd11d4052f123b8f60a8e986d92d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b472ded9762f371975f6fcd6c94760c7bac68cf3c46629688a3912105c9ab74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel.lean","GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
