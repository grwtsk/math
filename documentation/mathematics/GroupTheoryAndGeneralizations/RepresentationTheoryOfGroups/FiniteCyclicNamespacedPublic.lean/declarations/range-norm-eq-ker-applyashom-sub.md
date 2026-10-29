# range_norm_eq_ker_applyAsHom_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8773728-0b95-9beb-c835-86736368b691",
  "kind": "lemma",
  "lexical_name": "range_norm_eq_ker_applyAsHom_sub",
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
  "slug": "range-norm-eq-ker-applyashom-sub",
  "source": {
    "blob": "c42f33127de484be4610e97522cd05f9921dc350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant4bec7cfb9bd7b05445d70ba96f0f608248fc01169e8955c1617b8f2ffe097256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62ce673c49675ac67ce85f4473af4223ad0ea670b7915acada3343e15031758b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FiniteCyclicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8773728-0b95-9beb-c835-86736368b691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_norm_eq_ker_applyAsHom_sub (hg : ∀ x, x ∈ Subgroup.zpowers g) :
    LinearMap.range (leftRegular k G).norm.hom.toLinearMap =
      LinearMap.ker (applyAsHom (leftRegular k G) g - 𝟙 _).hom.toLinearMap :=
  le_antisymm (fun _ ⟨_, h⟩ => by simp [sub_hom, applyAsHom_apply _, ← h, norm])
    fun x hx => ⟨.single 1 (x.coeff g), by
    ext γ
    have := coeff_of_leftRegular_of_generator (k := k) g hg x
      (by simpa [sub_hom, sub_eq_zero] using! hx) γ
    simp [norm, Representation.norm, this]⟩

omit [Fintype G] in variable [Finite G] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FiniteCyclicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant4bec7cfb9bd7b05445d70ba96f0f608248fc01169e8955c1617b8f2ffe097256.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c42f33127de484be4610e97522cd05f9921dc350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c54f65214c71e06e1dd6d163e538878bc68c7c25a7162af7e1fe43b8094d434e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant4bec7cfb9bd7b05445d70ba96f0f608248fc01169e8955c1617b8f2ffe097256.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
