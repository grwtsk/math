# Verification target: Order Pi Lex Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b778076cdb48225299acec6b3a53597a9dd08521",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant4f2592eb28ec5c088df3f7f0277da4f82d211a3fa165ee6f88161431056e4ce9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b778076cdb48225299acec6b3a53597a9dd08521`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant4f2592eb28ec5c088df3f7f0277da4f82d211a3fa165ee6f88161431056e4ce9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant4f2592eb28ec5c088df3f7f0277da4f82d211a3fa165ee6f88161431056e4ce9.lean.json)

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
| 1 | `def` | [Lex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex.md) | 58 | `declaration-track:56903462786209805310116eec719358b49df2b4943021a28a9d9f5db26135c8` |
| 2 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-lt-of-lt-of-preorder.md) | 66 | `result-track:c9a35a8c21e1ae9cef42b326a4d5ddce7d85acd0c0a0dab60d5aac1e9f06a65f` |
| 3 | `theorem` | [lex_lt_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-lt-of-lt.md) | 72 | `result-track:ccd479df7b737b317052c0fd52307aa944e68766f2a796ae4cb05545bd932ad6` |
| 4 | `theorem` | [lex_iff_of_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-iff-of-unique.md) | 77 | `result-track:6010386b2131978aac2f0703ded3e1e03d4d1ec78f1a36a4a977f8b6cbaa15e6` |
| 5 | `theorem` | [trichotomous_lex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/trichotomous-lex.md) | 81 | `result-track:c0077e69ac778438b039794f87c6e71b03195478cfd005e4873fa129689b6173` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 96 | `declaration-track:4b6a283dd8747ece7b2a9fb16b26c41af6c5158a4b14fb43e7fec3808870071c` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 99 | `declaration-track:21c7f66dabc07d336141fed87f29a35e3531ee713e63bec214192703facc4bf7` |
| 8 | `theorem` | [toLex_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tolex-apply.md) | 106 | `result-track:a6404ac816ad57a0bb0a74ada452585c0e426331f4e04c97f2b036dae5aad9d7` |
| 9 | `theorem` | [ofLex_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/oflex-apply.md) | 107 | `result-track:5e36f4b88c8a9f2711fd0d6174aaeafcf17091a86970aa3cc943b4f77cc34a41` |
| 10 | `theorem` | [toColex_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tocolex-apply.md) | 109 | `result-track:c9cf8f12f705bcde526268184d1265e019c102de41c5d394bdc7dde1a9099c9b` |
| 11 | `theorem` | [ofColex_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/ofcolex-apply.md) | 110 | `result-track:5aced3519121bdad3fb3f0cebbbf1a92658706c29d52bb7e38be7d6cede5f179` |
| 12 | `theorem` | [Lex.lt_iff_of_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-lt-iff-of-unique.md) | 112 | `result-track:71bf7792ac7954147705b59305831fd5524ef3abfef0921180ad1e22a8390f40` |
| 13 | `theorem` | [Colex.lt_iff_of_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/colex-lt-iff-of-unique.md) | 116 | `result-track:986f01a62399e1bc375e4812cfdecaddd565a15b92ed8d396e782b43ea8c42bd` |
| 14 | `instance` | [Lex.isStrictOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-isstrictorder.md) | 120 | `declaration-track:0df0c4b9f9477e22e2714ea83340b9375d9124c49a09bf72b2630e9ecbfdff56` |
| 15 | `instance` | [Colex.isStrictOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/colex-isstrictorder.md) | 131 | `declaration-track:5d109f17d31daa0c7c3fa5a3951dedafc851ca9dbca2a20e75cd5605242f48f2` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 135 | `declaration-track:3d569f50dc61978da91e0c6b11bd4ec0231604344d4a071f00dadbc9235247e3` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 138 | `declaration-track:145f68904b16cebeb6b9e7d3f578ae498eecb53a0f68d6c557480486be764fa9` |
| 18 | `instance` | [Lex.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-linearorder.md) | 142 | `declaration-track:351d043113f614da01ef582c8f5f548f1586be76477e0c53dcdc398e2dc48157` |
| 19 | `instance` | [Colex.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/colex-linearorder.md) | 149 | `declaration-track:38e2b06bdda9ecad9aedd9f1fd01b5ead2817eb8f62222e21474597126977ee2` |
| 20 | `theorem` | [lex_le_iff_of_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-le-iff-of-unique.md) | 154 | `result-track:ecfcea13f444a55887588bd8188362ad9e1b4794ed8bb4b84142e721a750a468` |
| 21 | `theorem` | [colex_le_iff_of_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/colex-le-iff-of-unique.md) | 160 | `result-track:605f124e837c322667d6345165c7c5a5dc0db1515fcd7f62ce50f5e913d549a6` |
| 22 | `theorem` | [toLex_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tolex-monotone.md) | 173 | `result-track:8aebe6e85b59d81e7d31327441877223719cde2775f4a1dacf2b0c4b4a387240` |
| 23 | `theorem` | [toLex_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tolex-strictmono.md) | 181 | `result-track:4cf3fa100648ce3e1a8d43186f4a77bf83ef121d9f2aac047644c4ff1d2b6051` |
| 24 | `theorem` | [lt_toLex_update_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lt-tolex-update-self-iff.md) | 189 | `result-track:a57fcf21026c5f6da5f83daeb65221944717b806e0e47c3273cacf09402cc89a` |
| 25 | `theorem` | [toLex_update_lt_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tolex-update-lt-self-iff.md) | 200 | `result-track:fd71527acb594ca099fc70b57fbd128d1df325e87f5a99242c46538015ae774d` |
| 26 | `theorem` | [le_toLex_update_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/le-tolex-update-self-iff.md) | 212 | `result-track:ad21ee43476fecd2fc3ffc17c2e95885dfe728fd07c64908d00d866e033c97a9` |
| 27 | `theorem` | [toLex_update_le_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tolex-update-le-self-iff.md) | 217 | `result-track:8689b2ee0578ab8c79b93244d8e087fc14f066d04e964e6cc4f6fc428b2b647e` |
| 28 | `theorem` | [toColex_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tocolex-monotone.md) | 226 | `result-track:679b3e39a3ad7680f7967859097ccc8ea4c5482c0a7cd8e3e709dc112de29bf5` |
| 29 | `theorem` | [toColex_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tocolex-strictmono.md) | 230 | `result-track:62643221455aec2618198aca2ce2b8a3969878e3e1bbf4af912bcaf028d4df2f` |
| 30 | `theorem` | [lt_toColex_update_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lt-tocolex-update-self-iff.md) | 235 | `result-track:9660cc066d73306f7a4fc36eb63460e73377f7230927abf069b1c1c39807ade0` |
| 31 | `theorem` | [toColex_update_lt_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tocolex-update-lt-self-iff.md) | 240 | `result-track:834298a9d4cfa925e10a98a7d2ae066f6b0e90f8a0c3ac723238f42038146f2c` |
| 32 | `theorem` | [le_toColex_update_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/le-tocolex-update-self-iff.md) | 245 | `result-track:5b1331c0a2ea0d94eb97110b9163f0a4a0ede150855e1618e28bea405a545b7c` |
| 33 | `theorem` | [toColex_update_le_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/tocolex-update-le-self-iff.md) | 250 | `result-track:207288d6b530431ed1cd9e261676f89436f82a5ef7226dc6decf8397406a0f87` |
| 34 | `theorem` | [apply_le_of_toLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/apply-le-of-tolex.md) | 262 | `result-track:b7fcd718f8f273d894af010fca85463793dda751c3185cba535120078837e504` |
| 35 | `theorem` | [apply_le_of_toColex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/apply-le-of-tocolex.md) | 272 | `result-track:9c1dce8025e08a19e7ec1b67513cbeadacbd4cd3a1a8da2604ede90046dd86f4` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 282 | `declaration-track:5285ddfd6508101db2a18b9803dcc144b85c06676b646b10ce856a1470fec411` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 287 | `declaration-track:90d83ed84a1d236ba4a81a23578a7fad4f8f2b45ca1b3695a094e8f3d8b9e07c` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 292 | `declaration-track:d1ac646913015152615fe0e83e63ebdb8d3f956b880082de95b3accbcd587d05` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 297 | `declaration-track:2367653e70d37b2158e352059f9375667633f974753d2e3452e321a09a6158ae` |
| 40 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 302 | `declaration-track:adc4c1cf14f84cbed93a2358ea4d5ccf9676c7e6d8e2b35a47d914c5f81ed9b7` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 305 | `declaration-track:fc341ccafc03dc141c0ea8827df220e8163a9b4bf8a77ee5919e1a3aa3afbf78` |
| 42 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 309 | `declaration-track:93da672b343010aee951bd0706f11690143262afaa7729dca0079d2938190132` |
| 43 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 324 | `declaration-track:502c3841d307c5838bdcba4d2b881e0ddff69f42158fc4cebd3aab693d3c3e12` |
| 44 | `theorem` | [Lex.noMaxOrder'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-nomaxorder.md) | 329 | `result-track:89693f4c576ec2093fd77b397dccb8cee780e6b349f73eeb6ca5ed8cbb8cffa7` |
| 45 | `theorem` | [Colex.noMaxOrder'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/colex-nomaxorder.md) | 338 | `result-track:bfe5e5df666dc10aa408f6869ee77286df44b86957683ec0fa741ed21a0a1ab9` |
| 46 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 342 | `declaration-track:088ae541d2eb048de3f1f4e4291c12cc589fdff08b3012b7ed889e44746f95fa` |
| 47 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance.md) | 349 | `declaration-track:027f268e5e0a48d6b753ebeb897f68cb925eb24798308a276d9881f1c14346b9` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 353 | `declaration-track:41bf61d60932be8d56c7de5e5d7df9ce4add8300c0fd5ecdfb5bb5db96a22919` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 360 | `declaration-track:41188d187ebc5cbe836b5bce21945dcca6bd20c4791544b1f280596326d612b7` |
| 50 | `theorem` | [lex_desc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/lex-desc.md) | 366 | `result-track:9a1b7a44697a2c656d2609cabdd585471cf739d04e0b9c64a0d4414599917937` |
| 51 | `theorem` | [colex_asc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPiLexNamespacedPublic.lean/declarations/colex-asc.md) | 373 | `result-track:0ed3073f74f4f5b46142f7c7cc5f3201e02314719ceb7a36505b0936934c1ef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=079d759481c5baaf1f3da021e49de499cc810e7c6add9cff65084085ab0dfc52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant4f2592eb28ec5c088df3f7f0277da4f82d211a3fa165ee6f88161431056e4ce9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant4f2592eb28ec5c088df3f7f0277da4f82d211a3fa165ee6f88161431056e4ce9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
