# Verification target: Minimal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d63297e473199726896d578e323115aea2d7072",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d63297e473199726896d578e323115aea2d7072`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean.json)

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
| 1 | `lemma` | [minimalFor_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-eq-iff.md) | 64 | `result-track:671a4504306d2835dd887b2fb307c6d8c1837c90a8f21a0b42de525197f11d61` |
| 2 | `theorem` | [MinimalFor.anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-anti.md) | 67 | `result-track:b14e105a5186809bbcf5e914501e2b70d152b47f514e311e25e862a5d3600e90` |
| 3 | `lemma` | [minimalFor_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-id.md) | 78 | `result-track:220d913125c22a325d72c78bd56d17f77a04af2ee9d9c3d1c4d036eec86e4736` |
| 4 | `theorem` | [minimal_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-todual.md) | 81 | `result-track:8909aad51defe82989134a364bc1bf0049bcdca616e016b39e872bbb6f20c98b` |
| 5 | `theorem` | [minimal_false](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-false.md) | 88 | `result-track:7ac2968b4f6f0343dffcb00340f0bac382510bbff5a9e8e069bcd0be2ad9a410` |
| 6 | `theorem` | [minimal_true](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-true.md) | 91 | `result-track:7354fe9fd2aee08b01c77b76b6a4248d69793b2f04e01acc280dfa5611e6a5fc` |
| 7 | `theorem` | [minimal_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-subtype.md) | 95 | `result-track:410efa6785c18000419aa0172aadded123e4b09bf577d181bf51975fbbcb92b1` |
| 8 | `theorem` | [minimal_true_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-true-subtype.md) | 102 | `result-track:d4cdbb2bf8f9b9a20ea967700c623a740b95ecb0901df35368491c7981aaf289` |
| 9 | `theorem` | [minimal_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-minimal.md) | 107 | `result-track:e66d797327a7c511f68ae044f1789a88ed5104a6f6fb2065ec2445b93cf453d5` |
| 10 | `theorem` | [minimal_iff_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-iff-ismin.md) | 115 | `result-track:3e4673496e6ebbf6cb11e718ec0a73568fef518437717fa7440ea736d1a3c75a` |
| 11 | `theorem` | [Minimal.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mono.md) | 119 | `result-track:72031939eeda79eacfbbcc8fe5442a6ffa0a4b70cdcfc4aa08b4e72abd3648e3` |
| 12 | `theorem` | [Minimal.and_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-and-right.md) | 123 | `result-track:fea2aa1705ad0411500e20ad9dfef6980e3d1e4d18c7aeaa57df687fdd55a1b9` |
| 13 | `theorem` | [Minimal.and_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-and-left.md) | 127 | `result-track:83da45227e6a0eb715b21ad9b5ef260d0a7b6207c4871aad298e7de7859139ac` |
| 14 | `theorem` | [minimal_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-eq-iff.md) | 130 | `result-track:be8c80fc57b8095838fb9503e5a9af6c760d7ca4cacf4d641225648a04f6342c` |
| 15 | `theorem` | [not_minimal_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/not-minimal-iff.md) | 134 | `result-track:b192b5e88163fd32ad5dc22b80d7b2e8b4905f9accf5e2f79685fdf30db2c3a3` |
| 16 | `theorem` | [Minimal.or](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-or.md) | 138 | `result-track:d98ccd31c9bfeca26f809378d666daff7392648fbd6f3a013eca4624dc27448c` |
| 17 | `theorem` | [minimal_and_iff_right_of_imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-and-iff-right-of-imp.md) | 144 | `result-track:5e10509aace9760606a30abcdec76b055b2a43f34b94ad1c3fa1917b5c869d71` |
| 18 | `theorem` | [minimal_and_iff_left_of_imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-and-iff-left-of-imp.md) | 150 | `result-track:10bfdbcc962baeafc82daa720507576ea225d24773fafa4e03625fe35a257ffc` |
| 19 | `theorem` | [minimal_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-iff-forall-lt.md) | 161 | `result-track:1fe45f0ae0b81b87cb6cdb1b319e66d8c0bb02ae3be630fa7476d40f923dfb8e` |
| 20 | `theorem` | [minimalFor_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-iff-forall-lt.md) | 165 | `result-track:afc50137ee023f82381c24ed27d34f9510fccd8202350996a7d0814e8bde8fdf` |
| 21 | `theorem` | [Minimal.not_prop_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-not-prop-of-lt.md) | 169 | `result-track:ebfcdebd8bd5cf13d28d6b3bc995a514fc2727da794206a475cfea0e63fd19d5` |
| 22 | `theorem` | [MinimalFor.not_prop_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-not-prop-of-lt.md) | 173 | `result-track:3ccbd046468f37dbff38556f8599adf806333ddcdef02e6001fe79690b41eed3` |
| 23 | `theorem` | [Minimal.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-not-lt.md) | 177 | `result-track:19de7ed9475c01e62579133804190f6bd8610f6fd776be8b69d5e48cf3fcb5ec` |
| 24 | `theorem` | [MinimalFor.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-not-lt.md) | 181 | `result-track:a4a41a745d442ec79604433695d5c30bc233dc5062b4b87bbc1f935bc8221769` |
| 25 | `theorem` | [minimal_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-le-iff.md) | 185 | `result-track:b648abc436d367f88baec019c17c03bcf674ac6f0595d0c5140a9f02a562c14f` |
| 26 | `theorem` | [minimal_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-lt-iff.md) | 189 | `result-track:c70992136d1cdc19e738291d8a03f621613aee8f036a91a3d9478c165b272bcf` |
| 27 | `theorem` | [not_minimal_iff_exists_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/not-minimal-iff-exists-lt.md) | 193 | `result-track:67d7b32866a517e7248c9ebb2320316ccf6b20b101aefa22e8ac7912b5863a54` |
| 28 | `theorem` | [MinimalFor.of_strictMonoOn_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-of-strictmonoon-comp.md) | 200 | `result-track:6e5323f6e87cc76c9e38269379c27e65b6f941fe7c460a332238b80b1729f446` |
| 29 | `theorem` | [MinimalFor.minimal_of_strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-minimal-of-strictmonoon.md) | 207 | `result-track:8021dc6f26e74e9b76b46f2d4db2259abc3c895d7a8aa49c54e76b542e3130a1` |
| 30 | `theorem` | [MinimalFor.maximalFor_of_strictAntiOn_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-maximalfor-of-strictantion-comp.md) | 213 | `result-track:1d03b0877e6ed11f8341615449b27b7a63cca0060fa12738e41c5dcee64b472d` |
| 31 | `theorem` | [MinimalFor.maximal_of_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-maximal-of-strictantion.md) | 220 | `result-track:9a07024dda7d156b0bd0ff75aab8c7037f6337502f07c22525de5341158f1694` |
| 32 | `lemma` | [exists_minimalFor_of_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/exists-minimalfor-of-wellfoundedlt.md) | 229 | `result-track:c313c8a111acb6e79ccc57c63d841d5c85a55fc356925079987f47c93b9b8f29` |
| 33 | `lemma` | [exists_minimal_of_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/exists-minimal-of-wellfoundedlt.md) | 234 | `result-track:9887bc1f1815bbc739c775a6d3faa69fc1fe6991487d940a79fd0b1c7f408878` |
| 34 | `lemma` | [exists_minimal_le_of_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/exists-minimal-le-of-wellfoundedlt.md) | 238 | `result-track:bdad2347e6d1ded5d2ab37a62ff3b06c4e58fb81316e568c6b6dd05400bde836` |
| 35 | `theorem` | [Minimal.eq_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-eq-of-ge.md) | 252 | `result-track:40d5f96ca073e8949d780ab2caaca2099c09c9952309abfcfa09c8d846d55b59` |
| 36 | `theorem` | [Minimal.eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-eq-of-le.md) | 256 | `result-track:42b1bc59d0978fa565a26125c9e0fa7485a44ae642702e71f1a7a8698a714181` |
| 37 | `theorem` | [minimal_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-iff.md) | 260 | `result-track:a6ca6162d208c071ecb5a9928b5ed91ab72efb54423f3e8bc115b1e0227fc229` |
| 38 | `theorem` | [minimal_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-iff.md) | 264 | `result-track:0462f91ac57b33a41d36ed78beb4641569e249efa493a8422e4575046d559fb7` |
| 39 | `theorem` | [minimal_iff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-iff-eq.md) | 272 | `result-track:a9cf3fe9ab3b54c8c705472dc842fc1a755d73f74eddd671ddc655626d5ffcd7` |
| 40 | `theorem` | [minimal_ge_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-ge-iff.md) | 275 | `result-track:4aeba9e0839034fa2be41a360f654626ff2f331f2267ede19d6084a9ba7c7f04` |
| 41 | `theorem` | [minimal_iff_minimal_of_imp_of_forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-iff-minimal-of-imp-of-forall.md) | 279 | `result-track:ece2312b41f1591a7cf24801917970a700e5fd4b81e431581857fbf2fabd4328` |
| 42 | `theorem` | [Minimal.le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-le.md) | 295 | `result-track:654eef62da53c706bf8bebaed2c30f90f87815d22f1d00f699e2f80dbc24e34a` |
| 43 | `theorem` | [MinimalFor.le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimalfor-le.md) | 299 | `result-track:1d83498dbfbec22188c844be494109a92d367595d57fca4fd897a14bf3757eeb` |
| 44 | `theorem` | [Minimal.eq_of_superset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-eq-of-superset.md) | 308 | `result-track:1ab37deff8d2bd317bf67f2e87a18b93672fbec82959d2eace7ea81a5529c3aa` |
| 45 | `theorem` | [Maximal.eq_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/maximal-eq-of-subset.md) | 311 | `result-track:a6ba85d1849ae0f6f4cb5736eff61897e3fba7814437b4aa7f9931739eec7c10` |
| 46 | `theorem` | [Minimal.eq_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-eq-of-subset.md) | 314 | `result-track:011c8aa85bf2230c6036a79a6d3bc260cdd3d9767ed2d9d537b384b71a69eb7d` |
| 47 | `theorem` | [Maximal.eq_of_superset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/maximal-eq-of-superset.md) | 317 | `result-track:4c91e3d31a02020f06cf0040d6fa2bb7d1001efe17ab3f45ce16e72c9c23bcc6` |
| 48 | `theorem` | [minimal_subset_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-subset-iff.md) | 320 | `result-track:6180d86a29091428a888f8ce46e4a60d430addd7bb013f9a0646b0f4d7e55f8a` |
| 49 | `theorem` | [maximal_subset_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/maximal-subset-iff-source-edition-2.md) | 323 | `result-track:745ab110567f20782e50802ee6fcf7ea5b3c5d963a30e5c7c29a7810893e92d0` |
| 50 | `theorem` | [minimal_subset_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-subset-iff-source-edition-2.md) | 326 | `result-track:a6df416af046bfbcf9db8d6373aae151d7fedfb9de70c8d43e5c9fe30707a0cd` |
| 51 | `theorem` | [maximal_subset_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/maximal-subset-iff.md) | 329 | `result-track:48ccbfb4348e5644146c794689ddd60e2ad8dba59d20b61fb7ce5fecda282811` |
| 52 | `theorem` | [not_minimal_subset_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/not-minimal-subset-iff.md) | 332 | `result-track:e9c5d4d818c93480d02c25b7e4b0d1e9be8729e6a2f0d5045dc25f537756c065` |
| 53 | `theorem` | [not_maximal_subset_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/not-maximal-subset-iff.md) | 335 | `result-track:7245c652ebe6f4e763126fe58c5b6fa63936eb713a316abc527da4b8b60bf21e` |
| 54 | `theorem` | [Set.minimal_iff_forall_ssubset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/set-minimal-iff-forall-ssubset.md) | 338 | `result-track:129f7b0b03b251daa77a0d71a17bf16106b2697c5f137d7df439467482353d62` |
| 55 | `theorem` | [Minimal.not_prop_of_ssubset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-not-prop-of-ssubset.md) | 341 | `result-track:c2291f8f1bf73f889951d580f58c088422aa9b54b3b707f363e701e3ff91ad1b` |
| 56 | `theorem` | [Minimal.not_ssubset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-not-ssubset.md) | 344 | `result-track:c36f474c1d7c017d45319a04283990f8150c8e7042dd0aaecc3481aa0b9f6571` |
| 57 | `theorem` | [Maximal.mem_of_prop_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/maximal-mem-of-prop-insert.md) | 347 | `result-track:354fb6d89cf8da945c405fe5cc7fadd04051faa08c40dc661fddc084b2934343` |
| 58 | `theorem` | [Minimal.notMem_of_prop_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-notmem-of-prop-sdiff-singleton.md) | 350 | `result-track:4950b07c9b4eb59743cb08c0227c36e4d805b4d6b6dc1e3aa296301a056e4311` |
| 59 | `theorem` | [Set.minimal_iff_forall_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/set-minimal-iff-forall-sdiff-singleton.md) | 356 | `result-track:a9bd3f4c488c26f637e091ba725c45da9869c90176c88e3a46aea6cab74a5c1d` |
| 60 | `theorem` | [Set.exists_sdiff_singleton_of_not_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/set-exists-sdiff-singleton-of-not-minimal.md) | 365 | `result-track:f67088c06c9ad62467cdc79fe233da59e53efbed6fe8e7f8dc7e6ccf5d6d2300` |
| 61 | `theorem` | [Set.maximal_iff_forall_ssuperset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/set-maximal-iff-forall-ssuperset.md) | 372 | `result-track:8a9454319f021e016b62b13fd0bd338f7dcb1ec25cca3f02f2b2fae5647ab479` |
| 62 | `theorem` | [Maximal.not_prop_of_ssuperset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/maximal-not-prop-of-ssuperset.md) | 375 | `result-track:c6cefbb38fbe9765edd731b7d7b00fe75387ae6c2a3975e0d5eeb3eba6052ae3` |
| 63 | `theorem` | [Maximal.not_ssuperset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/maximal-not-ssuperset.md) | 378 | `result-track:b0d039af72400f101ac75fa4ba0c645e37a6a351cb35b20428c7c16a766607bb` |
| 64 | `theorem` | [Set.maximal_iff_forall_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/set-maximal-iff-forall-insert.md) | 381 | `result-track:17d6cf362056bf7f586105202a704739a51ba245afad4a69d88b57bbc262b0ba` |
| 65 | `theorem` | [Set.exists_insert_of_not_maximal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/set-exists-insert-of-not-maximal.md) | 387 | `result-track:97ca4f3631f54934bb498552efa091fb6e62bbc992a59bf6d32e9f5ecbebbed4` |
| 66 | `theorem` | [setOfPred_minimal_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/setofpred-minimal-subset.md) | 404 | `result-track:1726dfb6f24427444c128f7c45434dc5e54bdd2aca723a83fbc5c992466ccc8e` |
| 67 | `theorem` | [Set.Subsingleton.minimal_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/set-subsingleton-minimal-mem-iff.md) | 411 | `result-track:e8a78103f895999989deb32154d3a8844ec03c566cdda601243a5900c5404cba` |
| 68 | `theorem` | [IsLeast.minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/isleast-minimal.md) | 415 | `result-track:2b41d3fb7b2919647971ad4a4b580e38432df391b773d4416a12612ff248063c` |
| 69 | `theorem` | [IsLeast.minimal_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/isleast-minimal-iff.md) | 425 | `result-track:492d6de4e5989adf5cc4bb3be50b463109b0e48bc014875564cf539b0704ed39` |
| 70 | `theorem` | [minimal_mem_image_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-image-monotone.md) | 441 | `result-track:ccba454fd3eb2fc41c5e0264598cbb49fc6b3610ed795dd51fc226d7d0ba33b9` |
| 71 | `theorem` | [minimal_mem_image_monotone_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-image-monotone-iff.md) | 449 | `result-track:f86f22ccf362f8cc71cc2c30ee19942f1bf098771e859671e91a0d3c45069655` |
| 72 | `theorem` | [minimal_mem_image_antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-image-antitone.md) | 457 | `result-track:34632f019e49a37ad902a7097f9883564705438a8350d4ea23ac8b2265fd38f7` |
| 73 | `theorem` | [minimal_mem_image_antitone_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-image-antitone-iff.md) | 462 | `result-track:6753abd6e890e0400cad917b5d57916c673ae9fb6c7612637147c3e9fd8e5e23` |
| 74 | `theorem` | [image_monotone_setOfPred_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/image-monotone-setofpred-minimal.md) | 468 | `result-track:304524358af83a8ded8e6b747eae185ec4ce23a9499381597e7cb1b5725f9498` |
| 75 | `theorem` | [image_antitone_setOfPred_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/image-antitone-setofpred-minimal.md) | 483 | `result-track:651d89ec4864fcb581cf59c7476ee3058835c117777870a9cc6850f85df0fe06` |
| 76 | `theorem` | [image_monotone_setOfPred_minimal_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/image-monotone-setofpred-minimal-mem.md) | 494 | `result-track:a1745f7ac4e6c154fa0a2e872e723e206e87bdd4b259604f2ee5669feb86efaa` |
| 77 | `theorem` | [image_antitone_setOfPred_minimal_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/image-antitone-setofpred-minimal-mem.md) | 505 | `result-track:f295f97f33748b945d4da478a4954e7b4069b4bbe6d5586395543842126ab368` |
| 78 | `theorem` | [minimal_mem_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-image.md) | 522 | `result-track:157a6bbbb6bf3c05fbca3b414063e5aff23098bb480afcb8df2dd448478a7e0f` |
| 79 | `theorem` | [minimal_mem_image_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-image-iff.md) | 526 | `result-track:e5030f88fdb7db154736e63bfff5dc758ac9ce3d788e7009e67eb625b69c01b2` |
| 80 | `theorem` | [minimal_apply_mem_inter_range_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-apply-mem-inter-range-iff.md) | 530 | `result-track:637e0592612f6b634c211c4cfea3a54565128cbd87575ff9688e2838ca4df9cb` |
| 81 | `theorem` | [minimal_apply_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-apply-mem-iff.md) | 540 | `result-track:97f432822435f56daa99746f312eacabb1a895840891566e5b5b6c08720bd131` |
| 82 | `theorem` | [image_setOfPred_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/image-setofpred-minimal.md) | 546 | `result-track:d45bdb1c74b5b04a97b7659a6e4cc4d64f36b28518f93cb7a632b2f3ad3ea8b9` |
| 83 | `theorem` | [inter_preimage_setOfPred_minimal_eq_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/inter-preimage-setofpred-minimal-eq-of-subset.md) | 553 | `result-track:08b2aec5428247f29d40cdafbd0bf302cf0f07e7312dff284c5443c072d9b990` |
| 84 | `theorem` | [image_setOfPred_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/image-setofpred-minimal-source-edition-2.md) | 570 | `result-track:e5ed33f26ebddf7fe00f5c02c880d56c9091d3eb91791e8b1aefefac1bc18b6f` |
| 85 | `theorem` | [map_minimal_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/map-minimal-mem.md) | 581 | `result-track:646743f394f6c3e07437b24c82e4150be001cebb9642d866e144e63c57178dde` |
| 86 | `def` | [mapSetOfPredMinimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/mapsetofpredminimal.md) | 588 | `declaration-track:9e8c27a2b89b55f477063d3073a64ae7e1e427a88c5279374510b82557b4d790` |
| 87 | `def` | [mapSetOfPredMaximal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/mapsetofpredmaximal.md) | 599 | `declaration-track:69bcf98a5e147ad17ce661ba329b2329083a95f473aee75a4ad27a122a3c7cd9` |
| 88 | `def` | [setOfPredMinimalIsoSetOfPredMaximal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/setofpredminimalisosetofpredmaximal.md) | 610 | `declaration-track:54dde7006fe7f6c05158edfc49a821cb65352ab014bb15bca28b7de3bbb97777` |
| 89 | `theorem` | [minimal_mem_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-icc.md) | 630 | `result-track:17268ffa63eeaeb98dfda9646d4a5b92e4e6f624e9cbeae55262772463889e8d` |
| 90 | `theorem` | [minimal_mem_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedPublic.lean/declarations/minimal-mem-ico.md) | 634 | `result-track:67f30199f70c6d57c86614b68bafdced89b9da4d9d5a78d2d0c4e826aa884b14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c13daad54f807fc493e680ed735d8f48ac6efbbf227dbbdf8872ed70fa13dec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
