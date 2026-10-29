# Verification target: Birkhoff Sum Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbae2c76180488f119f78299cc95e86b9a33d024",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant437b84619d9ab6b388c0877c7059c0f64ece9b24265c1f38cde2532950bedf93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbae2c76180488f119f78299cc95e86b9a33d024`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant437b84619d9ab6b388c0877c7059c0f64ece9b24265c1f38cde2532950bedf93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant437b84619d9ab6b388c0877c7059c0f64ece9b24265c1f38cde2532950bedf93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum.md) | 31 | `declaration-track:c8252240c2de327206fc75e83786c67d2b35f610a33da9a6f5286701fd3cdaa9` |
| 2 | `theorem` | [birkhoffSum_zero_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-zero-apply.md) | 33 | `result-track:729b072ef84943c5dd5f74ebfca1d463a10e33b2b6d55ccf23fe5972f63a3193` |
| 3 | `theorem` | [birkhoffSum_zero](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-zero.md) | 37 | `result-track:32fa2449f813d861544ad7eb925a8bea2d16f369635a37cdf3c4efbbaaab8679` |
| 4 | `theorem` | [birkhoffSum_one_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-one-apply.md) | 42 | `result-track:d739e9731764fbd44da2c397e507f7a47b0c7251b7e5bd897d937e946c46093f` |
| 5 | `theorem` | [birkhoffSum_one](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-one.md) | 46 | `result-track:ec7219d0a5efee6fd34490793db0bbf14e018e9fad2b51066376c7540e6defa0` |
| 6 | `theorem` | [birkhoffSum_succ_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-succ-apply-source-edition-2.md) | 51 | `result-track:6c5d2423108cf9f20fc7cfbf103f972f658db4330d3dba61919e9d240a896c63` |
| 7 | `theorem` | [birkhoffSum_succ](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-succ.md) | 55 | `result-track:4995c2a00bc30e55745067072e5e3e35e078ba037996fbca0b54a1d22ac2d27f` |
| 8 | `theorem` | [birkhoffSum_succ_apply'](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-succ-apply.md) | 59 | `result-track:06b81f09adf7a46c6fd57bf44e72a4e8a8ffd3672441ca4fc8a52966e167f7b4` |
| 9 | `theorem` | [birkhoffSum_succ'](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-succ-source-edition-2.md) | 63 | `result-track:bac3f442f02e8cee5ad5d8416871fbfdd73ae902feee34804436edde37f9b624` |
| 10 | `theorem` | [birkhoffSum_add_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-add-apply.md) | 67 | `result-track:bd4c0bc46e2f7b1aaf72b5fd364bf1f6e743299f55e45e64cfef52af821f92d4` |
| 11 | `theorem` | [birkhoffSum_add](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-add.md) | 71 | `result-track:a02ca9259954a0a6b379bc5dd73f4d7390d02972b8e487714b2e4918e0011ffb` |
| 12 | `theorem` | [birkhoffSum_add_right_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-add-right-apply.md) | 75 | `result-track:c7dca9e4c073f614672f8ce3aabe56ec329d5b7c61e3eb47d129575250b4a884` |
| 13 | `theorem` | [birkhoffSum_add_right](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-add-right.md) | 79 | `result-track:ae28e4e21c0b33722ad0c96850632aef5d225f6d92b9a1b005973a61f33075a9` |
| 14 | `theorem` | [Function.IsFixedPt.birkhoffSum_eq](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/function-isfixedpt-birkhoffsum-eq.md) | 83 | `result-track:3ded2589669c6f14972556c1c63d644070f2948e30e1395c53637a3d1986a3e7` |
| 15 | `theorem` | [map_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/map-birkhoffsum.md) | 87 | `result-track:db57b2fa66131b98f7299969de8d7d244ccd8b1df086b855a2e7e6508975ce12` |
| 16 | `theorem` | [map_comp_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/map-comp-birkhoffsum.md) | 92 | `result-track:f6f16a6fa26cb659d89a18275860f1d678f61e9544e334a6c6e8fa5ae5fc681c` |
| 17 | `theorem` | [birkhoffSum_apply_of_comp_eq](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-apply-of-comp-eq.md) | 99 | `result-track:c1a63da05b0dab0e5703549a36cc02ec72308445079724d87728ea63eaee7fe3` |
| 18 | `theorem` | [birkhoffSum_of_comp_eq](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-of-comp-eq.md) | 107 | `result-track:699db211e265392afef022ef56ad52d0bc95f42265827a7bb000173f8c303e27` |
| 19 | `theorem` | [birkhoffSum_neg_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-neg-apply.md) | 117 | `result-track:e4d8d0f96e51446bd67418c459381c8978a4ffd04ea8d25df70c995dd36d3c19` |
| 20 | `theorem` | [birkhoffSum_neg](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-neg.md) | 121 | `result-track:17a508dd62f8382f8a75d6ee932ed52e92c3fe03692471b0cd4de0ffc2e52ae5` |
| 21 | `theorem` | [birkhoffSum_sub_apply](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-sub-apply.md) | 125 | `result-track:009cd9cf756d9c2a47306c46364fe6d40a7833622d25468f23c6feffcbfab2db` |
| 22 | `theorem` | [birkhoffSum_sub](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-sub.md) | 129 | `result-track:5623d1f64c541fb8a91366827dbe0c5a2fc2e3d46694957fa982d473d079c361` |
| 23 | `theorem` | [birkhoffSum_apply_sub_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-apply-sub-birkhoffsum.md) | 136 | `result-track:65e52610611fabb2a8d764f9b32985f447a1b02c86ff53f949e7289d22c177a9` |
| 24 | `theorem` | [birkhoffSum_comp_sub_birkhoffSum](../../../../DynamicalSystemsAndErgodicTheory/BirkhoffSumBasicPublic.lean/declarations/birkhoffsum-comp-sub-birkhoffsum.md) | 145 | `result-track:f2bfd573d04b62e82bb169adce0d127aae2474bb67f5592922a66e15a2994bf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b15dff02a992df46b518e86c5189e7a0690d8bda9ba9f2151a2126b2dfa0dc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant437b84619d9ab6b388c0877c7059c0f64ece9b24265c1f38cde2532950bedf93.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant437b84619d9ab6b388c0877c7059c0f64ece9b24265c1f38cde2532950bedf93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
