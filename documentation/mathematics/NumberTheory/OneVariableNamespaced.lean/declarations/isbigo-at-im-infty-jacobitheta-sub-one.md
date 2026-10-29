# isBigO_at_im_infty_jacobiTheta_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55a36ccc-2123-45c0-a46d-f79081515378",
  "kind": "theorem",
  "lexical_name": "isBigO_at_im_infty_jacobiTheta_sub_one",
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
  "slug": "isbigo-at-im-infty-jacobitheta-sub-one",
  "source": {
    "blob": "072154c19cf3bf6cd3a674365081345466066c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant68a1460630c342737be6f43363105e283f2ce4ee9e81825300630bfc93ebfba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed90ba4bb108944308ef3a2c512112d7f45b89822eaaed0c30abc1a30a4f8f8a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/OneVariableNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a36ccc-2123-45c0-a46d-f79081515378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_at_im_infty_jacobiTheta_sub_one :
    (fun τ => jacobiTheta τ - 1) =O[comap im atTop] fun τ => rexp (-π * τ.im) := by
  simp_rw [IsBigO, IsBigOWith, Filter.eventually_comap, Filter.eventually_atTop]
  refine ⟨2 / (1 - rexp (-(π * 1))), 1, fun y hy τ hτ =>
    (norm_jacobiTheta_sub_one_le (hτ.symm ▸ zero_lt_one.trans_le hy : 0 < im τ)).trans ?_⟩
  rw [Real.norm_eq_abs, Real.abs_exp, hτ, neg_mul]
  gcongr
  simp [pi_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/OneVariableNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant68a1460630c342737be6f43363105e283f2ce4ee9e81825300630bfc93ebfba7.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072154c19cf3bf6cd3a674365081345466066c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee571ed1c97125214593db5c081996311ef095cd185a87aaaf74ec22043a154a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant68a1460630c342737be6f43363105e283f2ce4ee9e81825300630bfc93ebfba7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
