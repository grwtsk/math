# Verification target: Sup Closed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb2aedaf8caca00830d475181ae541a84dfc8905",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb2aedaf8caca00830d475181ae541a84dfc8905`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SupClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed.md) | 43 | `declaration-track:e7e953ac7396d0c99d1b2047a1a9764d56b78b3011a353be635656875ee1532c` |
| 2 | `lemma` | [supClosed_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-empty.md) | 45 | `result-track:a9599ba9afe58e68f9aece24c3baa2b2860047bf3a9e92a4a63640c03deec73c` |
| 3 | `lemma` | [supClosed_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-singleton.md) | 46 | `result-track:268110d90391e32e6459ee7fd6b460f3ea2bc75844cfd2b15bfddbe71a2034bd` |
| 4 | `lemma` | [supClosed_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-univ.md) | 48 | `result-track:0a4ba7bb77080771c977fe7098f5c68b250a567c031e78ccb004440f9965a34f` |
| 5 | `lemma` | [SupClosed.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-inter.md) | 49 | `result-track:22822c96290756f5e8bcfde7909151a25a27745ec8d20b4d26ef1163b2302284` |
| 6 | `lemma` | [supClosed_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-sinter.md) | 52 | `result-track:cc857f20a962d69d0960ea44cf98f1595eb025a852606caf459b8d18be81c1f0` |
| 7 | `lemma` | [supClosed_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-iinter.md) | 55 | `result-track:56a559b3e5d48f55e23f44579c2baaf0efea842aaafbf8e058d7ca584d72cc05` |
| 8 | `lemma` | [SupClosed.directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-directedon.md) | 58 | `result-track:8f36b417a522b72787b7337093c2ba057afae8c65a44b811a36bffde7e723cf4` |
| 9 | `lemma` | [IsUpperSet.supClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/isupperset-supclosed.md) | 61 | `result-track:02970290997a682d0b8f268e5c6059a993fcfb92ee7b7e5572764a04d2e97569` |
| 10 | `lemma` | [SupClosed.preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-preimage.md) | 63 | `result-track:e4f0d9d5dcd50f22642b33d36bfa903c82ab6b505206425816546c7df4848241` |
| 11 | `lemma` | [SupClosed.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-image.md) | 67 | `result-track:b9299d00dc3a0dd6dbaa64a9aadd091df9fe8e64aa5a4f405d6de379077c7c07` |
| 12 | `lemma` | [supClosed_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-range.md) | 73 | `result-track:bab656449594326941c13c774e19a23ca85d8811e493770282f57ddc1a4e1e80` |
| 13 | `lemma` | [SupClosed.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-prod.md) | 76 | `result-track:afad0f2e155b1ee4bb4c74a9973f3b864af1f08732d59ff7f1ef38c230fe38bd` |
| 14 | `lemma` | [supClosed_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-pi.md) | 79 | `result-track:a6ca75dc75a7e632ebf373e32b54377f5e96597baeb570de6746f67f7d3e3a40` |
| 15 | `lemma` | [SupClosed.insert_upperBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-insert-upperbounds.md) | 83 | `result-track:d7621be766d3599d4ecdd02040f3c2f031db756eeb0ff17fb035c8e2d71a148a` |
| 16 | `lemma` | [SupClosed.insert_lowerBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-insert-lowerbounds.md) | 88 | `result-track:a301785073eb53e1e5076d067ee6cc453b15d2d4a79ed7046f13b0b5c28eda53` |
| 17 | `lemma` | [SupClosed.finsetSup'_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-finsetsup-mem-source-edition-2.md) | 100 | `result-track:aad11ed23615bab34191bbebcb03df30070eb1764c4be05d83c50ad1dbb07b15` |
| 18 | `lemma` | [SupClosed.finsetSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-finsetsup-mem.md) | 104 | `result-track:45b34fb19a23e718ad65343ffca617819c79a9671b12de142111e50eef08de5b` |
| 19 | `def` | [InfClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed.md) | 119 | `declaration-track:a48171a1bafc4b94767ca73d5504876d59299348946510ee046ff33ed79dca2c` |
| 20 | `lemma` | [infClosed_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-empty.md) | 121 | `result-track:df914ed9c061b1686ecc374f76ffc1da8d3e0059260ee1ffa17f0445e7e3162a` |
| 21 | `lemma` | [infClosed_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-singleton.md) | 122 | `result-track:731a4b562c1851afbd57f8ac4d21e2346553dae403959582d2cba3c775c83e49` |
| 22 | `lemma` | [infClosed_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-univ.md) | 124 | `result-track:f9cbda856929b94bdc3c69ae68a599aa61cb0ce874a31efe23080787511331bc` |
| 23 | `lemma` | [InfClosed.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-inter.md) | 125 | `result-track:b0a005c6ac603a6c5198b436aaa51966917d398c6687d1a660fbde3b21cb0030` |
| 24 | `lemma` | [infClosed_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-sinter.md) | 128 | `result-track:b13d881079f58529f0c51cc92d5773d3d719460088a3391cf4e50d8299b38bfd` |
| 25 | `lemma` | [infClosed_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-iinter.md) | 131 | `result-track:eb4fcc469a7411029786611d1431da5329a12e4c2ffa013f2b3ac900a50de67b` |
| 26 | `lemma` | [InfClosed.codirectedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-codirectedon.md) | 134 | `result-track:124e8482678b41b3491e15f51d44f868d7544f18e003946105eb7752cf80954f` |
| 27 | `lemma` | [IsLowerSet.infClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/islowerset-infclosed.md) | 137 | `result-track:ae91dd9f1b240239381da128a00c7709b57152f40356ea36d82c21fc3db62e1b` |
| 28 | `lemma` | [InfClosed.preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-preimage.md) | 139 | `result-track:d2f3caed4b73329021c45a29f76b1c7b268e4d2c1c42be2e026131dbaff7a1cf` |
| 29 | `lemma` | [InfClosed.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-image.md) | 143 | `result-track:da81fe62bc3b083e621aeb1a0b3f7d721bd264602482cfc9ee657f7021c84d96` |
| 30 | `lemma` | [infClosed_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-range.md) | 149 | `result-track:ceacabdbd636d8d0e317af18de5d44d56700bfe66a2f52072909ce6bc0533e43` |
| 31 | `lemma` | [InfClosed.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-prod.md) | 152 | `result-track:b2bd6ebfd28385862487e429a39c7acbf274b7321a406525519600595858649b` |
| 32 | `lemma` | [infClosed_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-pi.md) | 155 | `result-track:c893b867e51cb314c4ed8461fb9794a0a3a932ce43b3c3dedcfe3960e2f95546` |
| 33 | `lemma` | [InfClosed.insert_upperBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-insert-upperbounds.md) | 159 | `result-track:2a8d604c00f1b4bc56b08fba052fc68618b192b99f9d7458e32c30fcd9d2b165` |
| 34 | `lemma` | [InfClosed.insert_lowerBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-insert-lowerbounds.md) | 165 | `result-track:5409c5195cc5fba382d2412bdb189ff16db9bbf69d6c9da1b7d7dfbbefbd2dac` |
| 35 | `lemma` | [InfClosed.finsetInf'_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-finsetinf-mem-source-edition-2.md) | 176 | `result-track:9fec8612e326bc29dcd5d25c3ac407c3d561da54a5178851dfc1032d311b7599` |
| 36 | `lemma` | [InfClosed.finsetInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-finsetinf-mem.md) | 180 | `result-track:522d2cd8352fb5d19dbfa024b60b31713d6688197aa4c559b3c9fb5d1afa02b0` |
| 37 | `structure` | [IsSublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice.md) | 197 | `declaration-track:781d227e4e10b6cb321a0683a6a67cc29ec182659b443a5ed300626c3d5d5e33` |
| 38 | `lemma` | [isSublattice_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-empty.md) | 201 | `result-track:0bb9d57d2a7d6ca80ba889cd37f8c4faf68c3c94d27d0678b529dad5460f52a6` |
| 39 | `lemma` | [isSublattice_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-singleton.md) | 202 | `result-track:c80db24374cbe543ea180c6e9a332a35d830890e83da7642709beb2bcbf5cb2a` |
| 40 | `lemma` | [isSublattice_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-univ.md) | 205 | `result-track:6ba3cbac7c77de67ba55e2fb9867dd7274dd0a8c8836e39f297aeff28474032f` |
| 41 | `lemma` | [IsSublattice.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-inter.md) | 208 | `result-track:9016050086504c56f88c6e8c9eda00f4c1a134a91fff4afe66bcd37d5debe1e9` |
| 42 | `lemma` | [isSublattice_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-sinter.md) | 211 | `result-track:37cf157327b3fcd1d0addf9d6842ed4d0bd27bfd8b2b7626d7fba68d038bc433` |
| 43 | `lemma` | [isSublattice_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-iinter.md) | 214 | `result-track:f7987041b677801416bc0aa60f9bf00f043c37baf0c19f9e3778a62ac5d88305` |
| 44 | `lemma` | [IsSublattice.preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-preimage.md) | 217 | `result-track:9e3758dc314aef193aadaa0215985dfc9a16726155c49e54fe1e589f27573c59` |
| 45 | `lemma` | [IsSublattice.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-image.md) | 221 | `result-track:c26e299a5f14e264065ab8cdbbea77af14229e4814240d51335997e1d1af9703` |
| 46 | `lemma` | [IsSublattice_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-range.md) | 224 | `result-track:9611b4b8a91710bcebc59c61e12a783d002dad1c42e786fba61b980ed54e65b6` |
| 47 | `lemma` | [IsSublattice.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-prod.md) | 228 | `result-track:9a0cc22808f361c563ef11327c79b1876f82be4de406eb3349bd0717885e4b1a` |
| 48 | `lemma` | [isSublattice_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-pi.md) | 231 | `result-track:c904a17f3c518a7d5a466145c3c7a899327cfc715c128f9229bbe95ee75e2219` |
| 49 | `lemma` | [supClosed_preimage_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-preimage-todual.md) | 235 | `result-track:371b54aba7d42f92a128b906f77be1db65029a6850d640ee5aa6b3291ff68732` |
| 50 | `lemma` | [infClosed_preimage_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-preimage-todual.md) | 238 | `result-track:d9ac87f7fab8b66c22f50f78fecfbe5cb4f51bb225d29db82dee5c45a56b1c33` |
| 51 | `lemma` | [supClosed_preimage_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-preimage-ofdual.md) | 241 | `result-track:835475640d6c75f0ebf925c05568f87a3551db6c7ab9dda600965b485e353c17` |
| 52 | `lemma` | [infClosed_preimage_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-preimage-ofdual.md) | 244 | `result-track:60b0d44341defc7bcd82f1d0f0ea8fa2d963c0883dc595608a1b59a684f8ae2b` |
| 53 | `lemma` | [isSublattice_preimage_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-preimage-todual.md) | 247 | `result-track:1e6b3a9423b813f5612497a281c6810be379f890d3c7077e7d96be0c30b4f154` |
| 54 | `lemma` | [isSublattice_preimage_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-preimage-ofdual.md) | 250 | `result-track:da99b94d0788d14dcba812236e5c450194c6444e43350afc4e9cc9924288bb81` |
| 55 | `lemma` | [LinearOrder.supClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/linearorder-supclosed.md) | 263 | `result-track:221f90c8dc315d3cd513b67dcb5af7530a21a1eaec25c508b36c1b9142662183` |
| 56 | `lemma` | [LinearOrder.infClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/linearorder-infclosed.md) | 266 | `result-track:57dab6c93a97826acf3c995160d387fb75aa2b12537b258ae7103f64f674b79a` |
| 57 | `lemma` | [LinearOrder.isSublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/linearorder-issublattice.md) | 269 | `result-track:7780597d7a5bf8539079d3610854036988f5feab536d46984b2d7057315ecd31` |
| 58 | `def` | [supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure.md) | 283 | `declaration-track:425806eba10ca75e580fd9a655c5b6d4fba6371866c74527406bde1c52bdeef3` |
| 59 | `lemma` | [subset_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/subset-supclosure.md) | 295 | `result-track:af91abc83bf3e6660b165d704a5e0b77d86796015a3cb9bf334e5ab319277bf9` |
| 60 | `lemma` | [supClosed_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-supclosure.md) | 297 | `result-track:0ca00199f931964ed1425f79ac4181704ee990d55d3472516efe469800482275` |
| 61 | `lemma` | [supClosure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-mono.md) | 299 | `result-track:7ecd6465e2d99ec06172d2350fc0a7a8232528752815b08ec6d2395cebd0e05d` |
| 62 | `lemma` | [supClosure_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-eq-self.md) | 301 | `result-track:1a718cebfddb8c67a44d62598f73c7827fa424fe252d138e40075f01fb86a3e1` |
| 63 | `lemma` | [supClosure_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-idem.md) | 305 | `result-track:e05afff8b10629c55a5bd71fcf8d7ece4b9d0004e965e68cbd8594db672ec46e` |
| 64 | `lemma` | [supClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-empty.md) | 308 | `result-track:33a3590c23b11d3e2719b5f897ffb9d480768f03f29a050da34c4ae0f6c92c93` |
| 65 | `lemma` | [supClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-singleton.md) | 309 | `result-track:909a067aa7a04f21cf3df7420e1c1647e5e1a7abd2a3593b550dceffc4593b82` |
| 66 | `lemma` | [supClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-univ.md) | 310 | `result-track:5de52ac8d2cb3fdea30723a7e43bb8242ec480c32d6b612a0dd9e582f4c39ca6` |
| 67 | `lemma` | [upperBounds_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/upperbounds-supclosure.md) | 312 | `result-track:f99af180a1e725a15dc6d903c27311586e4aaa4e60c5605f0d522470667b005a` |
| 68 | `lemma` | [isLUB_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/islub-supclosure.md) | 317 | `result-track:4a9cfe831ca060bd11abc2318b477a41ef75ac5698d918f9efcf275c242409fc` |
| 69 | `lemma` | [sup_mem_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/sup-mem-supclosure.md) | 319 | `result-track:15666cddcb3c98c0ca04f55891767f84bcd9a31bee96b53bcb6eff5aacc4dbdf` |
| 70 | `lemma` | [finsetSup'_mem_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/finsetsup-mem-supclosure.md) | 322 | `result-track:5f153c3dc4106f566d1317102c605b056104d28035a1eb6870f52df6af19ee56` |
| 71 | `lemma` | [supClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-min.md) | 326 | `result-track:b094b245d31c6d4af2226f3284a54a9f875b20b15936b72d79b7723ac4b63e18` |
| 72 | `lemma` | [Set.Finite.supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/set-finite-supclosure.md) | 329 | `result-track:9d3b31512f04aa21a18d262de7d2853201e6c0241029d6ee8657929a55ff59a4` |
| 73 | `lemma` | [supClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-prod.md) | 339 | `result-track:55df0b4edc88575e4d94b399b3aeab0c5b5ebe9402dff97e513999ca9c06765f` |
| 74 | `def` | [infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure.md) | 355 | `declaration-track:b6a86f6ce31f6e437b418ad503d73084d1be1f02283cf8a08d34bfae081bc737` |
| 75 | `lemma` | [subset_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/subset-infclosure.md) | 367 | `result-track:043a0b0ebf1ebecaac3427c7ddf0509e8d6885acfe74e2795e7b9f966931c375` |
| 76 | `lemma` | [infClosed_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-infclosure.md) | 369 | `result-track:98827f7556077a75b700ff01f48a0ce5085490a376fd52712566a636a4076193` |
| 77 | `lemma` | [infClosure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-mono.md) | 371 | `result-track:0db5743a333b123e63bd8fe9982cd5fb90ce72bfe373b0b337754b24ab17f436` |
| 78 | `lemma` | [infClosure_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-eq-self.md) | 373 | `result-track:20b702677aef1beb2102d182dd4036390b5b89fd26bd87d60fffa60b7512bfd4` |
| 79 | `lemma` | [infClosure_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-idem.md) | 377 | `result-track:d50ac1ff9c8b6998999f3781f2b45e198a51611b126dd9171ce75892e6417b79` |
| 80 | `lemma` | [infClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-empty.md) | 380 | `result-track:7110df80c6a781d69974e9680b5d6da2984952fda1c4cc8d66b340c637782aba` |
| 81 | `lemma` | [infClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-singleton.md) | 381 | `result-track:fd8aa7de44baba6786df75f80b864958ab1c423f236e377e16327c16fde7493f` |
| 82 | `lemma` | [infClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-univ.md) | 382 | `result-track:58842270c1baf5ff6cd6f9925e9fbcb0c0d6afbe8e89815d8e4d3b5ac4636925` |
| 83 | `lemma` | [lowerBounds_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/lowerbounds-infclosure.md) | 384 | `result-track:63829d676621c486806b46199b477e7bc54ab037cd4e0032de36b246ce8e3666` |
| 84 | `lemma` | [isGLB_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/isglb-infclosure.md) | 389 | `result-track:8ea8340a79e3fba07a0c15c762924026362763bf349667a01dca49b51ed5a3e8` |
| 85 | `lemma` | [inf_mem_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/inf-mem-infclosure.md) | 391 | `result-track:830647301666971125a8c5f2dbd3fd9e7bc4682ba59b1862c62c5f048ecdcc7c` |
| 86 | `lemma` | [finsetInf'_mem_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/finsetinf-mem-infclosure.md) | 394 | `result-track:128b4ba881b2c354f12de8f0e07aa2ed7832e7d0ee0b38780a82aee973444cbe` |
| 87 | `lemma` | [infClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-min.md) | 398 | `result-track:c9a9ac2dc6c5bd8c6bdd7a958676351e7c737b181b1e6f5f93b8c75e1324b389` |
| 88 | `lemma` | [Set.Finite.infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/set-finite-infclosure.md) | 401 | `result-track:09a9ed35db7e3ab878797abba98769e15500f4925ad9bbd12c6cbbc92110fe0a` |
| 89 | `lemma` | [infClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-prod.md) | 411 | `result-track:1302fef0c8c7b0a5480f9924c6700467745ead46a0ec1bbd78721ee3a264f2a4` |
| 90 | `def` | [latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure.md) | 427 | `declaration-track:a9689ae9fc285c49bac8759b982d881baf7537bdb529727294c5651f5998d492` |
| 91 | `lemma` | [subset_latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/subset-latticeclosure.md) | 430 | `result-track:683e4a592bbefc9b2a3a8d7705f221bdf4cea162ac841f552114107d02840a40` |
| 92 | `lemma` | [isSublattice_latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/issublattice-latticeclosure.md) | 432 | `result-track:580f61348382a5ccba200d91773c3b46d1eab0236319c1739f5aff06daa9a194` |
| 93 | `lemma` | [latticeClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure-min.md) | 435 | `result-track:d1ac045fe5f780a4255088d737af45d3baaaebecc5f0ef76f88097374c9e9775` |
| 94 | `lemma` | [latticeClosure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure-mono.md) | 438 | `result-track:534d6ec2f6ffd5844b8155710129b7864a49e54e619ce374f68635c81b55bc41` |
| 95 | `lemma` | [latticeClosure_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure-eq-self.md) | 440 | `result-track:c48496b702a7b3f450685e1884bca4914180281ce699cd0417de9a0d6d71acd7` |
| 96 | `lemma` | [latticeClosure_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure-idem.md) | 445 | `result-track:93b156c65e3f7b281ac5f8de8152e535258c2f1a66c73173026c399220c60281` |
| 97 | `lemma` | [latticeClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure-empty.md) | 448 | `result-track:387adfbfb14f1b11cbf6924354d12e04c56468c58d0cd8e35e08fff34843de1f` |
| 98 | `lemma` | [latticeClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure-singleton.md) | 449 | `result-track:da897735a9ba11151b5e37b0884d5a3ad218b2ad3e1ad20b86bd3e318d7771ef` |
| 99 | `lemma` | [latticeClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure-univ.md) | 450 | `result-track:b70c11a28c2b6c0eaeb3b0dc7fe0083cbb2c743c73ac902500f3fafa41d9a5bf` |
| 100 | `lemma` | [SupClosed.infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-infclosure.md) | 459 | `result-track:f96f665d7d3240c340a1d48766dbe2a7fc3223ced7349f445fb934378817554b` |
| 101 | `lemma` | [InfClosed.supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-supclosure.md) | 465 | `result-track:844a5f85b40835a722411c6f2b613d384e1f99c28852158466b045abea3ad3ab` |
| 102 | `lemma` | [supClosure_infClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosure-infclosure.md) | 471 | `result-track:013f09a143a8f791400c72e1ad4e7e4837e8fab65df6fbf0bcceaae8cbe2d8c7` |
| 103 | `lemma` | [infClosure_supClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosure-supclosure.md) | 476 | `result-track:55b9434ac25b76a7ebba75953a8771aa138caa947010fd6d0d368e043ef266e2` |
| 104 | `lemma` | [Set.Finite.latticeClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/set-finite-latticeclosure.md) | 481 | `result-track:32d3573e82fa8e23ad443bb51383f09029f50bfb794030383e37c9e1d9c7968a` |
| 105 | `lemma` | [latticeClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/latticeclosure-prod.md) | 484 | `result-track:d5350577d2dcc7556c29362c01bddf21d4dd8cbfa5b0f49b8afec3272f00ec34` |
| 106 | `def` | [SemilatticeSup.toCompleteSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/semilatticesup-tocompletesemilatticesup.md) | 492 | `declaration-track:312c6b463ac0904413edd47b080150c100237364e52d793ea08dad6459b38629` |
| 107 | `def` | [SemilatticeInf.toCompleteSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/semilatticeinf-tocompletesemilatticeinf.md) | 500 | `declaration-track:d0dee76d4bf125194a65d4253fd702ff1e44ca1bc6a8c7ec83fd3211b1c89de6` |
| 108 | `lemma` | [SupClosed.iSup_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-isup-mem-of-nonempty.md) | 510 | `result-track:9ab16f97c076892be01b18b47c1913ebc5b50a49d9f01d6ef4d440cdcd8ba730` |
| 109 | `lemma` | [InfClosed.iInf_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-iinf-mem-of-nonempty.md) | 516 | `result-track:ef28d09c5e096c0273af0916cffb41863bd94c7e4ab7d1b8a47d8d8aa9e64369` |
| 110 | `lemma` | [SupClosed.sSup_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-ssup-mem-of-nonempty.md) | 519 | `result-track:97d76e861af7a77d2bc5b3801f03b88bcbe406987d855eb82c020a7e42a377c0` |
| 111 | `lemma` | [InfClosed.sInf_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-sinf-mem-of-nonempty.md) | 526 | `result-track:4f68751d12c421332362183874460fc42b4695f1a6ffaab0a512b1849dba9099` |
| 112 | `lemma` | [SupClosed.biSup_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-bisup-mem-of-nonempty.md) | 533 | `result-track:cd434ad82be68c9bafe3792de2f5f49502a3f2d341c124dd973e8ce8a78273ca` |
| 113 | `lemma` | [InfClosed.biInf_mem_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-biinf-mem-of-nonempty.md) | 538 | `result-track:2c54d0e50d6e83d10c1a8c09491f1e13b6d01c79ee2ec60046fb63a0a7e9d44a` |
| 114 | `lemma` | [SupClosed.iSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-isup-mem.md) | 542 | `result-track:4f354fda514579bc2853a600851e4f94a7459ec5a9fd5ed6506f403bce6b666b` |
| 115 | `lemma` | [InfClosed.iInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-iinf-mem.md) | 548 | `result-track:67444288d3a1e2e5a77f1f49b0428fc529406505c2f51dc25d6e4fd5a0bc5eb4` |
| 116 | `lemma` | [SupClosed.sSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-ssup-mem.md) | 551 | `result-track:14c62c01ce88ee7b81bb053e62f951e8294944f2a3df384d545d827e677e46f4` |
| 117 | `lemma` | [InfClosed.sInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-sinf-mem.md) | 557 | `result-track:5c0c8a6396d1709d7b8fe7472c1a00342d0fb391f3e262d70844e959dcbda8ca` |
| 118 | `lemma` | [SupClosed.biSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/supclosed-bisup-mem.md) | 560 | `result-track:33ae3be1ca4823d74675e6164d5bcd6578c6a210d430c28a6c98ae0df6e9b226` |
| 119 | `lemma` | [InfClosed.biInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SupClosed.lean/declarations/infclosed-biinf-mem.md) | 565 | `result-track:4d2dd77007b1ef8c6fa92a14182111992564e3d9c3bb05474704e27b2a2a1691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a074773ab548a6bf7bdabb754ba4a55945060a9e8949d2039fb0ff5c2f8399f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
