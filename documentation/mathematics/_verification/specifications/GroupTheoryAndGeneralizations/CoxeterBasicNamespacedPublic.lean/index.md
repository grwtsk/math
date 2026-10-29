# Verification target: Coxeter Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfa999789ee38a183e816fdea3b4f0b41d8df338",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfa999789ee38a183e816fdea3b4f0b41d8df338`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean.json)

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
| 1 | `def` | [relation](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/relation.md) | 112 | `declaration-track:87e5353bd21bd40d8645da81b50e4c14554fb246a4b2047e634a830b69cbf50b` |
| 2 | `def` | [relationsSet](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/relationsset.md) | 115 | `declaration-track:67662257f0f5cb52e382dc980fc14ecd25317329885d2de87ab4aa2e8101ab2d` |
| 3 | `def` | [Group](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/group.md) | 119 | `declaration-track:946d6c44187dd69f295df0ca5603f1079bbc51b8c40f0f0b1f359702198444f3` |
| 4 | `def` | [simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple.md) | 123 | `declaration-track:64d182621f518efdf0c7ae6865858128b7dacbab317b5a6665d7b72c4f11bd56` |
| 5 | `theorem` | [reindex_relationsSet](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/reindex-relationsset.md) | 125 | `result-track:246ffde931656566fbf4e1618b7c97b60cd73be0e28969591a568d69767a5969` |
| 6 | `def` | [reindexGroupEquiv](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/reindexgroupequiv.md) | 138 | `declaration-track:5ed69b0ab0c307d577d26c0f3fd8c9e23f42847f1d8debf1123d1124fd4bfab3` |
| 7 | `theorem` | [reindexGroupEquiv_apply_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/reindexgroupequiv-apply-simple.md) | 148 | `result-track:d7948393313d84670e0fa93a25e5d416d113db1bbfbbfbac36d171df6e9986d7` |
| 8 | `theorem` | [reindexGroupEquiv_symm_apply_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/reindexgroupequiv-symm-apply-simple.md) | 151 | `result-track:ea651321d15693e8f2d10a7c290da23042a682c58b0d568ff06f6d60e1df582d` |
| 9 | `structure` | [CoxeterSystem](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/coxetersystem.md) | 165 | `declaration-track:7dbd49e3135e7f82469fe3c31433153613a2646dfa8bc04147edc597aa7fae04` |
| 10 | `class` | [IsCoxeterGroup.](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/iscoxetergroup.md) | 170 | `declaration-track:98276cd0a650f9bb0f1ce7c2244fdc88104dc9de4c9f24c579d8c557c44e87f9` |
| 11 | `def` | [CoxeterMatrix.toCoxeterSystem](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/coxetermatrix-tocoxetersystem.md) | 174 | `declaration-track:63e73fc60ef1578509c29b87ae1927de724fa7fce1e0afcd72137acd2f592e3b` |
| 12 | `def` | [reindex](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/reindex.md) | 188 | `declaration-track:c6c5a61bfd927573af2410e276a2b74ffcc83897054ca356684d7d6dba8a8974` |
| 13 | `def` | [map](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/map.md) | 193 | `declaration-track:8153805fe6effcd1681b8f3a1b8ac6c0917638c2fd19457a90514e72ab96fecd` |
| 14 | `def` | [simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-source-edition-2.md) | 198 | `declaration-track:e9617234df7c1bc48634f442b43a836f021c0529565f22474d07bc8b894819de` |
| 15 | `theorem` | [Coxeter Basic Namespaced Public](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/tocoxetersystem-simple.md) | 201 | `result-track:f40267017b85a8e7a2b56d9dc650ac69cf4ee13ee5f9eef116163155c8f401e4` |
| 16 | `theorem` | [reindex_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/reindex-simple.md) | 204 | `result-track:9373175c536f0c1c07e53dd25eee9c90d1adc1b3a7d5f2e9819f57147cccf14e` |
| 17 | `theorem` | [map_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/map-simple.md) | 206 | `result-track:2ae8891250d7535f52edf306f8ffa2a227d9bd1f861ae1fc0877922920ff089c` |
| 18 | `theorem` | [simple_mul_simple_self](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-mul-simple-self.md) | 212 | `result-track:7fe2625e6b8ad741c64404f28ee5593cf0f69272f610b174cc85afa5cd0b0b6f` |
| 19 | `theorem` | [simple_mul_simple_cancel_right](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-mul-simple-cancel-right.md) | 221 | `result-track:e99917b97b8c32534b0b4eb1b17d3042bc22574df227e9a9d68563efa76d33fd` |
| 20 | `theorem` | [simple_mul_simple_cancel_left](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-mul-simple-cancel-left.md) | 225 | `result-track:70f01fb0ef42b3a4d1d607cbcbee6793fb865a6908c61427cbe78aaf62ff289d` |
| 21 | `theorem` | [simple_sq](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-sq.md) | 228 | `result-track:00079bb2983610e09d6b33e0f858661c25518c9b1f43c262e6eb56f01c5ad62e` |
| 22 | `theorem` | [inv_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/inv-simple.md) | 231 | `result-track:c4f0762372856e68049fc09e4a3120015103167fe2d4defa7d9b9e2b13e71c51` |
| 23 | `theorem` | [simple_mul_simple_pow](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-mul-simple-pow-source-edition-2.md) | 236 | `result-track:d8dfcaa83523fc1022bffa83d7da5e8560d207ab91ac32f876ab0324b3726af1` |
| 24 | `theorem` | [simple_mul_simple_pow'](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-mul-simple-pow.md) | 244 | `result-track:55112f1bec3d551099ef95da9f29e41b30592ab516b6c94bc176882f401be8c1` |
| 25 | `theorem` | [subgroup_closure_range_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/subgroup-closure-range-simple.md) | 249 | `result-track:74c5ffc792687ed762476338435a0fe93fe956199de1382be138c86c107e2b63` |
| 26 | `theorem` | [submonoid_closure_range_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/submonoid-closure-range-simple.md) | 256 | `result-track:ee056c1a3084ca8150f09080719a8171af51337a87797e6bfd9e246a32625b9a` |
| 27 | `theorem` | [simple_induction](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-induction.md) | 265 | `result-track:fd3fc02870afc18cd848cda5e3a6842171b1185d026f269ca200aa38bead986e` |
| 28 | `theorem` | [simple_induction_left](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-induction-left.md) | 273 | `result-track:f77611c8346a31e2a0f0e9cbcc7e32189e38fefe66b0fd5831afb3f530b34f79` |
| 29 | `theorem` | [simple_induction_right](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-induction-right.md) | 286 | `result-track:af5e36e8bb2606e7df99a1869fd07d07bc1868d64b7a4f94195fc2a5c39a7b2f` |
| 30 | `theorem` | [ext_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/ext-simple.md) | 300 | `result-track:22604c1081f141fb91188828f40d69f7ea5a8a88c669148ab1b3f83aa6f39aa2` |
| 31 | `def` | [Coxeter Basic Namespaced Public](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/isliftable.md) | 306 | `declaration-track:c15aa9c8917e5099bcc1eff0a3b3c20f6d081d2dda836c5d27ed49578c5a8426` |
| 32 | `theorem` | [relations_liftable](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/relations-liftable.md) | 309 | `result-track:e97cb2bd20c41c81e2ce035428270453fc48ea5e9e794bccfd3bfdd1baccdd7a` |
| 33 | `def` | [groupLift](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/grouplift.md) | 316 | `declaration-track:a35584952ae6167e6473d34b0debf796a977e566c07c1d0015353ca1b6062449` |
| 34 | `def` | [restrictUnit](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/restrictunit.md) | 320 | `declaration-track:f126dd4ed854df924ff8886a30f9a444aede18a73546a3bd3b25fa96f58a62e9` |
| 35 | `theorem` | [toMonoidHom_apply_symm_apply](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/tomonoidhom-apply-symm-apply.md) | 328 | `result-track:183062b14b7299bcf7dfd9d17ec78a9c694d363faf0b7d104c1fb4063f47de40` |
| 36 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/lift.md) | 340 | `declaration-track:e73bbcc6f384dca705f2edc6b5818ba1eac71f8bf41f3f938abea4771658fcc5` |
| 37 | `theorem` | [lift_apply_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/lift-apply-simple.md) | 360 | `result-track:9d31048b26c9ef1978fdf2e82afa0ac9a48072189a13ef8b42cb6e970f42fd4b` |
| 38 | `theorem` | [simple_determines_coxeterSystem](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/simple-determines-coxetersystem.md) | 366 | `result-track:a060fecbe9d2009b9ed4281de1c976062b2edf3704d60db4c2ae4bf9987134be` |
| 39 | `def` | [wordProd](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod.md) | 378 | `declaration-track:f34087b7087f7101af610e786dd3725bc119dfff526d132f3e0fc473c8ded59c` |
| 40 | `theorem` | [wordProd_nil](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod-nil.md) | 382 | `result-track:2ab5939ed7ff38cd1c040650e6418bd80ea74c7abe13337cda6403d1db9efb63` |
| 41 | `theorem` | [wordProd_cons](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod-cons.md) | 384 | `result-track:4ff6399ac7a420a4981578114dcc489246c73e074b04b9603228eae9fad6d88b` |
| 42 | `theorem` | [wordProd_singleton](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod-singleton.md) | 386 | `result-track:3d9b42ab2e6019b77ef0596a03b0175265f7e040532d5bcaaa4dd3e23603e33f` |
| 43 | `theorem` | [wordProd_concat](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod-concat.md) | 388 | `result-track:ccaf8084f290a8e2e80751775d8f60da450f8ebba4fc28962da1cc3799b8a14d` |
| 44 | `theorem` | [wordProd_append](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod-append.md) | 390 | `result-track:89a30212f65174f9049a5f2946fee8cac7f9bc9ef1495cca6b373309ef9c46f7` |
| 45 | `theorem` | [wordProd_reverse](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod-reverse.md) | 392 | `result-track:8f81feaba0d74eb5de4444f69054be00b2676180084d596b5d207c6e2cfb6f2d` |
| 46 | `theorem` | [wordProd_surjective](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod-surjective.md) | 397 | `result-track:e80abcc8c12c9190487768f8b9d051836cf2fa1a8c4d62ff6b0aae0d39302ba1` |
| 47 | `def` | [alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/alternatingword.md) | 407 | `declaration-track:8da4509020f0b05948bf477759f6473e85c77c573fae0eb32554823a1fb9d7a8` |
| 48 | `abbrev` | [braidWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/braidword.md) | 413 | `declaration-track:5a513db1829ac06c54d9c0d96416b5e59790de862159d781443cf4cf51441613` |
| 49 | `theorem` | [alternatingWord_succ](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/alternatingword-succ-source-edition-2.md) | 415 | `result-track:e3c5be434659ec408feccf54435bbcaf750931e8a178378cb7ee36d28233f0ad` |
| 50 | `theorem` | [alternatingWord_succ'](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/alternatingword-succ.md) | 418 | `result-track:77711239c1f3f63d92eaff015ac916c7da08450978baa82a261b9aa33d0318e0` |
| 51 | `theorem` | [length_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/length-alternatingword.md) | 429 | `result-track:2cb7c41595f5c8d49baf167eb58c2f993db9fd02307c6453e31a49219fc58d14` |
| 52 | `lemma` | [getElem_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/getelem-alternatingword.md) | 435 | `result-track:9159ee8583e5f21c3eb5ba61be21d9f51f6f832a9922ec943f288f7755a15663` |
| 53 | `lemma` | [getElem_alternatingWord_swapIndices](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/getelem-alternatingword-swapindices.md) | 442 | `result-track:6bb5e075df924a88a3b1466b98a22c3587dcc8c35a52e8df0570c9f0bc417805` |
| 54 | `lemma` | [listTake_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/listtake-alternatingword.md) | 454 | `result-track:3ca6a2548c521d9bc1462262ef0158d13f9fe2ba33a1e896cab52a8285c0c3a1` |
| 55 | `lemma` | [listTake_succ_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/listtake-succ-alternatingword.md) | 477 | `result-track:5c6e89b869498ebc545b64477f6c6fe43400cbb5849a7a7cb94f38722b72a05d` |
| 56 | `theorem` | [prod_alternatingWord_eq_mul_pow](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/prod-alternatingword-eq-mul-pow.md) | 486 | `result-track:99b0605cd030974c4088382706f5d811404f472a219d9e46e8b6922f6acef6c3` |
| 57 | `theorem` | [prod_alternatingWord_eq_prod_alternatingWord_sub](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/prod-alternatingword-eq-prod-alternatingword-sub.md) | 500 | `result-track:bdcb31c0055fadf15b455d8c906aed7c79deab0dbb44ee3685e300feea37557a` |
| 58 | `theorem` | [wordProd_braidWord_eq](../../../../GroupTheoryAndGeneralizations/CoxeterBasicNamespacedPublic.lean/declarations/wordprod-braidword-eq.md) | 527 | `result-track:be6186b7d2b796ae53002536339092533e32a1ef646ade38cfb389970cd11317` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f21c4cc9cddb6190efdfb94e5a3d74231e02deb7706cd745fcd104721efa510 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
