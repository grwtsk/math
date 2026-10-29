# sigmaAntidiagonalEquivProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:623d9f5c53add1eea07f1d91d98d8c87487f83af30f4daebe4591ce0dd505f01",
  "kind": "def",
  "lexical_name": "sigmaAntidiagonalEquivProd",
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
  "slug": "sigmaantidiagonalequivprod",
  "source": {
    "blob": "4415e5e53a8ffa948cc0edd2d4a55593cbf397d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95232ac235494fef9fef26c6c708d70a1b54d7f8e679c6fb8113fa61b57266c2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagProdNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:623d9f5c53add1eea07f1d91d98d8c87487f83af30f4daebe4591ce0dd505f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaAntidiagonalEquivProd [AddMonoid A] [HasAntidiagonal A] :
    (Σ n : A, antidiagonal n) ≃ A × A where
  toFun x := x.2
  invFun x := ⟨x.1 + x.2, x, mem_antidiagonal.mpr rfl⟩
  left_inv := by
    rintro ⟨n, ⟨k, l⟩, h⟩
    rw [mem_antidiagonal] at h
    exact Sigma.subtype_ext h rfl
  right_inv _ := rfl

variable {A : Type*}
  [AddCommMonoid A] [PartialOrder A] [CanonicallyOrderedAdd A]
  [LocallyFiniteOrderBot A] [DecidableEq A]

/-- In a canonically ordered add monoid, the antidiagonal can be construct by filtering.

Note that this is not an instance, as for some times a more efficient algorithm is available. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagProdNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4415e5e53a8ffa948cc0edd2d4a55593cbf397d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54d7986d9d823a2c0a5143f24a433df3b49dd4dc03db71da64f2229b19f22389 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
