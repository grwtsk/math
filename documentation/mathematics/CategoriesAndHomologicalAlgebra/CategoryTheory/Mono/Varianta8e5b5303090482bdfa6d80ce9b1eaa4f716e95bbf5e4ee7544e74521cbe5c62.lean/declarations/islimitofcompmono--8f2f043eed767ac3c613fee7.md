# isLimitOfCompMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a96a613650ecf00e9b28422467e334ae5dc51f1246632beec0d209d1d6cc7ec6",
  "kind": "def",
  "lexical_name": "isLimitOfCompMono",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "islimitofcompmono--8f2f043eed767ac3c613fee7",
  "source": {
    "blob": "5ff0819a073ea9cd46b40caa4814393e23606f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f2f043eed767ac3c613fee79fcea70096bc3954f200469615cb6345c6e3d91f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a96a613650ecf00e9b28422467e334ae5dc51f1246632beec0d209d1d6cc7ec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfCompMono (f : X ⟶ W) (g : Y ⟶ W) (i : W ⟶ Z) [Mono i] (s : PullbackCone f g)
    (H : IsLimit s) :
    IsLimit
      (PullbackCone.mk _ _
        (show s.fst ≫ f ≫ i = s.snd ≫ g ≫ i by
          rw [← Category.assoc, ← Category.assoc, s.condition])) := by
  apply PullbackCone.isLimitAux'
  intro s
  rcases PullbackCone.IsLimit.lift' H s.fst s.snd
      ((cancel_mono i).mp (by simpa using s.condition)) with
    ⟨l, h₁, h₂⟩
  refine ⟨l, h₁, h₂, ?_⟩
  intro m hm₁ hm₂
  exact (PullbackCone.IsLimit.hom_ext H (hm₁.trans h₁.symm) (hm₂.trans h₂.symm) :)

end PullbackCone

end Monomorphisms

/-- The pullback of a monomorphism is a monomorphism -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff0819a073ea9cd46b40caa4814393e23606f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd56579f6ac524056af4e78531f8e035bb6846a803108b94719489a94580157c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
