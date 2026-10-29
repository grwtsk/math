# inertia_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d8281fc-2c0b-dcef-5b3f-7ae2735279f1",
  "kind": "theorem",
  "lexical_name": "inertia_quotient",
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
  "slug": "inertia-quotient",
  "source": {
    "blob": "8f581c1970d2dd79598cb0c745d054f68d868126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 547,
    "path": "GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b6bd74ad05557f982486e913272ee6f1e6b5b57c9f7f3d0c1806f724ddb73ee",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d8281fc-2c0b-dcef-5b3f-7ae2735279f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertia_quotient : p.inertia (G ⧸ H) = (q.inertia G).map (QuotientGroup.mk' H) :=
  .symm <| map_inertia_of_surjective (QuotientGroup.mk' H) H p q (QuotientGroup.mk'_surjective H)
    (QuotientGroup.ker_mk' H).ge (by simp [algebraMap.coe_smul'])

end Ideal

namespace IsFractionRing

variable (G A B K L : Type*) [Group G] [CommRing A] [CommRing B] [Algebra A B] [Field K] [Field L]
  [Algebra K L] [Algebra A K] [Algebra B L] [Algebra A L] [IsFractionRing A K] [IsFractionRing B L]
  [IsScalarTower A K L] [IsScalarTower A B L] [MulSemiringAction G B] [MulSemiringAction G L]
  [SMulDistribClass G B L] [hAB : Algebra.IsInvariant A B G] [SMulCommClass G A B]

/-- If `G` acts on `B/A` with `A` as the fixed subring, then `G` also acts on `L/K` with `K` as
the fixed subfield, where `K` and `L` are the fraction fields of `A` and `B` respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f581c1970d2dd79598cb0c745d054f68d868126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0ad73a46f42f6e0a33b1f5d2c2800ac8184ced46b01161eb27675c1f648f8e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
