# Verification target: Transfer Namespaced Transfer Function

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f33ef53ddbda61c4e97a059161c54ab54a70be53",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f33ef53ddbda61c4e97a059161c54ab54a70be53`.

Source path: `GRWTSK/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Complement` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Sylow` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diff](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/diff.md) | 50 | `declaration-track:a22f41157c7683d14f8aad33ac4fb73818fe9153eab9187efddb434235cf5b20` |
| 2 | `theorem` | [diff_mul_diff](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/diff-mul-diff.md) | 60 | `result-track:e45dc8e64f9a42348b202d333d0a920fced61e04ce8e3627a7d31c1a7b064e72` |
| 3 | `theorem` | [diff_self](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/diff-self.md) | 68 | `result-track:6e328c5fe2b19518b39c2c6f201c26e4a2be12aeb653f3b4d600fc9fff9fef0d` |
| 4 | `theorem` | [diff_inv](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/diff-inv.md) | 72 | `result-track:be9d5c6f57e5c571e2c28d9aaf651eed254c4bbcb410e724a441b3f79ab8d560` |
| 5 | `theorem` | [smul_diff_smul](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/smul-diff-smul.md) | 76 | `result-track:e9955ea97ae787db2550dc1cc907ef7583aad80c30021a4a578d3054fabe293a` |
| 6 | `def` | [transferFunction](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transferfunction.md) | 92 | `declaration-track:8608caf0b6ca9a18c72038fabd84381d17d2a510c1679d1552d29e8fc2a5dbeb` |
| 7 | `lemma` | [transferFunction_apply](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transferfunction-apply.md) | 95 | `result-track:1f4a4e337382ce498b5ff80adaa8fd65ecb9fa1d63858de42b49a9cb3733caeb` |
| 8 | `lemma` | [coe_transferFunction](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/coe-transferfunction.md) | 100 | `result-track:dafd877051b113fd8331f7725de3bc662b160ff15b35a998325b41d445cdc0d5` |
| 9 | `def` | [transferSet](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transferset.md) | 107 | `declaration-track:9a22d496f16d707271e8603e0d882ab3671f3385a617021e43d4934b56320a99` |
| 10 | `lemma` | [mem_transferSet](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/mem-transferset.md) | 109 | `result-track:66379803ac1ea923a65e5107a96d7743514444a0a7c9184b8d462f4da63c1c63` |
| 11 | `def` | [transferTransversal](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfertransversal.md) | 114 | `declaration-track:5ac37f7f893c79797e50c8a652b0966eee4d9a9056e8f488c0773e8574b44393` |
| 12 | `lemma` | [transferTransversal_apply](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfertransversal-apply.md) | 117 | `result-track:3a0cb5470b8bf6ad16d09ef16d9a2977fc3fa79927217ad5e2ebae71d3faa770` |
| 13 | `lemma` | [transferTransversal_apply'](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfertransversal-apply-source-edition-3.md) | 121 | `result-track:abf10e5ae7bab15893d9466243f0b6daa163984ec6cee0095a874c285f0bf3f6` |
| 14 | `lemma` | [transferTransversal_apply''](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfertransversal-apply-source-edition-2.md) | 128 | `result-track:5a2f894111f616a036f9c77b834855b7fad0c9871d2ebb1f1778b13aa6075835` |
| 15 | `def` | [transfer](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfer.md) | 151 | `declaration-track:b9d2b6b8f6d4a7eb204623fe871113e5f68b1d82159cdd1c922ff5ddad1e6b1b` |
| 16 | `theorem` | [transfer_def](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfer-def.md) | 160 | `result-track:aba76387bf7b7875a14346d6fcb2ed62a1275203a9b5aa60e57bc9eb488da5ab` |
| 17 | `theorem` | [transfer_eq_prod_quotient_orbitRel_zpowers_quot](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfer-eq-prod-quotient-orbitrel-zpowers-quot.md) | 164 | `result-track:48560eb0dafb5fa69fa50c066e260bbd0a995718b0f682df5d8bce0cb802aefb` |
| 18 | `theorem` | [transfer_eq_pow_aux](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfer-eq-pow-aux.md) | 188 | `result-track:13ec0667795793982f7777b2974bc5eef1b03a06bd9b76ce667010c8e2b4814b` |
| 19 | `theorem` | [transfer_eq_pow](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfer-eq-pow.md) | 210 | `result-track:c9cb12e65cdba5dd2dbebfbdfaee5928866ba5c170480db403c136c6233e73b2` |
| 20 | `theorem` | [transfer_center_eq_pow](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfer-center-eq-pow.md) | 228 | `result-track:50a6ecb1d4345d23b8a05697c83922f7f60bedbd5fe59076b193f743784be13e` |
| 21 | `def` | [transferCenterPow](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfercenterpow.md) | 235 | `declaration-track:153c61e27490b773eb46492eb963f9e5d43545e8c813bc540b6bae8cef145078` |
| 22 | `theorem` | [transferCenterPow_apply](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfercenterpow-apply.md) | 241 | `result-track:d946563bf2561246de39552dd32a879eb8fe5903f1c08a64b5cb613e50d38514` |
| 23 | `def` | [transferSylow](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfersylow.md) | 251 | `declaration-track:288d3137ba71d92802868fe893bd22db612e9a367c252ec275aa0d35370903c3` |
| 24 | `theorem` | [transferSylow_eq_pow_aux](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfersylow-eq-pow-aux.md) | 259 | `result-track:d2c79140e60984f6445e7f5cc701ad4a702b407c6afff9eeb430c26ffcd64e7c` |
| 25 | `theorem` | [transferSylow_eq_pow](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfersylow-eq-pow.md) | 269 | `result-track:8cfa8daf2d69e473a8cc261209d39d4adb20a4d76953b453d8b8170ed196c057` |
| 26 | `theorem` | [transferSylow_restrict_eq_pow](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/transfersylow-restrict-eq-pow.md) | 275 | `result-track:1f97bcb2387429b05d000476007488cb0d905eb409a02a6b238d3f69a8066681` |
| 27 | `theorem` | [ker_transferSylow_isComplement'](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/ker-transfersylow-iscomplement.md) | 281 | `result-track:9fa77158bcc8d03b13a09fc816f2ed06f4209370a2d60a8e36baa6b2c9f0530b` |
| 28 | `theorem` | [not_dvd_card_ker_transferSylow](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/not-dvd-card-ker-transfersylow.md) | 292 | `result-track:d83cff82f90a3b34e996ca303dc477f17fe1c3c006c3c43fb17e78adc5264ad6` |
| 29 | `theorem` | [ker_transferSylow_disjoint](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/ker-transfersylow-disjoint.md) | 295 | `result-track:caccec3ceca9487df1a8d56c1aa489887bc2929f0e996f5d7d2f6bfdf61254d6` |
| 30 | `theorem` | [normalizer_le_centralizer](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/normalizer-le-centralizer.md) | 314 | `result-track:f535680c3f766549d1825a9491d2b0a453098ea6f28a04d9b210b7c863175972` |
| 31 | `theorem` | [isComplement'](../../../../GroupTheoryAndGeneralizations/TransferNamespacedTransferFunction.lean/declarations/iscomplement.md) | 344 | `result-track:cc46c1c8493e532f1cd8ad8941c02662af4dc83def9a3b5f8d5d10089fd9c6dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c60b47b7789912fac3e95b897377de7fb12bd9a2c147ead6f07a74df544532f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
