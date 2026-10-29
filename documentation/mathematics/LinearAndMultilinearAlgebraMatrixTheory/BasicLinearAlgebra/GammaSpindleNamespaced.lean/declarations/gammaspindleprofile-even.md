# gammaSpindleProfile_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:800a8932-285d-a2e1-4863-a30e3d628cdf",
  "kind": "theorem",
  "lexical_name": "gammaSpindleProfile_even",
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
  "slug": "gammaspindleprofile-even",
  "source": {
    "blob": "3830ee6d5869dd3e096bccfadb544f35a63125f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 178,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96a61a1af725f99e5b5adc64ce957bd5cb2e17ec0660141461be8e780d1ed5a8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GammaSpindleNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:800a8932-285d-a2e1-4863-a30e3d628cdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaSpindleProfile_even (chi : PrimitiveCharacter) (t : ℝ) :
    gammaSpindleProfile chi (-t) = gammaSpindleProfile chi t := by
  have argumentConj :
      (criticalLine (-t) + parityScalar chi) / 2 =
        conj ((criticalLine t + parityScalar chi) / 2) := by
    rw [criticalLine_neg]
    rw [map_div₀]
    have two_star : (starRingEnd ℂ) (2 : ℂ) = 2 :=
      map_ofNat (starRingEnd ℂ) 2
    rw [two_star]
    simp [parityScalar]
  unfold gammaSpindleProfile
  rw [argumentConj, digamma_conj]
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GammaSpindleNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3830ee6d5869dd3e096bccfadb544f35a63125f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1394c2321cb64b8f87655cc689c1e5b28d5cfe957dbd2f508bd389fe12c047b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
