# quotientSqrt_scaled_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e07644d-3056-78e4-6740-c9b256e7bddb",
  "kind": "theorem",
  "lexical_name": "quotientSqrt_scaled_le",
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
  "slug": "quotientsqrt-scaled-le",
  "source": {
    "blob": "ffd660f409c12c41d81901be21ae1d43225bbf05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4a2c260ccc85e52bbbfba7fc19f103b6f8ff666379af2b117da7973adf570ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a3ffd04650a8c452f0e47bd7400282559203d699610b4bec9bac8b844dffaa8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/ActualMoebiusSqrtLowerNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e07644d-3056-78e4-6740-c9b256e7bddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem quotientSqrt_scaled_le {U k : ℕ} :
    (k : ℝ) * Real.sqrt ((U / (k * k) : ℕ) : ℝ) ≤ Real.sqrt (U : ℝ) := by
  have he : (k : ℝ) ^ 2 * ((U / (k * k) : ℕ) : ℝ) ≤ (U : ℝ) := by
    simpa only [pow_two] using
      (show (k : ℝ) * k * ((U / (k * k) : ℕ) : ℝ) ≤ U by
        exact_mod_cast Nat.mul_div_le U (k * k))
  have hs := Real.sqrt_le_sqrt he
  rwa [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (Nat.cast_nonneg k)] at hs

/-- A full square-divisor block has an actual reciprocal-square upper budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/ActualMoebiusSqrtLowerNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4a2c260ccc85e52bbbfba7fc19f103b6f8ff666379af2b117da7973adf570ced.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffd660f409c12c41d81901be21ae1d43225bbf05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a902aacfdb5b02a557ffdcd87935b7bf76ba8918fc9a55070c2bcdda133b29d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4a2c260ccc85e52bbbfba7fc19f103b6f8ff666379af2b117da7973adf570ced.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
