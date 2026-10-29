# of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc50865d-28fc-e301-466a-cf4223929fb7",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.IsLocalHomId.Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.IsLocalHom.of_surjective",
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
  "slug": "of-surjective-source-line-126-occurrence-2",
  "source": {
    "blob": "5a54f107356a1c65bfbc165954e1c4f8c3febbd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 126,
    "path": "GRWTSK/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e378eb60de6ab130516daa73e6bbe851dc0a86c4600fe176f2a2c475671acd6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/RingHomBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc50865d-28fc-e301-466a-cf4223929fb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.IsLocalHomId.Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.IsLocalHom.of_surjective [CommRing R] [CommRing S] [Nontrivial S] [IsLocalRing R]
    (f : R →+* S) (hf : Function.Surjective f) :
    IsLocalHom f := by
  have := IsLocalRing.of_surjective' f ‹_›
  refine ((local_hom_TFAE f).out 4 1).mp ?_
  have := Ideal.comap_isMaximal_of_surjective f hf (K := maximalIdeal S)
  exact ((maximal_ideal_unique R).unique (inferInstanceAs (maximalIdeal R).IsMaximal) this).le

alias _root_.Function.Surjective.isLocalHom := _root_.GRWTSK.Algebra.IsLocalHomId.Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.IsLocalHom.of_surjective

/-- If `f : R →+* S` is a surjective local ring hom, then the induced units map is surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/RingHomBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a54f107356a1c65bfbc165954e1c4f8c3febbd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=688b9de66e104618b1c3de9ef6893607f95074b664ec77c59459ee213b55fdd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
