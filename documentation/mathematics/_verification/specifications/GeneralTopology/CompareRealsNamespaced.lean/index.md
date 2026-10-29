# Verification target: Compare Reals Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24325b65c50b40b856ef3f846b1f64793f9c0f61",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompareRealsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/CompareRealsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24325b65c50b40b856ef3f846b1f64793f9c0f61`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.AbsoluteValue` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.uniformSpace_eq](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/rat-uniformspace-eq.md) | 65 | `result-track:dcf7e2acfc7bea829ca6bdbe5bc9cfaf3d2cc98fa9e1df8565a2ab920db893e9` |
| 2 | `def` | [rationalCauSeqPkg](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/rationalcauseqpkg.md) | 73 | `declaration-track:15806c521a37e5f7a26d3a8ba8c8caa9ba55b9d058676f3d17cf542c283f2cc1` |
| 3 | `def` | [Q](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/q.md) | 91 | `declaration-track:3d990af9f7d6bd2e50b80cf4457dc42fe2c0353bf9bb310142ff58cc5347eb8e` |
| 4 | `instance` | [uniformSpace](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/uniformspace.md) | 94 | `declaration-track:947728f1106947707bc5d4e2521bffdca80204174626e6c96c4f86722534849c` |
| 5 | `def` | [Bourbakiℝ](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/bourbaki.md) | 98 | `declaration-track:efe21adfcc808f294296a3cfe4eedb8e304fe53d3c2440bfa50bb5d85cfd4383` |
| 6 | `instance` | [Bourbaki.uniformSpace](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/bourbaki-uniformspace.md) | 101 | `declaration-track:5af577dd6619e754f922daf1a87c7659982e117e34c7b1ef4d15342b68f4f814` |
| 7 | `def` | [bourbakiPkg](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/bourbakipkg.md) | 105 | `declaration-track:ff8fdd0df49ec12a7661a5235a1c47884c00cf91ef08a90e20e0426414f65b30` |
| 8 | `def` | [compareEquiv](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/compareequiv.md) | 109 | `declaration-track:ca58dfb9dfe2c6aeb40dd1bffab76612d0152cf1888aa4e334995f769002b523` |
| 9 | `theorem` | [compare_uc](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/compare-uc.md) | 112 | `result-track:68c7571a0268be6b010e0e92a1831029bf22c927f22685d3c8ae4c6c672da265` |
| 10 | `theorem` | [compare_uc_symm](../../../../GeneralTopology/CompareRealsNamespaced.lean/declarations/compare-uc-symm.md) | 115 | `result-track:1f6eb0f7adf1d8bbb4d3020961296c6359ae9f473c97be6273ea1d6bdc5fd2d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b9c8c016da19e81762641c763011b573b55f5094f660fee29d26b690a627338 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
