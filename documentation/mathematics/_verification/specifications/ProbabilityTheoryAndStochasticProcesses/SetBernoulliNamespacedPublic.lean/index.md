# Verification target: Set Bernoulli Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a018682f2c53eed414aaad9e201d1a140fef27",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/SetBernoulli/Variant35f1d176786ea02b2f1b30bad12f662bef29064a5f72901b0dc90a9e7beb7681.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a018682f2c53eed414aaad9e201d1a140fef27`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/SetBernoulli/Variant35f1d176786ea02b2f1b30bad12f662bef29064a5f72901b0dc90a9e7beb7681.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/SetBernoulli/Variant35f1d176786ea02b2f1b30bad12f662bef29064a5f72901b0dc90a9e7beb7681.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.NCard` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [setBernoulli](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli.md) | 53 | `declaration-track:77352bc552d3010cb0615766cc9db119d534a5f21b3a81c805fd475caa2ccf79` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/instance.md) | 58 | `declaration-track:f273cda81613468e777b5ec5bbf6510742bbd414605a51cc0f4f42f7d988c2c9` |
| 3 | `lemma` | [setBernoulli_eq_map](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-eq-map.md) | 63 | `result-track:6ae37fe6688ddda0ac9ff6124fa149b9fb2cf3724eca86355d0804afde101265` |
| 4 | `lemma` | [setBernoulli_apply](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-apply.md) | 68 | `result-track:860dc4a3d6b6e81348db14af2b3c39d900d21fbcc8f9dd6fe1efc63027ccff66` |
| 5 | `lemma` | [setBernoulli_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-apply-source-edition-2.md) | 72 | `result-track:98d2283d43325d5ca017fa48067f8886ed22bda37dde4785871bdb4b6161fa86` |
| 6 | `lemma` | [setBernoulli_zero](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-zero.md) | 77 | `result-track:b5eace33952dfa3a75c345c7109187d08af4029f28873bd87cd967e20ef28814` |
| 7 | `lemma` | [setBernoulli_one](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-one.md) | 80 | `result-track:243449fcfbc7a072778d62fda9412d632faf5e244bce0a412727fd00cb246626` |
| 8 | `lemma` | [setBernoulli_ae_subset](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-ae-subset.md) | 85 | `result-track:dd6d0d8be32cae5ff41584f567ad004b169a3f88a05766eae998d6b3dc5b0058` |
| 9 | `lemma` | [setBernoulli_singleton_of_not_subset](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-singleton-of-not-subset.md) | 99 | `result-track:3c322c1b9e1a349ec0d6e526f59b28f1db005c021840bf08df4cfe4bb046428d` |
| 10 | `lemma` | [setBernoulli_apply_eq_apply_subsets](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-apply-eq-apply-subsets.md) | 104 | `result-track:a2514c2a7ff0c4488128baeabadc3eb552c8d44b29a82d7eb52e27b0fd77916f` |
| 11 | `lemma` | [map_ncard_setBernoulli_apply](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/map-ncard-setbernoulli-apply.md) | 109 | `result-track:e20b49fd5200a1dde81ea2d5e9ec2d139cdb5290d4df91437c5bbdfa80222445` |
| 12 | `lemma` | [setBernoulli_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-singleton.md) | 115 | `result-track:40f1f43e28858dbb10ecdfbcea2365eeec46ad82a3156163df07c1cbb9d3d7fc` |
| 13 | `lemma` | [setBernoulli_real_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-real-singleton.md) | 132 | `result-track:3726669e0c74ba29b4b8b09bec53be7899ed7ffe17a29179e22dc67c5df1d406` |
| 14 | `lemma` | [map_ncard_setBernoulli_real_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/map-ncard-setbernoulli-real-singleton.md) | 136 | `result-track:3c617b5e54a5e377572085aa100018d4a443d98e2e7e391a106501e3f42fea6d` |
| 15 | `lemma` | [map_ncard_setBernoulli_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/map-ncard-setbernoulli-singleton.md) | 152 | `result-track:e5bb41f3af99222a3ee05cafe41ff1001f20f10d9a9697494a2d294745da51e3` |
| 16 | `lemma` | [setBernoulli_empty](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/setbernoulli-empty.md) | 159 | `result-track:77ad9748cf3d5eca4d0d7dcd58e451ce3529d297eb53765d1f28c04a396c17f0` |
| 17 | `abbrev` | [IsSetBernoulli](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/issetbernoulli.md) | 176 | `declaration-track:2fe985abbf905b5a4df2900e90edb08a7d886c96bf6215f68dca1ae9fbc448e4` |
| 18 | `lemma` | [isSetBernoulli_congr](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/issetbernoulli-congr.md) | 178 | `result-track:404af02df6a9951c3d39727620960c08e8a09bbfe880e6400aac416461ced051` |
| 19 | `lemma` | [IsSetBernoulli.ae_subset](../../../../ProbabilityTheoryAndStochasticProcesses/SetBernoulliNamespacedPublic.lean/declarations/issetbernoulli-ae-subset.md) | 183 | `result-track:f52e9eb3fb5614828a41c5d792356459b37f0a298a195a0e50380f6bf8e0d7a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b28c0e984a03e850a87011d340c0eeeae6429b0acb9d29a5aea08a00695a297 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/SetBernoulli/Variant35f1d176786ea02b2f1b30bad12f662bef29064a5f72901b0dc90a9e7beb7681.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/SetBernoulli/Variant35f1d176786ea02b2f1b30bad12f662bef29064a5f72901b0dc90a9e7beb7681.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
