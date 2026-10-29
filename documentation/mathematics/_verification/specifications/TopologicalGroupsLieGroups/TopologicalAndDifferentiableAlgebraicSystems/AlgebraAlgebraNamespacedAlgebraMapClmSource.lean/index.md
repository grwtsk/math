# Verification target: Algebra Algebra Namespaced Algebra Map Clm Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb4348d1937f60dabc763c8876c06e1a070f6212",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb4348d1937f60dabc763c8876c06e1a070f6212`.

Source path: `GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_algebraMap_iff_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/continuous-algebramap-iff-smul.md) | 50 | `result-track:aea99fb7b22412dc4484df66bd7619ab020eee960fa7609a31f70228ca0ba483` |
| 2 | `theorem` | [continuous_algebraMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/continuous-algebramap.md) | 60 | `result-track:1a2b7912ff9a9101447635d4c6bb7d3baa45164d1b53ff1a978aa3f32744234e` |
| 3 | `theorem` | [continuousSMul_of_algebraMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/continuoussmul-of-algebramap.md) | 64 | `result-track:ac67cbc21d231a1b319f79b09fadd88d4252e040aef75460ec83163678786e6a` |
| 4 | `def` | [algebraMapClm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/algebramapclm.md) | 72 | `declaration-track:6508dc8e5e7d9ec952fa251d554d2a03adb58a91f0ae52ce7b1d9770f35f3365` |
| 5 | `theorem` | [algebraMapClm_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/algebramapclm-coe.md) | 78 | `result-track:f9ae4b5b801473dd0a62934e1e186d1b42624e6c810ca6c200c3fbd26ca0ae8c` |
| 6 | `theorem` | [algebraMapClm_toLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/algebramapclm-tolinearmap.md) | 82 | `result-track:fc1f8bc32ab675b3e8140496c1e8facd53e7020d72b45bfc538980d92793ae75` |
| 7 | `instance` | [Subalgebra.continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-continuoussmul.md) | 96 | `declaration-track:549efb7a9cdf93c5ce68f7bf29eee39034c0a39db1bdcf497faff67d4fb5cd69` |
| 8 | `def` | [Subalgebra.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-topologicalclosure.md) | 104 | `declaration-track:52af466f744fd3bf518654df9b3a14d243b371e12e53847d8d152207f1c4ce6c` |
| 9 | `theorem` | [Subalgebra.topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-topologicalclosure-coe.md) | 112 | `result-track:6772f536d9836086c682a50d67d15de755a88066b0d694b1ee2787e14c84cd0b` |
| 10 | `instance` | [Subalgebra.topologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-topologicalsemiring.md) | 117 | `declaration-track:9392bdd0e7c275b7b704d102ff9352e40135fae775002164ac104dac6aafab81` |
| 11 | `theorem` | [Subalgebra.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-le-topologicalclosure.md) | 121 | `result-track:308a8f997641116872e0e68c649d20ff9960b9130942cbc7378456be20419a03` |
| 12 | `theorem` | [Subalgebra.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-isclosed-topologicalclosure.md) | 125 | `result-track:73026193ac0430f06dadf8a0544cdbb76e758c0141e4ab60ef395f3c59888dc4` |
| 13 | `theorem` | [Subalgebra.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-topologicalclosure-minimal.md) | 129 | `result-track:a2ebd1381343a4a7934aea18569f51c7e07b8ed58b78a06619848d223a9161a4` |
| 14 | `def` | [Subalgebra.commSemiringTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-commsemiringtopologicalclosure.md) | 135 | `declaration-track:9a0cafa8adc913cce6390d3ecb3ee6f4f25c933efc0c813c241f61d98d18e2a0` |
| 15 | `theorem` | [Subalgebra.topologicalClosure_comap_homeomorph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-topologicalclosure-comap-homeomorph.md) | 145 | `result-track:40a431fa6e81b1f4f5053aa8b244ccadccf7f85e8ea03a48982ab93b59e6f751` |
| 16 | `def` | [Subalgebra.commRingTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/subalgebra-commringtopologicalclosure.md) | 170 | `declaration-track:2e2d3656126cacd1ec861dd6eebb2e550c3686e90533472cafeb49ccbc72576e` |
| 17 | `def` | [Algebra.elementalAlgebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/algebra-elementalalgebra.md) | 178 | `declaration-track:2217c08153f5002c25020eafe9eb622c1baf335d498aa366cf50ee23f9c8f2d9` |
| 18 | `theorem` | [Algebra.self_mem_elementalAlgebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/algebra-self-mem-elementalalgebra.md) | 182 | `result-track:d055100e3361d35c0fdd7c9b4e4b283675012a877f86c5bc8cc347c2f2746fcf` |
| 19 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/instance.md) | 189 | `declaration-track:aaa7032c195dbe2fed9616d5d0b5dc2f5214cf10b8818ea2a371c5fcbf0c86bd` |
| 20 | `instance` | [DivisionRing.continuousConstSMul_rat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraAlgebraNamespacedAlgebraMapClmSource.lean/declarations/divisionring-continuousconstsmul-rat.md) | 202 | `declaration-track:5a84ef052cf4db78591c64a99f9b54b7335c3142528a51890f22676357871e74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6af181bc4ee838335889158dd2f397344ecf186aec1a7eff6e5b7f2e50a99bc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
