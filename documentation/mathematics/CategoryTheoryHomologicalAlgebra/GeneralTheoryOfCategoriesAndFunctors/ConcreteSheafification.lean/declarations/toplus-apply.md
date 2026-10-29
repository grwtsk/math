# toPlus_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a79554fcde15d32377627af2ce73ed64b8840663",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0235606-1326-a826-c973-77d3fe309824",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e766d73-77d7-945e-9be8-de0ea92a2b4b",
  "kind": "theorem",
  "lexical_name": "toPlus_apply",
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
  "slug": "toplus-apply",
  "source": {
    "blob": "a79554fcde15d32377627af2ce73ed64b8840663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b837c201d74bc4e1f2b1b42b83222a9f5277878d13bd602487bea5f01e871f7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteSheafification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e766d73-77d7-945e-9be8-de0ea92a2b4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPlus_apply {X : C} {P : Cᵒᵖ ⥤ D} (S : J.Cover X) (x : Meq P S) (I : S.Arrow) :
    (J.toPlus P).app _ (x I) = (J.plusObj P).map I.f.op (mk x) := by
  dsimp only [toPlus, plusObj]
  delta Cover.toMultiequalizer
  dsimp [mk]
  rw [← ConcreteCategory.comp_apply, ι_colimMap_assoc, colimit.ι_pre, ConcreteCategory.comp_apply,
    ConcreteCategory.comp_apply]
  dsimp only [Functor.op]
  let e : (J.pullback I.f).obj (unop (op S)) ⟶ ⊤ := homOfLE (OrderTop.le_top _)
  rw [← colimit.w _ e.op, ConcreteCategory.comp_apply]
  apply congr_arg
  apply Concrete.multiequalizer_ext (C := D)
  intro i
  dsimp
  rw [← ConcreteCategory.comp_apply, ← ConcreteCategory.comp_apply, ← ConcreteCategory.comp_apply,
    Multiequalizer.lift_ι, Multiequalizer.lift_ι, Multiequalizer.lift_ι]
  erw [Meq.equiv_symm_eq_apply]
  simpa using (x.condition (Cover.Relation.mk' (I.precompRelation i.f))).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteSheafification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79554fcde15d32377627af2ce73ed64b8840663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8175673793ec5dc50de958b31241992b699c14185b7b5bd40353e7a19757a64b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/41/413b15255e905bb0229c4b8cf3af6defc471b706da82f5ae18a85d8aca423870.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
