# Verification target: Field Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc7cd6d1b9d57f6965c8aa0ee3e4c2f8b95db6ac",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant613a9c9fb6f2b6d4d517fa2b09b6ec59c6a1b78f402d72c7b8e3be85082241ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc7cd6d1b9d57f6965c8aa0ee3e4c2f8b95db6ac`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant613a9c9fb6f2b6d4d517fa2b09b6ec59c6a1b78f402d72c7b8e3be85082241ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant613a9c9fb6f2b6d4d517fa2b09b6ec59c6a1b78f402d72c7b8e3be85082241ba.lean.json)

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
| 1 | `class` | [NormedDivisionRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/normeddivisionring.md) | 40 | `declaration-track:3350e9ac7265e444dc243e02e861e0e6da753f77fceba9d27401072bdfc2e7cf` |
| 2 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/instance-source-edition-3.md) | 51 | `declaration-track:7fec8daeba8a4b15f388c5339c5a630f3d5992c40f008a7cb05f55da733a76ab` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/instance-source-edition-5.md) | 57 | `declaration-track:bf51fc79f0a599a7ac01eb8f485eff338fe4f85420d3d23d441464154d980667` |
| 4 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/instance.md) | 65 | `declaration-track:1d714b82ea7279cac5612a79e98e0ebd1c06300f9698d8a44bab651982858f9a` |
| 5 | `theorem` | [norm_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/norm-div.md) | 69 | `result-track:d329f5617899c63a19c694e76f838b96c07f5efc480bc9009c54fa8af6b22c98` |
| 6 | `theorem` | [nnnorm_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nnnorm-div.md) | 73 | `result-track:1e5690c27d9944170dda55b93c25c91ac5d2e97d0683f855295a963fb2889c88` |
| 7 | `theorem` | [norm_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/norm-inv.md) | 77 | `result-track:c9f381ef768d8b799a251fa6ce920ce1594afd8a10c57af5a94e6048166810c4` |
| 8 | `theorem` | [nnnorm_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nnnorm-inv.md) | 81 | `result-track:700b45456e7586b9024f5bb833c719bf327a28dc572c7c5e4eb42e70842fd509` |
| 9 | `lemma` | [enorm_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/enorm-inv.md) | 85 | `result-track:27ea1dd0d8284bbac24602492e81ec36b6a791c9712f6ba8878ad4054136caf4` |
| 10 | `theorem` | [norm_zpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/norm-zpow.md) | 88 | `result-track:880abf71df1f8902edf7415b0d49e1bb6d6c91ec8496a87cbb18e7093005060e` |
| 11 | `theorem` | [nnnorm_zpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nnnorm-zpow.md) | 92 | `result-track:7566122db8b6c2d551e19cd3b742929654b4405b6f11c720d67b47e2642d2831` |
| 12 | `theorem` | [dist_inv_inv₀](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/dist-inv-inv.md) | 95 | `result-track:30057a763d49257530ad44b29859c9e818c83089463426cd8750da2accf00198` |
| 13 | `theorem` | [nndist_inv_inv₀](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nndist-inv-inv.md) | 100 | `result-track:2b905a1dd7acc34433447363834b8c70d7203b6d1e8bd8c32446c79e29dbaef9` |
| 14 | `lemma` | [norm_commutator_sub_one_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/norm-commutator-sub-one-le.md) | 104 | `result-track:0ceff5a986d1cbfe1479b487733cf39bf1f632ccc36f2e2b83c5b28422d942f0` |
| 15 | `lemma` | [nnnorm_commutator_sub_one_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nnnorm-commutator-sub-one-le.md) | 108 | `result-track:8b03dd2adb4fdd8531e19052c479347996c65ac62e005f0f788542fdd57e972a` |
| 16 | `lemma` | [norm_eq_one_iff_ne_zero_of_discrete](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/norm-eq-one-iff-ne-zero-of-discrete.md) | 118 | `result-track:bac4822c154cebf77cb225dda5142b9e28a21f46bb5581bac88a64703922408b` |
| 17 | `lemma` | [norm_le_one_of_discrete](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/norm-le-one-of-discrete.md) | 137 | `result-track:dd667a85f6366d531781426b5477107366b520c52a96a36d774c0219da323073` |
| 18 | `lemma` | [unitClosedBall_eq_univ_of_discrete](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/unitclosedball-eq-univ-of-discrete.md) | 143 | `result-track:8f0b51d828f970c2e3437e6e1a2b675fdcccaa5afb8813bd855207a6314ec7dd` |
| 19 | `class` | [NormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/normedfield.md) | 154 | `declaration-track:4306aed4783390503242cd052b133bf1fce43d5edd6ca806db28f6d7ece0f67a` |
| 20 | `class` | [NontriviallyNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nontriviallynormedfield.md) | 166 | `declaration-track:a424257548081985f07a6aa976bfb4fdba755767c9e38512f4b15422781c7ca9` |
| 21 | `class` | [DenselyNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/denselynormedfield.md) | 173 | `declaration-track:95375a599fae77b81d53d7255908d5a5df15b386c8a879ed8c2203aa934af596` |
| 22 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/instance-source-edition-4.md) | 181 | `declaration-track:83d5641cbd897cb9f71ffb1e387ce93be0f3e5424c5087df1e44d88bd12c96a6` |
| 23 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/instance-source-edition-2.md) | 190 | `declaration-track:246a23910d72f978fea1d4c30304b81e54b019f74fd6c084398b3c35761869a7` |
| 24 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/instance-source-edition-6.md) | 194 | `declaration-track:f9940c573a987a18b45fd837a662fdbbf7bbc326c8c155e59948baf83779e173` |
| 25 | `theorem` | [exists_one_lt_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-one-lt-norm.md) | 205 | `result-track:b0e9544e9b03a322abab776363540b0db1125f72255f098b71a5ffea725b2e46` |
| 26 | `theorem` | [exists_one_lt_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-one-lt-nnnorm.md) | 208 | `result-track:8360969834b321ddccfc541107c4792b5d569bbdfd7815f18e0ededbd0c8561c` |
| 27 | `theorem` | [exists_one_lt_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-one-lt-enorm.md) | 210 | `result-track:68bafd6f9a05c8e7d1257c4a9c881240e0ee69bf5964144672d3e6aa9bf43175` |
| 28 | `theorem` | [exists_lt_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-lt-norm.md) | 213 | `result-track:6a91f09deec0afb49b72eb0377b0345412f1adfb45a962f1e62aa3cfa41a1b78` |
| 29 | `theorem` | [exists_lt_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-lt-nnnorm.md) | 218 | `result-track:7ae31aac2436846d80be0fab10d390e179d3ebdeabd2cbf093a67b3ad829a7f3` |
| 30 | `theorem` | [exists_lt_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-lt-enorm.md) | 220 | `result-track:c14d1ce0f2bc6689b99a4b8350baf4dc3598e5274732ac8a66d279d2ccce1847` |
| 31 | `theorem` | [exists_norm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-norm-lt.md) | 224 | `result-track:dcaf400cf338c5678064057de53d77b20c2c24dff9099baa09289968f872dc32` |
| 32 | `theorem` | [exists_nnnorm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-nnnorm-lt.md) | 228 | `result-track:eae2e5c42bf2c5997b5f5d26e9cbb897046690944cf03af4df141da7bd9d6e17` |
| 33 | `theorem` | [exists_enorm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-enorm-lt.md) | 232 | `result-track:2f134245e4e133309acce5ba7a02b00afe83a867c16e5e5418bec31a8c3591a4` |
| 34 | `theorem` | [exists_norm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-norm-lt-one.md) | 238 | `result-track:852dbf63bbdfa9eebd09f84877a07ad8585270fba6b73b91ffbc4a71ab66db48` |
| 35 | `theorem` | [exists_nnnorm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-nnnorm-lt-one.md) | 241 | `result-track:996026b67ebd04829ee817ca8adceff573aea1685445cc10d6648346d8022892` |
| 36 | `theorem` | [exists_enorm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-enorm-lt-one.md) | 243 | `result-track:dcc07ae66bfa9b10b8a75b717241b7dc97802580b78d991eb6b69a805ecceedf` |
| 37 | `theorem` | [nhdsNE_neBot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nhdsne-nebot.md) | 248 | `result-track:7b24f33b1dda6cdb544972cb3095e4d099e8e9108d59165dfbac82d673626d2b` |
| 38 | `theorem` | [nhdsWithin_isUnit_neBot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nhdswithin-isunit-nebot.md) | 256 | `result-track:d72f6ba00bbd45cab4ff99847e4ea6c3696d4f40500d1419d7af85dea970d6e5` |
| 39 | `theorem` | [exists_lt_norm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-lt-norm-lt.md) | 265 | `result-track:d1f721f2e854026a295cfc8de71e5ffb5d64a81e8698c02fa9fca0fd6752b71f` |
| 40 | `theorem` | [exists_lt_nnnorm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/exists-lt-nnnorm-lt.md) | 268 | `result-track:d59c9069def1880f2b0cc106f2684ec4d1b6a197c64550ca8642fda168a89ada` |
| 41 | `instance` | [denselyOrdered_range_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/denselyordered-range-norm.md) | 271 | `declaration-track:160fa1dbd1f9d8aec8fb940be106ef799ead31a315179893610cd7687811ecad` |
| 42 | `instance` | [denselyOrdered_range_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/denselyordered-range-nnnorm.md) | 277 | `declaration-track:f3a036c94adfa0d8b6c1ebba50395259a45ece26d46e4a2d45edd6e67c1c70a2` |
| 43 | `def` | [NontriviallyNormedField.ofNormNeOne](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nontriviallynormedfield-ofnormneone.md) | 290 | `declaration-track:f6d95de6f0323d48ec9265613565f14aeb4b06826cc4f4cb9e4cbcb81a81bbd7` |
| 44 | `instance` | [Real.normedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/real-normedfield.md) | 301 | `declaration-track:16492f2d39339144f8eb09b0cbb5a56fa5adf08afead98ed5880dd9e9fbb9057` |
| 45 | `instance` | [Real.denselyNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/real-denselynormedfield.md) | 305 | `declaration-track:b76ee2d711d39e7b805e3bbf987ebc36cf968d869ef9281d9bb36213d9d9384f` |
| 46 | `theorem` | [toNNReal_mul_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/tonnreal-mul-nnnorm.md) | 312 | `result-track:7f886a40a2b02071681467c37a9027ff8a54637ba593b5d35aabd22800d55925` |
| 47 | `theorem` | [nnnorm_mul_toNNReal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/nnnorm-mul-tonnreal.md) | 317 | `result-track:d6b78449f57d932bb464df4a44e172c9f7c83352bc9e1651f094a3c51e2249a9` |
| 48 | `abbrev` | [NormedDivisionRing.induced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/normeddivisionring-induced.md) | 332 | `declaration-track:4c533a60f317bb345b963ca4d96cfcaeaf451145f00b7e317c9f98f0b13af607` |
| 49 | `abbrev` | [NormedField.induced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/normedfield-induced.md) | 341 | `declaration-track:6f731cb4e317d1867623b852c973e12489954c41276160d7bdeb59069a498ddb` |
| 50 | `instance` | [toNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/tonormedfield.md) | 356 | `declaration-track:35c4559797d19502dde5225f1f790d16bcb73fefa561f8e637d476875e104041` |
| 51 | `def` | [toNormedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicPublic.lean/declarations/tonormedfield-source-edition-2.md) | 365 | `declaration-track:979b856644fc0285e4eb932a425aee280901202c4a2a1501c4d7b08bc84b4318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b129a2033911482bdead37f8ade80df201c672d05c5d4a5d7c4ac7decc592d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant613a9c9fb6f2b6d4d517fa2b09b6ec59c6a1b78f402d72c7b8e3be85082241ba.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant613a9c9fb6f2b6d4d517fa2b09b6ec59c6a1b78f402d72c7b8e3be85082241ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
