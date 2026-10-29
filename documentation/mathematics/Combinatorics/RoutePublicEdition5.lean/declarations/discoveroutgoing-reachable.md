# discoverOutgoing_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45e841a7f50787765f2ff5398760318b9ae2214a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71c5a0bf-b298-ef7f-04b6-c78c1bb40e29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edf9e4b7-c149-b524-2af4-ebcfcd10327e",
  "kind": "theorem",
  "lexical_name": "discoverOutgoing_reachable",
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
  "slug": "discoveroutgoing-reachable",
  "source": {
    "blob": "45e841a7f50787765f2ff5398760318b9ae2214a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 758,
    "line": 737,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03a3cf8d3581f87bbcfe2a9d4a5d807e8023b287819d53c98ea8bebcf20d7194",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/RoutePublicEdition5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edf9e4b7-c149-b524-2af4-ebcfcd10327e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–758.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem discoverOutgoing_reachable
    (contract : RoutingContract Host EdgeId) (start source : Host)
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId))
    (stateReachable : StateReachable contract start state)
    (sourceReachable : contract.Reachable start source)
    (edgesDeclared : ∀ edge ∈ edges, edge ∈ contract.edges)
    (edgesSource : ∀ edge ∈ edges, edge.source = source) :
    StateReachable contract start (discoverOutgoing state edges) := by
  induction edges generalizing state with
  | nil => exact stateReachable
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      apply ih (state := discoverOne state edge)
      · apply discoverOne_reachable contract start state edge stateReachable
        · exact edgesDeclared edge (by simp)
        · simpa [edgesSource edge (by simp)] using sourceReachable
      · intro later member
        exact edgesDeclared later (by simp [member])
      · intro later member
        exact edgesSource later (by simp [member])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/RoutePublicEdition5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e841a7f50787765f2ff5398760318b9ae2214a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35faadb102235239162a34ba9d9a70e9388734c7d3f92764782c8255b783e6e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7a745f7d0dd111ab312ce79be3a8c17fee1b1e339e7d073e696579ac404c293.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
