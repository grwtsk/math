# _root_.WeakBilin.continuous_of_continuous_eval_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93d4ab1ea8faadc8f0f5c374d77f3ebd87236185",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5524ff34-76f1-a05e-c1fc-415060c7590f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37c56b6c-f3d6-4d5f-679a-a5d904bbd171",
  "kind": "theorem",
  "lexical_name": "_root_.WeakBilin.continuous_of_continuous_eval_re",
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
  "slug": "root-weakbilin-continuous-of-continuous-eval-re",
  "source": {
    "blob": "93d4ab1ea8faadc8f0f5c374d77f3ebd87236185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 389,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee8a4dae0357400849c120c34ef8ec426b7273489e10ac4d85f7cb521940f597",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37c56b6c-f3d6-4d5f-679a-a5d904bbd171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.WeakBilin.continuous_of_continuous_eval_re (B : E →ₗ[𝕜] F →ₗ[𝕜] 𝕜)
    {g : α → WeakBilin B} (h : ∀ y, Continuous fun a ↦ re (B (g a) y)) :
    Continuous g := by
  refine WeakBilin.continuous_of_continuous_eval _ fun x ↦ ?_
  suffices Continuous fun a ↦ (re (B (g a) x) : 𝕜) - re (B (g a) ((I : 𝕜) • x)) * I by simpa
  fun_prop

variable [TopologicalSpace F]

/-- A map into `WeakDual 𝕜 F` over `𝕜` (with `RCLike 𝕜`) is continuous if the real parts of all
the evaluation maps `a ↦ g a y` are continuous for each `y : F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d4ab1ea8faadc8f0f5c374d77f3ebd87236185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=353e095f95a39a6ba9d98377286fce39d50795f7031d4d8a3e943513f4e25463 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean","GRWTSK/Topology/GeneralTopology/WeakDual/Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
