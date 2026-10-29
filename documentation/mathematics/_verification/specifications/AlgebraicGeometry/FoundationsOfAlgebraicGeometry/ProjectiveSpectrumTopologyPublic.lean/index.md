# Verification target: Projective Spectrum Topology Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e34b257690db0286ade6006e310f0dc7347771e7",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant9d92f7487a209a535394255727044141670cdb7d3ec62a341d22817188dd559e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e34b257690db0286ade6006e310f0dc7347771e7`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant9d92f7487a209a535394255727044141670cdb7d3ec62a341d22817188dd559e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant9d92f7487a209a535394255727044141670cdb7d3ec62a341d22817188dd559e.lean.json)

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
| 1 | `structure` | [ProjectiveSpectrum](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/projectivespectrum.md) | 54 | `declaration-track:97eeee6d457e9625d0c57a0fdfd010a0d0878cfbb074e0f0ad99cc6e8b379855` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:efaeac51124d4c01c05d24e36e8b49a6e7a572c72ea8d0bcdaafca7fd5cec5a5` |
| 3 | `def` | [zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus.md) | 72 | `declaration-track:8734ba79fa627c417e5a5eb7639dd6250c2e6489e7ba1b8903a60d717bd68981` |
| 4 | `theorem` | [mem_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/mem-zerolocus.md) | 76 | `result-track:d14d54c5a3e33ad7cf258e343dc3a554907db3f34e6810570d2f4cd34f7bdc4a` |
| 5 | `theorem` | [zeroLocus_span](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-span.md) | 81 | `result-track:aef8cb0106b24cf33625c1e5eba0b56113ec71fe40cdc4322f256fb9e7d9088f` |
| 6 | `def` | [vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/vanishingideal.md) | 94 | `declaration-track:6687094f33fecbf93b668e5004f7aad1931381f837180338aa019e3f8b8bc90b` |
| 7 | `theorem` | [coe_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/coe-vanishingideal.md) | 97 | `result-track:54a38bd0f5db498122863df2971ea03da452ab440fe39153eaafdbf1c988a8ae` |
| 8 | `theorem` | [mem_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/mem-vanishingideal.md) | 106 | `result-track:537fbd35548717543af3750837c2efa560d824235b53d3f18b7623f7424e72c2` |
| 9 | `theorem` | [vanishingIdeal_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/vanishingideal-singleton.md) | 111 | `result-track:f1dad8bfb4d134c06013acc10fd9cf70205da2e651ae3adc72c61048cc858f62` |
| 10 | `theorem` | [subset_zeroLocus_iff_le_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/subset-zerolocus-iff-le-vanishingideal.md) | 115 | `result-track:734e4f993e84108c653d48bfd3f7b1f6bbc88643941d98fed59945bbdfdec7a5` |
| 11 | `theorem` | [gc_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/gc-ideal.md) | 124 | `result-track:81e75e1eb1375b11a2f5f8e7e515168429174a25ec816d30deb5034754545856` |
| 12 | `theorem` | [gc_set](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/gc-set.md) | 131 | `result-track:fd9e44b7c1cd7faea881f1e1660461762c519f54a51bc3a75f4b5885c8b8d8da` |
| 13 | `theorem` | [gc_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/gc-homogeneousideal.md) | 137 | `result-track:958b1a301ff9f747b28a640b5a6f55b2240cc75873087183ec1a3cfde725ec5f` |
| 14 | `theorem` | [subset_zeroLocus_iff_subset_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/subset-zerolocus-iff-subset-vanishingideal.md) | 144 | `result-track:5ea19c5175686d39beefa96b1d9ddb3a83cd7d270847e6b5cb0987bdbbc13030` |
| 15 | `theorem` | [subset_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/subset-vanishingideal-zerolocus.md) | 148 | `result-track:bbbe34fc00c1a8432acf99bd87bf5ad3c4957b6ac43e9601fe2f53156c598a1d` |
| 16 | `theorem` | [ideal_le_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/ideal-le-vanishingideal-zerolocus.md) | 151 | `result-track:bddd4050279529c0d2c828a22a448eefc65f791bf1ed8257676faee4d3437171` |
| 17 | `theorem` | [homogeneousIdeal_le_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/homogeneousideal-le-vanishingideal-zerolocus.md) | 155 | `result-track:9c641bc36e58bc2c87df6c7b93ce82f22b80536988ae8d12310d93ee900e04a1` |
| 18 | `theorem` | [subset_zeroLocus_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/subset-zerolocus-vanishingideal.md) | 159 | `result-track:bc68081c60fbeeb75c293fd15f4a14806700e07d6ca2b543433438d40bebfcd3` |
| 19 | `theorem` | [zeroLocus_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-anti-mono.md) | 163 | `result-track:e28350d7fb45cb5b1b0cafda9bb108f53e6bbc2a1b898bd8950c79d99dca729e` |
| 20 | `theorem` | [zeroLocus_anti_mono_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-anti-mono-ideal.md) | 166 | `result-track:7bdba96c47ae946bcaa01135d706fb1ad37f9ef88322c863be1df464b8f24ace` |
| 21 | `theorem` | [zeroLocus_anti_mono_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-anti-mono-homogeneousideal.md) | 170 | `result-track:d1989a084c5360d54df5e157d1a32203ab551605f8bce28105f6715c9c875cec` |
| 22 | `theorem` | [vanishingIdeal_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/vanishingideal-anti-mono.md) | 174 | `result-track:6990652563c5f47be87bed882f2fd463820184a729067bd04949073af8cc85d2` |
| 23 | `theorem` | [zeroLocus_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-bot.md) | 178 | `result-track:9fd66fc5a25df3a54bc4853d223edc053ed6f91e16a7e36115c2f45a2f38a2f6` |
| 24 | `theorem` | [zeroLocus_singleton_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-singleton-zero.md) | 182 | `result-track:f38a02df2d14eb9191545e833cf295e37be039e483bac983dc84b048ce4fd7b9` |
| 25 | `theorem` | [zeroLocus_empty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-empty.md) | 186 | `result-track:6700637c0b83ada48fde119fad79a32cc84fefbc4082a49414b3d9285c790681` |
| 26 | `theorem` | [vanishingIdeal_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/vanishingideal-univ.md) | 190 | `result-track:473393e53043382de0eea0aea6f54c4235ff07843b4e8f413953f11a6a58ef56` |
| 27 | `theorem` | [zeroLocus_empty_of_one_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-empty-of-one-mem.md) | 193 | `result-track:1ef6432b5b32b9a107c820c37e2acce7efd4d1aa00eecf914bb0773eee3451fe` |
| 28 | `theorem` | [zeroLocus_singleton_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-singleton-one.md) | 199 | `result-track:d5b4f112b99795311dc690686895b992401bed54c784a15233e75f86eb853b33` |
| 29 | `theorem` | [zeroLocus_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-univ.md) | 203 | `result-track:7296a601286e747ab2964fd79d26af3409e6d16b62f3e413fa5140ac05aa7ccd` |
| 30 | `theorem` | [zeroLocus_sup_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-sup-ideal.md) | 206 | `result-track:b901f3108bddf77b5a140c192976bcdaf6a095a575fcb944c373c5dedb241c7a` |
| 31 | `theorem` | [zeroLocus_sup_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-sup-homogeneousideal.md) | 210 | `result-track:0bc17ce81b08ffc2156a2e39f270734e72e18e4d19ab102f4c9e185bd856950b` |
| 32 | `theorem` | [zeroLocus_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-union.md) | 214 | `result-track:9401c16770670006be71bd06bcef7e4ca5a3b46d791a19bd3cb96c637d55a727` |
| 33 | `theorem` | [vanishingIdeal_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/vanishingideal-union.md) | 217 | `result-track:b3a597fb1dca3f3e20151575ac6466c9d97acc4da1dfcd274d5a6c210bbbe032` |
| 34 | `theorem` | [zeroLocus_iSup_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-isup-ideal.md) | 221 | `result-track:61a1ce07545b25747ac685c2a24b6a4aecd619086224a3dd743be440483a5d0e` |
| 35 | `theorem` | [zeroLocus_iSup_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-isup-homogeneousideal.md) | 225 | `result-track:9884c95cabdb21d217c22f6c5da63283b7202d0470374d332deb78cf73d1cdb7` |
| 36 | `theorem` | [zeroLocus_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-iunion.md) | 229 | `result-track:c428d87d635a60396e30f937139889c32916057e31d3e90e3940a59b4e471afc` |
| 37 | `theorem` | [zeroLocus_bUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-bunion.md) | 233 | `result-track:21e7ea5a44b383ccbf85a8ca278a9c84c3a4f10770828340bc7cb9fde6db6db5` |
| 38 | `theorem` | [vanishingIdeal_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/vanishingideal-iunion.md) | 237 | `result-track:2317ae6cf1bc7f9584388f8735fda684d0905a06898fb59953e092739edabacd` |
| 39 | `theorem` | [zeroLocus_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-inf.md) | 242 | `result-track:fab59c397e117652e9463b33c32412796be2fb9d303d98a4bd300f9d9a951a93` |
| 40 | `theorem` | [union_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/union-zerolocus.md) | 246 | `result-track:1b80b043eb8dfda310cbec52c9921850fb737ae3e2432a39f36032a37402c399` |
| 41 | `theorem` | [zeroLocus_mul_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-mul-ideal.md) | 251 | `result-track:dcf61763892566ce60e8d10acd69704fb93296e9bcde361adee46013f6b57509` |
| 42 | `theorem` | [zeroLocus_mul_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-mul-homogeneousideal.md) | 255 | `result-track:c39f2696e6be7dafe079ccac6772aee13d9e92e9af6372aad2e94033ce0d0627` |
| 43 | `theorem` | [zeroLocus_singleton_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-singleton-mul.md) | 259 | `result-track:9c68cb30dee155060a84013efd5533d70b030d7880deb0c0a093f909a67e544a` |
| 44 | `theorem` | [zeroLocus_singleton_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-singleton-pow.md) | 264 | `result-track:5c6634e7bb00558ad2a959d1cd7a6ea506e11fa683a364c241e95e293ee8d79e` |
| 45 | `theorem` | [sup_vanishingIdeal_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/sup-vanishingideal-le.md) | 268 | `result-track:7a0e545e90ca4addcde2a41ee0e0088b8cf7d1c0a0327b8c6df0320176f778a5` |
| 46 | `theorem` | [mem_compl_zeroLocus_iff_notMem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/mem-compl-zerolocus-iff-notmem.md) | 277 | `result-track:3bdf6991dd2b3d6fe72cef87575656f804e83cef99a9e33f030268e1b29dbf94` |
| 47 | `instance` | [zariskiTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zariskitopology.md) | 283 | `declaration-track:32faf5eca3556f914daf9d5c632290943449b4b778e3cf04cecc4a78424c2607` |
| 48 | `def` | [top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/top.md) | 299 | `declaration-track:525e2b7a58a193ec2c3a3a16166669e527d56412faa06a1b5ce0a4d256b2ae95` |
| 49 | `theorem` | [isOpen_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/isopen-iff.md) | 302 | `result-track:ac6ed0cfb304b4b584ba49af89c1a7eb3dcb242435b57aff2f4ecc2c236386f3` |
| 50 | `theorem` | [isClosed_iff_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/isclosed-iff-zerolocus.md) | 305 | `result-track:65932c833180b7ccf65f10ba82e20e27fb4f1163dd09a7a7ba8b5d3b90359b79` |
| 51 | `theorem` | [isClosed_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/isclosed-zerolocus.md) | 308 | `result-track:1dbe16665e25fca1009ad9ae2c095ab77ce00c0055b962a3a77357a93d68d717` |
| 52 | `theorem` | [zeroLocus_vanishingIdeal_eq_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/zerolocus-vanishingideal-eq-closure.md) | 312 | `result-track:ef6635e237c94d486384b93fd37998837ca1f6b7e28827d9619d61807f093223` |
| 53 | `theorem` | [vanishingIdeal_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/vanishingideal-closure.md) | 322 | `result-track:ad1559e3e09bd657d67bc8f625be24509273f4e5939e60162d82cd4769c6bbe0` |
| 54 | `def` | [basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen.md) | 332 | `declaration-track:4709891cc32745807c2252622a9153556bd273c25418dbfd5c18edf40b410e99` |
| 55 | `theorem` | [mem_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/mem-basicopen.md) | 337 | `result-track:8e0a6ee5fdce6c13a39993d816b95af9c3b4c8402cb5bda5855f014332b0d93e` |
| 56 | `theorem` | [mem_coe_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/mem-coe-basicopen.md) | 341 | `result-track:c73da45a1a40de73aa7dddc7e139a6546daa39e44510afdf6b5fa07af7a8e498` |
| 57 | `theorem` | [isOpen_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/isopen-basicopen.md) | 345 | `result-track:c6048e708b76b4bb5fee29c2cfaedaaf2eb3774224e6ddba75e8ac213dfaeeca` |
| 58 | `theorem` | [basicOpen_eq_zeroLocus_compl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen-eq-zerolocus-compl.md) | 349 | `result-track:3d6c141081d273429aaf62b33b65bbe1c49b2bad61508e0bb98a8c37ed65a750` |
| 59 | `theorem` | [basicOpen_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen-one.md) | 354 | `result-track:afb9ba91ace44168f2af8c7d0e51b3a94d1688bc561272117f9cd5f1a99ab6bb` |
| 60 | `theorem` | [basicOpen_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen-zero.md) | 358 | `result-track:303727f8941a01a039801accab4503fb065f5faaf1bfe107d7346bbce0b0b333` |
| 61 | `theorem` | [basicOpen_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen-mul.md) | 361 | `result-track:d5b4418e0b6d3f4023607a70b8e405bde3f7277ce2e94398c754bbef8f0891cd` |
| 62 | `theorem` | [basicOpen_mul_le_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen-mul-le-left.md) | 364 | `result-track:a8b10ed6e31a32d605af28ffadeb49800fc4714013cc717d24d866f9e3616c65` |
| 63 | `theorem` | [basicOpen_mul_le_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen-mul-le-right.md) | 368 | `result-track:3b617afe2b5bcba3bb3ddf6781c3ba7f843b78ec0c287a390a1827bb5f46d504` |
| 64 | `theorem` | [basicOpen_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen-pow.md) | 373 | `result-track:cc56749ca041e7983f30d1ee90a7ca6997ccdd72084363846266fd7627fdf38d` |
| 65 | `theorem` | [basicOpen_eq_union_of_projection](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/basicopen-eq-union-of-projection.md) | 376 | `result-track:78ec38ea9f0a290852327729ae6e747ac241eafc9af6fd7fd8084be57889e003` |
| 66 | `theorem` | [isTopologicalBasis_basic_opens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/istopologicalbasis-basic-opens.md) | 391 | `result-track:6e78b7fbb754226efa61d353e6831311d6a21ee4f0df90edaaf8c7f65597127f` |
| 67 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/instance.md) | 416 | `declaration-track:a98a43e1c4a87a90fc1d84d7f2aa8a17558793a81e8246aa7c9285c66a3e5534` |
| 68 | `theorem` | [as_ideal_le_as_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/as-ideal-le-as-ideal.md) | 420 | `result-track:da9cd8acc38bf6f6c3ea735b1b98422ae634b83736c87a573e0178f43b6c96ea` |
| 69 | `theorem` | [as_ideal_lt_as_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/as-ideal-lt-as-ideal.md) | 425 | `result-track:21faf42ed0dc429d1f11fd3f6f8e79a1b571f37664a06c51454892c50de43466` |
| 70 | `theorem` | [le_iff_mem_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyPublic.lean/declarations/le-iff-mem-closure.md) | 429 | `result-track:1fd540b908e36a691501dfe5a9300d60cba87af8c5ecabf132d803cc3fcdafd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40b2d1bd7be66dcc9491eceb92ad31133cbd4b36256beb0a8515ff05cf33a9d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant9d92f7487a209a535394255727044141670cdb7d3ec62a341d22817188dd559e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant9d92f7487a209a535394255727044141670cdb7d3ec62a341d22817188dd559e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
