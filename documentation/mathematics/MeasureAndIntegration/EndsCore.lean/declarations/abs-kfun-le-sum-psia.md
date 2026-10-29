# abs_Kfun_le_sum_psiA

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96c0beae-2964-ad89-09b5-4197fb6bfad3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6757dd80-5ce1-949c-2f74-1f6ecba027c0",
  "kind": "theorem",
  "lexical_name": "abs_Kfun_le_sum_psiA",
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
  "slug": "abs-kfun-le-sum-psia",
  "source": {
    "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 613,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:987e7b498ecacb6c3096a499241d898ed59bd9c2517f4d00e4e778bff7e0743e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/EndsCore.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6757dd80-5ce1-949c-2f74-1f6ecba027c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_Kfun_le_sum_psiA (hF : LocalHypsCoreW cϱ p F) (τ τ' : ℝ) :
    |Kfun p F τ τ'| ≤ ∑ k : Fin p.d, psiA cϱ p (τ - p.tau k) * psiA cϱ p (τ' - p.tau k) := by
  unfold Kfun
  refine le_trans (Finset.abs_sum_le_sum_abs _ _) (Finset.sum_le_sum fun k _ => ?_)
  rw [abs_mul]
  have hL := hF.L_pos
  have hw : 0 < p.w := by linarith [hF.one_le_w]
  have hc : 0 ≤ cϱ := by linarith [hF.four_le_cϱ]
  exact mul_le_mul (hF.phiHat_le_psi _) (hF.phiHat_le_psi _) (abs_nonneg _)
    (psiA_nonneg hL.le hc hw _)

/-! ### K_out pointwise (weighted AM–GM), for 𝓔₁ -/

/-- general reindexing `Σ_{k ∈ Ico 0 d} f k = Σ_{k : Fin d} f k` for `f : ℤ → ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/EndsCore.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b16d8b5c9f92a6702a2e3e924eb6845c96c6517ab61eceb2a5c2914b8ba2d15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/70/70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
