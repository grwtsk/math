# sdiff_compl_neighborFinset_inter_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0df1e978-6930-15fd-0d13-dba182ff407e",
  "kind": "theorem",
  "lexical_name": "sdiff_compl_neighborFinset_inter_eq",
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
  "slug": "sdiff-compl-neighborfinset-inter-eq",
  "source": {
    "blob": "b220eab8502d09f7538ddffb81ecb6d23e74f44c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecf5eb24713e09abdf1f102daf533a94b0f32e6d31d26e5c87629c02ce1583eb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/GraphTheory/SimpleGraphStronglyRegularNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0df1e978-6930-15fd-0d13-dba182ff407e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sdiff_compl_neighborFinset_inter_eq {v w : V} (h : G.Adj v w) :
    ((G.neighborFinset v)ᶜ ∩ (G.neighborFinset w)ᶜ) \ ({w} ∪ {v}) =
      (G.neighborFinset v)ᶜ ∩ (G.neighborFinset w)ᶜ := by
  ext
  simp only [and_imp, mem_union, mem_sdiff, mem_compl, and_iff_left_iff_imp, mem_neighborFinset,
    mem_inter, mem_singleton]
  rintro hnv hnw (rfl | rfl)
  · exact hnv h
  · apply hnw
    rwa [adj_comm]
#align simple_graph.sdiff_compl_neighbor_finset_inter_eq SimpleGraph.sdiff_compl_neighborFinset_inter_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphStronglyRegularNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b220eab8502d09f7538ddffb81ecb6d23e74f44c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f0add4942de395763d1ca730ead8a42857af27753a613116ab0b081d6917b48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant8d82f0eb2871d0218b93aad80628278b1c709387ec90ce22ca71926b9bc9c3da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
