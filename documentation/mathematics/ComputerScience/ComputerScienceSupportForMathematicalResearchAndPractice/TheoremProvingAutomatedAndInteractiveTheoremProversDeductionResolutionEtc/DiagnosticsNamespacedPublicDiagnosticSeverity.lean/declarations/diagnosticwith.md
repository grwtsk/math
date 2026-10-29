# DiagnosticWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d0f98dfebd4ed8b9c5bc436e35b71f523e06efc21dd8a2e321a983f35c0ca5a",
  "kind": "structure",
  "lexical_name": "DiagnosticWith",
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
  "slug": "diagnosticwith",
  "source": {
    "blob": "2eced3eadec263b1dcf070a63706f149f84bca4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant6522b7e5ee349ce055aa0e3f4d6479c580cb2c6e8fadf5c9566a37523dbf4e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6441701d6cd6635d3c26070e5f9d0565ef7e9db254864ac38bbad43242dd8e25",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiagnosticsNamespacedPublicDiagnosticSeverity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d0f98dfebd4ed8b9c5bc436e35b71f523e06efc21dd8a2e321a983f35c0ca5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DiagnosticWith (α : Type) where
  /-- The range at which the message applies. -/
  range : Range
  /-- Extension: preserve semantic range of errors when truncating them for display purposes. -/
  fullRange? : Option Range := some range
  severity? : Option DiagnosticSeverity := none
  /--
  Extension: whether this diagnostic should not be displayed as a regular diagnostic in the editor.
  In VS Code, this means that the diagnostic does not have a squiggly and is not displayed in
  the InfoView under 'All Messages', but it is still displayed under 'Messages'.
  Defaults to `false`.
  -/
  isSilent? : Option Bool := none
  /-- The diagnostic's code, which might appear in the user interface. -/
  code? : Option DiagnosticCode := none
  /-- A human-readable string describing the source of this diagnostic, e.g. 'typescript' or 'super lint'. -/
  source? : Option String := none
  /-- Parametrised by the type of message data. LSP diagnostics use `String`,
  whereas in Lean's interactive diagnostics we use the type of widget-enriched text.
  See `Lean.Widget.InteractiveDiagnostic`. -/
  message : α
  /-- Additional metadata about the diagnostic. -/
  tags? : Option (Array DiagnosticTag) := none
  /-- Additional Lean-specific metadata about the diagnostic. -/
  leanTags? : Option (Array LeanDiagnosticTag) := none
  /-- An array of related diagnostic information, e.g. when symbol-names within a scope collide all definitions can be marked via this property. -/
  relatedInformation? : Option (Array DiagnosticRelatedInformation) := none
  /-- A data entry field that is preserved between a `textDocument/publishDiagnostics` notification and `textDocument/codeAction` request. -/
  data? : Option Json := none
  deriving Inhabited, BEq, ToJson, FromJson

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiagnosticsNamespacedPublicDiagnosticSeverity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant6522b7e5ee349ce055aa0e3f4d6479c580cb2c6e8fadf5c9566a37523dbf4e79.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eced3eadec263b1dcf070a63706f149f84bca4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f13a0fd64c8a16d61458c9cf877ec6ba0420421628b132aabd01b76aada6f665 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant6522b7e5ee349ce055aa0e3f4d6479c580cb2c6e8fadf5c9566a37523dbf4e79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
