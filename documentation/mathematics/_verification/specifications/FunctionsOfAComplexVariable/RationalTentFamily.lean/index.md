# Verification target: GRWTSK.Analysis.Complex.RationalTentFamily

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8235fd3fa6610017499cd1cfbf1a4350cba8d3ed",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalTentFamily.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8235fd3fa6610017499cd1cfbf1a4350cba8d3ed`.

Source path: `GRWTSK/Analysis/Complex/RationalTentFamily.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalTentFamily.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalMellinFamily`](../../../../FunctionsOfAComplexVariable/RationalMellinFamily.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalTentQuadrature`](../../../../FunctionsOfAComplexVariable/RationalTentQuadrature.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Evaluation](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/evaluation.md) | 28 | `declaration-track:e5de61eaf3d7b5b7d9f846d2d40fddf01cec510ae1b21eea31538c584779002c` |
| 2 | `structure` | [Trace](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/trace.md) | 34 | `declaration-track:2d430f7940bbc559eaf8aae9cd2c06934a7cacd25ab2dddf7b6f18edc72664aa` |
| 3 | `def` | [defaultEvaluation](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/defaultevaluation.md) | 39 | `declaration-track:1da9d6af167ceac368b72f808f0f9fd170a27e2279e296a4c6563a3b2615a128` |
| 4 | `def` | [evaluationAt](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/evaluationat.md) | 40 | `declaration-track:da1465ba959c5ad73cdf2d3ecb91c801dc5b0edc2bb64ebdac25db4b5bab28a3` |
| 5 | `def` | [terms](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/terms.md) | 43 | `declaration-track:99d770268bf610a46b69d95796ec8553f5c87e45d592deef64bc4899dcb5a880` |
| 6 | `def` | [localBudget](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/localbudget.md) | 50 | `declaration-track:6024e09a1b6d1707901985c2fd627dff670b1370dab264c084e75852c4755dbc` |
| 7 | `def` | [error](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/error.md) | 55 | `declaration-track:67e6649a5d5b7e1c371a225a82b14d61c094cbc67f53c81882157a3ac18771e5` |
| 8 | `def` | [output](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/output.md) | 59 | `declaration-track:ee91aeb8048cac6e2ae9d1e5efb50e3ec42b008ae70843845bc8ab5627f78727` |
| 9 | `def` | [Valid](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/valid.md) | 63 | `declaration-track:47827c7c0fbb68d2cf729d78decb7ca4c826c1b19014a6d9f8367e8790690484` |
| 10 | `instance` | [instDecidableValid](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/instdecidablevalid.md) | 73 | `declaration-track:82d37ad73a9d02b97e51aef77662d4f5a66eaacb6ac0fb120fb6f6e90f3c984c` |
| 11 | `def` | [check](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/check.md) | 76 | `declaration-track:b4d6039ee71ca41642dfb45b853f5bae58fd2eb809f33bfb431bbfeb59341595` |
| 12 | `def` | [checkWithin](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/checkwithin.md) | 77 | `declaration-track:54e1b82ebdb02f70b3b3f013eee3b5e35ecbea473c54976d47aa5abeac4a9b94` |
| 13 | `def` | [centerSum](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/centersum.md) | 81 | `declaration-track:b83e76ce63d4c27162aeaf546c2945630748af69b90df5842e135ed7d3b1e75f` |
| 14 | `theorem` | [check_iff_valid](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/check-iff-valid.md) | 85 | `result-track:e0658ce79d3708c583e7e2a64c39c8d2de1bd534fb85a8a4156ea13bf47c553d` |
| 15 | `theorem` | [length_terms](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/length-terms.md) | 89 | `result-track:cbde6d49a9639260299e21c9a4b267f59a9a677dc49c3ebb12674825399f243e` |
| 16 | `theorem` | [termAt_terms](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/termat-terms.md) | 92 | `result-track:2e86d9f6634649925e0f883d4c71c630386b800d3e38fcb0be9afe1859deb9fb` |
| 17 | `theorem` | [weighted_member_error](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/weighted-member-error.md) | 103 | `result-track:6f42200634050ec358dd66f45e5901dc98478709926f231b6a0267c042548495` |
| 18 | `theorem` | [centerSum_error](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/centersum-error.md) | 120 | `result-track:3c44cacb10fbe27955937734f7d19bf3a1893f7e6e3821b8dcfddd3a3a2ff03a` |
| 19 | `theorem` | [check_sound](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/check-sound.md) | 142 | `result-track:3c751d15f00b9b0ca11ff0d68428ed7214e1c7a3c0dd97dcf14c8119c36fd48d` |
| 20 | `theorem` | [checkWithin_sound](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/checkwithin-sound.md) | 158 | `result-track:06ff9e29c428ed478cf757a45f88e710b02d20a02d41ec518d80db02b19c1db6` |
| 21 | `theorem` | [checked_shape](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/checked-shape.md) | 165 | `result-track:102bb9a1429db945bedf45576f9516b44f66fe95dcaa35e2e4f591ce22f0b09e` |
| 22 | `theorem` | [checked_radius_nonneg](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/checked-radius-nonneg.md) | 173 | `result-track:3f120e881027377b0d9f55ebfd031d3d994c3c259b93316cc1e7cda852fa4383` |
| 23 | `theorem` | [checked_local_charge_le](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/checked-local-charge-le.md) | 179 | `result-track:8e0e03dc6df313c47355fec86f6afac7a3280f429a79b65afd474dde4f6e6e3b` |
| 24 | `def` | [withExactAccumulation](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/withexactaccumulation.md) | 190 | `declaration-track:d00cc333ba4c3395aa9b367204e6fc32ec632d9d2ba28114bedac78625654fd4` |
| 25 | `theorem` | [withExactAccumulation_checked](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/withexactaccumulation-checked.md) | 193 | `result-track:75eeafc8d1717438afe763924ac24755db3b7ff62fdc4576302e89dbe5ae586c` |
| 26 | `def` | [referenceEvaluations](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/referenceevaluations.md) | 206 | `declaration-track:9f4268d76c6678aa2d2a2ae7db31707a6785a8627bdb07535488fa5ff00151fe` |
| 27 | `def` | [referenceTrace](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/referencetrace.md) | 213 | `declaration-track:c29413965f7656c98b5cae1127c657e11b8f6eb76323c9356bbf605c72c813c9` |
| 28 | `theorem` | [referenceEvaluationAt](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/referenceevaluationat.md) | 217 | `result-track:3bd84ca564f0b5e58ab59f08c0bdfa0d06b8bddb561faf252055c25a86554b14` |
| 29 | `theorem` | [reference_checked](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/reference-checked.md) | 228 | `result-track:a71be34164b70484a518cd0936c7b6506e39b9fafc847053adb05e4e278382ef` |
| 30 | `theorem` | [empty_centerSum](../../../../FunctionsOfAComplexVariable/RationalTentFamily.lean/declarations/empty-centersum.md) | 250 | `result-track:f74c2e1aa241a7da4df9f2cf35d17b22c0349e36ce4a81d8fe81394065cfb0b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51e363bb3ef6d73b735971cc307764f15b3e74d201159ccf5337994c7e24ef39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalTentFamily.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/RationalTentFamily.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
