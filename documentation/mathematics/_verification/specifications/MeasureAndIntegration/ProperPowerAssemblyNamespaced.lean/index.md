# Verification target: Proper Power Assembly Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "678c51b448b46a24b6cc330d0a13096a7242c3fa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `678c51b448b46a24b6cc330d0a13096a7242c3fa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean.json)

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
| 1 | `def` | [shiftedInventory](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/shiftedinventory.md) | 25 | `declaration-track:8ccd3d28812b48fc061c287a19792c5ee295f4267f6243837d2e4cda09b0dbb0` |
| 2 | `theorem` | [mem_shiftedInventory_iff](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/mem-shiftedinventory-iff.md) | 29 | `result-track:a4f2bbda3ce7178920f97f226f89d7e7a6e2d8bfe3191ecd4e88e92ed93823bd` |
| 3 | `theorem` | [shiftedInventory_onset_iff](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/shiftedinventory-onset-iff.md) | 47 | `result-track:75122ff2b7d4690be38162eec27a55f8d420ebf16d6ea3a41729cbab8dd502f5` |
| 4 | `theorem` | [closedOnsetAtom_zero_outside](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/closedonsetatom-zero-outside.md) | 52 | `result-track:e44548cb549799d5452dba6a375e7a106e81efb462f12c7ec4d03f5be9434805` |
| 5 | `theorem` | [closedOnsetPrefix_eq_finite_shifted](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/closedonsetprefix-eq-finite-shifted.md) | 58 | `result-track:a2e34325cc07ca56d2e3092c6825b6579e470ad42b759af0b4def267739b1a90` |
| 6 | `theorem` | [finite_shifted_sum_eq_actual](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/finite-shifted-sum-eq-actual.md) | 68 | `result-track:73256b26030ae0b1edcb76359eded3fe4fc335f4412ab715bc209cebe35c2a0e` |
| 7 | `theorem` | [actual_closed_prefix_eq_countable](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-closed-prefix-eq-countable.md) | 90 | `result-track:593b80316a68cc10c5cc3d5a92e2313533f1ddeeeaea6c054426a347cb64618e` |
| 8 | `theorem` | [actual_weighted_difference_eq_countable](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-weighted-difference-eq-countable.md) | 94 | `result-track:1bea4c29e5920cda01076aec519c4c3e2574ccf10b51261979f47e1c60e22067` |
| 9 | `theorem` | [actual_weighted_difference_add_tail](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-weighted-difference-add-tail.md) | 98 | `result-track:4c939a55016b59faa8e5a559fb648f6811f682f402ae6b6ea025c146a07a6c00` |
| 10 | `theorem` | [actual_complement_eq_omitted_tail](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-complement-eq-omitted-tail.md) | 104 | `result-track:b7ddba7a4f42a4ba8a2ae7e1e6ddf80b2b6f7c8c1d016f18d4e909d7699933b6` |
| 11 | `theorem` | [actual_complement_nonneg](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-complement-nonneg.md) | 110 | `result-track:ace530003c1b8fae91a782338b72931a4ace80712b6f4eef008320aa7315ebaf` |
| 12 | `theorem` | [actual_complement_integrable_positive](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-complement-integrable-positive.md) | 115 | `result-track:fdeb50418d1d603fbec7a4ac83096a099baaf7a45b06d292ad6a6dd4051e8df9` |
| 13 | `theorem` | [actual_complement_integral_eq_B1](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-complement-integral-eq-b1.md) | 124 | `result-track:487dc7b708b2bf98ce3a323b15162f9239b07efda49d3d55f413be594c08ed11` |
| 14 | `theorem` | [actual_weighted_difference_below_first](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-weighted-difference-below-first.md) | 131 | `result-track:033fb30d5b020d3473217a88cca0ee3739d66a7364ffaf299cd4b3a8a6cad89a` |
| 15 | `theorem` | [actual_complement_below_first](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-complement-below-first.md) | 136 | `result-track:c9a9175376bbec3a17e339bae3954f87eebdc468cb770ac0f1327eb1332d5784` |
| 16 | `theorem` | [actual_complement_le_B2_div_square](../../../../MeasureAndIntegration/ProperPowerAssemblyNamespaced.lean/declarations/actual-complement-le-b2-div-square.md) | 141 | `result-track:d1185195183bfa11b3802d0070557a15fc623c1960b45d22d291cc536cce76b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f0bca92c39812daf3b8ade015a1c953a303c2040e6a00ad137673c5067aa60d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
