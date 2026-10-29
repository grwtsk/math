# Verification target: BSDAlgorithm Bit Matrix Carrier Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "081e5f0de612ccd2d7aedea0da412e1c6718c72c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `081e5f0de612ccd2d7aedea0da412e1c6718c72c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.BitMatrixCarrierPadding` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Analysis.ZetaSpinFlipDuality` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BSDWitnessRow](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdwitnessrow.md) | 32 | `declaration-track:99ec91cd1576b360dfbb78a894ae8b3fac3c8635c3f2834e29ac25c6c1fa69c3` |
| 2 | `def` | [allBSDWitnessRows](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/allbsdwitnessrows.md) | 50 | `declaration-track:fbc451ea1d6fc9dea9537a73683c87cd928140f033316b920c41612f9d4eb82c` |
| 3 | `theorem` | [all_bsd_witness_rows_length](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/all-bsd-witness-rows-length.md) | 67 | `result-track:33a9dde1f43ffc76041da6aded3202251647d9f89761a67d3cd3a44a5e0539c4` |
| 4 | `theorem` | [all_bsd_witness_rows_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/all-bsd-witness-rows-complete.md) | 71 | `result-track:2f3cd4dc83ad976216e2627254eabc8732f821d8aaa41aeb2ce21becf29dd0ed` |
| 5 | `structure` | [BSDLocalEulerDatum](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdlocaleulerdatum.md) | 77 | `declaration-track:7ad72e887a97ada4af745e3db3e9a0ca7df30eb3234c77e4f396ad31bc2af1f5` |
| 6 | `structure` | [BSDAnalyticDatum](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdanalyticdatum.md) | 86 | `declaration-track:7c465fc72efc548ce3fc82088257ed0c3c4be9c9ac0f3a7ba740cce0361b4c66` |
| 7 | `structure` | [BSDArithmeticDatum](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdarithmeticdatum.md) | 94 | `declaration-track:bdf256da627fd5510c77588cfd9af21401dcf249608a0be3731da121a22ff478` |
| 8 | `structure` | [BSDComparisonDatum](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdcomparisondatum.md) | 104 | `declaration-track:a257b3687071f5220301e43e9d095f132140c22c7a83315054320f57066f1cb4` |
| 9 | `structure` | [BSDAlgorithmWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdalgorithmwitness.md) | 112 | `declaration-track:f2ba34c53c5bf841707db662e842895ca1675b0a60f2787e388391621e1be034` |
| 10 | `structure` | [BSDAlgorithmBitMatrixCarrier](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdalgorithmbitmatrixcarrier.md) | 120 | `declaration-track:ade766e2c4c9631c788bbd01e965ac4035daea58245136d822e5c03e798c4440` |
| 11 | `def` | [mkBSDAlgorithmBitMatrixCarrier](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/mkbsdalgorithmbitmatrixcarrier.md) | 135 | `declaration-track:f5ba18a8211f823df6647bfde632cea233c521b3dcca3028fcace958961abbcd` |
| 12 | `theorem` | [bsd_algorithm_bitmatrix_carrier_coverage](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-algorithm-bitmatrix-carrier-coverage.md) | 155 | `result-track:e71374ebdd1fbbe265af7daae61b69cb082aa4462e5d7797648e57e06b060e91` |
| 13 | `theorem` | [bsd_algorithm_bitmatrix_certificate_bits_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-algorithm-bitmatrix-certificate-bits-eq.md) | 162 | `result-track:cef8fa643b5bafe2a2e390d37490bc532bd7aa0f129731a4d8bf385c4d44bf7d` |
| 14 | `theorem` | [bsd_algorithm_bitmatrix_padding_bits_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-algorithm-bitmatrix-padding-bits-eq.md) | 169 | `result-track:da2e7759d072f5d0e6cd2b72ce90ddb27623e5ce627cb63204d3fe3271e58476` |
| 15 | `theorem` | [bsd_algorithm_bitmatrix_square_side_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-algorithm-bitmatrix-square-side-eq.md) | 176 | `result-track:084b05ee15694f16bc00123ec95803f45db86a51e84550f5fbfed5533256d1f5` |
| 16 | `theorem` | [bsd_algorithm_bitmatrix_square_bits_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-algorithm-bitmatrix-square-bits-eq.md) | 183 | `result-track:a54ad7c8bcef4f02d85940613a88a8c02b38364d3d4742465ef8113067305ce7` |
| 17 | `def` | [BSDAlgorithmTraceReady](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdalgorithmtraceready.md) | 190 | `declaration-track:01e449518c749f54f8b2a192d7ce98f744ab486b6fd719ee1ae4875ff5bac079` |
| 18 | `theorem` | [bsd_algorithm_trace_ready_comparison_gate](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-algorithm-trace-ready-comparison-gate.md) | 200 | `result-track:e9a78c39c01fb71f0d8ac23a33932d20334093b35129904d00eacb5ada6bd287` |
| 19 | `inductive` | [BSDRootNumberSpin](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdrootnumberspin.md) | 208 | `declaration-track:6d3149c11e2be98653dc710c0dd9ec9c6de00da019daf44d21fd0b91cd9f091b` |
| 20 | `def` | [BSDRootNumberSpin.toZetaSpin](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdrootnumberspin-tozetaspin.md) | 214 | `declaration-track:09eb3f3e159808ec5a0034173b70884df3dc0c350b2898b7ffbf97a08ca0eb08` |
| 21 | `theorem` | [bsd_positive_root_number_spin_to_zeta_spin](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-positive-root-number-spin-to-zeta-spin.md) | 218 | `result-track:45fb71afe695411d32ae4c04d4a076a335a3b32fbf8456db19246edf21f418ca` |
| 22 | `theorem` | [bsd_negative_root_number_spin_to_zeta_spin](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-negative-root-number-spin-to-zeta-spin.md) | 222 | `result-track:eae085e863b411aa64f03869231a9f74d9cd25d4cadf60c888c4bca8e6252890` |
| 23 | `structure` | [BSDSpinFlipControl](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsdspinflipcontrol.md) | 227 | `declaration-track:d99363410944043cd9d7be8a071bdd6373b6f4079be64096ede43b1cccf7372b` |
| 24 | `theorem` | [bsd_spin_flip_control_equation](../../../../../ComputerScience/AlgorithmsInComputerScience/BSDAlgorithmBitMatrixCarrierNamespaced.lean/declarations/bsd-spin-flip-control-equation.md) | 232 | `result-track:b6a0e4209a3329fc1c56d7cbbe96f8dc7049d620e421bf8bad31b321c9f8e560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69c5d4a43b6ebe163b8f2a402ee1bf73dd5b586405e7a15ecf836a2b9415491f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
