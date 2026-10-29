# boundaryResidual_increment_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a053f28a-236d-caad-083f-3dff08aac1e4",
  "kind": "theorem",
  "lexical_name": "boundaryResidual_increment_product_integrable",
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
  "slug": "boundaryresidual-increment-product-integrable",
  "source": {
    "blob": "02405b9ad5f745c22c6cefe7b6423a439d392aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edf90599a0cce717ea2d65de2eb6063d9206e59e7f9de35fb106c4c68284fd07",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a053f28a-236d-caad-083f-3dff08aac1e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryResidual_increment_product_integrable (N M : ℕ)
    (hN : 1 ≤ N) (hM : 1 ≤ M) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      (boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t) *
        star (boundaryResidual (M + 1) ε h t - boundaryResidual M ε h t)) := by
  have hN' := (boundaryResidual_memLp (N + 1) (by omega) ε h hε hsmall hh hh1).sub
    (boundaryResidual_memLp N hN ε h hε hsmall hh hh1)
  have hM' := (boundaryResidual_memLp (M + 1) (by omega) ε h hε hsmall hh hh1).sub
    (boundaryResidual_memLp M hM ε h hε hsmall hh hh1)
  exact hN'.integrable_mul hM'.star

end
end CorrectedCutoffIncrementScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02405b9ad5f745c22c6cefe7b6423a439d392aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a35baa18f6b3b979b59861a9d6c1039379fccef244a5ccc28ad23929e00478ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
