# head_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4310f5f-edfc-92f7-f1bd-54052cb6c4d2",
  "kind": "theorem",
  "lexical_name": "head_expansion",
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
  "slug": "head-expansion",
  "source": {
    "blob": "66dc2acb88044e8a73e6ed38e7794d91f27bd237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 518,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae89e920cb9d0d31371c7391181a5c94c0a95cdd03536c4be0fc6d6e65f6427",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Geometry/ReductionEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4310f5f-edfc-92f7-f1bd-54052cb6c4d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_expansion {A b a : Expr S} {as : List (Expr S)}
    (hA : StronglyNormalizing A) (hb : StronglyNormalizing b)
    (ha : StronglyNormalizing a) (has : StronglyNormalizingArgs as)
    (hc : StronglyNormalizing ((b.instantiate a).apps as)) :
    StronglyNormalizing ((Expr.app (.lam A b) a).apps as) := by
  induction hA generalizing b a as with
  | intro A hA ihA =>
      induction hb generalizing a as with
      | intro b hb ihb =>
          induction ha generalizing as with
          | intro a ha iha =>
              induction has with
              | intro as has ihas =>
                  apply Acc.intro
                  intro N hN
                  obtain ⟨f, hf, rfl⟩ | ⟨bs, hbs, rfl⟩ :=
                    hN.apps_inv (by intro D c heq; cases heq)
                  · cases hf with
                    | head => exact hc
                    | app_left hf =>
                        cases hf with
                        | lam_domain h =>
                            exact ihA _ h (Acc.intro _ hb) (Acc.intro _ ha)
                              (Acc.intro _ has) hc
                        | lam_body h =>
                            exact ihb _ h (Acc.intro _ ha) (Acc.intro _ has)
                              (hc.step ((h.subst (Expr.single a)).apps as))
                    | app_right h =>
                        exact iha _ h (Acc.intro _ has)
                          (hc.reduces ((Parallel.instantiate (Parallel.refl b)
                            (Parallel.of_beta h)).reduces.apps as))
                  · exact ihas _ hbs (hc.step (hbs.apps _))

end StronglyNormalizing

namespace Expr
variable {S : Type u}
/-- Only literal syntax descent, including both annotations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Geometry/ReductionEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66dc2acb88044e8a73e6ed38e7794d91f27bd237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b41fa085bbbf71f04768b033229f1ed3ee8f468621e73691e9631c25b6099b47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variantb47cfa5c73ea3cf687bfcfc76285297ab71835982eecd41a44167a783040904e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
