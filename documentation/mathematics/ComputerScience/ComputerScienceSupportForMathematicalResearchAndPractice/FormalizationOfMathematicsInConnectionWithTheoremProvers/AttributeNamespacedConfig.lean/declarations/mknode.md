# mkNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f855f8c0a9b9890eceef7ad049bfd45cbb66d045625c65f0e165e02f0661c477",
  "kind": "def",
  "lexical_name": "mkNode",
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
  "slug": "mknode",
  "source": {
    "blob": "506775667858e0cc0b007f27e02317c1069d5a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantdf0e77e73af91f3d8923f763cfa0a7a7185db8f0487a6b0b58af5c6267f3f8fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:147d391fe0239ed8b4dc744b9178d653423ff27ecb2885358f88c5fcb9221ce6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AttributeNamespacedConfig.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f855f8c0a9b9890eceef7ad049bfd45cbb66d045625c65f0e165e02f0661c477`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNode (name : Name) (cfg : Config) : CoreM Node := do
  trace[blueprint.debug] "mkNode {.ofConstName name} {repr cfg}"
  let latexLabel := cfg.latexLabel.getD name.toString
  if ← hasProof name cfg then
    let statement ← mkStatementPart name cfg true
    let proof ← mkProofPart name cfg
    return { cfg with name, latexLabel, statement, proof }
  else
    let statement ← mkStatementPart name cfg false
    return { cfg with name, latexLabel, statement, proof := none }

-- register_option blueprint.checkCyclicUses : Bool := {
--   defValue := true,
--   descr := "Whether to check for cyclic dependencies in the blueprint."
-- }

-- TODO: remove
-- /--
-- Raises an error if `newLabel` occurs in the (irreflexive transitive) dependencies of `label`.
-- If ignored, this would create a cycle and then an error during `leanblueprint web`.
-- -/
-- partial def checkCyclicUses {m} [Monad m] [MonadEnv m] [MonadError m]
--     (newLabel : String) (label : String)
--     (visited : Std.HashSet String := ∅) (path : Array String := #[]) : m Unit := do
--   let path' := path.push label
--   if visited.contains label then
--     if path.contains label then
--       throwError "cyclic dependency in blueprint:\n  {" uses ".intercalate (path'.toList.map toString)}"
--     else
--       return
--   let visited' := visited.insert label

--   for name in getLeanNamesOfLatexLabel (← getEnv) label do
--     if let some node := blueprintExt.find? (← getEnv) name then
--       for used in node.statement.uses ++ (node.proof.map (·.uses) |>.getD #[]) do
--         checkCyclicUses newLabel used visited' path'
--     else
--       throwError "unknown constant {name} in blueprint"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AttributeNamespacedConfig.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantdf0e77e73af91f3d8923f763cfa0a7a7185db8f0487a6b0b58af5c6267f3f8fa.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `506775667858e0cc0b007f27e02317c1069d5a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c06107043d26594fb967f2dd27b571fd8f72a5e7bbf994ea28c0c1cabd3cb82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantdf0e77e73af91f3d8923f763cfa0a7a7185db8f0487a6b0b58af5c6267f3f8fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
