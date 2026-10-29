# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaGrindParamsInsertCasesTypes.Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.Lean.Meta.Grind.ExtensionStateArray.getKindsFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53e3cb477940748d3d0be252821b77fca481101dce3ea3e01fc59f219e61cecd",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaGrindParamsInsertCasesTypes.Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.Lean.Meta.Grind.ExtensionStateArray.getKindsFor",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--3f2eb875e155225f6532c10f",
  "source": {
    "blob": "304b09a2289df047b83e96768c6c53d2c0c1d828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f2eb875e155225f6532c10fde716f3020b66eecf70e0fc92c9180951d43a7d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53e3cb477940748d3d0be252821b77fca481101dce3ea3e01fc59f219e61cecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaGrindParamsInsertCasesTypes.Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.Lean.Meta.Grind.ExtensionStateArray.getKindsFor (s : Grind.ExtensionStateArray) (origin : Grind.Origin) : List Grind.EMatchTheoremKind := Id.run do
  let mut result := []
  for ext in s do
    let s : Grind.EMatchTheorems := ext.ematch
    let ks := s.getKindsFor origin
    unless ks.isEmpty do
      result := result ++ ks
  return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `304b09a2289df047b83e96768c6c53d2c0c1d828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7667f80b0be6a626c367492c43dd436dc0bf649f9d6b76387afd481eaa642201 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
