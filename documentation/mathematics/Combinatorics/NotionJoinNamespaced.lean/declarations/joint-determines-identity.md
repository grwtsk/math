# joint_determines_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02f1b695-c104-86a3-4358-569077833913",
  "kind": "theorem",
  "lexical_name": "joint_determines_identity",
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
  "slug": "joint-determines-identity",
  "source": {
    "blob": "ec9637454cab67a51953364bd800ea3fb9a7375f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:200a4a7c7620635da2f936fe7d14668518a299810509e46518dfc4a54ee7c7dd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/NotionJoinNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02f1b695-c104-86a3-4358-569077833913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joint_determines_identity : jointCoordinates.DeterminesAt 1 id := by
  intro x y equivalent
  have firstEqual := equivalent false (by simp [jointCoordinates, FiniteNotion.join,
    firstCoordinates, secondCoordinates]) (by decide)
  have secondEqual := equivalent true (by simp [jointCoordinates, FiniteNotion.join,
    firstCoordinates, secondCoordinates]) (by decide)
  apply Prod.ext
  · simpa [jointCoordinates, FiniteNotion.join, firstCoordinates, coordinatePolicy] using firstEqual
  · simpa [jointCoordinates, FiniteNotion.join, firstCoordinates, coordinatePolicy]
      using secondEqual

/-- Recovery of the full vector is synergistic, with different failure pairs in each component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/NotionJoinNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9637454cab67a51953364bd800ea3fb9a7375f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=850b6742290d7a4d7555d0abb0eb9d86625043f50c7077c427edc69a1ef00757 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
