# declareRuleSetUnchecked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ad7bf72300b25d9c16987b52a3e4ef7760a8b71c2421fb539fb9dba509fdbc0",
  "kind": "def",
  "lexical_name": "declareRuleSetUnchecked",
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
  "slug": "declarerulesetunchecked",
  "source": {
    "blob": "d58be6491974b86c5aff870fe087ae66d5fcb8ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01f93989f4d2fd1bc7074718036c58e91c7e621a0d5361e3d230de911ef1002b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicExtensionDescr.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ad7bf72300b25d9c16987b52a3e4ef7760a8b71c2421fb539fb9dba509fdbc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def declareRuleSetUnchecked (rsName : RuleSetName) (isDefault : Bool) :
    IO Unit := do
  let ext ← registerSimpleScopedEnvExtension $ extensionDescr rsName
  let simpExtName := .mkStr1 s!"aesop_{rsName}"
  discard $ registerSimpAttr simpExtName (ref := simpExtName)
    s!"simp theorems in the Aesop rule set '{rsName}'"
  let simprocExtName := .mkStr1 s!"aesop_{rsName}_proc"
  discard $ Simp.registerSimprocAttr simprocExtName (name := simprocExtName)
    (ref? := none) s!"simprocs in the Aesop rule set '{rsName}'"
  declaredRuleSetsRef.modify λ rs =>
    let ruleSets := rs.ruleSets.insert rsName (ext, simpExtName, simprocExtName)
    let defaultRuleSets :=
      if isDefault then
        rs.defaultRuleSets.insert rsName
      else
        rs.defaultRuleSets
    { ruleSets, defaultRuleSets }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicExtensionDescr.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58be6491974b86c5aff870fe087ae66d5fcb8ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90d567eae5757bdb7673321cf8d207f8a8e7a8683586aac64102a94549503a37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
