# Verification target: Proper Power Assembly

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14f05acdd9f3b1f192f6c1ec380274da245a0ee9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14f05acdd9f3b1f192f6c1ec380274da245a0ee9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerTransport` — import line 1; external provider; requires a separately pinned dependency.
- `ClosedProperPowerPrefix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedInventory](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/shiftedinventory.md) | 17 | `declaration-track:c09a4da0b4aff9fa417c0d7d8b23ceaa08781dc14a22096b8028f6fab1a30410` |
| 2 | `theorem` | [mem_shiftedInventory_iff](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/mem-shiftedinventory-iff.md) | 21 | `result-track:f37b86d064f9046e00261c90353aafe8f9e25045612cbbeaadc51c0c012a8fc2` |
| 3 | `theorem` | [shiftedInventory_onset_iff](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/shiftedinventory-onset-iff.md) | 39 | `result-track:24d76a7b7e0aa7fbd2e8e047f3071b725a1f3a6c206e33c796162fcf256f9211` |
| 4 | `theorem` | [closedOnsetAtom_zero_outside](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/closedonsetatom-zero-outside.md) | 44 | `result-track:89989b608930531dc13d1adc1e6100cb77f9a5b8f7a3fcde404aad1d32e7a893` |
| 5 | `theorem` | [closedOnsetPrefix_eq_finite_shifted](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/closedonsetprefix-eq-finite-shifted.md) | 50 | `result-track:7e7a3f170ba9aca3d46cef0564a0e08583b3f01f2d0ec0ad2d6d3d0beb2b4466` |
| 6 | `theorem` | [finite_shifted_sum_eq_actual](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/finite-shifted-sum-eq-actual.md) | 60 | `result-track:14e37e0516152c52523f74f49c8b413eb828fa7c7376fa93107bfb4ad3f36e03` |
| 7 | `theorem` | [actual_closed_prefix_eq_countable](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-closed-prefix-eq-countable.md) | 82 | `result-track:58af51daf8c77c4cea050f51c0e0267483487e2e0060f5613a9ddbb7aa00a1cc` |
| 8 | `theorem` | [actual_weighted_difference_eq_countable](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-weighted-difference-eq-countable.md) | 86 | `result-track:262bb5bba5f68259b3341eab970d0fac9579a2b353138ca67779e4f5991a0ed7` |
| 9 | `theorem` | [actual_weighted_difference_add_tail](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-weighted-difference-add-tail.md) | 90 | `result-track:7bcd431e1f13e0414790c4696e111addcfc503eadc1cace69c9153389c0d691e` |
| 10 | `theorem` | [actual_complement_eq_omitted_tail](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-complement-eq-omitted-tail.md) | 96 | `result-track:b3ce737239dd7ece3ab05596e4e7589ea6f31a82fc722c99f7674e7182e18b55` |
| 11 | `theorem` | [actual_complement_nonneg](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-complement-nonneg.md) | 102 | `result-track:bfbd8b09cddd9c8558a41b6fd61b20d20d2936bf47d85d3733b5441723e2fca0` |
| 12 | `theorem` | [actual_complement_integrable_positive](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-complement-integrable-positive.md) | 107 | `result-track:5fde7b3fd2fa0c72985f4d34aa151caee45604c3f2a5a2b36d9e19a189edff64` |
| 13 | `theorem` | [actual_complement_integral_eq_B1](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-complement-integral-eq-b1.md) | 116 | `result-track:b4dc3e7f25c98cd1b129ac0b20e50030c4d7bbdec58fd9a4b98310af99ce2f4e` |
| 14 | `theorem` | [actual_weighted_difference_below_first](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-weighted-difference-below-first.md) | 123 | `result-track:29f97b4a4fe368df7f4d6218a9be5560f234a42e752cc3e4965a5688376779b4` |
| 15 | `theorem` | [actual_complement_below_first](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-complement-below-first.md) | 128 | `result-track:34e0f103e7973c946f5d09bac4834b319083381d5d89b696d120815d1a7e5ce0` |
| 16 | `theorem` | [actual_complement_le_B2_div_square](../../../../MeasureAndIntegration/ProperPowerAssembly.lean/declarations/actual-complement-le-b2-div-square.md) | 133 | `result-track:44cf0cca840a9107e5054f48d2f7942e0e5da4db67fa1540503b0634532dcfe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32bfdb36535866a8e180f8a89bd422b59419d595e30fdd464bdc4f04715971e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
