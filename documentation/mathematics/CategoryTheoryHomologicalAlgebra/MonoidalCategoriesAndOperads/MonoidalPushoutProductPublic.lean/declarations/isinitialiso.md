# isInitialIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:160c1457daccd760173c0550f69e3824f6bc213772b206c29c5ae880e2ca3f99",
  "kind": "def",
  "lexical_name": "isInitialIso",
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
  "slug": "isinitialiso",
  "source": {
    "blob": "e1512232e5bc5386445cf1d1f04227e6c906be8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 324,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaa5d1c8aae4f0cfd0c2dda09bb59f6aa072536b553c680a65b42e224184d3723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99e5e637f9fda2cc3e56ca8528de9e4520befec9328d180d4469df299512f8fa",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:160c1457daccd760173c0550f69e3824f6bc213772b206c29c5ae880e2ca3f99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isInitialIso [CartesianMonoidalCategory C] [MonoidalClosed C] [BraidedCategory C]
    (X : Arrow C) {I : C} (i : IsInitial I) {W : C} :
    (Opposite.op (Arrow.mk (i.to W)) ⋔ X) ≅ Arrow.mk ((ihom W).map X.hom) :=
  haveI : IsIso ((ihom I).map X.hom) :=
    isIso_of_isTerminal (isTerminalTensorUnit.ofIso (powZero i).symm)
      (isTerminalTensorUnit.ofIso (powZero i).symm) _
  haveI : IsPullback ((isTerminalTensorUnit.ofIso (powZero i).symm).from _) (𝟙 _)
      ((ihom I).map X.hom) ((MonoidalClosed.pre (i.to W)).app X.right) :=
    .of_vert_isIso (sq := ⟨(isTerminalTensorUnit.ofIso (powZero i).symm).hom_ext ..⟩)
  Arrow.isoMk' _ _ (Iso.refl _) this.isoPullback.symm ((this.isoPullback).eq_comp_inv.2
    (pullback.hom_ext ((isTerminalTensorUnit.ofIso (powZero i).symm).hom_ext ..) (by simp)))

end

end PullbackHom

end CategoryTheory.MonoidalCategory.Arrow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaa5d1c8aae4f0cfd0c2dda09bb59f6aa072536b553c680a65b42e224184d3723.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1512232e5bc5386445cf1d1f04227e6c906be8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50fc0b676216ba96115cbee7d4ac4053077899a0316722185c383439c2c8a751 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaa5d1c8aae4f0cfd0c2dda09bb59f6aa072536b553c680a65b42e224184d3723.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
