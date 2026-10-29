# dft_comp_unitMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0f02631-bd3d-8f5f-8cc1-cd518f242787",
  "kind": "lemma",
  "lexical_name": "dft_comp_unitMul",
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
  "slug": "dft-comp-unitmul",
  "source": {
    "blob": "48b93d45b1d17a9379277cc9fa5b5c7dd670fbd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 183,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9364ae31854378f37125440766870f546abe00e83247cd732f4ead6aa855feb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/ZModNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0f02631-bd3d-8f5f-8cc1-cd518f242787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dft_comp_unitMul (Φ : ZMod N → E) (u : (ZMod N)ˣ) (k : ZMod N) :
    𝓕 (fun j ↦ Φ (u.val * j)) k = 𝓕 Φ (u⁻¹.val * k) := by
  refine Fintype.sum_equiv u.mulLeft _ _ fun x ↦ ?_
  simp only [mul_comm u.val, u.mulLeft_apply, ← mul_assoc, u.mul_inv_cancel_right]

section signs

/-- The discrete Fourier transform of `Φ` is even if and only if `Φ` itself is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/ZModNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b93d45b1d17a9379277cc9fa5b5c7dd670fbd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47eadaa702ac534ae692eb6fb7622bfbb422034d527c624fee4345627e4ebf0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
