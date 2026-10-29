# addSide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b54c3c73dcd24a917162e49e83272e588052b67a5de2205c374489d31b75998",
  "kind": "def",
  "lexical_name": "addSide",
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
  "slug": "addside",
  "source": {
    "blob": "4a9d6e9af8ad5ad5fcd64f901ea5208956684855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b83bd48319c0722241f65d8ccad23e4a0a1dce4e6263a1157525072cea08d31b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AliasNamespacedAliasInfo.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b54c3c73dcd24a917162e49e83272e588052b67a5de2205c374489d31b75998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addSide (mp : Bool) (declName : Name) (declMods : Modifiers) (thm : TheoremVal) :
    TermElabM Unit := do
  checkNotAlreadyDeclared declName
  let value ← mkIffMpApp mp thm.type thm.value
  let type ← Meta.inferType value
  addDecl <| Declaration.thmDecl { thm with
    name := declName
    value := value
    type := type
  }
  addDocString' declName declMods.docString?
  Term.applyAttributes declName declMods.attrs
  let info := match ← getAliasInfo thm.name with
    | some (.plain name) => if mp then AliasInfo.forward name else AliasInfo.reverse name
    | _ => if mp then AliasInfo.forward thm.name else AliasInfo.reverse thm.name
  setAliasInfo info declName
  /- alias doesn't trigger the missing docs linter so we add a default. We can't just check
    `declMods` because a docstring may have been added by an attribute. -/
  if (← findDocString? (← getEnv) declName).isNone then
    let mut doc := info.toString
    if let some origDoc ← findDocString? (← getEnv) thm.name then
      doc := s!"{doc}\n\n---\n\n{origDoc}"
    addDocString declName doc

@[inherit_doc «alias»]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AliasNamespacedAliasInfo.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a9d6e9af8ad5ad5fcd64f901ea5208956684855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46c8d686b4afce4fca76e19747bfec3aefc9d3385ef85bfb6f6340aea5abca73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
