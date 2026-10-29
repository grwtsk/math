# IsLocalization.scaleRoots_commonDenom_mem_lifts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:844d118b-3ebc-3e96-ef54-b71f95c28c6e",
  "kind": "theorem",
  "lexical_name": "IsLocalization.scaleRoots_commonDenom_mem_lifts",
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
  "slug": "islocalization-scaleroots-commondenom-mem-lifts",
  "source": {
    "blob": "bbf5dd8b32e11a86356b34fd6b2a29add25ac3a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 249,
    "path": "GRWTSK/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91ba11bfbbc78785dd7d3ceb5bf926781e2c602967ab89215ca66b57bad8ab1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844d118b-3ebc-3e96-ef54-b71f95c28c6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.scaleRoots_commonDenom_mem_lifts (p : Rₘ[X])
    (hp : p.leadingCoeff ∈ (algebraMap R Rₘ).range) :
    p.scaleRoots (algebraMap R Rₘ <| IsLocalization.commonDenom M p.support p.coeff) ∈
      Polynomial.lifts (algebraMap R Rₘ) := by
  rw [Polynomial.lifts_iff_coeff_lifts]
  intro n
  rw [Polynomial.coeff_scaleRoots]
  by_cases h₁ : n ∈ p.support
  on_goal 1 => by_cases h₂ : n = p.natDegree
  · rwa [h₂, Polynomial.coeff_natDegree, tsub_self, pow_zero, _root_.mul_one]
  · have : n + 1 ≤ p.natDegree := lt_of_le_of_ne (Polynomial.le_natDegree_of_mem_supp _ h₁) h₂
    rw [← tsub_add_cancel_of_le (le_tsub_of_add_le_left this), pow_add, pow_one, mul_comm,
      _root_.mul_assoc, ← map_pow]
    change _ ∈ (algebraMap R Rₘ).range
    apply mul_mem
    · exact RingHom.mem_range_self _ _
    · rw [← Algebra.smul_def]
      exact ⟨_, IsLocalization.map_integerMultiple M p.support p.coeff ⟨n, h₁⟩⟩
  · rw [Polynomial.notMem_support_iff] at h₁
    rw [h₁, zero_mul]
    exact zero_mem (algebraMap R Rₘ).range

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf5dd8b32e11a86356b34fd6b2a29add25ac3a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07cb434035ebf0683a298450be96fd3eb2ae69906c1035779b7d81b1bd9b4d8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
