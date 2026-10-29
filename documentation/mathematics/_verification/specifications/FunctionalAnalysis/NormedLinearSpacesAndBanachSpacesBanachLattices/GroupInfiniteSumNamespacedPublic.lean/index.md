# Verification target: Group Infinite Sum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "917507223eb1a3ba06e32752489519da3cce124f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `917507223eb1a3ba06e32752489519da3cce124f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean.json)

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
| 1 | `theorem` | [cauchySeq_finset_iff_vanishing_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/cauchyseq-finset-iff-vanishing-norm.md) | 56 | `result-track:6f14a540c3e8566eba71fcb11b514bf8cca24817ff328ce4e024ff0ca2cea6f0` |
| 2 | `theorem` | [summable_iff_vanishing_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/summable-iff-vanishing-norm.md) | 64 | `result-track:6c167d872f0a0890b496aff879df8cd84983d0286c8118a7f2f5829ebe54316d` |
| 3 | `theorem` | [cauchySeq_finset_of_norm_bounded_eventually](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/cauchyseq-finset-of-norm-bounded-eventually.md) | 68 | `result-track:fcf61f5e12cbc60ec442719a5f8c184fe85f72b86ec3569bd9b35f7eea9704fb` |
| 4 | `theorem` | [cauchySeq_finset_of_norm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/cauchyseq-finset-of-norm-bounded.md) | 84 | `result-track:a5cabd2a576309e36a7a92fc2f14c947c560f6735d44bab15668a4ce0f8bc041` |
| 5 | `theorem` | [cauchySeq_range_of_norm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/cauchyseq-range-of-norm-bounded.md) | 90 | `result-track:1d64aa0884a03ad7867a64ae63c132aa74a37ee94f18d2588e7fb236febe68c6` |
| 6 | `theorem` | [cauchySeq_finset_of_summable_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/cauchyseq-finset-of-summable-norm.md) | 103 | `result-track:b5c64bf447813f303a03855aeaff525527c3f7ca2e9b4d0df25dd57950083721` |
| 7 | `theorem` | [hasSum_of_subseq_of_summable](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/hassum-of-subseq-of-summable.md) | 110 | `result-track:bb104bea8b86bdab6a000bd6d231bbc9be827822187f63dfa54ed71f7e4a3f7c` |
| 8 | `theorem` | [hasSum_iff_tendsto_nat_of_summable_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/hassum-iff-tendsto-nat-of-summable-norm.md) | 115 | `result-track:70a65c3295cefb833824095331ce148a3fb78a22ffcc88e60c9349b253c51dc6` |
| 9 | `theorem` | [Summable.of_norm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/summable-of-norm-bounded.md) | 121 | `result-track:a64183c98eb77af63f4533e83078eec5834ee432b76549626a28642fccf54117` |
| 10 | `theorem` | [HasSum.enorm_le_of_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/hassum-enorm-le-of-bounded.md) | 126 | `result-track:f321c3af0815a074758713d98a1a6bd9cca7697e08b047b9a2f1ec9860605b1b` |
| 11 | `theorem` | [HasSum.norm_le_of_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/hassum-norm-le-of-bounded.md) | 130 | `result-track:c0def1fb049bf40797142516228077cfe168887a3800ab3a236c5222493a363b` |
| 12 | `theorem` | [tsum_of_enorm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/tsum-of-enorm-bounded.md) | 137 | `result-track:b37a0fa790abc01a13aeb70f9054f1409645c66fde070df18972c1237182e3b9` |
| 13 | `theorem` | [enorm_tsum_le_tsum_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/enorm-tsum-le-tsum-enorm.md) | 143 | `result-track:39ba8a510ecaf81939bd437034a7f3321b7a1ab2de19b9698c8a9484c1f3edc8` |
| 14 | `theorem` | [tsum_of_norm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/tsum-of-norm-bounded.md) | 150 | `result-track:d097ea12cfa54acb9a3e14bce336d68c0a99b006c6bbb96fbcdcd17e68c85fae` |
| 15 | `theorem` | [norm_tsum_le_tsum_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/norm-tsum-le-tsum-norm.md) | 159 | `result-track:b5bae690129fdc41ab89e3e76000dea2eb36aaae91267c3b12a0cd9556da6c79` |
| 16 | `theorem` | [tsum_of_nnnorm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/tsum-of-nnnorm-bounded.md) | 167 | `result-track:e385d2b759cfcf18edee46943fc1f1f979c32b3a2fa8817cbe5281771d5dbf20` |
| 17 | `theorem` | [nnnorm_tsum_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/nnnorm-tsum-le.md) | 175 | `result-track:2d29ec2300d1a2c5518714b0d4e902ecab7531a2c75f4dbae4de45b7a72e9565` |
| 18 | `theorem` | [tsum_enorm_ne_top_iff_summable_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/tsum-enorm-ne-top-iff-summable-nnnorm.md) | 178 | `result-track:70236d90853f0e809f2b74c68349dd8c9210d83ed77949291265b03a071c80c5` |
| 19 | `lemma` | [tsum_enorm_ne_top_iff_summable_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/tsum-enorm-ne-top-iff-summable-norm.md) | 182 | `result-track:b1c64c75a3716534c6130020f516e21a0ae4d5233725d7dee1f9d008ecb2f8f3` |
| 20 | `theorem` | [Summable.of_norm_bounded_eventually](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/summable-of-norm-bounded-eventually.md) | 190 | `result-track:ff1bb8c9c945afc14afbe5190ff1350174f272acccc0b793aece3a1a9ef6c424` |
| 21 | `theorem` | [Summable.of_norm_bounded_eventually_nat](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/summable-of-norm-bounded-eventually-nat.md) | 196 | `result-track:892d9d7b1d600f413db7c0803932f583530727a1d41ea41c878bfba185b3ff40` |
| 22 | `theorem` | [Summable.of_nnnorm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/summable-of-nnnorm-bounded.md) | 200 | `result-track:3c125c65b80b480f03186a91260661b08e97f51d32832fc583354294d2d84505` |
| 23 | `theorem` | [Summable.of_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/summable-of-norm.md) | 204 | `result-track:c8665fd9222199acf80fd1ee3781bcceadd196afa74adb7338505299eb01657e` |
| 24 | `theorem` | [Summable.of_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/summable-of-nnnorm.md) | 207 | `result-track:df3aa51d8fddd5507a85ca5c7878510b17762278ef84f6390d37a17ed2c91461` |
| 25 | `theorem` | [Summable.of_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedPublic.lean/declarations/summable-of-enorm.md) | 210 | `result-track:accdbfcd54aee36db966de0bca8d2a6acdfd0c374f50ae51e6d7286467fb6620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b53b6836a5fd3e32b37d1c5e986807c14f186be7148a4e3162770ba1708e58ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
