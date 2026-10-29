# versoDocString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd7b7cc5cd166d859d99ea3ff2d14c19450bfa0802dc31f6f4557ee1f4cdc000",
  "kind": "def",
  "lexical_name": "versoDocString",
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
  "slug": "versodocstring",
  "source": {
    "blob": "82eb3405a1d5338b927f8d59030245e047e9fe7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3a5496a92e743b8929601280acecaaec6e03c2d269eaacf515484c747920598",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddPublicValidateDocComment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd7b7cc5cd166d859d99ea3ff2d14c19450bfa0802dc31f6f4557ee1f4cdc000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def versoDocString
    (declName : Name) (binders : Syntax) (docComment : TSyntax ``docComment) :
    TermElabM VersoDocResult := do
  -- A docstring already parsed as Verso, or one re-parsable from its source range, supports
  -- interactive features. A macro-generated docstring has neither, so fall back to its text.
  let body := docComment.raw[1]
  if (body.getPos? (canonicalOnly := true)).isSome then
    -- Source positions are available, so re-parse from source for interactive features.
    if let some stx ← parseVersoDocString docComment then
      let ((text, subsections), deferredChecks) ← Doc.elabBlocks (stx.getArgs.map (⟨·⟩)) |>.exec declName binders
      return { text, subsections, deferredChecks }
    else return { text := #[], subsections := #[], deferredChecks := #[] }
  else if body.isOfKind ``versoCommentBody then
    if body[0].isOfKind `Lean.Doc.Syntax.parseFailure then
      -- The markup failed to parse, so re-parse its text to report the error.
      versoDocStringOfText declName binders body[0][0].getAtomVal
    else
      -- A docstring parsed as Verso by a macro, with positions stripped.
      execVersoBlocks declName binders body[0].getArgs (fileMap? := none)
  else
    -- A plain-text doc comment without source positions; parse and elaborate from its text.
    versoDocStringOfText declName binders docComment.getDocString

open Lean.Doc Parser in
open Lean.Parser.Command in
/--
Parses and elaborates a Verso module docstring.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddPublicValidateDocComment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82eb3405a1d5338b927f8d59030245e047e9fe7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=123b522e5d7e07f8b18d2f1c6eb2be0d127eaf4c0a14a63c9e96532287154297 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
