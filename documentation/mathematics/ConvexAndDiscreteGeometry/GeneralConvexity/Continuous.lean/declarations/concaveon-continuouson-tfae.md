# ConcaveOn.continuousOn_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83dd728c08d02c6ca748331ccdeb57c66489ad1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1775f841-15be-ee15-201b-04aea86a9da6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d6a7b07-6260-eb29-8369-e72aab923255",
  "kind": "lemma",
  "lexical_name": "ConcaveOn.continuousOn_tfae",
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
  "slug": "concaveon-continuouson-tfae",
  "source": {
    "blob": "83dd728c08d02c6ca748331ccdeb57c66489ad1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:490eb5a93d448e0d56ab436e8e6cf7dbefc840458a81b83b2289972e13975f1a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/Continuous.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d6a7b07-6260-eb29-8369-e72aab923255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConcaveOn.continuousOn_tfae (hC : IsOpen C) (hC' : C.Nonempty) (hf : ConcaveOn ℝ C f) : TFAE [
    LocallyLipschitzOn C f,
    ContinuousOn f C,
    ∃ x₀ ∈ C, ContinuousAt f x₀,
    ∃ x₀ ∈ C, (𝓝 x₀).IsBoundedUnder (· ≥ ·) f,
    ∀ ⦃x₀⦄, x₀ ∈ C → (𝓝 x₀).IsBoundedUnder (· ≥ ·) f,
    ∀ ⦃x₀⦄, x₀ ∈ C → (𝓝 x₀).IsBoundedUnder (· ≤ ·) |f|] := by
  have := hf.neg.continuousOn_tfae hC hC'
  simp only [locallyLipschitzOn_neg_iff, continuousOn_neg_iff, continuousAt_neg_iff, abs_neg]
    at this
  convert this using 8 <;> exact (Equiv.neg ℝ).exists_congr (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/Continuous.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83dd728c08d02c6ca748331ccdeb57c66489ad1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=374a01b73a2c009c64edd928c19cc225d43ea21e8dc2aeb14db8e0d8f3adb9f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/30/305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
