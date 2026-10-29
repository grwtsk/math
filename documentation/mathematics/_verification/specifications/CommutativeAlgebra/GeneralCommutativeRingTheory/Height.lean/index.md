# Verification target: Height

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcd33cc9b8542f4a297a304e1fb55c2e4762f203",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcd33cc9b8542f4a297a304e1fb55c2e4762f203`.

Source path: `GRWTSK/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.SpanRank` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Noetherian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.MinimalPrime.Localization` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.primeHeight](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight.md) | 31 | `declaration-track:c1c81014f404b8a8380f39ca0a1cf8822b94d90c3711e38740dcebeb3e1e0c09` |
| 2 | `def` | [Ideal.height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height.md) | 35 | `declaration-track:5c6eb63086aff65545217062baccd4fc54f60195e1cdfd13089cd968da3412d2` |
| 3 | `lemma` | [Ideal.height_eq_primeHeight](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-eq-primeheight.md) | 39 | `result-track:40e01d41dd1669a8b8d7602d35de14019053f42c0c57a135d5f14bfe68841cd7` |
| 4 | `class` | [Ideal.FiniteHeight](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-finiteheight.md) | 47 | `declaration-track:2c263367972cf91cf60403e51c319eef17a9baa8fb0196c556a2a079b6a0751c` |
| 5 | `lemma` | [Ideal.finiteHeight_iff_lt](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-finiteheight-iff-lt.md) | 50 | `result-track:97eb9d7f731a30629f7c292c473da52f7944f9ac8127bd4b30a4ac2d32e8b548` |
| 6 | `lemma` | [Ideal.height_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-ne-top.md) | 54 | `result-track:73c1a44c8775a19bbf9960d6143e40540fc0ee9bba972380b51dbfb1c5a397f6` |
| 7 | `lemma` | [Ideal.height_lt_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-lt-top.md) | 58 | `result-track:c203c5baf60791af682f73237ed436629ff58e19bbf114a6c05d6210b184fb26` |
| 8 | `lemma` | [Ideal.primeHeight_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight-ne-top.md) | 62 | `result-track:80d82ea171a6a04005020b8fe70234ee4902c09657cce85e0fdd71482f1bb118` |
| 9 | `lemma` | [Ideal.primeHeight_lt_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight-lt-top.md) | 67 | `result-track:5db69432940e1053143352c3fe618fa64ccd09733a1338bfe4fc0efcbf420195` |
| 10 | `lemma` | [Ideal.primeHeight_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight-mono.md) | 73 | `result-track:bd62ed84d6391bebfb0848da990a4bf160a0ef04ce43004e537730b89021a30e` |
| 11 | `lemma` | [Ideal.primeHeight_add_one_le_of_lt](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight-add-one-le-of-lt.md) | 79 | `result-track:cc2c350bef9ed48b1208206b7e80a29756f13fbb6ea6e7b33d9bda26178e601e` |
| 12 | `theorem` | [Ideal.height_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-top.md) | 85 | `result-track:2d5ed2659564a6e0acb7c378561dfce68238798b7f169457390a0baff1953859` |
| 13 | `lemma` | [Ideal.primeHeight_strict_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight-strict-mono.md) | 89 | `result-track:baa7f4ad237cd60aacb097fee20bbdf8330b25c9a73f98222114e59197feec28` |
| 14 | `theorem` | [Ideal.height_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-mono.md) | 100 | `result-track:02b46528cba6f42bfc12b1cc50785d341834e6ddc2db6bbb646e02984caffbe8` |
| 15 | `lemma` | [Ideal.height_strict_mono_of_is_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-strict-mono-of-is-prime.md) | 109 | `result-track:1b8e2dda5402b61f69dc39c5e237ffddc9f112bab5b54b9c33e0a586d6813d9d` |
| 16 | `lemma` | [Ideal.primeHeight_le_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight-le-ringkrulldim.md) | 121 | `result-track:c92d972ab5ef5c6e5f0853f68747d01354a04f4f917728a9e0969b49f8dc4ac4` |
| 17 | `lemma` | [Ideal.height_le_ringKrullDim_of_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-le-ringkrulldim-of-ne-top.md) | 124 | `result-track:84a31b1ffbaa06d1b070822dc849bc8a6d3e2681ba1d88de4c23716cbae55359` |
| 18 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/instance.md) | 132 | `declaration-track:21e36c4e8054309d832e208cd2fa6e14f72a733e231d92457cfb0efe69c75c5a` |
| 19 | `lemma` | [Ideal.finiteHeight_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-finiteheight-of-le.md) | 141 | `result-track:59a7766871b5366c1c4f442784bd22110f53586e9bcbe12d67bdcca182c2ec32` |
| 20 | `lemma` | [Ideal.mem_minimalPrimes_of_height_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-mem-minimalprimes-of-height-eq.md) | 149 | `result-track:77b239754a3c5f1a0e425b41e15f14ac8e93713d63fa0df2da40577021d7e06f` |
| 21 | `lemma` | [Ideal.primeHeight_eq_zero_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight-eq-zero-iff.md) | 160 | `result-track:890a2a0edb98d082089d8ddb499b1dbf9ec577b5b5f5da1f2b2b1abce4c60898` |
| 22 | `theorem` | [Ideal.isMaximal_of_primeHeight_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-ismaximal-of-primeheight-eq-ringkrulldim.md) | 172 | `result-track:89eb8d32ef23dff9bc9b37b94042c3ffde49e69ea81acb6ccae03e4bbaa92a79` |
| 23 | `theorem` | [IsLocalRing.maximalIdeal_primeHeight_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/islocalring-maximalideal-primeheight-eq-ringkrulldim.md) | 187 | `result-track:0a04eacb6fbb547ed7205e6e15c0f8ea7edf7d8396b9d3c35b85a147c4e5c94e` |
| 24 | `theorem` | [IsLocalRing.maximalIdeal_height_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/islocalring-maximalideal-height-eq-ringkrulldim.md) | 194 | `result-track:3496b0776c5a281c6c0f3e8ae1b5381386c9eab6c09ef027cc6c022ae76c5ead` |
| 25 | `theorem` | [Ideal.primeHeight_eq_ringKrullDim_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-primeheight-eq-ringkrulldim-iff.md) | 200 | `result-track:f8dee4fcf18ad5dfe7817dcebc6e2fe987c4e428835ef6ac84572d74664f7578` |
| 26 | `lemma` | [Ideal.height_le_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-le-iff.md) | 208 | `result-track:fa069abc555a1f48cd67d4bb7bc704b2afc9a9c4643808b977fc3d6fde9542aa` |
| 27 | `lemma` | [Ideal.height_le_iff_covBy](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/ideal-height-le-iff-covby.md) | 216 | `result-track:2943276e98195916a76252a2c1ed692433b86e79d63e3c7447a242503059c534` |
| 28 | `theorem` | [IsLocalization.primeHeight_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/islocalization-primeheight-comap.md) | 229 | `result-track:9e2fef68e02f9200cdd0b6cdc4f3ad304fb11294686af230358847db43f187be` |
| 29 | `theorem` | [IsLocalization.height_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/islocalization-height-comap.md) | 246 | `result-track:12b2d72522165d34beceacfd09ef2d7c3d93aaf848b7345563cd834a59c8556c` |
| 30 | `theorem` | [IsLocalization.AtPrime.ringKrullDim_eq_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/islocalization-atprime-ringkrulldim-eq-height.md) | 252 | `result-track:811c458f20324aa8d4ca49edabfce971bb0093939a053aab852f445d366ac839` |
| 31 | `lemma` | [mem_minimalPrimes_of_primeHeight_eq_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/mem-minimalprimes-of-primeheight-eq-height.md) | 261 | `result-track:38283391fd29b664a46d7e178017654044e16e28551acedb604565d2427c3c66` |
| 32 | `lemma` | [exists_spanRank_le_and_le_height_of_le_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Height.lean/declarations/exists-spanrank-le-and-le-height-of-le-height.md) | 266 | `result-track:25231b0a57d5494c038b54da0d7b6666c34835230431a7dcb7b19711258606be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36261ddfac282b525f5dbc5d856dc1cf56cb13da665870c35b522a4d6b057f12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean","GRWTSK/_verification/specifications/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
