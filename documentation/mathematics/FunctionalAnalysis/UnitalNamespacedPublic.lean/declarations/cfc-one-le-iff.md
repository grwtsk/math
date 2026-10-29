# CFC.one_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e74785a7-e5b3-b18c-4d2f-9491bfde78f3",
  "kind": "lemma",
  "lexical_name": "CFC.one_le_iff",
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
  "slug": "cfc-one-le-iff",
  "source": {
    "blob": "80944cc700ffac05f1890454cca4432c1bc98d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1126,
    "line": 1104,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e938e59bb04a5a6dfda9a8902163a9a3a153c595dc8ca03548beb60ceca480b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/UnitalNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e74785a7-e5b3-b18c-4d2f-9491bfde78f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1104–1126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CFC.one_le_iff (a : A) (ha : p a := by cfc_tac) :
    1 ≤ a ↔ ∀ x ∈ spectrum R a, 1 ≤ x := by
  simpa using algebraMap_le_iff_le_spectrum (r := (1 : R)) (a := a)

end Ring

end Order

/-! ### `cfcHom` on a superset of the spectrum -/

section Superset

variable {R A : Type*} {p : A → Prop} [CommSemiring R] [StarRing R]
    [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R] [Ring A] [StarRing A]
    [TopologicalSpace A] [Algebra R A] [instCFC : ContinuousFunctionalCalculus R A p]

/-- The composition of `cfcHom` with the natural embedding `C(s, R) → C(spectrum R a, R)`
whenever `spectrum R a ⊆ s`.

This is sometimes necessary in order to consider the same continuous functions applied to multiple
distinct elements, with the added constraint that `cfc` does not suffice. This can occur, for
example, if it is necessary to use uniqueness of this continuous functional calculus. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/UnitalNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean#L1104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80944cc700ffac05f1890454cca4432c1bc98d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4eec04098577242c359aa1c0beed3e95df85fbc87c1ae6019343ecc767cac2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
