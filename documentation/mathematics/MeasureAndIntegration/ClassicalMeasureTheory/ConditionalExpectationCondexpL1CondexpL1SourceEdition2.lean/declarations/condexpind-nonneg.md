# condexpInd_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b2f2118875ab34e74ea461c86fcb23bd96a63aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2fad401-74d0-e8ab-d041-c30f216dfc58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2584d5f-0d2e-ab27-b685-d88fbebe79e0",
  "kind": "theorem",
  "lexical_name": "condexpInd_nonneg",
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
  "slug": "condexpind-nonneg",
  "source": {
    "blob": "8b2f2118875ab34e74ea461c86fcb23bd96a63aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 359,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d902911966f5b8b1ec61ee053d8f74fb46abea90e93322816fbc57707123c37e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2584d5f-0d2e-ab27-b685-d88fbebe79e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condexpInd_nonneg {E} [NormedLatticeAddCommGroup E] [NormedSpace ℝ E] [OrderedSMul ℝ E]
    (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (x : E) (hx : 0 ≤ x) : 0 ≤ condexpInd E hm μ s x := by
  rw [← coeFn_le]
  refine' EventuallyLE.trans_eq _ (condexpInd_ae_eq_condexpIndSMul hm hs hμs x).symm
  exact (coeFn_zero E 1 μ).trans_le (condexpIndSMul_nonneg hs hμs x hx)
#align measure_theory.condexp_ind_nonneg MeasureTheory.condexpInd_nonneg

end CondexpInd

section CondexpL1

set_option linter.uppercaseLean3 false

variable {m m0 : MeasurableSpace α} {μ : Measure α} {hm : m ≤ m0} [SigmaFinite (μ.trim hm)]
  {f g : α → F'} {s : Set α}

-- Porting note: `F'` is not automatically inferred in `condexpL1Clm` in Lean 4;
-- to avoid repeatedly typing `(F' := ...)` it is made explicit.
variable (F')

/-- Conditional expectation of a function as a linear map from `α →₁[μ] F'` to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b2f2118875ab34e74ea461c86fcb23bd96a63aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a962a0316d2ce97738de4deead694e3bab9639e3cd212ae764ff7a33495c1a2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
