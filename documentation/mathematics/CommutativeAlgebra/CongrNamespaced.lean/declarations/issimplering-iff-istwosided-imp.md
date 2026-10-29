# isSimpleRing_iff_isTwoSided_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6602bf83-ca8f-760b-2a9e-30bb285c37e9",
  "kind": "theorem",
  "lexical_name": "isSimpleRing_iff_isTwoSided_imp",
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
  "slug": "issimplering-iff-istwosided-imp",
  "source": {
    "blob": "7674bb3813de43756ddac343c48cb21cedbe3020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b97eea364f81a1a0c1943d185d8b2a91964a54223f2b3cf3e07be955eaf3914",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/CongrNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6602bf83-ca8f-760b-2a9e-30bb285c37e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSimpleRing_iff_isTwoSided_imp {R : Type*} [Ring R] :
    IsSimpleRing R ↔ Nontrivial R ∧ ∀ I : Ideal R, I.IsTwoSided → I = ⊥ ∨ I = ⊤ := by
  let e := orderIsoIsTwoSided (R := R)
  simp_rw [isSimpleRing_iff, isSimpleOrder_iff, orderIsoRingCon.toEquiv.nontrivial_congr,
    RingCon.nontrivial_iff, e.forall_congr_left, Subtype.forall, ← e.injective.eq_iff]
  simp [e, Subtype.ext_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/CongrNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7674bb3813de43756ddac343c48cb21cedbe3020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c20e02cbdfbfcb01198fe425416764b4266c0c9e40a12b06538b162490cd9cf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
