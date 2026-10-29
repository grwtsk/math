# mk_int_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5b7899a-1d59-e201-4b8f-ac3c7cb49bab",
  "kind": "theorem",
  "lexical_name": "mk_int_mul",
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
  "slug": "mk-int-mul",
  "source": {
    "blob": "a93a59bba6b604056d5152bef719eabaa3503d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 479,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9e32c21868833e1cb824750ce7ed039e8988ff683cea496071e68628836ea19",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/QuotientGroupBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b7899a-1d59-e201-4b8f-ac3c7cb49bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_int_mul (n : ℤ) (a : R) : ((n * a : R) : R ⧸ N) = n • ↑a := by
  rw [← zsmul_eq_mul, mk_zsmul N a n]

end QuotientAddGroup

namespace QuotientGroup

section powMonoidHom

-- TODO: Generalize to arbitrary products of homomorphisms

variable {ι : Type*} (A : ι → Type*) [∀ i, CommGroup (A i)] (n : ℕ)

/-- The isomorphism between the quotient of a product by the image of the `n`th power map
and the product of the quotients by the images of the `n`th power maps on the factors. -/
@[to_additive
  /-- The isomorphism between the quotient of a product by the image of the multiplication-by-`n`
  map and the product of the quotients by the images of the multiplication-by-`n` maps
  on the factors. -/ ]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/QuotientGroupBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a93a59bba6b604056d5152bef719eabaa3503d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c9e8d137ab019c6eabac6a5a9728bcc76c0c7fb1a32fe482d4bb1fdec4ef36c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
