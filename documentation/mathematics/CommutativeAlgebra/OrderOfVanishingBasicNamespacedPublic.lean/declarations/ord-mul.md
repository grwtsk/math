# ord_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbe384c2-3646-04c2-6b2e-668328b6782c",
  "kind": "theorem",
  "lexical_name": "ord_mul",
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
  "slug": "ord-mul",
  "source": {
    "blob": "ec6bc9b0fb7ccfc7c048d6fa7f7260d8164a7559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 115,
    "path": "GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32f670c34838ca8bcb726705e179af17650c244b7549126ebe95453c3cabac29",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbe384c2-3646-04c2-6b2e-668328b6782c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ord_mul {a b : R} (hb : b ∈ nonZeroDivisors R) :
    ord R (a * b) = ord R a + ord R b := by
  have := Module.length_eq_add_of_exact (Ideal.mulQuot b (Ideal.span {a}))
          (Ideal.quotOfMul b (Ideal.span {a})) (Ideal.mulQuot_injective (Ideal.span {a}) hb)
          (Ideal.quotOfMul_surjective (Ideal.span {a}))
          (Ideal.exact_mulQuot_quotOfMul (Ideal.span {a}))
  simp only [Ring.ord, ← this]
  have lem : (({b} : Set R) • Ideal.span {a}) = Ideal.span {b * a} := by
    simp [← Ideal.submodule_span_eq, Submodule.set_smul_span]
  have : (({b} : Set R) • Ideal.span {a}) = b • Ideal.span {a} := Submodule.singleton_set_smul
    (Ideal.span {a}) b
  rw [this] at lem
  rw [lem, mul_comm]

/--
Variation of `ord_mul` where the user has to show the first input is a non
zero divisor rather than the second.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec6bc9b0fb7ccfc7c048d6fa7f7260d8164a7559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=538d2162db8d55bc878e5c94dfb8d50ea8c8ac6c1443413512f3ce6d51b32f69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
