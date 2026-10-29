# UniformIntegrable.spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad492b68-bced-5897-b213-cc9052838682",
  "kind": "theorem",
  "lexical_name": "UniformIntegrable.spec",
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
  "slug": "uniformintegrable-spec-source-edition-2",
  "source": {
    "blob": "7a9e30855e47355f31e5828b2c102ac411718319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 886,
    "line": 870,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68c4197b2c89a108be13653abf8ec19713b3ca69d6550aa7be54c6da629e8eaf",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableNamespacedAestronglyMeasurableSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad492b68-bced-5897-b213-cc9052838682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 870–886.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformIntegrable.spec (hp : p ≠ 0) (hp' : p ≠ ∞) (hfu : UniformIntegrable f p μ) {ε : ℝ}
    (hε : 0 < ε) :
    ∃ C : ℝ≥0, ∀ i, eLpNorm ({ x | C ≤ ‖f i x‖₊ }.indicator (f i)) p μ ≤ ENNReal.ofReal ε := by
  set g : ι → α → β := fun i => (hfu.1 i).choose
  have hgmeas : ∀ i, StronglyMeasurable (g i) := fun i => (Exists.choose_spec <| hfu.1 i).1
  have hgunif : UniformIntegrable g p μ := hfu.ae_eq fun i => (Exists.choose_spec <| hfu.1 i).2
  obtain ⟨C, hC⟩ := hgunif.spec' hp hp' hgmeas hε
  refine ⟨C, fun i => le_trans (le_of_eq <| eLpNorm_congr_ae ?_) (hC i)⟩
  filter_upwards [(Exists.choose_spec <| hfu.1 i).2] with x hx
  by_cases hfx : x ∈ { x | C ≤ ‖f i x‖₊ }
  · rw [Set.indicator_of_mem hfx, Set.indicator_of_mem, hx]
    rwa [Set.mem_setOf, hx] at hfx
  · rw [Set.indicator_of_notMem hfx, Set.indicator_of_notMem]
    rwa [Set.mem_setOf, hx] at hfx

/-- The definition of uniform integrable in mathlib is equivalent to the definition commonly
found in literature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableNamespacedAestronglyMeasurableSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean#L870).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9e30855e47355f31e5828b2c102ac411718319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d080d3a5632dcdef5b1155f028dafefcb72ecafe01a60644f99f6f645a27b053 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
