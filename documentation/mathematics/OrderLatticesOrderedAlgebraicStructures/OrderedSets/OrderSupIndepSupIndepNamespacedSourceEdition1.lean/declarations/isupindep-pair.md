# iSupIndep_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79e731b4-4762-95e8-2308-11912fdfd6ab",
  "kind": "theorem",
  "lexical_name": "iSupIndep_pair",
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
  "slug": "isupindep-pair",
  "source": {
    "blob": "5783d65b925286f826426ed2911ad4b7f9c3d6ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 439,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variantf88c75dd8458f1f4c15659a7bc54d67e6091baaeae662ee8cc5d26b6d721bb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a8376431657226e41bbeae1049685513c2ddd293a8a68f7415e7364a332edd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepNamespacedSourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79e731b4-4762-95e8-2308-11912fdfd6ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSupIndep_pair {i j : ι} (hij : i ≠ j) (huniv : ∀ k, k = i ∨ k = j) :
    iSupIndep t ↔ Disjoint (t i) (t j) := by
  constructor
  · exact fun h => h.pairwiseDisjoint hij
  · rintro h k
    obtain rfl | rfl := huniv k
    · refine h.mono_right (iSup_le fun i => iSup_le fun hi => Eq.le ?_)
      rw [(huniv i).resolve_left hi]
    · refine h.symm.mono_right (iSup_le fun j => iSup_le fun hj => Eq.le ?_)
      rw [(huniv j).resolve_right hj]

@[deprecated (since := "2024-11-24")] alias CompleteLattice.independent_pair := iSupIndep_pair

/-- Composing an independent indexed family with an order isomorphism on the elements results in
another independent indexed family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepNamespacedSourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variantf88c75dd8458f1f4c15659a7bc54d67e6091baaeae662ee8cc5d26b6d721bb13.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5783d65b925286f826426ed2911ad4b7f9c3d6ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=106c3d8f21583d00d0a0d1a719e2e275e97c565fe442d0c29f3ff7280134f52f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variantf88c75dd8458f1f4c15659a7bc54d67e6091baaeae662ee8cc5d26b6d721bb13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
