# createLeanActionWorkflow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c3569bd70ff2ae00358b3485f5ff8c2bf64c4fa80b56a5453e16a8d81cfa712",
  "kind": "def",
  "lexical_name": "createLeanActionWorkflow",
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
  "slug": "createleanactionworkflow",
  "source": {
    "blob": "a0c9c29459d09418de77ce91909a26d44f9531a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 376,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variantb09e1c6443ad79850975430ec9431d38558c5c68f31295197b7f52fe45dfb279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c585cbe575f89b0e8914c270d916a9a331707c987e2cb5e75c2b5e178d90ecf",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitPublicDefaultExeRoot.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c3569bd70ff2ae00358b3485f5ff8c2bf64c4fa80b56a5453e16a8d81cfa712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createLeanActionWorkflow (dir : FilePath) (tmp : InitTemplate) : LogIO PUnit := do
  logVerbose "creating lean-action CI workflow"
  let workflowDir := dir / ".github" / "workflows"
  IO.FS.createDirAll workflowDir

  let workflowFile := workflowDir / "lean_action_ci.yml"
  if (← workflowFile.pathExists) then
    logVerbose "lean-action CI workflow already exists"
    return
  if tmp = .math then
    IO.FS.writeFile workflowFile mathBuildActionWorkflowContents
  else
    IO.FS.writeFile workflowFile leanActionWorkflowContents
  logVerbose s!"created lean-action CI workflow at '{workflowFile}'"

  if tmp = .math then
    -- A workflow for automatically creating update PRs/issues.
    let workflowFile := workflowDir / "update.yml"
    if (← workflowFile.pathExists) then
      logVerbose "Mathlib update CI workflow already exists"
      return
    IO.FS.writeFile workflowFile mathUpdateActionWorkflowContents
    logVerbose s!"created Mathlib update CI workflow at '{workflowFile}'"
    -- A workflow for tagging commits that bump the Lean toolchain version.
    let workflowFile := workflowDir / "create-release.yml"
    if (← workflowFile.pathExists) then
      logVerbose "create-release CI workflow already exists"
      return
    IO.FS.writeFile workflowFile createReleaseActionWorkflowContents
    logVerbose s!"created create-release CI workflow at '{workflowFile}'"

/-- Initialize a new Lake package in the given directory with the given name. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitPublicDefaultExeRoot.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variantb09e1c6443ad79850975430ec9431d38558c5c68f31295197b7f52fe45dfb279.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c9c29459d09418de77ce91909a26d44f9531a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=475ed1d5dda72ab68f8742057d8dd1b7ddd2bfda5df5a6c1950ea1eb28e0f77b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variantb09e1c6443ad79850975430ec9431d38558c5c68f31295197b7f52fe45dfb279.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
