# Verification target: Periodic Orbit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73c053ac0debf586dd2ec476e29282f99361c936",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73c053ac0debf586dd2ec476e29282f99361c936`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.Expansion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleMultiplier](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/cyclemultiplier.md) | 13 | `declaration-track:bb41679dc287851ddcafe64c44ca4e6feca7a736d6ab813f3947c219c08a9545` |
| 2 | `theorem` | [cycleMultiplier_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/cyclemultiplier-nil.md) | 16 | `result-track:386baa2bc6600034e0137b93b7617db56ffe3df2f34ccd9a87b8a698885d3a92` |
| 3 | `theorem` | [cycleMultiplier_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/cyclemultiplier-cons.md) | 20 | `result-track:373ccede985e2018089c451f020c7014a3031679ecf39a2bc32c78de6a9dd777` |
| 4 | `theorem` | [cycle_multiplier_is_derivative_product](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/cycle-multiplier-is-derivative-product.md) | 27 | `result-track:1f3150d65151b09055881ea22f846d8c6b2837390effe139708cb941218cbcfb` |
| 5 | `theorem` | [cycleMultiplier_append](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/cyclemultiplier-append.md) | 33 | `result-track:617e72faaf6405913fefa9a5480eb3bf0eb6cd8be7ffcdb797ed107b8b95c63a` |
| 6 | `def` | [scaledCycleMultiplier](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/scaledcyclemultiplier.md) | 39 | `declaration-track:baf7f081cc1ab44e5441129863e22aef4326ba7028ccf0f2c5791883c63f0794` |
| 7 | `theorem` | [scaledCycleMultiplier_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/scaledcyclemultiplier-nil.md) | 45 | `result-track:463788032217e230662d021e0f608de32c0be1b0b26c9d37a555597d62c07896` |
| 8 | `theorem` | [scaledCycleMultiplier_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/scaledcyclemultiplier-cons.md) | 49 | `result-track:c71d9f5b93ce28219dcc5df8591e9887367f1e8f8cfb398bcaecf44b8e88c7c4` |
| 9 | `theorem` | [scaled_cycle_numerator_is_product](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/scaled-cycle-numerator-is-product.md) | 56 | `result-track:061b6e4627471fde001a23af14eccc1238f5973c783ed4a89c097283ce0aff3b` |
| 10 | `theorem` | [scaled_cycle_scale_is_product](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/scaled-cycle-scale-is-product.md) | 65 | `result-track:ce01ff35ac9fd100e66f63a72edabf00c78829f7bbe04bcdad38f74fbcdbcab7` |
| 11 | `structure` | [PeriodicOrbitCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/periodicorbitcertificate.md) | 74 | `declaration-track:98c0c3de7a52ea2e92edd5c975e2d32aebde4d878da81b720f39a8f0c84118a8` |
| 12 | `structure` | [PeriodicAttractionObligation](../../../../../ComputerScience/AlgorithmsInComputerScience/PeriodicOrbit.lean/declarations/periodicattractionobligation.md) | 90 | `declaration-track:d2bfe53be1b6a7fc443422581cc61eba1b5d5f7ca2ca17a2994afd45cacec2bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f30400175ce8584b4a5b4f3f025e858882730a760f8ce7f5f6ba7c0be8a3087d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
