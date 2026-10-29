# Verification target: Tag Reduction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dda9b2c122e73bc974535fb3ea379f898accc971",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dda9b2c122e73bc974535fb3ea379f898accc971`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Reduction.FiniteHeight` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TagStep](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tagstep.md) | 28 | `declaration-track:1baba1fae104adc88d1182aced68204484f2bde8abf7da91a9999323833519fd` |
| 2 | `def` | [tagRootNext](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tagrootnext.md) | 35 | `declaration-track:51df1c85bc7135e02bedd23d94b8f8f03527883b7ccb17b4e5fb4890571ca082` |
| 3 | `def` | [tagNext](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tagnext.md) | 41 | `declaration-track:e58b1b36c5e3e789fa87a54140a8f370af146255bf442cf3c5986bb7a3f14d61` |
| 4 | `theorem` | [tag_root_next_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-root-next-sound.md) | 47 | `result-track:f2aaad8e9353a22c3c327c3ffad85ae48ad52351260e08365b9f200e25255308` |
| 5 | `theorem` | [tag_next_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-next-sound.md) | 68 | `result-track:0ecea583682dab8f768c89522bd63a6bc941e72582c1e0f0fd36a06f93ffdbcb` |
| 6 | `theorem` | [tag_next_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-next-complete.md) | 81 | `result-track:4202293a77ef28dcc3c05662d245df7dceada324e16d89f2dbfff88a94111a41` |
| 7 | `theorem` | [tag_next_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-next-correct.md) | 89 | `result-track:001c17f71fdcbf5ba29e980b32b570636418ba1e7ffb05575a684291251252f2` |
| 8 | `theorem` | [tag_step_preserves_typing](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-step-preserves-typing.md) | 94 | `result-track:11a308641220334ccd1a0b36a673651e1cda531d51e91a1afe9ac9a30012e63e` |
| 9 | `theorem` | [tag_step_size](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-step-size.md) | 102 | `result-track:ea7b880c1a269ab8198c5682f357c84a9f7181ce6ad3a8edba0fa819cfb798ca` |
| 10 | `theorem` | [tag_step_size_decreases](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-step-size-decreases.md) | 109 | `result-track:729ae321f8cbe48c78a6db77427cbd771b56bb05224d0dfcc4888e0dbdf9d10e` |
| 11 | `theorem` | [tag_size_strict_simulation](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-size-strict-simulation.md) | 115 | `result-track:45b47e766f113735882e3e7ecd19f6de0fd148988aa6f9028c1639ba93e39f59` |
| 12 | `theorem` | [tag_strongly_normalizing_by_simulation](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-strongly-normalizing-by-simulation.md) | 121 | `result-track:ff36e61ff7a3e75e6df6eb361a5060a68b4c029ef7b6535f0ce0f2673f06f2a7` |
| 13 | `def` | [tagReducer](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tagreducer.md) | 127 | `declaration-track:c849176d97f9e8be734984911d7867a5c98348d6ee59392d77093a45e8975f07` |
| 14 | `def` | [tagHeight](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tagheight.md) | 134 | `declaration-track:f7466e4724d84c1ba69f2d9cf2c793199e0ec25693dd2f1cf8bb9f5a4b477a43` |
| 15 | `theorem` | [tag_height_eq_mathematical_height](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-height-eq-mathematical-height.md) | 140 | `result-track:6ee9fa5f47c4ace1765e135c743b00136b1ecbbee42b2bcd9bfbfa6ae56a8b53` |
| 16 | `theorem` | [tag_strongly_normalizing](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-strongly-normalizing.md) | 158 | `result-track:3b7903bb1df2a9243e8ecd824f8cb451296d21e5e30bf0ae501a53a4356a9425` |
| 17 | `theorem` | [tag_longest_trace](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-longest-trace.md) | 163 | `result-track:6cfa9ba7b1da711fe01d5bad60c1684ceb1c67cd0410c9395c1e3162339c124a` |
| 18 | `theorem` | [tag_trace_preserves_typing](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-trace-preserves-typing.md) | 169 | `result-track:c07273fbbf4e32101a33ca1b890f197672b6471dcc0bd2b03701432a04acdfca` |
| 19 | `theorem` | [tag_trace_size](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-trace-size.md) | 177 | `result-track:368daeaa315eba88c7362c61e05ae5e4b272bd5c903c1b0a8125ae4fc6ed8f57` |
| 20 | `theorem` | [tag_step_representation_derivable](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-step-representation-derivable.md) | 186 | `result-track:744dde2e0b9196aaa804dcca9b5668f7c1d691e576f4697f97875cb17c5d289c` |
| 21 | `theorem` | [tag_table_output_bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-table-output-bounded.md) | 198 | `result-track:50125511202392c89229d24c65409c1eaa50df9a426f1ea043836ff38514a485` |
| 22 | `def` | [TagAssignmentValid](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tagassignmentvalid.md) | 214 | `declaration-track:9f0dee8abad8e3f51d7a2c35c8206aeb6012636c26f8608513ba4e180eac4e33` |
| 23 | `theorem` | [tag_evaluation_bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-evaluation-bounded.md) | 217 | `result-track:1e29eab5112ff5d0ffd48bfea5526050d0553c42a3f9540fed780fb6c524b87f` |
| 24 | `theorem` | [tag_cancel_evaluation](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-cancel-evaluation.md) | 233 | `result-track:fde5d8d66496a607f881d35b8a0002b540402aff9d8b9f5343c48dc30eeca0fb` |
| 25 | `theorem` | [tag_step_preserves_evaluation](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-step-preserves-evaluation.md) | 248 | `result-track:f6ecaff486dfea9370d6bd06125d0d14a80eab72fe3538d181dbbf09a1acff25` |
| 26 | `theorem` | [tag_invalid_assignment_changes_readout](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-invalid-assignment-changes-readout.md) | 257 | `result-track:9e74923f9498ffe13e4b223178a6bea531341aed6cb920c89abc14650d639c71` |
| 27 | `def` | [tagNormalize](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tagnormalize.md) | 264 | `declaration-track:7697602a516f6ba5b878aa248227d5af3b1e90db58f76ef8f7e351f6c7aed211` |
| 28 | `theorem` | [tag_normalize_spec](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-normalize-spec.md) | 273 | `result-track:24f530569fbf5c5c9c139eeb53f9c8f6512dd07dde6f18af8e808633b1ae3db8` |
| 29 | `theorem` | [tag_normalize_preserves_typing](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-normalize-preserves-typing.md) | 292 | `result-track:4f1a13ac775456e4fc390f6e62fe4814bfd02a8721244cbfe5d3a578bb5b4234` |
| 30 | `theorem` | [tag_normalize_preserves_evaluation](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-normalize-preserves-evaluation.md) | 299 | `result-track:71f879b6dc6b2f226d7298655c91c4540caacecfd0fd5a20717ac97a1f80813b` |
| 31 | `theorem` | [tag_catalogue_normalization_budget](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-catalogue-normalization-budget.md) | 314 | `result-track:00a6d077f2bd12cb9b3fb43d4da15ddc09cc8f239bd0325b835d320c8b1ccd91` |
| 32 | `theorem` | [tag_refl_step_under](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-refl-step-under.md) | 323 | `result-track:4dd75b605de7a2d6429b049a4fb98c33be2d1d8a207d05694a4b2ab53aa8d24c` |
| 33 | `theorem` | [tag_root_diamond](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-root-diamond.md) | 330 | `result-track:6dbbcff3a43cec3d22c3db0c2c03fa265ea6931218a1481bd4d85c7391a26e44` |
| 34 | `theorem` | [tag_local_diamond](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-local-diamond.md) | 342 | `result-track:ffa8db879702601b6c17002f3faf3038ff911d64da9148adb32f31672e7dcee6` |
| 35 | `theorem` | [tag_confluent](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-confluent.md) | 363 | `result-track:047138b3267654298f1226a7ccdc29302122020d2e2742ddbaabf92da6b18693` |
| 36 | `theorem` | [tag_trace_to_reachability](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-trace-to-reachability.md) | 375 | `result-track:96c9d396b768f8f564e1abd3f4e4aff011ccabed794b57af3b2a8adae40b9fec` |
| 37 | `theorem` | [tag_reachable_normal_forms_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-reachable-normal-forms-unique.md) | 383 | `result-track:2a8ad701677266bf91b8fe0fafc26ef488272084935ee9415a377c8ddd3fd339` |
| 38 | `theorem` | [tag_normalize_step_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-normalize-step-invariant.md) | 394 | `result-track:8aeb57a5cd29bc5267777d6042188a565be8f9c4d17bdad1efc1a2d892abd9ff` |
| 39 | `theorem` | [tag_step_substitution](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-step-substitution.md) | 402 | `result-track:924719c562e5b8d73b993102b7b36ca6a8170f28fca7cb2e847636bee25349d0` |
| 40 | `theorem` | [tag_substitution_size_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-substitution-size-bound.md) | 411 | `result-track:bc60e98a4b9a920b99b934881c042505ce6f6aee9762ea30dece468e5f41afc3` |
| 41 | `theorem` | [tag_height_size_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-height-size-bound.md) | 426 | `result-track:7eeb78e55e903ad2a21db5afb187623dc2dcaf5aee1c4237cae06e9738653cc9` |
| 42 | `theorem` | [tag_substitution_height_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-substitution-height-bound.md) | 434 | `result-track:8e581e097b13d94392126e445cfa0de73d037911da10076a3c5ea2e1a6b4caeb` |
| 43 | `theorem` | [tag_substitution_creates_redex](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/tag-substitution-creates-redex.md) | 442 | `result-track:677eb1884979f1c5c5eab533efb03e2f4c4584f48a37dbe7453ab915e699ae68` |
| 44 | `theorem` | [checked_tag_tag_reduces](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/checked-tag-tag-reduces.md) | 449 | `result-track:1a030e22d1bb638b0ef1eade424663d062e419ea780bac5469f530848931cf9e` |
| 45 | `theorem` | [checked_tag_tag_normalizes](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/checked-tag-tag-normalizes.md) | 455 | `result-track:a659c84f6669ce3cd75d10162389ae3b9692ac0e3632e0503c0b897dfa0b37e5` |
| 46 | `theorem` | [checked_tag_tag_height](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/checked-tag-tag-height.md) | 464 | `result-track:d089ea3e62cf507f24ec3454e19f132fcfa637f741930567bb50e3f8b968afe9` |
| 47 | `theorem` | [checked_reduction_endpoints_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/checked-reduction-endpoints-valid.md) | 475 | `result-track:dd1e7c91bcd1738966c82cd243bb82b0ee7578cf2fa81f741f007ffad7c3c9d6` |
| 48 | `theorem` | [outside_catalogue_normalizes](../../../../../ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/declarations/outside-catalogue-normalizes.md) | 482 | `result-track:cf67a60e6802bb5f2bb0ed4d85e69253474aa1bcc4626175a621e884367a6cf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13ef970e9fbde1633bbb83369142cc01a5d4be6dbae6dd630494ae3606d2c188 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
