# compAlongOrderedFinpartitionₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e4f820390e2a531bb3d301020a89d15d71e6db96e992f2601d4aaa94bccd8d6",
  "kind": "def",
  "lexical_name": "compAlongOrderedFinpartitionₗ",
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
  "slug": "compalongorderedfinpartition",
  "source": {
    "blob": "b0850d20114feb43c262202e4c74e29984503f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 803,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:310d0361ffa4faf8bc91baa4a14e7da946ba55ce97b573ff3c431894fe09b9d1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/ContDiffFaaDiBrunoFaaDiBruno.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e4f820390e2a531bb3d301020a89d15d71e6db96e992f2601d4aaa94bccd8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compAlongOrderedFinpartitionₗ :
    (F [×c.length]→L[𝕜] G) →ₗ[𝕜]
      MultilinearMap 𝕜 (fun i : Fin c.length ↦ E[×c.partSize i]→L[𝕜] F) (E[×n]→L[𝕜] G) where
  toFun f :=
    MultilinearMap.mk' (fun p ↦ c.compAlongOrderedFinpartition f p)
      (fun p m q q' ↦ by
        ext v
        simp [applyOrderedFinpartition_update_left])
      (fun p m a q ↦ by
        ext v
        simp [applyOrderedFinpartition_update_left])
  map_add' _ _ := rfl
  map_smul' _ _ :=  rfl

variable (𝕜 E F G) in
/-- Bundled version of `compAlongOrderedFinpartition`, depending continuously linearly on `f`
and continuously multilinearly on `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/ContDiffFaaDiBrunoFaaDiBruno.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0850d20114feb43c262202e4c74e29984503f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f64e888b5052872a75cf59076dc39d1773ad60ff7cc2d2fd3da7d8886c871772 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
