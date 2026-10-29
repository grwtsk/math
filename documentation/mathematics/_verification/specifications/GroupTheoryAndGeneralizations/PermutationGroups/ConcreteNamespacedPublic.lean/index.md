# Verification target: Concrete Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7551ce1829b3bfead94ce5f8325fa18d18ebb515",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7551ce1829b3bfead94ce5f8325fa18d18ebb515`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean.json)

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
| 1 | `theorem` | [formPerm_disjoint_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-disjoint-iff.md) | 66 | `result-track:17277afb75b0fda0795141b5ed00ffa31d1bd5e452951aa0a768a91d6cf2ead4` |
| 2 | `theorem` | [isCycle_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/iscycle-formperm.md) | 80 | `result-track:178565e30b4f365c0cea9606a386dbc0d5c9f65a345ea579df330cfac8341873` |
| 3 | `theorem` | [pairwise_sameCycle_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/pairwise-samecycle-formperm.md) | 95 | `result-track:309e1848c78514433df98f74afaa4dc928ee30a5d99f418a3e69d348c62ff8e2` |
| 4 | `theorem` | [cycleOf_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/cycleof-formperm.md) | 102 | `result-track:b5a71a796cefa78ee3ca8b80d9ed1a619ce3576010a345077ddcb607ca67bac4` |
| 5 | `theorem` | [cycleType_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/cycletype-formperm.md) | 109 | `result-track:b4ebceb235e575bf67e53534fed87962adac1dae679eea7d985b758813dfe3ab` |
| 6 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-apply-mem-eq-next.md) | 123 | `result-track:f659cf2b9b5bced7bd6539d8e86bff9176d8648da614cad563e8d00bba4297f1` |
| 7 | `def` | [formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm.md) | 137 | `declaration-track:cd2590b521faee7ad8a66bc2dccaf6ac393cfaf9e6a8d5f4e04871bed2cf552f` |
| 8 | `theorem` | [formPerm_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-coe.md) | 146 | `result-track:84246001b47bb1a76b87bda34b141163a0dcc69a7cfb58f1cff9c27f36f1f63f` |
| 9 | `theorem` | [formPerm_subsingleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-subsingleton.md) | 150 | `result-track:b77df979ff0b565d94dd3b5aad1fe5de3e2ecd92ced919d4fb624b9fcb5d0e3c` |
| 10 | `theorem` | [isCycle_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/iscycle-formperm-source-edition-2.md) | 159 | `result-track:9aef3e5e46af061d2bc388e8fe1191b26062f46c01d42c307f0a9590213d0e49` |
| 11 | `theorem` | [support_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/support-formperm.md) | 164 | `result-track:565918183cf972577b93a9bee8d3e3ef03c7e13fce25ea9c3ee44abfb5edcbcd` |
| 12 | `theorem` | [formPerm_eq_self_of_notMem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-eq-self-of-notmem.md) | 172 | `result-track:882c33c75a040b86e9c9940a1929d00d2dc6a66a624cf457501b372dd4047b12` |
| 13 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-apply-mem-eq-next-source-edition-2.md) | 177 | `result-track:fed20e735860a9eb1c9a5d20e0ca6497a03985160a141798a4f3cfe1d0788830` |
| 14 | `theorem` | [formPerm_reverse](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-reverse.md) | 183 | `result-track:1b9301cbea26707a29f646fa9520a2660e39b64cf364d71bc813fcab345e575c` |
| 15 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-eq-formperm-iff.md) | 189 | `result-track:90a9b8995b998bb74d611e2bc1ec59aaa499f0d05c8558189b6f5029f2d99c03` |
| 16 | `def` | [toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist.md) | 207 | `declaration-track:072810de62f459906379af67e981b4d9315c8a1cf22d88650447303245972af4` |
| 17 | `theorem` | [toList_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-one.md) | 211 | `result-track:99531b2f1f8d9a584b52746accdb1e8c00aaf70f8861ec63b81c350fc6bee190` |
| 18 | `theorem` | [toList_eq_nil_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-eq-nil-iff.md) | 214 | `result-track:4e72deec87c7ccdc463dafc27c66ca72eb037d109319981ec0e4c0cd36c9ef92` |
| 19 | `theorem` | [length_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/length-tolist.md) | 217 | `result-track:c93b5e4b81693e6405696ad8cafa1d431a814fdf7a269c251db06008366b571f` |
| 20 | `theorem` | [toList_ne_singleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-ne-singleton.md) | 219 | `result-track:6346a7a1e607fd7eea3b278820f3a4b6b9cc0a6498f43b9d5ed03a87abb73393` |
| 21 | `theorem` | [two_le_length_toList_iff_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/two-le-length-tolist-iff-mem-support.md) | 223 | `result-track:0df3830291c5d5ca42d7fda6699cab1ff367895c52ba701cd9db4709a4930e7a` |
| 22 | `theorem` | [length_toList_pos_of_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/length-tolist-pos-of-mem-support.md) | 226 | `result-track:5ea2d521b851a67ac85e2a642ec856d2dbef3db1a0f3666f14b965e15624c91f` |
| 23 | `theorem` | [getElem_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/getelem-tolist.md) | 229 | `result-track:c6e5a25501368041962ee37b54f8babf80f31aad3e932a262ae0d555412827a6` |
| 24 | `theorem` | [toList_getElem_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-getelem-zero.md) | 232 | `result-track:828745fe1960aa4e16a1b6463288c62f0c8aad5531766749f7f49093d150c8f6` |
| 25 | `theorem` | [mem_toList_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/mem-tolist-iff.md) | 237 | `result-track:a8553e394bda744c98fece05decb60e0b458599e971770f74602258519fea616` |
| 26 | `theorem` | [nodup_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/nodup-tolist.md) | 248 | `result-track:75350089a036a58e1566e56a343edd1ab5994997580a4d8dd18d13ae1a8df833` |
| 27 | `theorem` | [next_toList_eq_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/next-tolist-eq-apply.md) | 281 | `result-track:3c0d9fb434c4a4c7fac654f375c7598cab2c6c40372be30e21e31a9296f72384` |
| 28 | `theorem` | [toList_pow_apply_eq_rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-pow-apply-eq-rotate.md) | 292 | `result-track:2be11b7986b1d7c97b1c6bff751d5c9138299f766d7a9759cc69c373e4fb6f1b` |
| 29 | `theorem` | [SameCycle.toList_isRotated](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/samecycle-tolist-isrotated.md) | 300 | `result-track:f9738fcacb14ac8889ad71f7798ea52fa60e67bd4686b17d6d00dd9a1ad2711c` |
| 30 | `theorem` | [pow_apply_mem_toList_iff_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/pow-apply-mem-tolist-iff-mem-support.md) | 312 | `result-track:ebb30c8f1a8741fbc980efab4eedb867b83b500ab7dc1ad291c802f7718da351` |
| 31 | `theorem` | [toList_formPerm_nil](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-formperm-nil.md) | 317 | `result-track:c6043e526e6361c8cf8cddb79a31ea20a05068f1452618f0dd3f573d7b695f18` |
| 32 | `theorem` | [toList_formPerm_singleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-formperm-singleton.md) | 319 | `result-track:dabea9caf635ba14e9e2d0f8c24a928967bf4edf5cfffd58bd4722e403ab1a45` |
| 33 | `theorem` | [toList_formPerm_nontrivial](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-formperm-nontrivial.md) | 321 | `result-track:2fec2e25cb79013f0418aa0fab0f92b575a89860f7877d93700ce388024ec529` |
| 34 | `theorem` | [toList_formPerm_isRotated_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tolist-formperm-isrotated-self.md) | 334 | `result-track:55744041d61030e4ea8033cade5772ebb1b9a02c7df284d923b403d93e048551` |
| 35 | `theorem` | [formPerm_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/formperm-tolist.md) | 346 | `result-track:3f955b8cbdc3f746f2bb213c4223429d64bd4912803f2c383d18614145ddb147` |
| 36 | `def` | [toCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tocycle.md) | 365 | `declaration-track:30efcca9446626b130a29a82dc70b306b4796beed5dad42ef990ae23ead279dc` |
| 37 | `theorem` | [toCycle_eq_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tocycle-eq-tolist.md) | 375 | `result-track:fe23fdfc1c4ca0fcdc692d5c452a9ba3eb70bcc07a5871aeac5f1972e6fd5d44` |
| 38 | `theorem` | [exists_toCycle_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/exists-tocycle-tolist.md) | 381 | `result-track:4bc78e5179b4ff4b38f4e6c18b9b57bd7fb8b66af5b0fc8a0c830f562b4d692c` |
| 39 | `theorem` | [nodup_toCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/nodup-tocycle.md) | 384 | `result-track:6272409c977584c8930b7237552c01ddda2d7dc0c6027890046ad250726d7848` |
| 40 | `theorem` | [nontrivial_toCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/nontrivial-tocycle.md) | 388 | `result-track:0e3199e0091138ae8aff969b8330bb6083e7b99b070262e97c50014ad74cae56` |
| 41 | `theorem` | [mem_toCycle_iff_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/mem-tocycle-iff-support.md) | 393 | `result-track:9b5e29c3527b440b78e27af1deeaee379de2b98c848d72607dae25b14e1ff3ca` |
| 42 | `theorem` | [toCycle_next](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/tocycle-next.md) | 406 | `result-track:13548f93a3dcfe05d030d644f753ca061e0d6f589c7827993bfc51aa0b885b58` |
| 43 | `def` | [isoCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/isocycle-source-edition-2.md) | 417 | `declaration-track:f2a86acd387d7bbc2bdfdb1f81b0c3167df746da4c2168329b8781dda3182a0e` |
| 44 | `theorem` | [IsCycle.existsUnique_cycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/iscycle-existsunique-cycle.md) | 448 | `result-track:410ba05bcca72876285ea0909820d63dbaba4df93aaa3c67a4870049eefa00fc` |
| 45 | `theorem` | [IsCycle.existsUnique_cycle_subtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/iscycle-existsunique-cycle-subtype.md) | 465 | `result-track:c4117e718ab9b6c6c14b8c92a594b8e5351bd81e13db5e020a2855d5b497d9ce` |
| 46 | `theorem` | [IsCycle.existsUnique_cycle_nontrivial_subtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/iscycle-existsunique-cycle-nontrivial-subtype.md) | 472 | `result-track:6dcbda24933522362f548138fb28586a9946fb87a00cb1a1a48d03244a456e5b` |
| 47 | `def` | [isoCycle'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/isocycle.md) | 493 | `declaration-track:560d3f517e8bb72b48a9cffbea172c4a11694be35c6c319188b1397ce5f8ea3b` |
| 48 | `instance` | [instRepr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteNamespacedPublic.lean/declarations/instrepr.md) | 527 | `declaration-track:d2613ed8322d668cf9253eacdbb1160fdb5e31425d1542461e078acb8662f17f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d69213c27be66270467f893da91388d7c406cd58e05e6f57f5afa44009744609 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
