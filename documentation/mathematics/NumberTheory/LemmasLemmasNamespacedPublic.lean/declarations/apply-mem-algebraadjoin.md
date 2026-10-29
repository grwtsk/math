# apply_mem_algebraAdjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e49ef4b8-e7af-07da-395e-1d05c7962109",
  "kind": "lemma",
  "lexical_name": "apply_mem_algebraAdjoin",
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
  "slug": "apply-mem-algebraadjoin",
  "source": {
    "blob": "7ebbf6afb51626b0bc9e5e4351ebb74c8a5303e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 236,
    "path": "GRWTSK/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1d292f62b4108ed16d7b2291ef069a5b9f8275889381835896c8c2ebb2c7fdc",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/LemmasLemmasNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49ef4b8-e7af-07da-395e-1d05c7962109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_mem_algebraAdjoin {χ : MulChar F R} {μ : R} (hμ : IsPrimitiveRoot μ (orderOf χ))
    (a : F) :
    χ a ∈ Algebra.adjoin ℤ {μ} :=
  have : NeZero (orderOf χ) := ⟨χ.orderOf_pos.ne'⟩
  apply_mem_algebraAdjoin_of_pow_eq_one (pow_orderOf_eq_one χ) hμ a

end FiniteField

end MulChar
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/LemmasLemmasNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebbf6afb51626b0bc9e5e4351ebb74c8a5303e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb15d74a2cfefaaee0fc94b5dc200f237ae7650e2c96f0aa3a6d6e85febde1d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
