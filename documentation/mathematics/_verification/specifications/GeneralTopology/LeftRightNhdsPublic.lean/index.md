# Verification target: Left Right Nhds Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e9fd6d724f36ef20986144bfe3a1b20895c83bd",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LeftRightNhdsPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LeftRightNhdsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e9fd6d724f36ef20986144bfe3a1b20895c83bd`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean.json)

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
| 1 | `theorem` | [TFAE_mem_nhdsGT](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/tfae-mem-nhdsgt.md) | 46 | `result-track:1ed33076987ccfc2a5de201fb357814b642313f9907731b895bdfd6169a1afd2` |
| 2 | `theorem` | [mem_nhdsGT_iff_exists_mem_Ioc_Ioo_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsgt-iff-exists-mem-ioc-ioo-subset.md) | 66 | `result-track:0e93a3187cb89d05f7e0cd88537d7f9542f836907a643d1a129b8d8052c91ed7` |
| 3 | `theorem` | [mem_nhdsGT_iff_exists_Ioo_subset'](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsgt-iff-exists-ioo-subset-source-edition-2.md) | 72 | `result-track:c116d90f00eba9bdabe5f37d63d0ec15c073d4d003766e9aa2851fc492e5fd8b` |
| 4 | `theorem` | [nhdsGT_basis_of_exists_gt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdsgt-basis-of-exists-gt.md) | 76 | `result-track:6509d870d4643d012dea8fbfef0e25555a8e9b7e7e738a5bccfae706f280bd64` |
| 5 | `lemma` | [nhdsGT_basis](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdsgt-basis.md) | 80 | `result-track:4c0b775d25dae535e9737ae95f01cf6547d00ee5ed687c80a863fe4c85fe8b0f` |
| 6 | `lemma` | [nhdsGT_basis_Ioc_of_exists_gt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdsgt-basis-ioc-of-exists-gt.md) | 83 | `result-track:b95f4d5a2ea0a407ee9792a03af49e0e25a2d4faee8bcd79543461974d7000fd` |
| 7 | `lemma` | [nhdsGT_basis_Ioc](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdsgt-basis-ioc.md) | 91 | `result-track:e72dcfe13ae03d71e76ddf8278f0731f42561fe96c0262ec064da4e13d6d45ed` |
| 8 | `theorem` | [nhdsGT_eq_bot_iff](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdsgt-eq-bot-iff.md) | 95 | `result-track:4ffad6a132a05276ad00d1c60a7a99b2828071cf8469ee79909320fc801451ba` |
| 9 | `theorem` | [mem_nhdsGT_iff_exists_Ioo_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsgt-iff-exists-ioo-subset.md) | 104 | `result-track:306eec17394344072c3da2df69b97c9f7a49686a166dda84129348792bce19b7` |
| 10 | `theorem` | [countable_setOfPred_isolated_right](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/countable-setofpred-isolated-right.md) | 111 | `result-track:66f81c1c5a5cafb0cb2fe29e693cbaf7d05428e960d45efcbe2c56d30effb39f` |
| 11 | `theorem` | [countable_setOfPred_isolated_left](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/countable-setofpred-isolated-left.md) | 121 | `result-track:fa6851d5b4b4644d6140832d58eb6b07b5cc78dd4eeeedbee32b943e4978d747` |
| 12 | `theorem` | [countable_setOfPred_isolated_right_within](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/countable-setofpred-isolated-right-within.md) | 130 | `result-track:61b7d7b7d60edb4fc195825854a3518120cab7ac07160f97cd55f10b91e9858a` |
| 13 | `theorem` | [countable_setOfPred_isolated_left_within](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/countable-setofpred-isolated-left-within.md) | 173 | `result-track:89f6c8d6fdeeb4c52cb529271d2420ae28e62b50993fc7b37d25c9f37b55ad7f` |
| 14 | `theorem` | [mem_nhdsGT_iff_exists_Ioc_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsgt-iff-exists-ioc-subset.md) | 182 | `result-track:675f053a1a534845e2f104be2114f45820875b607051d896c82ba770f2b36590` |
| 15 | `theorem` | [TFAE_mem_nhdsLT](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/tfae-mem-nhdslt.md) | 200 | `result-track:b9fcb89fbed981a102bd05b76cc4b77c474a047e408f372b3664ff74e93bb5df` |
| 16 | `theorem` | [mem_nhdsLT_iff_exists_mem_Ico_Ioo_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdslt-iff-exists-mem-ico-ioo-subset.md) | 208 | `result-track:4927cd6fd495a9a65337994144072a5cb3205c24a10523186a38ee70c1554697` |
| 17 | `theorem` | [mem_nhdsLT_iff_exists_Ioo_subset'](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdslt-iff-exists-ioo-subset.md) | 214 | `result-track:6070d23218d5a31dce16bd773b8bb02af4a9533c8ea88af3c9ec126bfb1bce44` |
| 18 | `theorem` | [mem_nhdsLT_iff_exists_Ioo_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdslt-iff-exists-ioo-subset-source-edition-2.md) | 220 | `result-track:d132ca72fb5cffea7c3debe6531e40d448373b7fda151e7c8d47a92b307dccc0` |
| 19 | `theorem` | [mem_nhdsLT_iff_exists_Ico_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdslt-iff-exists-ico-subset.md) | 227 | `result-track:0611e03a666f07b2200d841fee7fdf07c8c153a686418679ab9e97a1f73bd4ec` |
| 20 | `theorem` | [nhdsLT_basis_of_exists_lt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdslt-basis-of-exists-lt.md) | 232 | `result-track:bf2ced67dcd6c79fb29891763f610a03e672352317b4250d95f0baa766c694f3` |
| 21 | `theorem` | [nhdsLT_basis](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdslt-basis.md) | 236 | `result-track:7fad466d1769465228d634d29cf93736d5dc30a65b8e277c6c81babf86545737` |
| 22 | `lemma` | [nhdsLT_basis_Ico_of_exists_lt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdslt-basis-ico-of-exists-lt.md) | 239 | `result-track:0051eb87fe14caa71fd9bd8602899a071b6d35c564b9c2ec40dc5c4d03f12530` |
| 23 | `lemma` | [nhdsLT_basis_Ico](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdslt-basis-ico.md) | 247 | `result-track:aac3d6ecb8ee51adf00186aba25d450d31953c30b2f0cc9a6cbec497615cb3ac` |
| 24 | `theorem` | [nhdsLT_eq_bot_iff](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdslt-eq-bot-iff.md) | 251 | `result-track:55bec4b9bb138bd025e20efc0130c88c8672db367b4e9e1787550fc3390914db` |
| 25 | `theorem` | [TFAE_mem_nhdsGE](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/tfae-mem-nhdsge.md) | 265 | `result-track:8d0062ef4d080c6c59c251d76241586af4224d9453930c789c365ef820ce086b` |
| 26 | `theorem` | [mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsge-iff-exists-mem-ioc-ico-subset.md) | 282 | `result-track:88637abdf3b39097651896e2ba016ed00656dc6b5fac86edc0edafec5e3ce595` |
| 27 | `theorem` | [mem_nhdsGE_iff_exists_Ico_subset'](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsge-iff-exists-ico-subset.md) | 288 | `result-track:26ce73f1520e04ee46cb43e8ed690025b00a0d57778b718c56599966f5f518c9` |
| 28 | `theorem` | [mem_nhdsGE_iff_exists_Ico_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsge-iff-exists-ico-subset-source-edition-2.md) | 294 | `result-track:7c8fbb93664d6df154272feeb3f846cd1af0c94a33c61da059e8281276eeec0f` |
| 29 | `theorem` | [nhdsGE_basis_Ico](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdsge-basis-ico.md) | 299 | `result-track:04d99520bfe1a11103d93f4dbabcd61a94a8e865526b46b4d4bfba7ec64603e4` |
| 30 | `theorem` | [nhdsGE_basis_Icc](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdsge-basis-icc.md) | 303 | `result-track:c61fe909dfda51bd89ef7a56d25fd0ebcc8a24879d40aa0d8dca6bc64bf9ce78` |
| 31 | `theorem` | [mem_nhdsGE_iff_exists_Icc_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsge-iff-exists-icc-subset.md) | 311 | `result-track:d545711187743bb89f177ddb101f9b20cc654725d23370ce8f7ceaaf0bc9b8f1` |
| 32 | `theorem` | [TFAE_mem_nhdsLE](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/tfae-mem-nhdsle.md) | 323 | `result-track:435895a4867c5e272f951f8db73b5a0ca6a67ada6cd530765f4381fbf7be72cb` |
| 33 | `theorem` | [mem_nhdsLE_iff_exists_mem_Ico_Ioc_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsle-iff-exists-mem-ico-ioc-subset.md) | 331 | `result-track:b8f021fbb42182b737cc0ba139b5cad5bcc71f7909f96164131168139c3152ba` |
| 34 | `theorem` | [mem_nhdsLE_iff_exists_Ioc_subset'](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsle-iff-exists-ioc-subset-source-edition-2.md) | 337 | `result-track:a8f2306fd11c59e319b029a1fcebbdd85c469dd50ac3345344fce369507feeec` |
| 35 | `theorem` | [mem_nhdsLE_iff_exists_Ioc_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsle-iff-exists-ioc-subset.md) | 343 | `result-track:7dca7cb7cbfb9e95ce4adda772116286d5fe258c87724889a5188b73317c579f` |
| 36 | `theorem` | [mem_nhdsLE_iff_exists_Icc_subset](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsle-iff-exists-icc-subset.md) | 350 | `result-track:f83a9b98f93931a6ff3acbe33b0530fde7a20903eef7d3e87407453b9b0b0aef` |
| 37 | `theorem` | [nhdsLE_basis_Icc](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhdsle-basis-icc.md) | 358 | `result-track:ef5e8ccf0be5b11a4480b98d8c86b738b68cd378933b88dd5cd7f229ae3245bb` |
| 38 | `theorem` | [nhds_eq_iInf_mabs_div](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhds-eq-iinf-mabs-div.md) | 373 | `result-track:ad3e95d15131a44dd7ee990ce1042f21d35d702a4ed50aa6b3d31ce5291266ab` |
| 39 | `theorem` | [orderTopology_of_nhds_mabs](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/ordertopology-of-nhds-mabs.md) | 380 | `result-track:15fb9997076fe5f3d5778f68124c558ba88bd4ad0c7fd084a10d921268408a13` |
| 40 | `theorem` | [LinearOrderedCommGroup.tendsto_nhds](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/linearorderedcommgroup-tendsto-nhds.md) | 389 | `result-track:818515dae41dbf09d3eca66cd8229ec1f0fda2b2346d85c7661f14914307a840` |
| 41 | `theorem` | [eventually_mabs_div_lt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/eventually-mabs-div-lt.md) | 394 | `result-track:6aeb630406b9a2e0dc4555df9a450db80e751b358486a0b8c6c653c02a9595bb` |
| 42 | `theorem` | [Filter.Tendsto.mul_atTop'](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/filter-tendsto-mul-attop.md) | 402 | `result-track:a17f3406f61901fd3881403e7a24735fda2afa90ef1f39145a8da977fcf74e31` |
| 43 | `theorem` | [Filter.Tendsto.mul_atBot'](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/filter-tendsto-mul-atbot.md) | 413 | `result-track:66e02c361a77c627bfd216ec69f4d05e7dc50ed91cbf99b7dd18a8d744da601a` |
| 44 | `theorem` | [Filter.Tendsto.atTop_mul'](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/filter-tendsto-attop-mul.md) | 421 | `result-track:d89b27237bc09e11c4d095fbe8e418eca613c582ac7de2b4ef5082692e9fb1b9` |
| 45 | `theorem` | [Filter.Tendsto.atBot_mul'](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/filter-tendsto-atbot-mul.md) | 430 | `result-track:4fbbacfcc048d54bcb6d761d09c6a1959c5ec7e6052fd60489d3c7f89bd3be88` |
| 46 | `theorem` | [nhds_basis_mabs_div_lt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhds-basis-mabs-div-lt.md) | 436 | `result-track:4b1ba6655899838232b998cacc6159ba066c38fb6ae644505357552001a59e9a` |
| 47 | `theorem` | [nhds_basis_Ioo_one_lt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhds-basis-ioo-one-lt.md) | 444 | `result-track:db7d6be8997c8571eb5b40539a07d16c375002d012c6cbabf4b2e0056d2a14cd` |
| 48 | `theorem` | [nhds_basis_Icc_one_lt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhds-basis-icc-one-lt.md) | 450 | `result-track:ba6f662d0dbbe84719d297b4a20b02eb922d7517dfb170958b5f620b90619a22` |
| 49 | `theorem` | [nhds_basis_one_mabs_lt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhds-basis-one-mabs-lt.md) | 459 | `result-track:3856ea4aef8f34f40d1d0feec4ed7137bf530f6de4cfbffddd149b96d409b17c` |
| 50 | `theorem` | [nhds_basis_Ioo_one_lt_of_one_lt](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/nhds-basis-ioo-one-lt-of-one-lt.md) | 471 | `result-track:3f6e718f7736369a652c6fa8ffd33791815a28b0fedf9eb5749b3757d3ec82b1` |
| 51 | `lemma` | [mem_nhdsGE](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsge.md) | 486 | `result-track:2a66a0775397204b3e3f990e9d059d2cf296afb603b8f842f05c592d0ad0ad22` |
| 52 | `lemma` | [mem_nhdsGT](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsgt.md) | 491 | `result-track:7731181fb9e8df8e1e2a20a05396323e94f19b9b1b51e77681a32f94ec722902` |
| 53 | `lemma` | [mem_nhdsLE](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdsle.md) | 500 | `result-track:abb344759f1e77de0cb40d3044db6c57b4a1cda9b272047d0e0bdb28d5485cd2` |
| 54 | `lemma` | [mem_nhdsLT](../../../../GeneralTopology/LeftRightNhdsPublic.lean/declarations/mem-nhdslt.md) | 505 | `result-track:65a880b6ba1dd4465717a07f0da7bb1938ee10664d35115068714f0efa64253e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e147dca069d6d00c1aa499287ada341786a985be166e300c6fdd72099952ff8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
