# loglog_tangent_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8db09b99-8427-fc76-dc72-6da2cf5aab0b",
  "kind": "theorem",
  "lexical_name": "loglog_tangent_upper",
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
  "slug": "loglog-tangent-upper",
  "source": {
    "blob": "4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 16,
    "path": "GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f62bb8f88ee01ea8eace37e8fb3a26cacfbed34acacabc84f24723c936efbe97",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/CountErrorEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8db09b99-8427-fc76-dc72-6da2cf5aab0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem loglog_tangent_upper (T t : ℝ) (hT : 1 < T) (ht : T ≤ t) :
    Real.log (Real.log t) ≤ Real.log (Real.log T) +
      (Real.log t - Real.log T)/Real.log T := by
  have hTp : 0 < T := by linarith
  have htp : 0 < t := hTp.trans_le ht
  have hLT : 0 < Real.log T := Real.log_pos hT
  have hLt : 0 < Real.log t := hLT.trans_le (Real.log_le_log hTp ht)
  have he := Real.log_le_sub_one_of_pos (div_pos hLt hLT)
  rw [Real.log_div hLt.ne' hLT.ne'] at he
  have hd : (Real.log t - Real.log T)/Real.log T =
      Real.log t/Real.log T - 1 := by
    field_simp
  rw [hd]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/CountErrorEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfb6cf8cc393f3feadc8db48144573f2c6bd4e212ac948d2b91f5309f7854480 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
