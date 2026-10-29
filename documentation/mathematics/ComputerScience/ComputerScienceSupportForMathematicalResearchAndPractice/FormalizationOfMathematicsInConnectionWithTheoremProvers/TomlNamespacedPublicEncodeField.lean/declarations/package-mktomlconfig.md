# Package.mkTomlConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:883bd0e78492a08e99c9904dab363245a2d7ce24b08b4cbac8cdcee26e515f79",
  "kind": "def",
  "lexical_name": "Package.mkTomlConfig",
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
  "slug": "package-mktomlconfig",
  "source": {
    "blob": "a6624e3ef4b0f1192d3ecdd871bcbf2e3372eae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variant09809a5a0e1c24dee42985b76416dc05931937c0ff1133b5319208f90f3db95f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a62c4d9b982e6264c428ed855a130c03d650f0cfe67cb8f44b30073559026683",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TomlNamespacedPublicEncodeField.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:883bd0e78492a08e99c9904dab363245a2d7ce24b08b4cbac8cdcee26e515f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Package.mkTomlConfig (pkg : Package) (t : Table := {}) : Table :=
  let cfg : PackageConfig pkg.keyName pkg.origName :=
    {pkg.config with testDriver := pkg.testDriver, lintDriver := pkg.lintDriver}
  cfg.toToml t
  |>.smartInsert `defaultTargets pkg.defaultTargets
  |>.smartInsert `require pkg.depConfigs
  |>.smartInsert LeanLib.keyword (pkg.mkTomlTargets LeanLib.configKind LeanLibConfig.toToml)
  |>.smartInsert LeanExe.keyword (pkg.mkTomlTargets LeanExe.configKind LeanExeConfig.toToml)
  |>.smartInsert InputFile.keyword (pkg.mkTomlTargets InputFile.configKind InputFileConfig.toToml)
  |>.smartInsert InputDir.keyword (pkg.mkTomlTargets InputDir.configKind InputDirConfig.toToml)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TomlNamespacedPublicEncodeField.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variant09809a5a0e1c24dee42985b76416dc05931937c0ff1133b5319208f90f3db95f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6624e3ef4b0f1192d3ecdd871bcbf2e3372eae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c41cd5574877dcd78eb50ca3f90f8bf52fe73709e14feb5c3a8676cccd7fc4a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variant09809a5a0e1c24dee42985b76416dc05931937c0ff1133b5319208f90f3db95f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
