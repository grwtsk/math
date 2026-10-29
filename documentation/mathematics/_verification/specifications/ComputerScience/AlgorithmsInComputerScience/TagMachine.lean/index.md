# Verification target: Tag Machine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f4c9e28608824b6a94c03b79f4730a8a4d14be0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variantdb9c6cc68aaa1d9b8754493fda2acf1ca7d92438336139a11babd5ad8224a4c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f4c9e28608824b6a94c03b79f4730a8a4d14be0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variantdb9c6cc68aaa1d9b8754493fda2acf1ca7d92438336139a11babd5ad8224a4c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variantdb9c6cc68aaa1d9b8754493fda2acf1ca7d92438336139a11babd5ad8224a4c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TagMachineState](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tagmachinestate.md) | 18 | `declaration-track:6d838c78c99ffe307a1810f7cda034e98a10113fa664c2e913352d5ef939b5db` |
| 2 | `inductive` | [TagMachineStep](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tagmachinestep.md) | 26 | `declaration-track:c96fe4780d84ba67650d5c7f236ba2785cd028933854d8604ad6e83fea6e1151` |
| 3 | `def` | [TagMachineAdmin](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tagmachineadmin.md) | 33 | `declaration-track:8be106bd792a2b2c6031252d778e4ae41185007a9553ba53bec650d08574b0c5` |
| 4 | `theorem` | [tag_machine_simulation](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-simulation.md) | 37 | `result-track:ba72bac304115cd58ecbd088a7fe9e53b8f888694e28b2447d6d6321796abf7b` |
| 5 | `theorem` | [tag_machine_fiber_well_founded](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-fiber-well-founded.md) | 46 | `result-track:1cbfeb5788aceac33435b4433a320516ffa168e9c79ba3caafbabc7581177a2d` |
| 6 | `theorem` | [tag_machine_strongly_normalizing](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-strongly-normalizing.md) | 51 | `result-track:c0b4e1fbb1118c61652e8d23430975134031993b050f054caa25104ac09e4f1f` |
| 7 | `theorem` | [tag_machine_preserves_typing](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-preserves-typing.md) | 57 | `result-track:f57b5e20e24719c7d4c8f17269d5b3ac629b02d792e9b25ad676666467f91f4f` |
| 8 | `theorem` | [tag_machine_classification](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-classification.md) | 66 | `result-track:5e9f18f158aa3e460df6058aaf6dc2d9debe959e170b0ceaa3661917f4a122ec` |
| 9 | `theorem` | [tag_machine_total_budget](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-total-budget.md) | 80 | `result-track:d3c0063259566ec67793b963237f02e2571c1c1d2b28b9bebc932430a5a3524d` |
| 10 | `def` | [tagMachineNext](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tagmachinenext.md) | 87 | `declaration-track:46f09d3c2bf9f7178aa70668411d524f2844d3d55953350618abcf6c30cd4e70` |
| 11 | `theorem` | [tag_machine_next_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-next-correct.md) | 93 | `result-track:ee02bc3c985a95047cff26c302a88e58952d7f6a03f33aa35b8ed5a90ce51254` |
| 12 | `def` | [tagMachineReducer](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tagmachinereducer.md) | 113 | `declaration-track:f66cb15cac50ba4138ba1ab349f62685b5380638976332485a29c695a8fc4a19` |
| 13 | `theorem` | [tag_machine_discharge](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-discharge.md) | 120 | `result-track:ddac574e8313cb78aab8121caedce56e1ae160aaee3e9c1faba2f5c61c896f0c` |
| 14 | `theorem` | [tag_machine_lift_trace](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-lift-trace.md) | 127 | `result-track:a2ec3d5af95ae351706adb593e9ff6c34db108eba3b153dfba9f17e5e8855e85` |
| 15 | `def` | [tagMachineNormalize](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tagmachinenormalize.md) | 137 | `declaration-track:5b97f4f2239d30b820c717409e4abef19cd959ecdebe7927b55463dd80660197` |
| 16 | `theorem` | [tag_machine_normalize_spec](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-normalize-spec.md) | 141 | `result-track:5118c1b0887ebefd7ff0f35008c3a9be6f2667f06f88cdb1e60fd787f95de361` |
| 17 | `theorem` | [tag_machine_normalize_preserves_typing](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-normalize-preserves-typing.md) | 152 | `result-track:250a995ba0778ae232f1ded2b94d7b75e76296b25f0288341e115d363503beb8` |
| 18 | `theorem` | [tag_machine_preserves_evaluation](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-preserves-evaluation.md) | 159 | `result-track:9ff22d9b549cca13ccd4fa0a24d68497fcaa3264e59ff3605d550af00c030ff6` |
| 19 | `theorem` | [tag_machine_normalize_preserves_evaluation](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/tag-machine-normalize-preserves-evaluation.md) | 169 | `result-track:af992605db3258050c1c1cd200cdcb44abcb0f040b5979eaf1ae7152a0f6e05f` |
| 20 | `theorem` | [checked_tag_machine_trace](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/checked-tag-machine-trace.md) | 176 | `result-track:45791c44746b71cf4df796113c9c8823cdba69ab99a7e255ad5ab95b9effd0ad` |
| 21 | `theorem` | [checked_tag_machine_budget](../../../../../ComputerScience/AlgorithmsInComputerScience/TagMachine.lean/declarations/checked-tag-machine-budget.md) | 184 | `result-track:173f9d2142cb060138c14bc822d0df726e2acae69051c121c6c48f9a2427e226` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3bf5351152a2e79247289bac500cac2f68d0302e8e9c3e2f6e1f8581e944cf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variantdb9c6cc68aaa1d9b8754493fda2acf1ca7d92438336139a11babd5ad8224a4c5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variantdb9c6cc68aaa1d9b8754493fda2acf1ca7d92438336139a11babd5ad8224a4c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
