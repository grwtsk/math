# I_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:388f27aa-9026-cc6c-6132-d811477ab6af",
  "kind": "theorem",
  "lexical_name": "I_prop",
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
  "slug": "i-prop",
  "source": {
    "blob": "e0737427d2d7033129860dc943054961181a4c05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 296,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97810945d30abdf5a6b1def2a89f08bc20469f0f0f47597738083667c18ecc4a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/OfNormNamespacedInnerPropNegOne.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:388f27aa-9026-cc6c-6132-d811477ab6af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem I_prop : innerProp' E (I : 𝕜) := by
  by_cases hI : (I : 𝕜) = 0
  · rw [hI, ← Nat.cast_zero]; exact nat_prop _
  intro x y
  have hI' : (-I : 𝕜) * I = 1 := by rw [← inv_I, inv_mul_cancel hI]
  rw [conj_I, inner_, inner_, mul_left_comm]
  congr 1
  rw [smul_smul, I_mul_I_of_nonzero hI, neg_one_smul]
  rw [mul_sub, mul_add, mul_sub, mul_assoc I (𝓚 ‖I • x - y‖), ← mul_assoc (-I) I, hI', one_mul,
    mul_assoc I (𝓚 ‖I • x + y‖), ← mul_assoc (-I) I, hI', one_mul]
  have h₁ : ‖-x - y‖ = ‖x + y‖ := by rw [← neg_add', norm_neg]
  have h₂ : ‖-x + y‖ = ‖x - y‖ := by rw [← neg_sub, norm_neg, sub_eq_neg_add]
  rw [h₁, h₂]
  simp only [sub_eq_add_neg, mul_assoc]
  rw [← neg_mul_eq_neg_mul, ← neg_mul_eq_neg_mul]
  abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/OfNormNamespacedInnerPropNegOne.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0737427d2d7033129860dc943054961181a4c05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc0f1e88fbcef529e0d3580f8814ea564db3ffdb7bfe51dd723231fedfcd5297 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
