# reconstructedLiftedShell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9603b84ff1dc5852b54e524f722c9183ca84f9572285caaced3103c4bf5c0dbf",
  "kind": "def",
  "lexical_name": "reconstructedLiftedShell",
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
  "slug": "reconstructedliftedshell",
  "source": {
    "blob": "a157ee05239c00e71e4be74c23d7ce074ca995e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:812583896fe4961a3609cb0255ff15ec9a126e017cc04c705ae565ce8d78ef04",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/FiberReconstructionNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9603b84ff1dc5852b54e524f722c9183ca84f9572285caaced3103c4bf5c0dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def reconstructedLiftedShell {s : GridShape} {k : Nat}
    (H : GraphHeat (Expansion.expandedShape s) k)
    (t : NNReal)
    (τ : SpectralShellTorsion s k)
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    SpectralTensor (Expansion.expandedShape s) k :=
  let lifted := liftedHeat H t X
  decodeShell
    (transportShell (SpectralShellTorsion.inverse τ)
      (transportShell τ
        (encodeShell (reconstructHeat lifted.1 lifted.2))))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/FiberReconstructionNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a157ee05239c00e71e4be74c23d7ce074ca995e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0330b1bfa74fb1bf2a80c71e5de5b9ee234dba6bd03c301ae18404699a19b8e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
