# mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b021ee37505799b0439d0373bd3a6d1fce9753faa33ecf04b55eec59bc823e76",
  "kind": "def",
  "lexical_name": "mk",
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
  "slug": "mk",
  "source": {
    "blob": "aa44e83ad0f0afccc5ac6719efbe5cb38c3d565a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48c395d57c84aa0187ead73925d8f70b2c6106ceea7d4f28a2160164c9ce8999",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b021ee37505799b0439d0373bd3a6d1fce9753faa33ecf04b55eec59bc823e76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mk (d : B → M) (d_add : ∀ (b b' : B), d (b + b') = d b + d b' := by simp)
    (d_mul : ∀ (b b' : B), d (b * b') = b • d b' + b' • d b := by simp)
    (d_map : ∀ (a : A), d (f a) = 0 := by simp) :
    M.Derivation f :=
  letI := f.hom.toAlgebra
  letI := Module.compHom M f.hom
  { toFun := d
    map_add' := d_add
    map_smul' := fun a b ↦ by
      dsimp
      rw [RingHom.smul_toAlgebra, d_mul, d_map, smul_zero, add_zero]
      rfl
    map_one_eq_zero' := by
      dsimp
      rw [← f.hom.map_one, d_map]
    leibniz' := d_mul }

variable (D : M.Derivation f)

/-- The underlying map `B → M` of a derivation `M.Derivation f` when `M : ModuleCat B`
and `f : A ⟶ B` is a morphism in `CommRingCat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa44e83ad0f0afccc5ac6719efbe5cb38c3d565a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5137b6fe72cc9a006c23fd9eef4d28cae08bd4327ccd1075b3642abf7fb4a8fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
