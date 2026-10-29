# orderedCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fce29cb97808ae88ba57f81b5c97722fec174ef4695c4a86edcc6e2b8560a353",
  "kind": "instance",
  "lexical_name": "orderedCommMonoid",
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
  "slug": "orderedcommmonoid",
  "source": {
    "blob": "e97ef366feb4b5cad5c0a9f000000a248c0102ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 56,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f6109d14af5a98d4fd6f600a38be1792543a5289b2334a3c5efffeaf3e07d52",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidProdNamespacedAligned.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fce29cb97808ae88ba57f81b5c97722fec174ef4695c4a86edcc6e2b8560a353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance orderedCommMonoid [OrderedCommMonoid α]
    [CovariantClass α α (· * ·) (· < ·)] [OrderedCommMonoid β] :
    OrderedCommMonoid (α ×ₗ β) where
  mul_le_mul_left x y hxy z := ((le_iff _ _).1 hxy).elim
    (fun hxy => left _ _ <| mul_lt_mul_left' hxy _)
    (fun hxy => (le_iff _ _).2 <| Or.inr ⟨by rw [hxy.1], mul_le_mul_left' hxy.2 _⟩)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidProdNamespacedAligned.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e97ef366feb4b5cad5c0a9f000000a248c0102ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8234465841f9ddcedb5ca6f596cdc4afef3b11647b2f7c155cdfa273ab941936 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
