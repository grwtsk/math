# bernoulliFun_endpoints_eq_of_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5d1e8cd-4abb-fcda-2f40-6effdd124f78",
  "kind": "theorem",
  "lexical_name": "bernoulliFun_endpoints_eq_of_ne_one",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "bernoullifun-endpoints-eq-of-ne-one--e0d25f00333e82dbba222571",
  "source": {
    "blob": "30f95b33707dcd13666be1867b4952fedf428dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 65,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0d25f00333e82dbba222571551764e9714d2adf47ebbd3877095443b2d6d89d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5d1e8cd-4abb-fcda-2f40-6effdd124f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulliFun_endpoints_eq_of_ne_one {k : ℕ} (hk : k ≠ 1) :
    bernoulliFun k 1 = bernoulliFun k 0 := by
  rw [bernoulliFun_eval_zero, bernoulliFun, Polynomial.eval_one_map, Polynomial.bernoulli_eval_one,
    bernoulli_eq_bernoulli'_of_ne_one hk, eq_ratCast]
#align bernoulli_fun_endpoints_eq_of_ne_one bernoulliFun_endpoints_eq_of_ne_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f95b33707dcd13666be1867b4952fedf428dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eecfca12404f4127361297db70a12d293d6e27a40b8e4818038a3d1d7d5b6675 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
