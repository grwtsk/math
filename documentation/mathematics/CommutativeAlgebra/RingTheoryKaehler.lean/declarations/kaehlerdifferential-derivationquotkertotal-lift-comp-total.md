# KaehlerDifferential.derivationQuotKerTotal_lift_comp_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a05652a6c7cd213e3bea2b18708536e3d79a385",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 508,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cde988da-840c-1c18-6545-be8f7bf6cd0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78f3c723-e688-ab27-f24d-638541b896a9",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.derivationQuotKerTotal_lift_comp_total",
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
  "slug": "kaehlerdifferential-derivationquotkertotal-lift-comp-total",
  "source": {
    "blob": "3a05652a6c7cd213e3bea2b18708536e3d79a385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 508,
    "path": "GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd8b701dde6c05965ed311e1f363c99f0921ae2b60187d3f46f8173afb8fc51d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/RingTheoryKaehler.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78f3c723-e688-ab27-f24d-638541b896a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.derivationQuotKerTotal_lift_comp_total :
    (KaehlerDifferential.derivationQuotKerTotal R S).liftKaehlerDifferential.comp
        (Finsupp.total S (Ω[S⁄R]) S (KaehlerDifferential.D R S)) =
      Submodule.mkQ _ := by
  apply Finsupp.lhom_ext
  intro a b
  conv_rhs => rw [← Finsupp.smul_single_one a b, LinearMap.map_smul]
  simp [KaehlerDifferential.derivationQuotKerTotal_apply]
#align kaehler_differential.derivation_quot_ker_total_lift_comp_total KaehlerDifferential.derivationQuotKerTotal_lift_comp_total

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/RingTheoryKaehler.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a05652a6c7cd213e3bea2b18708536e3d79a385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1ff0bf3f38db6a106520a6a9a0f6c61473fca48e9622ffdc87e5b5c61a96d7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
