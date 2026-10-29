# typeIIMatrixPairing_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d02cae6-0802-4911-6602-86659b2ed97b",
  "kind": "theorem",
  "lexical_name": "typeIIMatrixPairing_sum",
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
  "slug": "typeiimatrixpairing-sum",
  "source": {
    "blob": "9720bc3ca0f50f995d9b09ab0c19715237c812d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19246e966f2732c57553d9dc3870e62be06f586264730da5efc04a6ecd02db44",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d02cae6-0802-4911-6602-86659b2ed97b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeIIMatrixPairing_sum {Index Left Right : Type*}
    [Fintype Index] [Fintype Left] [Fintype Right]
    (left : EuclideanSpace ℂ Left) (matrices : Index → Matrix Left Right ℂ)
    (right : EuclideanSpace ℂ Right) :
    typeIIMatrixPairing left (∑ index, matrices index) right =
      ∑ index, typeIIMatrixPairing left (matrices index) right := by
  exact bilinearMatrixPairing_sum left matrices right

/-! ## Bilinear packet factorization -/

/-- An exact bipartite factorization of the fixed Type II cutoff matrix.

`Left` and `Right` are finite copies of the canonical scale index, recorded
by equivalences so that coefficient provenance is explicit.  The packet
spaces are complex Hilbert spaces.  `packetMatrix + residualMatrix` is
required to equal the literal cutoff matrix entry by entry.

The final field is the finite arithmetic reindexing from the already checked
Vaughan prefix to the cutoff pairing.  It is an equality and carries no
analytic estimate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9720bc3ca0f50f995d9b09ab0c19715237c812d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78e55b68942a9b0e47d8d1c9af408da91b6e867f05a1335cc827dbd8f7774ce5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
