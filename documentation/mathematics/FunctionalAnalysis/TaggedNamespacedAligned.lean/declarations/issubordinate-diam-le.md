# IsSubordinate.diam_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b4e008b-bbac-20af-ad51-eb9d49fd00bf",
  "kind": "theorem",
  "lexical_name": "IsSubordinate.diam_le",
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
  "slug": "issubordinate-diam-le",
  "source": {
    "blob": "8e79d4035730d837a1e32ff22f53eed4727d753e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 291,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c48cf7bd0c28aebd24cddbf4fb8fa10d06553b9f3b7589226539b56395434a14",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/TaggedNamespacedAligned.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b4e008b-bbac-20af-ad51-eb9d49fd00bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubordinate.diam_le [Fintype ι] {π : TaggedPrepartition I} (h : π.IsSubordinate r)
    (hJ : J ∈ π.boxes) : diam (Box.Icc J) ≤ 2 * r (π.tag J) :=
  calc
    diam (Box.Icc J) ≤ diam (closedBall (π.tag J) (r <| π.tag J)) :=
      diam_mono (h J hJ) bounded_closedBall
    _ ≤ 2 * r (π.tag J) := diam_closedBall (le_of_lt (r _).2)
#align box_integral.tagged_prepartition.is_subordinate.diam_le BoxIntegral.TaggedPrepartition.IsSubordinate.diam_le

/-- Tagged prepartition with single box and prescribed tag. -/
@[simps! (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/TaggedNamespacedAligned.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e79d4035730d837a1e32ff22f53eed4727d753e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4df8416d179d0ad2a9ff96a1478c327909cc5810c8632aa2f8bf555278049642 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
