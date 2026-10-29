# Verification target: Order Iso Nat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "319e154518f31d1ef48dc16fe1e54eea784d0478",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `319e154518f31d1ef48dc16fe1e54eea784d0478`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean.json)

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
| 1 | `def` | [natLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/natlt.md) | 51 | `declaration-track:1a9dafaa98377a4c7ca24f99d15386b6a9d2fdca1f94d20e03ffdf407ffb39d1` |
| 2 | `theorem` | [coe_natLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/coe-natlt.md) | 55 | `result-track:d20ebb03a6af27eba879b35bae85ef4cd9966b201835e1b324374cb3a341f60e` |
| 3 | `def` | [natGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/natgt.md) | 59 | `declaration-track:6573ae09a5dd781d9e1e4c6312e9ec6b0f5694fbb06e6b1ba1a661631e987bf1` |
| 4 | `theorem` | [coe_natGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/coe-natgt.md) | 63 | `result-track:d8e3bf628946cc9ef5e3050d544c47983f11f98e7b1bf6fed7c65106259b3ca0` |
| 5 | `theorem` | [acc_iff_isEmpty_subtype_mem_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/acc-iff-isempty-subtype-mem-range.md) | 67 | `result-track:87c8db81906c88cc9b8e901dcc84efccbe5c8f82189fa15b67bda421bf697cc2` |
| 6 | `theorem` | [not_acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/not-acc.md) | 75 | `result-track:47043c13549196b262fc0b71d31148e32d8fc28311233d7fca1d340e4295dd0d` |
| 7 | `theorem` | [wellFounded_iff_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/wellfounded-iff-isempty.md) | 82 | `result-track:5cdd5e6066213297e1c6c2b9fefc072de07177fb06282b93f45b8d82551bb47c` |
| 8 | `theorem` | [not_wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/not-wellfounded.md) | 87 | `result-track:1befdd49e4c8d7b3478e6c5c594fe45c9b0a42add5dfd52d79c5127ec3f0146a` |
| 9 | `theorem` | [not_strictAnti_of_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/not-strictanti-of-wellfoundedlt.md) | 93 | `result-track:3546f005291701404e8629c0f9c8adec213b858dee9efb642c5a1607940b3444` |
| 10 | `theorem` | [not_strictMono_of_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/not-strictmono-of-wellfoundedgt.md) | 97 | `result-track:f09afac355f670685ce1005d6880e20d7d658ad6f5967f3efef022b0ad68ac41` |
| 11 | `def` | [orderEmbeddingOfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/orderembeddingofset.md) | 106 | `declaration-track:de46da6604ee5e808ce48b54794e9f074261b1607b76758d0fbd077cdd63f4e5` |
| 12 | `def` | [Subtype.orderIsoOfNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/subtype-orderisoofnat.md) | 113 | `declaration-track:5bd72bdece6c080abadf6f9bdeda74297fa6aa192e02458d38be17087d02a4cd` |
| 13 | `theorem` | [coe_orderEmbeddingOfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/coe-orderembeddingofset.md) | 124 | `result-track:548230881e09dd312d1c91b9b4816868fbd0e8cf6843a5132d865a7b9abe7b7e` |
| 14 | `theorem` | [orderEmbeddingOfSet_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/orderembeddingofset-apply.md) | 128 | `result-track:bdcc772255e7ae2390078a90ff11ab75e6e6f0e200812c94ebbc6646ffe34696` |
| 15 | `theorem` | [Subtype.orderIsoOfNat_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/subtype-orderisoofnat-apply.md) | 134 | `result-track:c2e07cdd44369a318ab252cc3dc77bf09364ce15b3ff4d5f2d5102703f704c4f` |
| 16 | `theorem` | [orderEmbeddingOfSet_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/orderembeddingofset-range.md) | 142 | `result-track:4e43d2635a29659eb790419e2f2ebe656a10913f5cde07e6c885f357e4fe4c07` |
| 17 | `theorem` | [exists_subseq_of_forall_mem_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/exists-subseq-of-forall-mem-union.md) | 146 | `result-track:4d492be02fda3b72d02874ca320d8a74846ee98e9dbf42fdc86c6dbed1729a7e` |
| 18 | `theorem` | [exists_increasing_or_nonincreasing_subseq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/exists-increasing-or-nonincreasing-subseq-source-edition-2.md) | 158 | `result-track:ad7e79a3d0b8f9f09b5ed9df54dc433502ea41828efd4bf035202ab1512ed551` |
| 19 | `theorem` | [exists_increasing_or_nonincreasing_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/exists-increasing-or-nonincreasing-subseq.md) | 192 | `result-track:2073cfa219c173f80a75f3cb7fd837e21a0e933b4d1605cee1841b351aa49a51` |
| 20 | `theorem` | [Infinite.exists_strictMono_or_strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/infinite-exists-strictmono-or-strictanti.md) | 207 | `result-track:894d03c344f6a885128e40e3650399cf86eaa06011819a9790aa340707e5c52a` |
| 21 | `theorem` | [Finite.of_wellFoundedLT_of_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/finite-of-wellfoundedlt-of-wellfoundedgt.md) | 219 | `result-track:44f464f6557c0c1532706b40cbe8c7c9d7eed4f37d28ee70453e835f30659d39` |
| 22 | `theorem` | [IsChain.finite_of_wellFoundedLT_of_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/ischain-finite-of-wellfoundedlt-of-wellfoundedgt.md) | 230 | `result-track:c17622abc3abb52708294074ef60b8125b1c892854e8b48c263b371fb4ad5a45` |
| 23 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/wellfoundedgt-iff-monotone-chain-condition-source-edition-2.md) | 240 | `result-track:ff14fa3c8e35a16dcccbaf6a48baafb555780dd0ec2b5217694b23d367e3f996` |
| 24 | `theorem` | [WellFoundedGT.monotone_chain_condition'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/wellfoundedgt-monotone-chain-condition-source-edition-2.md) | 250 | `result-track:a13e9de911a9c23e19e72925f720309d3e72e81a9736903d96b471f432e74851` |
| 25 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/wellfoundedgt-iff-monotone-chain-condition.md) | 257 | `result-track:4ac4c01e09ea8a1231e44913bd8361d2fbd60a9605f7a87973a13feb7b3316f3` |
| 26 | `theorem` | [WellFoundedGT.monotone_chain_condition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/wellfoundedgt-monotone-chain-condition.md) | 264 | `result-track:16976297bd2793e395f797ea53aee8c0db58a8c34cc71778bef24f0088e18d45` |
| 27 | `theorem` | [WellFoundedLT.antitone_chain_condition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/wellfoundedlt-antitone-chain-condition.md) | 273 | `result-track:eef18876308bb07835ba70e746dec2952cd0ac516867eb54f7a6093ca1a17f73` |
| 28 | `def` | [monotonicSequenceLimitIndex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/monotonicsequencelimitindex.md) | 281 | `declaration-track:7c5fdfc2216290b2f9b854d92b3f9003b80afa1bb08d28384158f12db8133927` |
| 29 | `def` | [monotonicSequenceLimit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/monotonicsequencelimit.md) | 286 | `declaration-track:7c0a353194a747952e21291af7c72ea1a10295f80c1299dc8a409756d836076d` |
| 30 | `theorem` | [le_monotonicSequenceLimit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/le-monotonicsequencelimit.md) | 289 | `result-track:036e668838b7bcf2b9880d69132b88b90de5acce4f3e31f3853a37ab5e5a9f47` |
| 31 | `theorem` | [WellFoundedGT.iSup_eq_monotonicSequenceLimit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/wellfoundedgt-isup-eq-monotonicsequencelimit.md) | 296 | `result-track:15921a47b2439779a77a9f567b5882f7b57dea7a497f87f3b0da9fce698b9fc7` |
| 32 | `theorem` | [WellFoundedGT.ciSup_eq_monotonicSequenceLimit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/wellfoundedgt-cisup-eq-monotonicsequencelimit.md) | 300 | `result-track:cb59e837cdc060ca7ce172301cebe6d3f63accfac15d5415e8ea133d63adfd55` |
| 33 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt.md) | 305 | `result-track:f5b0bcfaa8185bccfcbf1f1bb3289b81f4c8079bbadb448d72c2b2eb7fa852e0` |
| 34 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt-of-le.md) | 322 | `result-track:6a8a3f46e4a246a5e6a3b3f6661efe3e6c1335bcc32e3dcedc84014bc40186ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2acb422ca847c7cbee7e67f0e35e13b300d2b870e5b29d5a9715bee38a939c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
