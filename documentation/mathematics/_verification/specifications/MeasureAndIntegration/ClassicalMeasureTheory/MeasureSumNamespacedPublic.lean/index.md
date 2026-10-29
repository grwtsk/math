# Verification target: Measure Sum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14df4b678be19e31feb69ab7cb84adb538433294",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantedd9422f88f29be4c5867770cd7cfa6455e5cf98962e856bd659396e0140af3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14df4b678be19e31feb69ab7cb84adb538433294`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantedd9422f88f29be4c5867770cd7cfa6455e5cf98962e856bd659396e0140af3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variantedd9422f88f29be4c5867770cd7cfa6455e5cf98962e856bd659396e0140af3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum.md) | 38 | `declaration-track:e68f6a13737650d4a37daf4abc11e7f7195beeb09f1a88a5a00897cdf60b82b7` |
| 2 | `theorem` | [le_sum_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/le-sum-apply.md) | 43 | `result-track:2d39cec28b15f5efb6d331c9b7a30915531e28be4ed939155dae395357a0bf04` |
| 3 | `theorem` | [sum_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-apply-source-edition-2.md) | 47 | `result-track:b73687068971e4364a62b96f7c7f742320480b6ea0bda6d4581231e6dfd52b65` |
| 4 | `theorem` | [sum_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-apply.md) | 51 | `result-track:2300deae266678eb971d1b5d2ef11d28b85c0cc0cd4e431e303f57965cf2b0e8` |
| 5 | `theorem` | [sum_apply_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-apply-of-countable.md) | 69 | `result-track:0180a4961c68f92831207b89911481553d0bcaa4301c625c0ea3347bf1c4d889` |
| 6 | `theorem` | [le_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/le-sum.md) | 78 | `result-track:1b8977df4e3209c2b8cf2996972b9321756aa97e150709930c2e3a8b84658b13` |
| 7 | `theorem` | [sum_apply_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-apply-eq-zero.md) | 82 | `result-track:bc189ed92e5f5fd2071ac6119d10e5120744f4c5a50f0d3ed739f331c2804e46` |
| 8 | `theorem` | [sum_apply_eq_zero'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-apply-eq-zero-source-edition-2.md) | 86 | `result-track:d863b1df8dce21c2c36cfb5d34076dd6d12e987c449f9851f644e43afd6a5b3a` |
| 9 | `lemma` | [sum_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-eq-zero.md) | 89 | `result-track:742a4b52e8e40694ed2d56f72495235784369a89229307a4a1cd8d9d95699ddc` |
| 10 | `lemma` | [sum_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-zero.md) | 93 | `result-track:2ed13dfb3fb62fe3b66e07f90e83c884b9a2d2015c300e69b475d51f9011fbb1` |
| 11 | `theorem` | [sum_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-sum.md) | 97 | `result-track:43d40114a52452e0a5c57a72cf7a950924df1f6daadab7ea40f399e2a7c6430e` |
| 12 | `theorem` | [sum_comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-comm.md) | 102 | `result-track:df4fde9c3057f9650f9e2e2b46971add6b1f4bcf4467156d774526e917972253` |
| 13 | `theorem` | [ae_sum_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/ae-sum-iff.md) | 108 | `result-track:2f936450501b8d99f7aebe75ab2698ecbc7dad242222f4eb6afa86b98238732f` |
| 14 | `theorem` | [ae_sum_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/ae-sum-iff-source-edition-2.md) | 112 | `result-track:8de35f909abae2928289a73c2dce3db9d0d2893efde5db96ac8ab386505833d6` |
| 15 | `theorem` | [sum_fintype](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-fintype.md) | 117 | `result-track:5382449d285b966d1ee98684055e5c57eb02859810967b03e5392ae8c2f4520c` |
| 16 | `theorem` | [sum_coe_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-coe-finset.md) | 121 | `result-track:c54dbb07d85614aff58dd8f05f02b974bdc84a80e48250cf1b4abf3a571e6916` |
| 17 | `theorem` | [ae_sum_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/ae-sum-eq.md) | 125 | `result-track:09170b8b1293742859436816902748d1ea2e90099303545ee842fb00ee441ed3` |
| 18 | `theorem` | [sum_bool](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-bool.md) | 128 | `result-track:fa11d072b73e44bb9cec2d4f76d4c837d45b06ace5b457f34704f3a28c9219f0` |
| 19 | `theorem` | [sum_cond](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-cond.md) | 131 | `result-track:d51bc4fff28e70ce26776306e93bffbfe8c44cadebd78362328160aef2ffe935` |
| 20 | `theorem` | [sum_of_isEmpty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-of-isempty.md) | 135 | `result-track:c1420ca5d93999078b17a2dac1f700d5767ebf26ac00d9643e155ae2f77e36a4` |
| 21 | `theorem` | [sum_add_sum_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-add-sum-compl.md) | 138 | `result-track:7e8846da235fcc25d4091df05e5212f160f847f0f8f43597f21916916c3b3ed4` |
| 22 | `theorem` | [sum_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-congr.md) | 144 | `result-track:0bade9388d2c159ca2ec1ef1857d178167357234698bdccaff9476df44b7a305` |
| 23 | `theorem` | [sum_add_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-add-sum.md) | 147 | `result-track:0f6fcb4d1684fda9ff569ecdd1abe5c53a99519748d0108e4a39554959782c36` |
| 24 | `lemma` | [sum_comp_equiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-comp-equiv.md) | 152 | `result-track:55ed850b7e5d3be9f200b51701d7823b7a6e643926ee5edafbcee462e2d9fde9` |
| 25 | `lemma` | [sum_extend_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSumNamespacedPublic.lean/declarations/sum-extend-zero.md) | 157 | `result-track:b5cd5bdb068f299aeb6b8fd372b3e39d98a41d51902a06736b7c652026d7b3db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62ac61a93ffbfb7458b2a6e71bcca99f9284356faf2a8fae48a8cb465c20d5e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantedd9422f88f29be4c5867770cd7cfa6455e5cf98962e856bd659396e0140af3a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sum/Variantedd9422f88f29be4c5867770cd7cfa6455e5cf98962e856bd659396e0140af3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
