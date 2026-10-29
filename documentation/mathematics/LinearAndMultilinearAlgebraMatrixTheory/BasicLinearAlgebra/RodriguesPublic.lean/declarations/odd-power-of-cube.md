# odd_power_of_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f876424d785c866272bb0f4d4b9a16619e6bb4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50103686-a51f-5ce0-5867-c69b91d08dbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90dffa0e-7fa0-890e-3014-6b2f64312f79",
  "kind": "theorem",
  "lexical_name": "odd_power_of_cube",
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
  "slug": "odd-power-of-cube",
  "source": {
    "blob": "2f876424d785c866272bb0f4d4b9a16619e6bb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 83,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b29c20464448ab4e987de0b425491131da24a9034a16bc95d1d106726b77ef0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RodriguesPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90dffa0e-7fa0-890e-3014-6b2f64312f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem odd_power_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) (n : ℕ) :
    x ^ (2 * n + 1) = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x) := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        x ^ (2 * (n + 1) + 1) = x ^ (2 * n + 1) * x ^ 2 := by
          rw [← pow_add]
          congr 1
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x) * x ^ 2 := by rw [ih]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • (x * x ^ 2)) := by
          rw [smul_mul_assoc]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x ^ 3) := by
          congr 1
          exact (pow_succ' x 2).symm
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • ((-(θ ^ 2)) • x)) := by rw [hcube]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n) * (-(θ ^ 2))) • x) := by
          rw [smul_smul]
        _ = (((-1 : ℝ) ^ (n + 1) * θ ^ (2 * (n + 1))) • x) := by
          congr 1
          rw [pow_succ, show 2 * (n + 1) = 2 * n + 2 by omega, pow_add]
          ring

/-- Positive even powers reduce to the span of the squared generator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RodriguesPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f876424d785c866272bb0f4d4b9a16619e6bb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdc77f1a79d086039dd27b87634982298283ff8ec8e0aa137a7120bb3d139862 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
