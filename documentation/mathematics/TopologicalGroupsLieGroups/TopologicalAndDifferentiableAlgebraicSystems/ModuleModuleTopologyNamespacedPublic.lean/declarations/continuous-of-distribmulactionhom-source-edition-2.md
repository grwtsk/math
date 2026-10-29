# continuous_of_distribMulActionHomₑ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:510b4b63-0839-4883-324b-e4e170b321ba",
  "kind": "theorem",
  "lexical_name": "continuous_of_distribMulActionHomₑ",
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
  "slug": "continuous-of-distribmulactionhom-source-edition-2",
  "source": {
    "blob": "2b3d3d1d7e9a8e34bd233cfa61203aac03cfa590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 321,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4aa2a5ac25a0446c56e88226d5f6dd97eadbc8857a0509da2fbc21dbb71dace",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:510b4b63-0839-4883-324b-e4e170b321ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_of_distribMulActionHomₑ {σ : R →* S} (hσ : Continuous σ) (φ : A →ₑ+[σ] B') :
    Continuous φ := by
  -- the proof: We know that `+ : B × B → B` and `• : R × B → B` are continuous for the module
  -- topology on `B`, and two earlier theorems (`continuousSMul_induced` and
  -- `continuousAdd_induced`) say that hence `+` and `•` on `A` are continuous if `A`
  -- is given the topology induced from `φ`. Hence the module topology is finer than
  -- the induced topology, and so the function is continuous.
  rw [eq_moduleTopology R A, continuous_iff_le_induced]
  exact sInf_le <| ⟨continuousSMul_inducedₛₗ φ hσ, continuousAdd_induced φ⟩

/-- Every `R`-linear map between two topological `R`-modules, where the source has the module
topology, is continuous. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b3d3d1d7e9a8e34bd233cfa61203aac03cfa590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=050f6e2a42814f7e55833255ed64050265d5ce026fc1a6d8ff68cd9235ea7a82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
