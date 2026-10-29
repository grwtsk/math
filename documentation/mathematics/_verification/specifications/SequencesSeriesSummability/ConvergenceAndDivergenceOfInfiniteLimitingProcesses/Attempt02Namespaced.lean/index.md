# Verification target: Attempt02 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89d21543a94f93bab1fb1ab4421e3a9136a6e9f7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant42282a8ec72ce7d6a90c8d25a1b8b76e4eeeb8f61241cc2a056c231d4651ca06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89d21543a94f93bab1fb1ab4421e3a9136a6e9f7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant42282a8ec72ce7d6a90c8d25a1b8b76e4eeeb8f61241cc2a056c231d4651ca06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt02/Variant42282a8ec72ce7d6a90c8d25a1b8b76e4eeeb8f61241cc2a056c231d4651ca06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/outerweight.md) | 26 | `declaration-track:b266588ea36812acc91162c56980e5cf0ae56c78dad12c1de23216235b5c8c2e` |
| 2 | `def` | [exponentWeight](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/exponentweight.md) | 28 | `declaration-track:7ecbba044431a11adb5263da1f424e6f24e10c70b3547bc3fd83d8a9633a2950` |
| 3 | `def` | [momentAtom](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/momentatom.md) | 30 | `declaration-track:a761f613b216ddc8577ad6659a429a240fec909dfa4b7d0b66adde817b4959af` |
| 4 | `def` | [primeMomentAtom](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/primemomentatom.md) | 33 | `declaration-track:c8822553b7fb0bf8ed39db618b49a6b35b85ca8f14f2b5717d9f9ad62244f708` |
| 5 | `def` | [properPowerMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/properpowermoment.md) | 35 | `declaration-track:96759a1f844f46fe6e52deae8a0bf1b02da8e752d36e97c339e86ff619e9a0de` |
| 6 | `def` | [properPowerB1](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/properpowerb1.md) | 37 | `declaration-track:945e2e2181371f0507a72281ca564ae2d1a97af1e525ee9c742e1c6f0a58e1b0` |
| 7 | `def` | [properPowerB2](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/properpowerb2.md) | 39 | `declaration-track:61af28e1140553d90df7b9071bdc75ab002b74721a9555a02560e655af011008` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/outerweight-nonneg.md) | 41 | `result-track:808489953ec3abd928b3dd1ef8d92ed2878129a53714f431a525d589ebb3150c` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/exponentweight-nonneg.md) | 49 | `result-track:69761d65ba8b61e04a5eb4f694783dafe00e4e60bbc19cc011384b7f3de0774a` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/momentatom-nonneg.md) | 53 | `result-track:27d6c8308509021cc27bacf2e776e08da758d07c46e2042c373d2f9d2618197a` |
| 11 | `theorem` | [outerWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/outerweight-summable.md) | 61 | `result-track:f0d24fe7c0f63505641ef91f68df20c35ea30649ea0a26881cedfbbf87eaba81` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/exponentweight-summable.md) | 88 | `result-track:b65af2c83ebc537982764b140df15a2645f308e77994f0015e25add038a793fe` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/momentatom-le-product.md) | 97 | `result-track:e80420542fe003c12a7a1147a18ffb09a314ed399195018c25a1598b849b8c59` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/prime-outerweight-summable.md) | 116 | `result-track:166becba56e1a7de195ff4fcde17b76a5a43ddcbce7413ac28c3099be6a0250c` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/primemomentatom-summable.md) | 120 | `result-track:450f62e899d37c1f6ae58d0ed9cb79534dfa0171770c0312713e6ef6176c7590` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/primemomentatom-inner-summable.md) | 127 | `result-track:db50f07489fc016cc38a1c4003bfbe8253e22f0d618bedd581642461839d2495` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt02Namespaced.lean/declarations/primemomentatom-outer-summable.md) | 132 | `result-track:7b0464cae36408bb4d9f9eb8a5d52820d532b5ff29af2a5f1bd92ac3f1bdea36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=968b859c7e423b7027bf8740c3cd5509de2b35c0bfd66554b1843b2e6050b81d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant42282a8ec72ce7d6a90c8d25a1b8b76e4eeeb8f61241cc2a056c231d4651ca06.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Attempt02/Variant42282a8ec72ce7d6a90c8d25a1b8b76e4eeeb8f61241cc2a056c231d4651ca06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
