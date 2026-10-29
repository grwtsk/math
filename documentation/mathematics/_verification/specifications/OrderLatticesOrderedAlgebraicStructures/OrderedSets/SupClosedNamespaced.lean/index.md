# Verification target: Sup Closed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d0ed135b190cbd000e7aac3042fd170296feffc",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant47e6e88c18da4d33b3b263afbfc8254821b787bc49bdade055415a4df2aee7af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d0ed135b190cbd000e7aac3042fd170296feffc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant47e6e88c18da4d33b3b263afbfc8254821b787bc49bdade055415a4df2aee7af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant47e6e88c18da4d33b3b263afbfc8254821b787bc49bdade055415a4df2aee7af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SupClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed.md) | 51 | `declaration-track:9307d410bb5aa4d79281b6ab093dbb4599d92781d7d7326a6990199df7cbf348` |
| 2 | `lemma` | [supClosed_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-empty.md) | 53 | `result-track:a83155a572054cc6884b363060bd393bf9d96acd2f83e63d8527e9c594882810` |
| 3 | `lemma` | [supClosed_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-singleton.md) | 54 | `result-track:cac6b9f438774f880c69527b2a55c5ef6f5c0b13dc14630ff3f381c3ba30e7c8` |
| 4 | `lemma` | [supClosed_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-univ.md) | 56 | `result-track:3f1d4c07acdd80c61e190f4451bbe51382ef65d1d35bfd8227637551a2ee7ed1` |
| 5 | `lemma` | [SupClosed.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-inter.md) | 57 | `result-track:a34111428e06eb2829651ca390c3dbb258286639313ba8da8a1af156c51c6b02` |
| 6 | `lemma` | [supClosed_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-sinter.md) | 60 | `result-track:f0234c296d9b7297981000f51190c0bc0bba43e80c78dfd6e814d4102503ab74` |
| 7 | `lemma` | [supClosed_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-iinter.md) | 63 | `result-track:910252560d4eae0beb69c43875c2878d52b7f95a619f9316162afa4009e09243` |
| 8 | `lemma` | [SupClosed.directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-directedon.md) | 66 | `result-track:1854a083d7b09d4f55b6a55bd4aa89119e7f288d60b83208fb9d61bdb12e14d4` |
| 9 | `lemma` | [IsUpperSet.supClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/isupperset-supclosed.md) | 69 | `result-track:e0bce90dd4d50717cdf51f1ccce63b6184eccc9ba61ba24463e58ab5260db5e5` |
| 10 | `lemma` | [SupClosed.preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-preimage.md) | 71 | `result-track:576399f4949cfb9e26d9c5d1fecd443ba4d76d6432e57dc19cab8751dd24ffc0` |
| 11 | `lemma` | [SupClosed.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-image.md) | 75 | `result-track:262b84d1d725d6df94bcd04a15d8888d3b45a9e21cf780193f8d48e40aebc785` |
| 12 | `lemma` | [supClosed_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-range.md) | 81 | `result-track:fa6f1f0636e22a662c640297ed286f84b9c138fa6dc7c420abc40f70072a15c4` |
| 13 | `lemma` | [SupClosed.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-prod.md) | 84 | `result-track:39192920513df9e627ad3fbf0882a4ab65a107a19b5a694f4140ab4011a0e07c` |
| 14 | `lemma` | [supClosed_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-pi.md) | 87 | `result-track:990efa38d93259265d9d4a0e18205f3cf2f4026cae3b578c1094c5f867488f3d` |
| 15 | `lemma` | [SupClosed.insert_upperBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-insert-upperbounds.md) | 91 | `result-track:076282ef2dc7dcd95ac6cf3e2de0390e05c83692cf78580c006384785d20f4e0` |
| 16 | `lemma` | [SupClosed.insert_lowerBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-insert-lowerbounds.md) | 96 | `result-track:d6c3617c4f1c54939b8ccc8f375280e63bede06ad7bfc39ce0d32e4d35da26d6` |
| 17 | `lemma` | [SupClosed.finsetSup'_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-finsetsup-mem.md) | 108 | `result-track:00db7f9c38bd09474f59d255b1f5922ae59a3a4a8c2785b8fb92e07a678c10fe` |
| 18 | `lemma` | [SupClosed.finsetSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-finsetsup-mem-source-edition-2.md) | 112 | `result-track:2c12a7025bc732bd594dfb2d60b400c7ffaa9c23d17937e881021a78ab320d68` |
| 19 | `def` | [InfClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed.md) | 127 | `declaration-track:51e18d1f8437aa2dbc3068078ac308206b8c3fd5c95474c55ae97f15a8da1924` |
| 20 | `lemma` | [infClosed_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-empty.md) | 129 | `result-track:c675a8309b32f775f7cb031b130fad2bd539cba300e0b2ecc09134c4acc540c0` |
| 21 | `lemma` | [infClosed_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-singleton.md) | 130 | `result-track:6d541d3351e2e36f33832f3382db33a56406682a4c3391c3e6584d265f372650` |
| 22 | `lemma` | [infClosed_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-univ.md) | 132 | `result-track:00e35d354bf9027414401b5312f170ec92be989c78213fb5e39ec838063ffb6e` |
| 23 | `lemma` | [InfClosed.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-inter.md) | 133 | `result-track:1f88151cde4da7ff87582b351cfd67d07f1ccbb043a190ceb76664614190b5bf` |
| 24 | `lemma` | [infClosed_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-sinter.md) | 136 | `result-track:e55b5df556eb11504a4d24492a9f3c5a1ff77f72d858d59db1ffe9d1e299d14d` |
| 25 | `lemma` | [infClosed_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-iinter.md) | 139 | `result-track:b93e3c3a8e7e9b04925c7d2ff9be84dcabf95692f22c625f00a995b95119926c` |
| 26 | `lemma` | [InfClosed.codirectedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-codirectedon.md) | 142 | `result-track:58382bb303bc6353f7c9b1bdbcbfbdfa51ddc7ce7a83316ac705aef371d413db` |
| 27 | `lemma` | [IsLowerSet.infClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/islowerset-infclosed.md) | 145 | `result-track:a69d4b8212bd8df4f1a1eee28cac46f7a0d7b2316b6c04243d2dd2915dc74d6d` |
| 28 | `lemma` | [InfClosed.preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-preimage.md) | 147 | `result-track:609616150acbe2b8f68616318f48ecc6e410959fd657adea0dda278162305442` |
| 29 | `lemma` | [InfClosed.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-image.md) | 151 | `result-track:7b817345d998c5913d3c376c25838ea0b24b1e85407bfb186e727a3d6721a050` |
| 30 | `lemma` | [infClosed_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-range.md) | 157 | `result-track:472413fafa226429077bac6101b7a0490c90a24ee7b16455cd2287fad5652e16` |
| 31 | `lemma` | [InfClosed.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-prod.md) | 160 | `result-track:81962da3d584bfbb4529c5a57ed0fe98e1443ae34e815ccd1b0c914b2b824990` |
| 32 | `lemma` | [infClosed_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-pi.md) | 163 | `result-track:12f95803d4c90719fbea87ce13da06a7720392d1f97508911e648c7df229e6a1` |
| 33 | `lemma` | [InfClosed.insert_upperBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-insert-upperbounds.md) | 167 | `result-track:956c0d8ce25b5193b51b3bf0a4c6d79d44ce4539815a6da425c7bcdec44de1b3` |
| 34 | `lemma` | [InfClosed.insert_lowerBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-insert-lowerbounds.md) | 173 | `result-track:1ffe426d0cd957e5c2e248ea6c03b6e903c6815c8b261f9964c1200d11fe9656` |
| 35 | `lemma` | [InfClosed.finsetInf'_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-finsetinf-mem.md) | 184 | `result-track:9f077471263b4f2c3e76e239b3e12ab515f26d76b14079d20ee9be77e70d3693` |
| 36 | `lemma` | [InfClosed.finsetInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-finsetinf-mem-source-edition-2.md) | 188 | `result-track:f11b37392616866670addc44ab5a988f3a943f5ff8abbc05c5ec0aa23f9e96df` |
| 37 | `structure` | [IsSublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice.md) | 205 | `declaration-track:618e4b70f847e854da9e788e05ce199b4692a3239e0e50a2538e39d6bb0db378` |
| 38 | `lemma` | [isSublattice_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-empty.md) | 209 | `result-track:040556ae9e7d180ac14e812789057a1edccdb8b9e13f19993b4ef90eae511a82` |
| 39 | `lemma` | [isSublattice_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-singleton.md) | 210 | `result-track:8ee1d5762e308906d4b982c238c31f05e01ed7d060fcd93d9bca4516e6d74d43` |
| 40 | `lemma` | [isSublattice_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-univ.md) | 213 | `result-track:b61fbb598b6e850bd857ad0a5542c1d8c82319718f5095e3d6f7a50575ff183a` |
| 41 | `lemma` | [IsSublattice.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-inter.md) | 216 | `result-track:b56e4fa7924c0e6ac77c955667a5d925fcd2a13eb0222f5d56a1ae3292ed4125` |
| 42 | `lemma` | [isSublattice_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-sinter.md) | 219 | `result-track:9ce97093894c70ea826d521c4bab5e14c34c0a65d228995b1a4bc54c6b9ed967` |
| 43 | `lemma` | [isSublattice_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-iinter.md) | 222 | `result-track:176ef6f50df77c428003f48bae83ee9e7e6414c5884798be3c192e6d985af15e` |
| 44 | `lemma` | [IsSublattice.preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-preimage.md) | 225 | `result-track:cbca9789864f11e8c418e10b42c45317193e291f36a8456ee06aed000b4303f7` |
| 45 | `lemma` | [IsSublattice.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-image.md) | 229 | `result-track:435311d4780359f071215e4b7de7f9db3871ce17d038f1073550bc68c839cf91` |
| 46 | `lemma` | [IsSublattice_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-range.md) | 232 | `result-track:1c0f3fc9f73a69ba3b1f5a2073a096210de455fc7e6d63136f71b3d1ca4f4121` |
| 47 | `lemma` | [IsSublattice.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-prod.md) | 236 | `result-track:3154a13bac2fd8a8801f8994bc70eb6d73e2facfcb21dc1823d48afc956d0046` |
| 48 | `lemma` | [isSublattice_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-pi.md) | 239 | `result-track:aef4abb98da5aa3b4f78de9eba2d7a43c285e9b15f699f134038982869eccb54` |
| 49 | `lemma` | [supClosed_preimage_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-preimage-todual.md) | 243 | `result-track:5ff8b7e5c25ef3f7fa3a0b0c9e696ab998d4328ca4817d975a5e617b7c6696a3` |
| 50 | `lemma` | [infClosed_preimage_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-preimage-todual.md) | 246 | `result-track:2bdaabcf17dd93e6f08a8d87eeff8a0415c610c27f18257df6a1e59f233b9fd5` |
| 51 | `lemma` | [supClosed_preimage_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-preimage-ofdual.md) | 249 | `result-track:a9f9dd5b12f47cc463ffbd3073e863378a5c41a8f1b9c3ddea591b3fc71721f7` |
| 52 | `lemma` | [infClosed_preimage_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-preimage-ofdual.md) | 252 | `result-track:5d5c973ae99e9883c04b5807e3a66e6df153a8d57f66a200ca9b1ad1f92a310e` |
| 53 | `lemma` | [isSublattice_preimage_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-preimage-todual.md) | 255 | `result-track:9fc9cf8ff87b44fc456849514f1509257aa6919fa8d777094a751899bf807bc4` |
| 54 | `lemma` | [isSublattice_preimage_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-preimage-ofdual.md) | 258 | `result-track:7e3d1500461b8902216428641fdf349fe89a9ef0d60c780cd8ca1d67192fdc21` |
| 55 | `lemma` | [LinearOrder.supClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/linearorder-supclosed.md) | 271 | `result-track:37dfd4149569087e06b9182dd9d7521e7967d5e109bcb519af9b4ec98ddb1687` |
| 56 | `lemma` | [LinearOrder.infClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/linearorder-infclosed.md) | 274 | `result-track:21ea6ee31d814be09144c4ce8af275c0e357d42596417dc82c5880b5b31971f8` |
| 57 | `lemma` | [LinearOrder.isSublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/linearorder-issublattice.md) | 277 | `result-track:4fc45f85e6d8ac461e9c0ef8f849499cafd3f11ce4723fd6337827f40221429f` |
| 58 | `def` | [supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure.md) | 291 | `declaration-track:206513750674d988ee8edfc1c8540321b598e7ca8b4da0d60044efa31b24404f` |
| 59 | `lemma` | [subset_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/subset-supclosure.md) | 303 | `result-track:1571561043d59ba503ec79d7bf3caab816caf67c08570eb969732857526686fd` |
| 60 | `lemma` | [supClosed_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-supclosure.md) | 305 | `result-track:46fda1c8c5b70ab070dddc17b31417fd92aca390e4fc21cf01acd6d45e8813b3` |
| 61 | `lemma` | [supClosure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-mono.md) | 307 | `result-track:aed59ef48b139b353756021786f8ca680d55dc0abacb1a57127da0a45fd64ef9` |
| 62 | `lemma` | [supClosure_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-eq-self.md) | 309 | `result-track:cdf1707c6b30b13c37dd00c91e836720de34b6bcf9bb84d8a7be70cbf594058a` |
| 63 | `lemma` | [supClosure_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-idem.md) | 313 | `result-track:9857c9467cc7532b811e01e771f72b7c6d9758ef9a5088915ec0342a0cf7fe35` |
| 64 | `lemma` | [supClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-empty.md) | 316 | `result-track:fdd38c0da080cd767b941311209aeb9cf777b1036e07f414adc4600a88baf81b` |
| 65 | `lemma` | [supClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-singleton.md) | 317 | `result-track:e57e2aa22235b59322d0f5efc696c02b09b272e2ef03d4c961e73e2acf435853` |
| 66 | `lemma` | [supClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-univ.md) | 318 | `result-track:55d3384915b1ea44867a22e0724a6fe1f30ca5db706d7932009f56fba3f6d567` |
| 67 | `lemma` | [upperBounds_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/upperbounds-supclosure.md) | 320 | `result-track:f654b51cd632d9234a0c51a7077863334b51ac29546ab5d6344e36e8bb299461` |
| 68 | `lemma` | [isLUB_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/islub-supclosure.md) | 325 | `result-track:3b31ec300f0c7700d1436344fd0da972a022bc0c556906b56a2c41b244bcf27a` |
| 69 | `lemma` | [sup_mem_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/sup-mem-supclosure.md) | 327 | `result-track:ea35130229b512df36444e9c542e0803334e80b9fb9aeb1ba5d9d5a91297eaf0` |
| 70 | `lemma` | [finsetSup'_mem_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/finsetsup-mem-supclosure.md) | 330 | `result-track:edd489832788941bbe618c2be87807f8b41675119452470b725a38aafd1fbd50` |
| 71 | `lemma` | [supClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-min.md) | 334 | `result-track:cbe477824c53fca46f184057274bb72f6f0e16651cfa16e68fb1f7b150978b62` |
| 72 | `lemma` | [Set.Finite.supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/set-finite-supclosure.md) | 337 | `result-track:20f5c18d811447feef77fa9ec99217216bce6d99793a692f24c90efd3cfe9dab` |
| 73 | `lemma` | [supClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-prod.md) | 347 | `result-track:d09bc2a3a33a4eeb71e6dd5c5762e7416dd6b7362244fa81feb2621d26cfa37f` |
| 74 | `def` | [infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure.md) | 363 | `declaration-track:cff4d91aa8daf6616da9350f03d611aba11444b24278b896a3097cd88c958de8` |
| 75 | `lemma` | [subset_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/subset-infclosure.md) | 375 | `result-track:186642b0186f09559c26beab2b9b925699d7f895268d1a84c4841aa923a72c9e` |
| 76 | `lemma` | [infClosed_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-infclosure.md) | 377 | `result-track:c6fb0603314d1c3c75349e6939e6a21c550da559d57739a94d36104ad2b2876d` |
| 77 | `lemma` | [infClosure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-mono.md) | 379 | `result-track:d9d64013d309383b7c24fbb04bb4c22201b6411857bd374c1b97aa7be6e8dbcc` |
| 78 | `lemma` | [infClosure_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-eq-self.md) | 381 | `result-track:e122e859d99824318e6183dc7c170098021c792fd94d086d84b540e4d1cdd934` |
| 79 | `lemma` | [infClosure_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-idem.md) | 385 | `result-track:8101721a2fa796f2ce33a77136b980fd4d8a3435745a35f72fe9fead93667743` |
| 80 | `lemma` | [infClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-empty.md) | 388 | `result-track:42cbccd6572e645abfb3901742884e78933ef5b23bc7b39b846eec966c94f0d2` |
| 81 | `lemma` | [infClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-singleton.md) | 389 | `result-track:cdddaeda1442090859195756c656d6c8ca7749ca57dbaa61425e2e30a7b35b51` |
| 82 | `lemma` | [infClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-univ.md) | 390 | `result-track:c32c84f07e999c331fc44d5c9a869de847124a2efe97cb5c1d3f50bc5edfc258` |
| 83 | `lemma` | [lowerBounds_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/lowerbounds-infclosure.md) | 392 | `result-track:ba05e86a15b46b43a70b6c730d94fbbb0a924043cb8d729c17e6337e814a021d` |
| 84 | `lemma` | [isGLB_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/isglb-infclosure.md) | 397 | `result-track:dcdc8deba9e9e556e10d9f0ba09186d80ae9ed01e0cdc2d3c3e78496c63d5e9c` |
| 85 | `lemma` | [inf_mem_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/inf-mem-infclosure.md) | 399 | `result-track:9359a4b9e947a9d9198b39c44b76e48172d900b97d2d958eb3fd45932dae7d49` |
| 86 | `lemma` | [finsetInf'_mem_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/finsetinf-mem-infclosure.md) | 402 | `result-track:a5e91823325c9e0ec3d6569c4412d14f5ff3a40582c87fa8e0c86c30a5a092b4` |
| 87 | `lemma` | [infClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-min.md) | 406 | `result-track:3ea8209caf9299dd709d6ad26136cf927a8eb8a1fea9ea55afafa39f55d848d7` |
| 88 | `lemma` | [Set.Finite.infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/set-finite-infclosure.md) | 409 | `result-track:286d2302cfd10cdefb0c621a431d1483bbb6c14c86c6df8fa12290ec8f9f21c6` |
| 89 | `lemma` | [infClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-prod.md) | 419 | `result-track:0f217e49479ef4fb2fba6bc9189aee94808c7536f4e3ac090134da8250033bec` |
| 90 | `def` | [latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure.md) | 435 | `declaration-track:c8056fd9e9dbedbb69b1403bee3ca43d49489a5ec0c20efd08af3beac1665707` |
| 91 | `lemma` | [subset_latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/subset-latticeclosure.md) | 438 | `result-track:2bc12e10fa486aac79622008734ba69d65a9dc0e67c277537bd6f3046e2d6d12` |
| 92 | `lemma` | [isSublattice_latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/issublattice-latticeclosure.md) | 440 | `result-track:33ee36e88f1b22299e42d4037517844ef7a71f135573dcbe336c783a0103359f` |
| 93 | `lemma` | [latticeClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure-min.md) | 443 | `result-track:fdce4aa511d13f11e3d0b12449e1bef4df04bb7fda1af9f2de3502c5605d42fe` |
| 94 | `lemma` | [latticeClosure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure-mono.md) | 446 | `result-track:e20f8d52cc95f9d57cc27c185498095ad0f207b0693362fd6a8a9840e5154bfc` |
| 95 | `lemma` | [latticeClosure_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure-eq-self.md) | 448 | `result-track:b015103ce2a71bbe34d1f8d4d6394ebd0fe3598d4a441eb62a2fa9eddb9268c1` |
| 96 | `lemma` | [latticeClosure_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure-idem.md) | 453 | `result-track:7853ee0bf400f91910670aa378c53c46a96257ee8c8990a6f740ab0452c7c12a` |
| 97 | `lemma` | [latticeClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure-empty.md) | 456 | `result-track:f5967208e75897f16d8a1bf73b56d24809ee8b8020d75759b300314e678294ad` |
| 98 | `lemma` | [latticeClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure-singleton.md) | 457 | `result-track:18a8342ff135966c3f9a962846bb58b0d4af5624940aaa99a3e31d40457550f2` |
| 99 | `lemma` | [latticeClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure-univ.md) | 458 | `result-track:314869929dda1ac893b92fd650ff9f6c3dff4667d4aa9eb2610644e7990ea143` |
| 100 | `lemma` | [SupClosed.infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-infclosure.md) | 467 | `result-track:5879c2609e669d8dd351f15116a0d28156d9fd3df05ceba9acc8750e7aadbd6d` |
| 101 | `lemma` | [InfClosed.supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-supclosure.md) | 473 | `result-track:ef7cdc7c0535f311e5ee38a47c49e1f2ff99220e2ebfaf2b5c71f97c88c08a83` |
| 102 | `lemma` | [supClosure_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosure-infclosure.md) | 479 | `result-track:ecb095c89bd5ffe1e5c862a8de07d0cfdde94b23e133fbbb9833cfc272bb0d96` |
| 103 | `lemma` | [infClosure_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosure-supclosure.md) | 484 | `result-track:e20f1e278503b936ecaf3470ce4ef6153f762533153a1a6db3f81d74913407fb` |
| 104 | `lemma` | [Set.Finite.latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/set-finite-latticeclosure.md) | 489 | `result-track:88ac5b62553f79fe5c77276c1c074c2df765ed75860bcfc04babcc7d2bca2734` |
| 105 | `lemma` | [latticeClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/latticeclosure-prod.md) | 492 | `result-track:078e577c7d489a8f69d92610bc4850a8b91db285bf380eda01ad71c2b038d963` |
| 106 | `def` | [SemilatticeSup.toCompleteSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/semilatticesup-tocompletesemilatticesup.md) | 500 | `declaration-track:0d4f33b993551f145b86c4cee1b6f9f5c3ab441c2cdf3dfe48dc54416a851adf` |
| 107 | `def` | [SemilatticeInf.toCompleteSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/semilatticeinf-tocompletesemilatticeinf.md) | 508 | `declaration-track:39a1d80181f67576fe0838c93144a7007043ce017ba5f8846812263ddca8a75f` |
| 108 | `lemma` | [SupClosed.iSup_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-isup-mem-of-nonempty.md) | 518 | `result-track:849e4765349883985a97c8328410be128e18c1b61235b252f424aa17acf463ac` |
| 109 | `lemma` | [InfClosed.iInf_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-iinf-mem-of-nonempty.md) | 524 | `result-track:9bc6a399195659c514bfff3208999c7c6726d1c70ee7b38484121b9c4141b29f` |
| 110 | `lemma` | [SupClosed.sSup_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-ssup-mem-of-nonempty.md) | 527 | `result-track:ba8afce8749399118c47a31a9af3a8935fccbde0b6bfd11916eed89a7841407e` |
| 111 | `lemma` | [InfClosed.sInf_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-sinf-mem-of-nonempty.md) | 534 | `result-track:56473a3ef31d405ee05bc70adea09ba7c260ba502a6aa5d45d7f44cfed10a0a1` |
| 112 | `lemma` | [SupClosed.biSup_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-bisup-mem-of-nonempty.md) | 541 | `result-track:38f0a66089626dbb47f0ed996b86af9bd4a6327f6902cd213d5fc10c04ae9555` |
| 113 | `lemma` | [InfClosed.biInf_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-biinf-mem-of-nonempty.md) | 546 | `result-track:12c4adc49580f5f71d406bb90949ad8f8eadd6d2d3871d1dd31722fa67e888f7` |
| 114 | `lemma` | [SupClosed.iSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-isup-mem.md) | 550 | `result-track:874927683038c554503c12fdb0bcc3cf2046a8cf15db57f03a6ed1c6b5dc2b3d` |
| 115 | `lemma` | [InfClosed.iInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-iinf-mem.md) | 556 | `result-track:bc8183d0ff346154110caa6eb44f4e36def89ff82a2fb9970439727553268e38` |
| 116 | `lemma` | [SupClosed.sSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-ssup-mem.md) | 559 | `result-track:c05362cdc1e39bb6c480c9fc4a1c0d0d0049ae3d6192108ed552a362359080d8` |
| 117 | `lemma` | [InfClosed.sInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-sinf-mem.md) | 565 | `result-track:b1fec42406959a05d6a564f39c2adb9af72740183563774995aa0839e722a5a2` |
| 118 | `lemma` | [SupClosed.biSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/supclosed-bisup-mem.md) | 568 | `result-track:44076d057ea4f2b10c0f7968ecf4e299aab9eb6abd9c181a2bd51bd08781863e` |
| 119 | `lemma` | [InfClosed.biInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosedNamespaced.lean/declarations/infclosed-biinf-mem.md) | 573 | `result-track:3d6205d22184a5cf38fb0d0fcfb9cf8304edd270483f1d5eec417f3d02b43a11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cdd068e55384c61b2b3f5a37f4593007c5e0be5cd9ca897c21063d4304bd0439 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant47e6e88c18da4d33b3b263afbfc8254821b787bc49bdade055415a4df2aee7af.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant47e6e88c18da4d33b3b263afbfc8254821b787bc49bdade055415a4df2aee7af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
