# elabSyntaxAbbrev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8cc645a606cf708475418da0b9ea13d981f3cb3a15b62004321f9088dec0da1",
  "kind": "def",
  "lexical_name": "elabSyntaxAbbrev",
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
  "slug": "elabsyntaxabbrev",
  "source": {
    "blob": "00a4f2ef990d0c7970d8ea779a42957fb89d7234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 465,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27d0f9d6a03143006cf84615adbbdaadb4e72a2fa9a24d45220337f8efe50524",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxNamespacedPublicExpandOptPrecedence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8cc645a606cf708475418da0b9ea13d981f3cb3a15b62004321f9088dec0da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab «syntaxAbbrev»] def elabSyntaxAbbrev : CommandElab := fun stx => do
  let `($[$doc?:docComment]? $[$vis?:visibility]? syntax $declName:ident := $[$ps:stx]*) ← pure stx | throwUnsupportedSyntax
  let sc ← getScope
  withExporting (isExporting := match vis? with
    | none => sc.isPublic
    | some v => v matches `(Parser.Command.visibility| public)) do
  -- TODO: nonatomic names
  let (val, _) ← runTermElabM fun _ => Term.toParserDescr (mkNullNode ps) Name.anonymous
  let stxNodeKind := (← getCurrNamespace) ++ declName.getId
  let stx' ← `($[$doc?:docComment]? $[$vis?:visibility]? meta def $declName:ident : Lean.ParserDescr := ParserDescr.nodeWithAntiquot $(quote (toString declName.getId)) $(quote stxNodeKind) $val)
  withMacroExpansion stx stx' <| elabCommand stx'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxNamespacedPublicExpandOptPrecedence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a4f2ef990d0c7970d8ea779a42957fb89d7234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdfb70597882a10c8f140808cf6dd61ec21de7e25d57c583df928f0c8cd02818 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant5e4de0be2fc652e726184d400deeee6909e3a47ac91a682917f4531d75fcb5fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
