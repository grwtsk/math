# Verification target: Source Complete Divisor Radius Tail Return Namespaced Radius Sampling Budget Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec37f7040d4dd3ba00ed5e0554df01f252e106a5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/index.md) · [Full source](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec37f7040d4dd3ba00ed5e0554df01f252e106a5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCompleteDivisorSharpTailReturn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualBeta](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/actualbeta.md) | 32 | `declaration-track:49b12b0067a9e024be4000061d4b6aa5226a017a7074c1bd1bd9f885072cbf81` |
| 2 | `def` | [radiusSamplingBudget](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/radiussamplingbudget.md) | 35 | `declaration-track:c35808d1280cb8ebbdf0d30cc13614522a1e9ffd4296e63a7dcc1ca890d6e665` |
| 3 | `def` | [radiusCompleteBlockTailBudget](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/radiuscompleteblocktailbudget.md) | 38 | `declaration-track:e3aa960cf14b69e77868a05152cfc99bd96017ac3418070a53f5ce1cd59cd5e7` |
| 4 | `theorem` | [radiusSamplingBudget_eq](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/radiussamplingbudget-eq.md) | 41 | `result-track:48651219bffa6a82966f4488ab9e080bd57d3a06f213c58d308c6952fd33a514` |
| 5 | `theorem` | [actual_shortPlain_tight_uniform_error](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/actual-shortplain-tight-uniform-error.md) | 47 | `result-track:3f8bc38bdee6513363124e24b9131e31d524f56ce20c39f8a857728bd54ae19b` |
| 6 | `theorem` | [signed_sampling_correction_abs_le_at_radius](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/signed-sampling-correction-abs-le-at-radius.md) | 61 | `result-track:84fa4e70cca4b0e8564035ac7a1f1456482d561cf9817358ffabf391c08e87d4` |
| 7 | `theorem` | [residual_upper_of_complete_block_at_radius](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/residual-upper-of-complete-block-at-radius.md) | 72 | `result-track:34eb0850e90cb59edcbc530c504c0a6366aed3be128f7aa6f6ff2b1d2da88964` |
| 8 | `theorem` | [complete_tail_lower_of_complete_block_at_radius](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/complete-tail-lower-of-complete-block-at-radius.md) | 79 | `result-track:aa264f3fcd58b15e7c0dac0d34ad2ff5165970caa0638d753fa7698c43f3a476` |
| 9 | `theorem` | [all_real_direct_lower_of_complete_block](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/all-real-direct-lower-of-complete-block.md) | 89 | `result-track:b5b9f3965fb3394eb94f19bd5630900580a82285827e37559f87d727fdd194ab` |
| 10 | `theorem` | [estimate_of_complete_signed_block](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/estimate-of-complete-signed-block.md) | 102 | `result-track:5a66d3e9fbec0bdec4237aeac66b13df9fa159a9d1882b857605e534955a1014` |
| 11 | `theorem` | [estimate_of_complete_signed_block_witness](../../../../Combinatorics/SourceCompleteDivisorRadiusTailReturnNamespacedRadiusSamplingBudgetEq.lean/declarations/estimate-of-complete-signed-block-witness.md) | 108 | `result-track:b6a4749ed3214b0e910fbed824e546371c2c03941629991eceb41054c1c76c50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec94f2e176985687ca8407378b97a785b4c6275f40e8b5c40e64e5477be08541 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
