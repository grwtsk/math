# Balanced.mem_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1db2548f-50b5-bdd0-7023-845188d9b36c",
  "kind": "theorem",
  "lexical_name": "Balanced.mem_smul_iff",
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
  "slug": "balanced-mem-smul-iff",
  "source": {
    "blob": "f2ed60f15d24dc8b62d341f03cd555c26f2c89a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 305,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740a7bfdbd7d528ba95a3b749a12d7c10fe828d65d12d1b6b15a1b4a1962d9d7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1db2548f-50b5-bdd0-7023-845188d9b36c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Balanced.mem_smul_iff (hs : Balanced 𝕜 s) (h : ‖a‖ = ‖b‖) : a • x ∈ s ↔ b • x ∈ s := by
  obtain rfl | hb := eq_or_ne b 0
  · rw [norm_zero, norm_eq_zero] at h
    rw [h]
  have ha : a ≠ 0 := norm_ne_zero_iff.1 (ne_of_eq_of_ne h <| norm_ne_zero_iff.2 hb)
  constructor <;> intro h' <;> [rw [← inv_mul_cancel_right₀ ha b];
      rw [← inv_mul_cancel_right₀ hb a]] <;>
    · rw [← smul_eq_mul, smul_assoc]
      refine' hs.smul_mem _ h'
      simp [← h, ha]
#align balanced.mem_smul_iff Balanced.mem_smul_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/LocallyConvexBasicNamespacedSourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ed60f15d24dc8b62d341f03cd555c26f2c89a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96a9c18d8af17b8d56e7b97c9da8b40b15509d9aae0e1fe69ba7c8c9f312c6b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
