# IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd3c2190d4244b48b8beb6401f4c61dee8c741d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:657680f3-c998-efd5-ab16-d3b3fcb01580",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee611147-53e1-9166-4278-df41c34eb0b1",
  "kind": "theorem",
  "lexical_name": "IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single",
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
  "slug": "ishilbertsum-linearisometryequiv-apply-dfinsupp-sum-single",
  "source": {
    "blob": "dd3c2190d4244b48b8beb6401f4c61dee8c741d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 367,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c888f415ae93ad17dff9fb3efc1404c1904ec50e1fdb0c513d3627c11674cb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/L2SpaceAligned.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee611147-53e1-9166-4278-df41c34eb0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single
    (hV : IsHilbertSum 𝕜 G V) (W₀ : Π₀ i : ι, G i) :
    (hV.linearIsometryEquiv (W₀.sum fun i => V i) : ∀ i, G i) = W₀ := by
  rw [← hV.linearIsometryEquiv_symm_apply_dfinsupp_sum_single]
  rw [LinearIsometryEquiv.apply_symm_apply]
  ext i
  simp (config := { contextual := true }) [DFinsupp.sum, lp.single_apply]
#align is_hilbert_sum.linear_isometry_equiv_apply_dfinsupp_sum_single IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single

/-- Given a total orthonormal family `v : ι → E`, `E` is a Hilbert sum of `fun i : ι => 𝕜`
relative to the family of linear isometries `fun i k => k • v i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/L2SpaceAligned.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3c2190d4244b48b8beb6401f4c61dee8c741d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac82229fb08979669f45e97f42ff1d857c4fd0d912428b49d87a9241163bed69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
