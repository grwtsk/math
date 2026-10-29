# Verification target: Ring Seminorm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "945e2753969624434b1bdefa1d50cd3577a9e00e",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantd09c937b05a46e643896959f4483842d7fc17aedf9b1133dd5638e2b93ad016e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `945e2753969624434b1bdefa1d50cd3577a9e00e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantd09c937b05a46e643896959f4483842d7fc17aedf9b1133dd5638e2b93ad016e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantd09c937b05a46e643896959f4483842d7fc17aedf9b1133dd5638e2b93ad016e.lean.json)

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
| 1 | `structure` | [RingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ringseminorm.md) | 50 | `declaration-track:990e9f5fe4a07a52705a7714eefc729e3e612bde9489432d36c92479f33b694b` |
| 2 | `structure` | [RingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ringnorm.md) | 57 | `declaration-track:8076fed65694d235e7263a6a52e246776f4b2d0c12c05df1e1df97a74a05d5ae` |
| 3 | `structure` | [MulRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/mulringseminorm.md) | 62 | `declaration-track:98c885506aa31dcd3a81cbc692ace93b402c95e58ffae01d1135db1687cadbcb` |
| 4 | `structure` | [MulRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/mulringnorm.md) | 70 | `declaration-track:9297c4f0ec9e05f428fef14c4e6aa46765d7c1f67ee4ee1cd6c85d1dc72b3299` |
| 5 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/funlike-source-edition-3.md) | 84 | `declaration-track:2982092abb3400bd3389c6099261aca106b63aa396e3ccffa8cb957e4ce465a8` |
| 6 | `instance` | [ringSeminormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ringseminormclass.md) | 93 | `declaration-track:3eebcf9ae1d1e1817573de1fbd8d1cc364f4bc89ca0b1297b593cd7f10679559` |
| 7 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/tofun-eq-coe-source-edition-4.md) | 100 | `result-track:a2e838b9ee1163016baebc5352a364342aa60fc9a417ac77f3a77ae60225ccda` |
| 8 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ext.md) | 104 | `result-track:390c64d0fd4bdcb3883240d0b11a1ab5b82aa28431fa056bf8385e793deccd0d` |
| 9 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance-source-edition-5.md) | 107 | `declaration-track:6747c2da599b3f60dc0700e4215bb915db9e01c04c1029ef36375cca56654a77` |
| 10 | `theorem` | [eq_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/eq-zero-iff.md) | 111 | `result-track:bc1a6438c49fd267692521abe11a1f30a51d79af7e6158a9339efb4f8f240ffd` |
| 11 | `theorem` | [ne_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ne-zero-iff.md) | 114 | `result-track:85bbd5f5f18e6d77bf3042509110d6c76694b76731a860d51c35c16640c3a29b` |
| 12 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance-source-edition-8.md) | 116 | `declaration-track:aa84c6d45edf82632cb8983f587e7ab3a80ed465cc902057e8221a1fd870b257` |
| 13 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance.md) | 121 | `declaration-track:0593e770ae7d63d5176e8886476ebbb4e5dbd7c983beb21fd0973a7bae803080` |
| 14 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/apply-one-source-edition-4.md) | 134 | `result-track:ee593a68e4aa8b50ec18a5b917ba597fc9f1bfc3900fc06de810c5ff73cf55f3` |
| 15 | `theorem` | [seminorm_one_eq_one_iff_ne_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/seminorm-one-eq-one-iff-ne-zero.md) | 143 | `result-track:1906b10fe114e64e7a6f6fbcf926ffa0de6c8c490c23f9260a96bae4278a7ebe` |
| 16 | `abbrev` | [toSeminormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/toseminormedring.md) | 155 | `declaration-track:8d8a927c33b4a4ab5e8b08940ce66a6721f8c16e86134d3c6db0bae577ef35e1` |
| 17 | `theorem` | [exists_index_pow_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/exists-index-pow-le.md) | 166 | `result-track:5f5900da51fce5c2d4867f402e16740e5a27a53c72f20b71b1526fc113aa2858` |
| 18 | `theorem` | [map_pow_le_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/map-pow-le-pow-source-edition-2.md) | 177 | `result-track:d9ccd71ba551a78f872666e270b182801ce8743bc959a52940646f1c3d0922fb` |
| 19 | `theorem` | [map_pow_le_pow'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/map-pow-le-pow.md) | 186 | `result-track:78138e8e77502d4aeed95ad84cd9bcd520966c72783264bd45f85bfe20538a52` |
| 20 | `def` | [normRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/normringseminorm.md) | 192 | `declaration-track:548dbe647700857bf76bed1932cfbf7ed08026c356d8817d4ce8672c28362693` |
| 21 | `theorem` | [isBoundedUnder](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/isboundedunder.md) | 205 | `result-track:9175c33d4e2d02eeca196a7a52b50e7c28f5537b03e42bafc394fa4e43ab6375` |
| 22 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/funlike-source-edition-2.md) | 229 | `declaration-track:269e1c64c75fee47bebf1fba4532291bc52478a9f48f7f4524b00bc94eb3a2ba` |
| 23 | `instance` | [ringNormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ringnormclass.md) | 238 | `declaration-track:fb59bf0dceae4c970d24a5e5f7e25b4b46b79855b3ff1022720f64aa7fd8ad90` |
| 24 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/tofun-eq-coe-source-edition-2.md) | 245 | `result-track:6ccf01fe78bc1fc13de9d01e70bc40b23084532b88f1cd89337cc8043bd1ecde` |
| 25 | `theorem` | [toRingSeminorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/toringseminorm-apply.md) | 248 | `result-track:c41618ef176075515275b309584716394df3d6be74c9611747ccdf7d66237459` |
| 26 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ext-source-edition-4.md) | 252 | `result-track:efaae4289171f2178636f9aa57f3993e4dbe39ec966b07c8884dade99336c825` |
| 27 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance-source-edition-2.md) | 259 | `declaration-track:32ad901d415f7ff271e7993e1da7b34934c1e0f671d8ce908f8ad5a9669fab70` |
| 28 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/apply-one-source-edition-2.md) | 263 | `result-track:a4092c66bef47de0562a9f5c196a53321201c52eee9f5f7fe0cbd06da20632ab` |
| 29 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance-source-edition-7.md) | 266 | `declaration-track:9ae15c190d7eb93d3d651fa18950ec26b54d58015f05d212f8c41a88a2c09a57` |
| 30 | `abbrev` | [toNormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/tonormedring.md) | 273 | `declaration-track:15ecea6b46350f897ddffe64e8fc53ae67e12ab1c3d4b029f01c053ee222c6f9` |
| 31 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/funlike-source-edition-4.md) | 285 | `declaration-track:d348b69997c17ec626f9d823e87f78c26f7fdc9101e8b717fbef7aadbcda9c8f` |
| 32 | `instance` | [mulRingSeminormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/mulringseminormclass.md) | 294 | `declaration-track:92a973ed1b2d7971ecdc27fe88682da8f18a44c09f0ae1221a84fabe0127ef7b` |
| 33 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/tofun-eq-coe.md) | 302 | `result-track:585443236b87238dc7537e216d561233890d0321dd76e5a1370e23988d2f11c3` |
| 34 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ext-source-edition-3.md) | 306 | `result-track:e6542cb7c24c369c7964b18ad01a3953eb29197217737422a35e8ec0f75b0a31` |
| 35 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance-source-edition-4.md) | 313 | `declaration-track:33ce4b758243b12619e116ee1eef4fc3087073b80b04c5171ca785a57ee547fb` |
| 36 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/apply-one.md) | 324 | `result-track:2e23f721ae15ea2a6196db6e581cf6ea4fb7e5302e270b28511931563ef29f49` |
| 37 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance-source-edition-9.md) | 327 | `declaration-track:b5c629dfa300420b8ed1c76c5a359e34a741b9ce32c913cd0c880fa5321f323d` |
| 38 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/funlike.md) | 337 | `declaration-track:269c744e33df28248568af6b040a956183cb44c386cf2621431e4c0ce7c474ee` |
| 39 | `instance` | [mulRingNormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/mulringnormclass.md) | 346 | `declaration-track:ff351f3b8daa3c29fbfd60e8094887d5ab5d27f322641562a018d2e8ca796817` |
| 40 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/tofun-eq-coe-source-edition-3.md) | 354 | `result-track:92974166775edad70bca7ca3e928e4496e42d441f0d5321109650ee8f05e3e7c` |
| 41 | `theorem` | [toMulRingSeminorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/tomulringseminorm-apply.md) | 357 | `result-track:d98c6bebe9a6fc55dd8334e472fd08eb8dff26d60350f3d9a9e0daa0a0c61143` |
| 42 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ext-source-edition-2.md) | 361 | `result-track:9cecd8acd6534fec520f46ef45a0720bb34f7761b62a29b747edeaeeaa0660e0` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance-source-edition-3.md) | 369 | `declaration-track:337a7f58ce7e8efcf1d1a7f16da72fbe25bc4e5fbfc49304121ba9d4cf876c37` |
| 44 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/apply-one-source-edition-3.md) | 373 | `result-track:a42c49fa969f51c1a43b1aebb7bc458a39286864edc2ee7dfebcad44d7012285` |
| 45 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/instance-source-edition-6.md) | 376 | `declaration-track:7deaf86cf96f239bef8b2f877c8e59d0243d39926b0258e4c8b2d2ad0db56582` |
| 46 | `def` | [toAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/toabsolutevalue.md) | 385 | `declaration-track:68742aa14ba8665746f86d80976e2a322d60ef00387ee86a613585b0901b4f4b` |
| 47 | `def` | [ofAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ofabsolutevalue.md) | 394 | `declaration-track:25a7ac3e6e891327dae8a1ec233e5d4643b3a1be1f447bddd9706196f33d79de` |
| 48 | `def` | [mulRingNormEquivAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/mulringnormequivabsolutevalue.md) | 405 | `declaration-track:6f721364a94d79e0b993941300bb03434414f8f89dc68028130d7bffdb146e33` |
| 49 | `def` | [RingSeminorm.toRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/ringseminorm-toringnorm.md) | 416 | `declaration-track:010710382685ad3a01b24493289a1bbae44d9b280b3dbcf6c18df7225c800421` |
| 50 | `def` | [normRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/normringnorm.md) | 434 | `declaration-track:ad04c9d003db71ff885c969b91fae40d600b09c6a700e1e42bae786b40762a28` |
| 51 | `def` | [SeminormedRing.toRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/seminormedring-toringseminorm.md) | 440 | `declaration-track:05bc1621e0cc12343fbe74c350b43f63f68a9d48c74778f4e09566639ebbe1ed` |
| 52 | `theorem` | [SeminormedRing.toRingSeminorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/seminormedring-toringseminorm-apply.md) | 448 | `result-track:46ffa6d3fa3991d8b71a31713060118abe9e2bbfd5ec3a7240a0f51c73fce4c6` |
| 53 | `def` | [NormedRing.toRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/normedring-toringnorm.md) | 455 | `declaration-track:59a7924a5a9af431037907f4b09c847e758a0f4d7211d9cd720b83fa3f83b5b7` |
| 54 | `theorem` | [NormedRing.toRingNorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/normedring-toringnorm-apply.md) | 464 | `result-track:4b1bc22fb4d9a8b808c94c330831aa231390ccafd40a934c131b39eac0ad78c4` |
| 55 | `def` | [NormedField.toMulRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/normedfield-tomulringnorm.md) | 471 | `declaration-track:c7700543362801edb0537c3e7041156c3c0c77f62f8addd8559268d854e72934` |
| 56 | `def` | [NormedField.toAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormPublic.lean/declarations/normedfield-toabsolutevalue.md) | 483 | `declaration-track:27392c878401facf48593b898a711d0fefaaafc66058c22422a17a14182ff527` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6ddd32dccfe11f141cb5c65b5f7c50a64e9158bc76ed8cb73ab57ff09d98dbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantd09c937b05a46e643896959f4483842d7fc17aedf9b1133dd5638e2b93ad016e.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variantd09c937b05a46e643896959f4483842d7fc17aedf9b1133dd5638e2b93ad016e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
