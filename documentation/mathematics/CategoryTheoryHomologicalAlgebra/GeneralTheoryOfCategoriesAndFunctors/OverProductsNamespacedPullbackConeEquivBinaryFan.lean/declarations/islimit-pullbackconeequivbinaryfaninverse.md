# IsLimit.pullbackConeEquivBinaryFanInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9a4b943ff05b3a981e2112f97acd2714478691c9d408411410a5fc50067bc40",
  "kind": "def",
  "lexical_name": "IsLimit.pullbackConeEquivBinaryFanInverse",
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
  "slug": "islimit-pullbackconeequivbinaryfaninverse",
  "source": {
    "blob": "889956f476b6ce70bcee65f8a5dd540d4050a287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:762fe5af60dc308896858f328eb7ba169526a71d23fd1aa49ddf281365f4fe32",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverProductsNamespacedPullbackConeEquivBinaryFan.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9a4b943ff05b3a981e2112f97acd2714478691c9d408411410a5fc50067bc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsLimit.pullbackConeEquivBinaryFanInverse {c : BinaryFan (Over.mk f) (.mk g)} (hc : IsLimit c) :
    IsLimit <| pullbackConeEquivBinaryFan.inverse.obj c :=
  PullbackCone.IsLimit.mk
    (c.fst.w.trans c.snd.w.symm)
    (fun s ↦ (hc.lift <| pullbackConeEquivBinaryFan.functor.obj s).left)
    (fun s ↦ by simpa only using congr($(hc.fac _ _).left))
    (fun s ↦ by simpa only using congr($(hc.fac _ _).left))
    <| fun s m hm₁ hm₂ ↦ by
      change PullbackCone f g at s
      have := hc.uniq (pullbackConeEquivBinaryFan.functor.obj s) (Over.homMk m <| by
        have := c.fst.w
        simp only [pair_obj_left, Over.mk_left, Functor.id_obj, pair_obj_right,
          Functor.const_obj_obj, Over.mk_hom, Functor.id_map, CostructuredArrow.right_eq_id,
          Discrete.functor_map_id, Category.comp_id] at hm₁ this
        simp [← hm₁, this])
        (by rintro (_ | _) <;> ext <;> simpa)
      exact congr(($this).left)

end Over

section Under
variable {f : X ⟶ Y} {g : X ⟶ Z}

/-- Pushout cocones from `X` are the same thing as binary cofans in `Under X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverProductsNamespacedPullbackConeEquivBinaryFan.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `889956f476b6ce70bcee65f8a5dd540d4050a287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39c368370780da3fcbcbe1e6aade5dacd9499840be6522f19af0daac352e46db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
