# Verification target: Residual Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcec8ea32e7017477c3b1401cffa600365dc92dc",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcec8ea32e7017477c3b1401cffa600365dc92dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidualKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/residualkind.md) | 15 | `declaration-track:5cb5d6fa2c6823051bd8d5f9b93cbff1ac08f0fc826a9d9f28f40ba8dc21144f` |
| 2 | `structure` | [ResidualBound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/residualbound.md) | 29 | `declaration-track:7a035131a1fec595b2680b42b2763138ac8b5e210e24a8929fd36f0ebce9b537` |
| 3 | `def` | [advance](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/advance.md) | 40 | `declaration-track:b293a6b88fdcb470dbd4dfc78984ad4c14f53e64b84f45171986dea0580ecbeb` |
| 4 | `def` | [propagateFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/propagatefrom.md) | 44 | `declaration-track:503030ac4a1f44fd66585d8c36ef8daf7578e465ddeb2f3295a218f87a3120dc` |
| 5 | `def` | [propagateResiduals](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/propagateresiduals.md) | 49 | `declaration-track:5ab48276ebc966247247ce4ec9e2d3c0cfd6b08ee161f3bf4adc922cf6541d9c` |
| 6 | `def` | [downstreamGain](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/downstreamgain.md) | 53 | `declaration-track:e568e98ea94f256f92373c353ef619f225b6fb29a700cadb72766691cead6f99` |
| 7 | `def` | [weightedResidual](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/weightedresidual.md) | 57 | `declaration-track:baa93535b2f018d3dd07608643cfb881115c825b796725e83463f5bd712c8e09` |
| 8 | `theorem` | [propagateFrom_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/propagatefrom-nil.md) | 63 | `result-track:7b6cb050f1084e8d996acafa4c1a9e487fe487b4d89955af0243a28269905c6a` |
| 9 | `theorem` | [propagateFrom_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/propagatefrom-cons.md) | 67 | `result-track:22636cf3d74da6a54e8bd457fb9a0e94dd7cb2252175c74750bde7be2ff73701` |
| 10 | `theorem` | [propagateFrom_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/propagatefrom-append.md) | 74 | `result-track:33d2ef2ab46c233a65f3c63f3cda3fc24ec02c27546be80c9e5d314c3092f484` |
| 11 | `theorem` | [propagateFrom_closedForm](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/propagatefrom-closedform.md) | 89 | `result-track:b934c7c3f2e6841d2143325cc1c14ec33cc47709dda1ad9396f31f69bfe28f98` |
| 12 | `theorem` | [propagateResiduals_closedForm](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/propagateresiduals-closedform.md) | 103 | `result-track:371657a2fdb38655138838e3d9ead17ec7ebe75c389e07d39ff49afec5715557` |
| 13 | `def` | [propagateResiduals](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/propagateresiduals-source-edition-2.md) | 113 | `declaration-track:6214d28e58080edfe345349944887a6d7f0f9f82d3db0a02ce421ec059b08819` |
| 14 | `structure` | [ControlledApproximation](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/controlledapproximation.md) | 128 | `declaration-track:90bdbf58c189d02b71c4fcbff0871fa559236443751665622a0245047b5292ad` |
| 15 | `def` | [id](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/id.md) | 141 | `declaration-track:70004badeb7b5f348365927e11cbc332395f4783b8188e6efacb56b61d9ce82d` |
| 16 | `def` | [comp](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/comp.md) | 153 | `declaration-track:16cf1c655ae4b391178c3052a034eb0e75e850ad56f1323af6c67608459e17f3` |
| 17 | `theorem` | [comp_localError](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/comp-localerror.md) | 178 | `result-track:0c44f08b550d66e467f0aae91a900c2a433f3ade792edbc036dc7ba179701b41` |
| 18 | `theorem` | [comp_lipschitz](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/comp-lipschitz.md) | 184 | `result-track:aac4cfd901a6f06c8c0a978af2c6dab063eaf65a1b43c444f0a50d4b724d3567` |
| 19 | `theorem` | [comp_error_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/comp-error-assoc.md) | 190 | `result-track:d59720f2b33a601ad2324fd9e589811ffcb089362f07e11e40dc844a8df43113` |
| 20 | `structure` | [ApproximationStep](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/approximationstep.md) | 209 | `declaration-track:89a8603eda4b746c4252defdce3e0a699e919aa1e93f1d5915a7017091e4152d` |
| 21 | `def` | [toResidualBound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/toresidualbound.md) | 221 | `declaration-track:8e2ee6372f2ff753b027248efc037bff7a3ef7fdb5725ca717439d2847407d81` |
| 22 | `theorem` | [one_step_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/one-step-bound.md) | 228 | `result-track:786d70f71c7011f07ed65aa1f15addd118975e24ba3e97135abd850bf20b42ad` |
| 23 | `def` | [runReference](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/runreference.md) | 248 | `declaration-track:a1a244aec35b1221255a6ac32b75190fa588a5d721e9ebdfc4ac438a0f280fcf` |
| 24 | `def` | [runImplementation](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/runimplementation.md) | 253 | `declaration-track:624e4c361c9d87f13e853e8a0ece9737d034430413851cd3bbe760c8f5f8dd42` |
| 25 | `theorem` | [run_error_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition2.lean/declarations/run-error-bound.md) | 258 | `result-track:51e99e21d86272e9fd5ab4767dde5e2a4b8367c19634206f6124bb4da3aeb8c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f16526678d3cc10d90d8a610a65e64d2e6a6e0a43a27179772778faddd5d1db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
