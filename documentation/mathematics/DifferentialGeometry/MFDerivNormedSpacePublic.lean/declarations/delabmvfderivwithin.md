# delabMVFDerivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af16d53ca89535b715e931ddf8ec96aa7e080dc5e06062da325a1a25653f84ce",
  "kind": "def",
  "lexical_name": "delabMVFDerivWithin",
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
  "slug": "delabmvfderivwithin",
  "source": {
    "blob": "ff5126317b54aaa393eb4c816c76e3c24cfacf45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 481,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5b54365a4b7a6dd9151ab34817ab6851119ba3911120e36ce93d42261261ec7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/DifferentialGeometry/MFDerivNormedSpacePublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af16d53ca89535b715e931ddf8ec96aa7e080dc5e06062da325a1a25653f84ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_delab mvfderivWithin] meta def delabMVFDerivWithin : Delab := do
  whenPPOption getPPNotation do
  withOverApp 16 do
  let ss ← withAppArg delab
  let fs ← withNaryArg 14 <| delab
  `(d[$ss] $fs) >>= annotateGoToSyntaxDef

/-- Delaborator for `mvfderiv`. -/
-- There is no need to special-case any arguments which could use the `T%` elaborator:
-- the argument to `mvfderiv` is a vector-valued function, which a map to a total space
-- can never be.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/DifferentialGeometry/MFDerivNormedSpacePublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff5126317b54aaa393eb4c816c76e3c24cfacf45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3be1fab40806877238db62e7ee46d7a2b6090d59c5fc89719c3fc7ef1d344323 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
