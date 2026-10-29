# centeredPrefixMean_eq_actual_arithmetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33fd7321ad612214073373c9edf7e8c2ce2462ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efcc0fd3-8df9-4a8b-7aac-1ef4de059dc5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ee6cd22-9674-bda2-7830-04d8d1f29623",
  "kind": "theorem",
  "lexical_name": "centeredPrefixMean_eq_actual_arithmetic",
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
  "slug": "centeredprefixmean-eq-actual-arithmetic",
  "source": {
    "blob": "33fd7321ad612214073373c9edf7e8c2ce2462ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 200,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd3f365d1bdbd30116ff4212d82ea9c58f0d6c657511db8618b77bca1563d347",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorageEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ee6cd22-9674-bda2-7830-04d8d1f29623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredPrefixMean_eq_actual_arithmetic (U : ℕ) (hU : 1 ≤ U) :
    centeredPrefixMean U = 1 + (1 / 2 : ℝ) *
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ)) -
      ((U : ℝ) + (1 / 2 : ℝ)) * alpha U := by
  calc
    _ = ∑ d ∈ Finset.Icc 1 U,
        ((moebius d : ℝ) * ((U / d : ℕ) : ℝ) +
          (1 / 2 : ℝ) * (moebius d : ℝ) -
          ((U : ℝ) + (1 / 2 : ℝ)) * ((moebius d : ℝ) / (d : ℝ))) := by
      unfold centeredPrefixMean
      apply Finset.sum_congr rfl
      intro d hd
      rw [divisorMean_eq_quotient U d (by
        have := (Finset.mem_Icc.mp hd).1
        omega)]
      ring
    _ = _ := by
      simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib, ← Finset.mul_sum,
        moebius_floor_convolution U hU, alpha]

/-- The complete actual centered prefix is mean plus signed cyclic storage work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorageEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33fd7321ad612214073373c9edf7e8c2ce2462ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=867071a339478b1bf09f330b7056fabdeeae0d363cc3402fb447fbdb02b9116c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/58/582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
