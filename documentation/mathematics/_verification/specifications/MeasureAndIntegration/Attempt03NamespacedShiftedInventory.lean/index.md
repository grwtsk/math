# Verification target: Attempt03 Namespaced Shifted Inventory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2d154499acec2d85f72c37cdf43fd27787f7b94",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantbd38bd9fa38f3830719c92cb05d35b5cc02b51a5395f1aea231bd50ca723bfa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2d154499acec2d85f72c37cdf43fd27787f7b94`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantbd38bd9fa38f3830719c92cb05d35b5cc02b51a5395f1aea231bd50ca723bfa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt03/Variantbd38bd9fa38f3830719c92cb05d35b5cc02b51a5395f1aea231bd50ca723bfa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerTransport` — import line 6; external provider; requires a separately pinned dependency.
- `ClosedProperPowerPrefix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedInventory](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/shiftedinventory.md) | 25 | `declaration-track:0363b10bc559a2bc53c15919d5ae0e836538f1272e44e3b7e31ddd56bdbb7fb4` |
| 2 | `theorem` | [mem_shiftedInventory_iff](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/mem-shiftedinventory-iff.md) | 29 | `result-track:e15925ee657ab832c07e4dd5934132728a81499ae587945f10ea84ba91346763` |
| 3 | `theorem` | [shiftedInventory_onset_iff](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/shiftedinventory-onset-iff.md) | 47 | `result-track:deed9b4eec92ff4344c0267239337c429259718bacfd6cc6099436a5401f2a4e` |
| 4 | `theorem` | [closedOnsetAtom_zero_outside](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/closedonsetatom-zero-outside.md) | 52 | `result-track:a3b8b35d7a107b54a60dfee60d99843c5661428e6ffc84cc7008b6b797cb52d0` |
| 5 | `theorem` | [closedOnsetPrefix_eq_finite_shifted](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/closedonsetprefix-eq-finite-shifted.md) | 58 | `result-track:c2602414337eb2a81a6b0bf887ce4d07bc42aaf1d8d0c58c307e1c55dbc00351` |
| 6 | `theorem` | [finite_shifted_sum_eq_actual](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/finite-shifted-sum-eq-actual.md) | 68 | `result-track:ce11f984811a6c92c5f0866b72c488b4b8e99b887155e56d5067ecba8660d68b` |
| 7 | `theorem` | [actual_closed_prefix_eq_countable](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-closed-prefix-eq-countable.md) | 90 | `result-track:e687f6f11eb428c55dbaf263730c438ea046156b8f8002d2449c62664f183ded` |
| 8 | `theorem` | [actual_weighted_difference_eq_countable](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-weighted-difference-eq-countable.md) | 94 | `result-track:efb754c2dffe53baf0e8013935b22ca8b6f153a644bc08162d8fead333315d65` |
| 9 | `theorem` | [actual_weighted_difference_add_tail](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-weighted-difference-add-tail.md) | 98 | `result-track:511063e2e461a1607652fc500293f3bb665403d14a947f4244432ca876163403` |
| 10 | `theorem` | [actual_complement_eq_omitted_tail](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-complement-eq-omitted-tail.md) | 104 | `result-track:32771d7b10101928cc8ac910d4206d709a4ec20022048ff85311cd9c067311e1` |
| 11 | `theorem` | [actual_complement_nonneg](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-complement-nonneg.md) | 110 | `result-track:1ca8ed5531a5a4bfac26c7adc5eaa9a984edf90db2dd82eb6a6dd9ab361ea077` |
| 12 | `theorem` | [actual_complement_integrable_positive](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-complement-integrable-positive.md) | 115 | `result-track:c4f8dc603549a3bccea86218e7a1fa703112912a96301a9d2b2333db1fe28bc9` |
| 13 | `theorem` | [actual_complement_integral_eq_B1](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-complement-integral-eq-b1.md) | 124 | `result-track:ebc34c3ac22d489f5d299743bb90e4ceda94a38e4d71deb285492faa07db88ce` |
| 14 | `theorem` | [actual_weighted_difference_below_first](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-weighted-difference-below-first.md) | 131 | `result-track:ab75f5178770d9787da184de2f6a1119113282ec4960fbe1fb54ff4e230464e2` |
| 15 | `theorem` | [actual_complement_below_first](../../../../MeasureAndIntegration/Attempt03NamespacedShiftedInventory.lean/declarations/actual-complement-below-first.md) | 136 | `result-track:8923a2c4c1295fc81f297eda05a4ce492f0c15e2a0f92bce98a7e3515df5a600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0cc97a078616a3d310001c76a128a5713aa49800126aee0ad40a3b03e3c6a63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantbd38bd9fa38f3830719c92cb05d35b5cc02b51a5395f1aea231bd50ca723bfa3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt03/Variantbd38bd9fa38f3830719c92cb05d35b5cc02b51a5395f1aea231bd50ca723bfa3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
