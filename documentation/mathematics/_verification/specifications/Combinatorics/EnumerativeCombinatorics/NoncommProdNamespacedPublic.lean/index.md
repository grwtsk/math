# Verification target: Noncomm Prod Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f5dc8fa98550936a8a018129ffcb0ddfc50071d",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f5dc8fa98550936a8a018129ffcb0ddfc50071d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean.json)

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
| 1 | `def` | [noncommFoldr](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfoldr.md) | 53 | `declaration-track:085ee786db741e49b914d27fce614612375e5903db674dce283436d54fa8b42b` |
| 2 | `theorem` | [noncommFoldr_coe](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfoldr-coe.md) | 63 | `result-track:79da889d194e14e435b8696eba09c1e4500ec7c124ade363130238c55bbe6c18` |
| 3 | `theorem` | [noncommFoldr_empty](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfoldr-empty.md) | 70 | `result-track:cfb83a9528385772d21a17ad92a4eebec1884b525b9ebcd7cdf09f468de4a714` |
| 4 | `theorem` | [noncommFoldr_cons](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfoldr-cons.md) | 73 | `result-track:1de158cd9ad7d67151409869001358ec9045fe344da04b8073f870e57376d980` |
| 5 | `theorem` | [noncommFoldr_eq_foldr](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfoldr-eq-foldr.md) | 78 | `result-track:afd9c4b1409571f05bda0935babf998dae505b2380323d70973f4c492b3e5f01` |
| 6 | `def` | [noncommFold](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfold.md) | 89 | `declaration-track:62602ff86a53e508cc27f3099bdbbd53fe4fb99a4e7ddbcadc407df5abb55317` |
| 7 | `theorem` | [noncommFold_coe](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfold-coe.md) | 95 | `result-track:1611e1f2f2e4bc2c4d53d358a46bf378992a61da7aaf90153d3b922fb21b19c5` |
| 8 | `theorem` | [noncommFold_empty](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfold-empty.md) | 99 | `result-track:5ee4022529bf546c6697ea9f42f6b3675e6ca8b3ed990978113c1499b88c8741` |
| 9 | `theorem` | [noncommFold_cons](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfold-cons.md) | 102 | `result-track:2bc16691e144bbe4b128e16b9a821066b1b66f404afe03262236479e7f89b396` |
| 10 | `theorem` | [noncommFold_eq_fold](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommfold-eq-fold.md) | 107 | `result-track:6a02161a0e22d699e161a12f3eae578a8669446f6839245842d6086aa9e10df8` |
| 11 | `def` | [noncommProd](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-source-edition-2.md) | 121 | `declaration-track:941441141e4592d2b5e5ff21b3ede95a0f6d9e2c1e55b4aa9964b8aa9aec9534` |
| 12 | `theorem` | [noncommProd_coe](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-coe.md) | 126 | `result-track:07159d3a459f9a2603717f0b7e0b459e0d826047cf3d4cb3d1ec354c76fe0b9a` |
| 13 | `theorem` | [noncommProd_empty](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-empty.md) | 137 | `result-track:2ffc3bd3c768b17d9d6650b69a0ef86165aebdf3d35d4cc9d79872332312d348` |
| 14 | `theorem` | [noncommProd_cons](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-cons-source-edition-4.md) | 141 | `result-track:dfb9777569eae7d50daa07cd863f6287b4c9e82815b080d81c10898d8b257dd0` |
| 15 | `theorem` | [noncommProd_cons'](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-cons.md) | 147 | `result-track:1584b51b755112b6b893c65ad6152ae4e5d92ae673165cae176b5adb255bb157` |
| 16 | `theorem` | [noncommProd_add](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-add.md) | 164 | `result-track:18ce3f1aff772255e84ae7d5c67a4ce9aae2179651d15b59d9bf53d880ef07aa` |
| 17 | `lemma` | [noncommProd_induction](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-induction-source-edition-2.md) | 173 | `result-track:2ee09c4b19ef86b27bc50a546976e5cda97d7d629d52934ca7efacabb50ab6fd` |
| 18 | `theorem` | [map_noncommProd_aux](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/map-noncommprod-aux.md) | 183 | `result-track:65502b9cb72288e400169ecfb5944ecf96912ad3cbf73060d358b3cfaa3cb168` |
| 19 | `theorem` | [map_noncommProd](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/map-noncommprod-source-edition-2.md) | 190 | `result-track:9ee60eb1450b901cb24efb683c6f414a0aad9e76e134c0c88633fb709c43d9b6` |
| 20 | `theorem` | [noncommProd_eq_pow_card](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-eq-pow-card-source-edition-2.md) | 196 | `result-track:c8e107cf97c2089ad37f26ff0ab6da23448842f7a6a939af30ac9c42be2c204c` |
| 21 | `theorem` | [noncommProd_eq_prod](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-eq-prod-source-edition-2.md) | 203 | `result-track:d4cb9bc594527e7f7ffe20a87bf9db47602056ab984924df1f29038623b7b34d` |
| 22 | `theorem` | [noncommProd_commute](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-commute.md) | 209 | `result-track:0b4c873f74ef740e5315477eead9dec6fc6160e353b0c901aa713511e3fb6cf7` |
| 23 | `theorem` | [mul_noncommProd_erase](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/mul-noncommprod-erase.md) | 215 | `result-track:b5b68a3f4c2182380056a236461052e885139c1f7fcf61643df855c1e440e4e6` |
| 24 | `theorem` | [noncommProd_erase_mul](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-erase-mul-source-edition-2.md) | 226 | `result-track:5bc7aed251840b4552f1650d41c080a71b533e1f09dca922cf12a152aef843cd` |
| 25 | `theorem` | [noncommProd_lemma](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-lemma.md) | 246 | `result-track:4d15a89583c8d287ce228aa00acfbb0a7c0bd68b0956bdeda150456904fa1e98` |
| 26 | `def` | [noncommProd](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod.md) | 255 | `declaration-track:93dab3c463f9ee1607f0e21e24c69625373772bd63eaab60d38d6863b62f0a27` |
| 27 | `lemma` | [noncommProd_induction](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-induction.md) | 260 | `result-track:15f79046bdc264a0371691c98db5226412fc6c87f24b8e37426c34db9142572b` |
| 28 | `theorem` | [noncommProd_congr](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-congr.md) | 268 | `result-track:c15aa53720ddf49d128afc289e055559c1d28b8345d1e0255d55dbd6b60916ee` |
| 29 | `theorem` | [noncommProd_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-tofinset.md) | 279 | `result-track:9ca1ef1fa9db7ebe135a64896a853382e0bb584d03d393ebffb0663a91a81205` |
| 30 | `theorem` | [noncommProd_empty](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-empty-source-edition-2.md) | 285 | `result-track:ca655a6c88144f9287c2c32a6421402d37840abb3208812f286fba221323f65f` |
| 31 | `theorem` | [noncommProd_cons](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-cons-source-edition-2.md) | 289 | `result-track:7c712b4809005205a33de5a52872dcb5aa09d01a8c0fb73f132da65478ba86c2` |
| 32 | `theorem` | [noncommProd_cons'](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-cons-source-edition-3.md) | 296 | `result-track:dda71c5ba6b01dc39b87ebc64911e210b5e7379842389997af264618d1177304` |
| 33 | `theorem` | [noncommProd_insert_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-insert-of-notmem.md) | 304 | `result-track:212d982958bb68a1fcd737bf2e2c060c5d919e3721d5ba8cfcc0a804e6aa91e2` |
| 34 | `theorem` | [noncommProd_insert_of_notMem'](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-insert-of-notmem-source-edition-2.md) | 312 | `result-track:36c1b4c2489ce4c950de5de9719869d94a7c28c0ae9e0f8a2ed9b1950af64027` |
| 35 | `theorem` | [noncommProd_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-singleton.md) | 319 | `result-track:fe2078386a326048092f026b65eff0b196bcb5644f80926fba00b07cba20752f` |
| 36 | `theorem` | [map_noncommProd](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/map-noncommprod.md) | 329 | `result-track:8c5ccd887b6aba6517fe2dda273f98459b3841ae57d20e94bc9dc1c474cf2de4` |
| 37 | `theorem` | [noncommProd_eq_pow_card](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-eq-pow-card.md) | 335 | `result-track:a465f20c44871d19b378f53d50f006f1043fc8d3d7bc93f159a712f716deb2af` |
| 38 | `theorem` | [noncommProd_commute](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-commute-source-edition-2.md) | 342 | `result-track:534b3fb037f0584653bff41715622a02d17657ec99a9ce4f784d0bfe1fe2ccd7` |
| 39 | `theorem` | [mul_noncommProd_erase](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/mul-noncommprod-erase-source-edition-2.md) | 350 | `result-track:b9c5c4cdbd38e1db598e59c881fe5227f4140718811da8b04977df011c18a34c` |
| 40 | `theorem` | [noncommProd_erase_mul](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-erase-mul.md) | 357 | `result-track:2c0637330fa67d7d7ea40eb9333b966bbacfa230124ec852b72bbb0d9a173c2c` |
| 41 | `theorem` | [noncommProd_eq_prod](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-eq-prod.md) | 366 | `result-track:d3ad6a14605313e13d9507557d7e4e1ec67e684ece58ca6c6dfe1bf9a8d59748` |
| 42 | `theorem` | [noncommProd_union_of_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-union-of-disjoint.md) | 374 | `result-track:61d6662b3b9dae24b82376fd2090cc338e1f472131cc54d954b2962dc34414ff` |
| 43 | `theorem` | [noncommProd_mul_distrib_aux](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-mul-distrib-aux.md) | 385 | `result-track:ba63c32d5aa3588306461681933ff30c0f210779ba06d472b86872602812e03d` |
| 44 | `theorem` | [noncommProd_mul_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-mul-distrib.md) | 400 | `result-track:679601e360f2361c99f3c0b0205d48bbf30d0adcf64782ce60ba4a998a7baadd` |
| 45 | `theorem` | [noncommProd_mulSingle](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/noncommprod-mulsingle.md) | 418 | `result-track:a836c479aa59c8b927d05a02d5635120758f795a39c76b54e53273f0019843ce` |
| 46 | `theorem` | [Noncomm Prod Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedPublic.lean/declarations/pi-ext.md) | 438 | `result-track:11246a0b2674dbea4fb2dcde680162a3e369b83414e916e4558d2e4da2332b55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca7bcff38bc02cb320b9340d6fadaca419dd5a8d6c0233d8f12fe111f10f59c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
