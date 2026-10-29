# computeImportDiscrTrees

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea48faf6877e906f79e13125e07219d3306230f2d1615c4331954a348ad0e5ac",
  "kind": "def",
  "lexical_name": "computeImportDiscrTrees",
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
  "slug": "computeimportdiscrtrees",
  "source": {
    "blob": "39dc82d3a84ed7309efc6d03c94fb11f37b9f208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bde97586579e2649928158358b2fc178c60a92a14f6fac1e1efc8df6be3d09b3",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindPremisesNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea48faf6877e906f79e13125e07219d3306230f2d1615c4331954a348ad0e5ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def computeImportDiscrTrees (choice : Choice) : CoreM Unit := do
  let choice := {
    rw := choice.rw && (← rwRef.get).isNone
    grw := choice.grw && (← grwRef.get).isNone
    app := choice.app && (← appRef.get).isNone
    appAt := choice.appAt && (← appAtRef.get).isNone
  }
  unless choice.any do return
  let (tasks, errors) ←
    foldImportedDecls {} librarySearchIndexConfig (Entries.addConst choice (← getEnv))
  let pre : PreDiscrTrees ← MonadExcept.ofExcept <|
    tasks.foldlM (fun pre task ↦ pre.append <$> task.get) {}
  if choice.rw then setIfNone rwRef pre.rw.toRefinedDiscrTree
  if choice.grw then setIfNone grwRef pre.grw.toRefinedDiscrTree
  if choice.app then setIfNone appRef pre.app.toRefinedDiscrTree
  if choice.appAt then setIfNone appAtRef pre.appAt.toRefinedDiscrTree
  (← errors.get).forM logError
where
  setIfNone {α} (ref : IO.Ref (Option α)) (a : α) : BaseIO Unit := do
    if (← ref.get).isNone then
      ref.set a

/-- Compute the discrimination trees for the theorems in the current file. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FindPremisesNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39dc82d3a84ed7309efc6d03c94fb11f37b9f208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07aedf900d7c5ecc1a0d493d3c1c548ec8011ac7e370b710aa4b4761f742a815 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
