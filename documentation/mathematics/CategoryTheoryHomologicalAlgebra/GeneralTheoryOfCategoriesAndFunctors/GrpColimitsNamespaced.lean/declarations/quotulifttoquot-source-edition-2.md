# quotUliftToQuot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d28819843a79de6385fc10d32b69e43fd1d773d72db2d949c36d547df2e8b6c0",
  "kind": "def",
  "lexical_name": "quotUliftToQuot",
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
  "slug": "quotulifttoquot-source-edition-2",
  "source": {
    "blob": "5fd9ec92be411800742200d67562dc53230598cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac9f0f6ef4c7abb0d55526da8ef5faa1ad61a49b2bef3c860cfb03e2139e66f9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d28819843a79de6385fc10d32b69e43fd1d773d72db2d949c36d547df2e8b6c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotUliftToQuot [DecidableEq J] : Quot (F ⋙ uliftFunctor.{u'}) →+ Quot F := by
  refine QuotientAddGroup.lift (Relations (F ⋙ uliftFunctor))
    (DFinsupp.sumAddHom (fun j ↦ (Quot.ι _ j).comp AddEquiv.ulift.toAddMonoidHom)) ?_
  rw [AddSubgroup.closure_le]
  intro _ hx
  obtain ⟨j, j', u, a, rfl⟩ := hx
  rw [SetLike.mem_coe, AddMonoidHom.mem_ker, map_sub, DFinsupp.sumAddHom_single,
    DFinsupp.sumAddHom_single]
  change Quot.ι F j' (F.map u (AddEquiv.ulift a)) - _ = _
  rw [Quot.map_ι]
  dsimp
  rw [sub_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpColimitsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd9ec92be411800742200d67562dc53230598cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48d2298df19002622c0e616792e1ebff0b80aeda2a16659993f33036149199cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
