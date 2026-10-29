# lequivProdDirectSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c82271674c0609c195b8598b2173618d68978bc47bb82d7dde22616f2f49c7d6",
  "kind": "def",
  "lexical_name": "lequivProdDirectSum",
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
  "slug": "lequivproddirectsum--580c5173d9a0c7a9cbe30bab",
  "source": {
    "blob": "e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 358,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:580c5173d9a0c7a9cbe30babcee4566065457d03dea9dad9bfa455aef4d01cd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c82271674c0609c195b8598b2173618d68978bc47bb82d7dde22616f2f49c7d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lequivProdDirectSum : (⨁ i, α i) ≃ₗ[R] α none × ⨁ i, α (some i) :=
  { addEquivProdDirectSum with map_smul' := DFinsupp.equivProdDFinsupp_smul }

end Option

end General

section Submodule

section Semiring

variable {R : Type u} [Semiring R]
variable {ι : Type v} [dec_ι : DecidableEq ι]
variable {M : Type*} [AddCommMonoid M] [Module R M]
variable (A : ι → Submodule R M)

/-- The canonical linear map from `⨁ i, A i` to `M` where `A` is a collection of `Submodule R M`
indexed by `ι`. This is `DirectSum.coeAddMonoidHom` as a `LinearMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d488f3c825c177f34db66038ffbc0ff9f9c0d421f39154cef2dbb0e981da1ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
