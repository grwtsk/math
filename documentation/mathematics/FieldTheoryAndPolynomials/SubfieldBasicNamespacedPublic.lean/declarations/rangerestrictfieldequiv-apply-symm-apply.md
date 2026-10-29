# rangeRestrictFieldEquiv_apply_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74eb41e2-2935-7329-46cc-feb53cacd1e3",
  "kind": "theorem",
  "lexical_name": "rangeRestrictFieldEquiv_apply_symm_apply",
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
  "slug": "rangerestrictfieldequiv-apply-symm-apply",
  "source": {
    "blob": "eed4653873a91b048990618e6675004b305c1b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 475,
    "path": "GRWTSK/Algebra/Basic/Variantdebf7e1a8232c6ee13d86816cace37f0e3994c742aa317d76b529c10bbcbf452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4d041b86d2580565fe1d4a3ec4f5be8df48b0bdfecce70865c9287840f1ead4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FieldTheoryAndPolynomials/SubfieldBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74eb41e2-2935-7329-46cc-feb53cacd1e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rangeRestrictFieldEquiv_apply_symm_apply (f : K →+* L) (x : f.fieldRange) :
    f (f.rangeRestrictFieldEquiv.symm x) = x := by
  rw [← rangeRestrictFieldEquiv_apply_coe, RingEquiv.apply_symm_apply]

section eqLocus

variable {L : Type v} [Semiring L]

/-- The subfield of elements `x : R` such that `f x = g x`, i.e.,
the equalizer of f and g as a subfield of R -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FieldTheoryAndPolynomials/SubfieldBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantdebf7e1a8232c6ee13d86816cace37f0e3994c742aa317d76b529c10bbcbf452.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed4653873a91b048990618e6675004b305c1b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f240a1c44458c16993993b3c0c2d0660effbddb7aa542ef6be16eab11e9b363b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variantdebf7e1a8232c6ee13d86816cace37f0e3994c742aa317d76b529c10bbcbf452.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
