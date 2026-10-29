# Verification target: GCDMonoid Basic Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d4da1132cb4c4293d9b9a11b5c082de3e539316",
  "lexical_observation_count": 134,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d4da1132cb4c4293d9b9a11b5c082de3e539316`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormalizationMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalizationmonoid.md) | 73 | `declaration-track:8823fe0cda933f8b4b29c8cae2ec3b2d9bce837ca217e681e3fcb94422c9ed6f` |
| 2 | `theorem` | [normUnit_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normunit-one.md) | 93 | `result-track:b3f7da6dac8180fb893aa998c5b7446c21adca817eeb26a439f5cce7cbec25dc` |
| 3 | `def` | [normalize](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize.md) | 99 | `declaration-track:06e84b61701aeacd816de87ed6b1dd649f7be199744ce3300eec9ce019d69b28` |
| 4 | `theorem` | [associated_normalize](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/associated-normalize.md) | 111 | `result-track:b8cc1ec951342c5c10140843fbe08ff227add1d1f15ab8e30ae5d57b1a4c9f80` |
| 5 | `theorem` | [normalize_associated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-associated.md) | 115 | `result-track:9cd2215cd4cccf1ed3efb3938af4a7117015a926f9c9f572729648b62c4e5610` |
| 6 | `theorem` | [associated_normalize_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/associated-normalize-iff.md) | 119 | `result-track:52f447ebb29c37fecbd58dca3daf5e1f381e3249e8c990eee52539bfa7d0d63d` |
| 7 | `theorem` | [normalize_associated_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-associated-iff.md) | 123 | `result-track:220edb1126756f1c077c7d300c7e070cf4ea25b0e8c6ab5505095106e4983564` |
| 8 | `theorem` | [Associates.mk_normalize](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/associates-mk-normalize.md) | 127 | `result-track:1800abbfdef0799d13b01a4359e04ed4a9ea3c60bd7b903e5a368206090530ed` |
| 9 | `theorem` | [normalize_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-apply.md) | 132 | `result-track:a5bb0f81587adfb3744fe157e2a9cf680c48280aa6fa2bb060602e1a27c4e1c8` |
| 10 | `theorem` | [normalize_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-zero.md) | 138 | `result-track:e6477123d6a7ef08c023ee7aa7ece9358b15e49ffdab033dd22d3ba544e0ca48` |
| 11 | `theorem` | [normalize_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-one.md) | 144 | `result-track:8cc790eae3c464c2b13968caf7d1ee9f968084edf0b7d729350657c0c9c6dc8d` |
| 12 | `theorem` | [normalize_coe_units](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-coe-units.md) | 148 | `result-track:57501670d7b73ba1ea4cb9c2db7007a3e39df5c1a0c11a7d2e243c4975d35047` |
| 13 | `theorem` | [normalize_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-eq-zero.md) | 151 | `result-track:221ab9fd0142ceae2943fc0f02b3dbfa3a5b792aba3bb2fc58eb20df1296b1c2` |
| 14 | `theorem` | [normalize_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-eq-one-source-edition-2.md) | 156 | `result-track:f85241222edcbf22a633b07ef3fcf19bf7e802cefd89080d380f98d7efdd6b54` |
| 15 | `theorem` | [normUnit_mul_normUnit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normunit-mul-normunit.md) | 162 | `result-track:c9a03e0c01b4a480c9cc098bd2a0053fcf72f79690408afa0ea689cd5ccbd9e4` |
| 16 | `theorem` | [normalize_idem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-idem.md) | 169 | `result-track:d20405e6c09bd95301341115b365a480feccaf74b71f70bb690ea1a56b2f0071` |
| 17 | `theorem` | [normalize_eq_normalize](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-eq-normalize.md) | 172 | `result-track:a7414d4d4e16a98b76f72cbd00e1460c479d37b6bed82434dd296160d5eee5ff` |
| 18 | `theorem` | [normalize_eq_normalize_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-eq-normalize-iff.md) | 184 | `result-track:61ee5396b512ae135142f5314af6d9668d2f632ca2bd5d9b0252a4af6bab04d4` |
| 19 | `theorem` | [dvd_antisymm_of_normalize_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-antisymm-of-normalize-eq.md) | 189 | `result-track:b21cb8d1d7b476c8bffc13f616b16a1dced94712d37fb245dd3413febb540235` |
| 20 | `theorem` | [dvd_normalize_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-normalize-iff.md) | 195 | `result-track:36405a9e7201e93f5a5310b25efd51ae6af6d8d667a12b3aa58e27636d0be938` |
| 21 | `theorem` | [normalize_dvd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-dvd-iff.md) | 200 | `result-track:5c1032af2e40b92b690140d74507e1a38e5c345eb4778bb6ad968b4cb3569311` |
| 22 | `def` | [out](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/out.md) | 213 | `declaration-track:4b0d108f07b2c2a6712387740f1b0c9995946c87704442f49ffe4d5067177ce9` |
| 23 | `theorem` | [out_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/out-mk.md) | 219 | `result-track:613a4961268bfb72a8c29a1e5d0fd969bf1726c2bbc91a9cdbb93683c7efb7af` |
| 24 | `theorem` | [out_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/out-one.md) | 224 | `result-track:1c817b6e1c897a0bc1811a6900239bb8f2d0bc8bccad7f4b990462f9f3c4e168` |
| 25 | `theorem` | [out_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/out-mul.md) | 228 | `result-track:1046295de736dc62e66f79bc853376f96de5617241b375c1df93b4f7ffbad5ae` |
| 26 | `theorem` | [dvd_out_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-out-iff.md) | 233 | `result-track:cce091a62d233e44d7267a2c26b900874046d9b732ce5956ed10c99a4e7dc4bb` |
| 27 | `theorem` | [out_dvd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/out-dvd-iff.md) | 238 | `result-track:7d74f8ee4ec6fb6d2c361c04da330eb13cf418d49e70b94039bc8b3d4c27b5ad` |
| 28 | `theorem` | [out_top](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/out-top.md) | 244 | `result-track:72afb4b3996746bf991e7e7345d9e9ed4fa53642911dce76df08e4a2ee1ae866` |
| 29 | `theorem` | [normalize_out](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-out.md) | 250 | `result-track:41ec6bb718d81ab079e01d17c4c7b6ddfd624a4d4e0ac45bf371d3e00149cc98` |
| 30 | `theorem` | [mk_out](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/mk-out.md) | 256 | `result-track:c4446198538a6165387b7a4bd0145f3ee8cf2f0b6f9d6f2eef7dc0edb8a4b055` |
| 31 | `theorem` | [out_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/out-injective.md) | 260 | `result-track:88fba6e3dad4b0e234160109adeb18e396222f5b59f86baf24eff6d36cbd7ceb` |
| 32 | `class` | [GCDMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcdmonoid.md) | 272 | `declaration-track:1354c50edf45e5937f5bed91f5fd0bdfbc84e2f3e0f73dd44c91171a61bdcbcb` |
| 33 | `class` | [NormalizedGCDMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalizedgcdmonoid.md) | 297 | `declaration-track:f92f79a7553386e0939c25abf5835a796614ebbb98ae1b867df86863cde8c875` |
| 34 | `theorem` | [normalize_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-gcd.md) | 315 | `result-track:e490fecdbf8e7732bd6caf860b14bc2cde6a89555f7e70a082df9c2a10b8cd95` |
| 35 | `theorem` | [gcd_mul_lcm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-mul-lcm.md) | 320 | `result-track:65ddf4d22fd92c1471f3b292d83fdc4bbebb070f0ca9374057ea5a0e04a14628` |
| 36 | `theorem` | [dvd_gcd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-gcd-iff.md) | 326 | `result-track:cc286a2411d032c4ed1356ac99e3f6151a3ab5db3bbb043c20c6721571b10f03` |
| 37 | `theorem` | [gcd_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-comm-source-edition-2.md) | 331 | `result-track:dd504d4a93c90022d8ed4e441238f07b6d2f2b84db40a6f7bb738b731bcce981` |
| 38 | `theorem` | [gcd_comm'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-comm.md) | 337 | `result-track:c812e26641719ab951784c6c3d72862779e85a84eca0c905310818f4ac35a086` |
| 39 | `theorem` | [gcd_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-assoc-source-edition-2.md) | 342 | `result-track:ad7bf3976ae90222165195c30b3430a987123494b361ac18ff3f2ff4c505abc6` |
| 40 | `theorem` | [gcd_assoc'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-assoc.md) | 351 | `result-track:4b0e9ab24058863a104087c0b3a261c3212f55609d5acf02b227caecc4f16fac` |
| 41 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/instance-source-edition-2.md) | 360 | `declaration-track:23207a065bc34fa29dd300bb83d0f72bd9334487e4b4ee04327e7de745e1306a` |
| 42 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/instance-source-edition-6.md) | 363 | `declaration-track:d24e7668acb9ea3ec7253be25f7e3fa56bcb7d2366bf7a63110f376ccf94f7a4` |
| 43 | `theorem` | [gcd_eq_normalize](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-eq-normalize.md) | 366 | `result-track:5f2f37d9131ddeebfa9ca1e692195d0434a8e73b1c8fdba427c462459611da5f` |
| 44 | `theorem` | [gcd_zero_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-zero-left-source-edition-2.md) | 372 | `result-track:b968f06aabb5113b7b4c75c2853c662603d814d561598a0b95d5860c69cdd6e6` |
| 45 | `theorem` | [gcd_zero_left'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-zero-left.md) | 376 | `result-track:00deb5c0b5f14ed15769f4ed1417144f5f1a8e588c57c28c42ce751f59f38ddf` |
| 46 | `theorem` | [gcd_zero_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-zero-right.md) | 381 | `result-track:5cd61c6c1e408e0e0866ccda9f44e614bbe4daba9877dab820c9a5177a5f772b` |
| 47 | `theorem` | [gcd_zero_right'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-zero-right-source-edition-2.md) | 385 | `result-track:7445da9175444ef8532ed661d77e7e13cccd4f16fba895e8955a130f57ed92f4` |
| 48 | `theorem` | [gcd_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-eq-zero-iff.md) | 390 | `result-track:590af32ea8cbe9c46c852aa43cd58a041f3330974dcfd2a89a6c700cc4d93fbc` |
| 49 | `theorem` | [gcd_one_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-one-left-source-edition-2.md) | 403 | `result-track:fdd0590a4a2f7ead769434d7dded57644223050b303d41330f03ab196f4c0949` |
| 50 | `theorem` | [gcd_one_left'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-one-left.md) | 408 | `result-track:915e10668a1ff898a4aeab4ab432d7f11b9a4263581ef3cf9da9517373048a27` |
| 51 | `theorem` | [gcd_one_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-one-right-source-edition-2.md) | 413 | `result-track:e132605e5dc983ac03464abec80baa42fe5b1d7ec36c2f6b59d45af6ac8a5e7f` |
| 52 | `theorem` | [gcd_one_right'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-one-right.md) | 418 | `result-track:0ef5e07931fd1e80b44fa7f942cdde45c292fb8b6494531509b69e23aa8b9da5` |
| 53 | `theorem` | [gcd_dvd_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-dvd-gcd.md) | 422 | `result-track:ef96ca507e17a1b25ea78e2a28616164d8586d3d68ad2bfcc8a6cbfa9cf12c75` |
| 54 | `theorem` | [gcd_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-same.md) | 427 | `result-track:6166e54a9bea361a2eaef06cdca0ac7def15dad8e632d0e632e5121ce0739583` |
| 55 | `theorem` | [gcd_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-mul-left.md) | 432 | `result-track:d04838606e43b3c2bebde350531e51085ab72269eeeaf12d85394fb3421c6797` |
| 56 | `theorem` | [gcd_mul_left'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-mul-left-source-edition-2.md) | 446 | `result-track:f9e8f25e3015ad1cc4fa7e84652087cd470e2ab37c01194644577805c63c60ac` |
| 57 | `theorem` | [gcd_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-mul-right.md) | 461 | `result-track:55aa688828393904aea3d97d90753c16ecf52be9f462b2bf9a3d7f8f2972a204` |
| 58 | `theorem` | [gcd_mul_right'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-mul-right-source-edition-2.md) | 466 | `result-track:b1515ce0a81e93a889e1b85c92ce1f960f7501c980fd83d967e0527d95acbe3c` |
| 59 | `theorem` | [gcd_eq_left_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-eq-left-iff.md) | 470 | `result-track:b3a8676773c21aec5ff8cee51fac278fa976d4d544805afa9f529f0771ec50c2` |
| 60 | `theorem` | [gcd_eq_right_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-eq-right-iff.md) | 476 | `result-track:138eb6c5a2d88eba502487e5670784fb272121a5403618c52cc0e238f4c15d3f` |
| 61 | `theorem` | [gcd_dvd_gcd_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-dvd-gcd-mul-left.md) | 480 | `result-track:99a6d14be14c1afcdeefce340b5663aea7ae7d634d3c78b34533927db6369f8d` |
| 62 | `theorem` | [gcd_dvd_gcd_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-dvd-gcd-mul-right.md) | 484 | `result-track:98e659fcb7fa7b0e2e005adbcfcc952d846fae8bc7673d4fe2d65094bc21ba83` |
| 63 | `theorem` | [gcd_dvd_gcd_mul_left_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-dvd-gcd-mul-left-right.md) | 488 | `result-track:6a1034764ea66178b5b92250d18817e916c958ab3170b818ca79d83b6210d4a5` |
| 64 | `theorem` | [gcd_dvd_gcd_mul_right_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-dvd-gcd-mul-right-right.md) | 492 | `result-track:8f129ff0adb2a6cc9a2e4b50cc331601fceee859bc1b8b72168df1d6c304a1f6` |
| 65 | `theorem` | [Associated.gcd_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/associated-gcd-eq-left.md) | 496 | `result-track:750c0f95bc13e2447654c321aafcdf2b2e2654fd8abbb4f975deb383bff7b909` |
| 66 | `theorem` | [Associated.gcd_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/associated-gcd-eq-right.md) | 502 | `result-track:aa50754fbe8c61a9e490bd5a3c3bd207cd50421ecf47ca508ad1ad22268daf09` |
| 67 | `theorem` | [dvd_gcd_mul_of_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-gcd-mul-of-dvd-mul.md) | 508 | `result-track:6411bd24e4a8724c823024eef658234b14b29639d2d15435e2615a1dfb6321c5` |
| 68 | `theorem` | [dvd_mul_gcd_of_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-mul-gcd-of-dvd-mul.md) | 512 | `result-track:26f4f17b7ad9e6fec9909eeae23cfccfe1e434f82ae87c61c67c5f1f8a2268c2` |
| 69 | `theorem` | [exists_dvd_and_dvd_of_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/exists-dvd-and-dvd-of-dvd-mul.md) | 525 | `result-track:64ee0928acc25358bbca6e61c0606509df053debb10b5dc061ab238e519eb613` |
| 70 | `theorem` | [dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-mul.md) | 543 | `result-track:dfb36f55eb8e4702255edb8ee8f834311d1134ae2c7eeb56d640b36103d919dd` |
| 71 | `theorem` | [gcd_mul_dvd_mul_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-mul-dvd-mul-gcd.md) | 549 | `result-track:d305a2006c58ac3cfd7a0d273171bb2607674212259dd6ebb0eb75d0e252d892` |
| 72 | `theorem` | [gcd_pow_right_dvd_pow_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-pow-right-dvd-pow-gcd.md) | 561 | `result-track:00b4bd80825328296bc4349993d39afe52eb627bdd32af298dda0414f31527a8` |
| 73 | `theorem` | [gcd_pow_left_dvd_pow_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-pow-left-dvd-pow-gcd.md) | 578 | `result-track:85df52c2621981028851eb640f16901caa4db538d9ae32e3b49df221abf6ca11` |
| 74 | `theorem` | [pow_dvd_of_mul_eq_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/pow-dvd-of-mul-eq-pow.md) | 585 | `result-track:1cb12207ad764d43907e1b137bd1e8afef05e146a7886df5aa944fa2e8f8d207` |
| 75 | `theorem` | [exists_associated_pow_of_mul_eq_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/exists-associated-pow-of-mul-eq-pow.md) | 611 | `result-track:94a24d61513d77af406339e46211af389eb997b09f5a1e267b6649039b479a5a` |
| 76 | `theorem` | [exists_eq_pow_of_mul_eq_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/exists-eq-pow-of-mul-eq-pow.md) | 656 | `result-track:2a3ebb64b3a9cf2adebdfe1fab78a39c29d45161fe948eeebdaea9c3e0a229f4` |
| 77 | `theorem` | [gcd_greatest](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-greatest.md) | 662 | `result-track:07461793a1716038dc20fe2fbdb34db8464f8e0594d64197eabb9b166363500e` |
| 78 | `theorem` | [gcd_greatest_associated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-greatest-associated.md) | 669 | `result-track:06915e47a14fe58539bf96b6e53544d0cadc97b9355d7231562ba998d3beaf3a` |
| 79 | `theorem` | [isUnit_gcd_of_eq_mul_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/isunit-gcd-of-eq-mul-gcd.md) | 676 | `result-track:443cb4aea6ef72c7811f37c572171610176fe4533db87170fa2da0603267408f` |
| 80 | `theorem` | [extract_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/extract-gcd.md) | 685 | `result-track:0694be974df8f6f595367cd7e66e0bb7fe023ad3dce842218574a9190c9dcff3` |
| 81 | `theorem` | [lcm_dvd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-dvd-iff.md) | 700 | `result-track:2b5c21278fd662d82f78597ec14cf0d6576d8052f5abc2a451567274d3fb33a2` |
| 82 | `theorem` | [dvd_lcm_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-lcm-left.md) | 712 | `result-track:cf7adff029e219c9c843a0ea370149580f303abadea6f5b5cd821334d63a114b` |
| 83 | `theorem` | [dvd_lcm_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/dvd-lcm-right.md) | 716 | `result-track:ccb5f4da6d2b7f4301d9e9dfde8ef683df0d6c7cebaa251b90de7b41941ca78a` |
| 84 | `theorem` | [lcm_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-dvd.md) | 720 | `result-track:7a126da25816f77a0807613887c78d32080c11c1dab714b0d189a93d46e7a09c` |
| 85 | `theorem` | [lcm_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-eq-zero-iff.md) | 725 | `result-track:94660b51d92c2fda2f4910cc826fefa6887ccca9c414e2526b801d785ee4ee98` |
| 86 | `theorem` | [normalize_lcm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-lcm.md) | 735 | `result-track:dacdb40b2a4f50386b43172de5a097c3b8f1e131e9cb387969770f1774ff2b63` |
| 87 | `theorem` | [lcm_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-comm.md) | 740 | `result-track:762144da10ca6f429e993d4c402a9f05a8598f87d9cfc35c637a52686c13fa93` |
| 88 | `theorem` | [lcm_comm'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-comm-source-edition-2.md) | 746 | `result-track:8c905e80efbb46b1a4723d3eadeb7fb721f689eb946f21f0e2bce91ba7889a1b` |
| 89 | `theorem` | [lcm_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-assoc.md) | 751 | `result-track:25633e0935d7f2cdea1e8a2803356c0f12e61b248ce36a0c8a80bc18e4acc198` |
| 90 | `theorem` | [lcm_assoc'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-assoc-source-edition-2.md) | 759 | `result-track:ff571abe6527c874fb400845c59276cc28d6f6813b5a3f90be6f9db8b32915ea` |
| 91 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/instance-source-edition-3.md) | 767 | `declaration-track:61f326d7fd22610cb365881f32cf1e8e356c38ef32f0f0167f869531e56691ea` |
| 92 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/instance-source-edition-5.md) | 770 | `declaration-track:b75fdaa2f951e0cf22f67ea4033e3e415983f24967defe7ba833b4becfe6b587` |
| 93 | `theorem` | [lcm_eq_normalize](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-eq-normalize.md) | 773 | `result-track:594b5feda7378f70af1ab3e3b9b1d8c235737879ff5b763c0fe7a18cd6a6aa30` |
| 94 | `theorem` | [lcm_dvd_lcm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-dvd-lcm.md) | 778 | `result-track:ebc26290a563593f12e165e83147b4bbe9eeb731c3471933259321516b1dae59` |
| 95 | `theorem` | [lcm_units_coe_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-units-coe-left.md) | 783 | `result-track:50e45379bdd2f42ee957734afcc8108bf7fa38b88fa75e1ca92e37be70c7df6a` |
| 96 | `theorem` | [lcm_units_coe_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-units-coe-right.md) | 788 | `result-track:ece11c9d84df2e234bc41ec3560b5d6ef254efa2ce2cf4d64d3e7f25f6ca3952` |
| 97 | `theorem` | [lcm_one_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-one-left.md) | 793 | `result-track:1098f013e4e4c1bf0d7e10b501619bcb9fe675433464d3a070212a42dd40b752` |
| 98 | `theorem` | [lcm_one_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-one-right.md) | 798 | `result-track:07eda517bfadd4a3468ce449fed51fc4a06dce89a6d185d9e22dbf425584521b` |
| 99 | `theorem` | [lcm_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-same.md) | 803 | `result-track:342d15d73f04e478fa1aedef130064f81e1526aef5b984d8e0eb8bae945652e7` |
| 100 | `theorem` | [lcm_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-eq-one-iff.md) | 808 | `result-track:ae0589d3e567844dcd9db77d3ca0c245f89a50c9e065d8b0373bd45f31fb0c74` |
| 101 | `theorem` | [lcm_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-mul-left.md) | 815 | `result-track:4e71158f81ad29a778d416b7d8a4f8c1489a2f9d4e5cfc854488aabfdacf9c56` |
| 102 | `theorem` | [lcm_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-mul-right.md) | 831 | `result-track:a0ddff226d6ec5e673bd08eb992d2a7dc617dfe0ed98d4b4c3dbac28160e4479` |
| 103 | `theorem` | [lcm_eq_left_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-eq-left-iff.md) | 835 | `result-track:20545f76e3bd7d36794cc86b1b2a83473ef6ee7092a2fe3789d65587d43d895a` |
| 104 | `theorem` | [lcm_eq_right_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-eq-right-iff.md) | 841 | `result-track:818520c82f38a91afb2588af3d01a5ef22ce2621d42b1e28349c45db2008e420` |
| 105 | `theorem` | [lcm_dvd_lcm_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-dvd-lcm-mul-left.md) | 845 | `result-track:4910db6129768712e79fca362da3a6b81b30813b06ef3d113188130d5485a8d2` |
| 106 | `theorem` | [lcm_dvd_lcm_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-dvd-lcm-mul-right.md) | 849 | `result-track:ad54d22fd2efcad1520b2ad761d6a43b7870e848b9d0fd524446b41b1fd37777` |
| 107 | `theorem` | [lcm_dvd_lcm_mul_left_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-dvd-lcm-mul-left-right.md) | 853 | `result-track:dd4fd2e8e71d6ac41fa8b512e720a71d14fecb83d6a2a28406ffd57a79750298` |
| 108 | `theorem` | [lcm_dvd_lcm_mul_right_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-dvd-lcm-mul-right-right.md) | 857 | `result-track:a9fb62560bcfe3ce1b34f8c2a2bed025925cea7386f37ff4a3bb00101ef757f4` |
| 109 | `theorem` | [lcm_eq_of_associated_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-eq-of-associated-left.md) | 861 | `result-track:38066f22ef14f5d5548cdda9b18f168464f36b1ce68741b3cf0e4212da859f2a` |
| 110 | `theorem` | [lcm_eq_of_associated_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/lcm-eq-of-associated-right.md) | 867 | `result-track:f663a28dca13587f6b9351ed0dd84f77557efeba542d29a81f0cde9588e03c49` |
| 111 | `theorem` | [prime_of_irreducible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/prime-of-irreducible.md) | 877 | `result-track:5b72f225f37351664a5509bad355133ac4ffb89b182efcc88e999cccadf387b5` |
| 112 | `theorem` | [irreducible_iff_prime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/irreducible-iff-prime.md) | 892 | `result-track:b3d83aead7b729ad2fc31af75c00d6f73888cdf62622c2943a3f8595f21c2173` |
| 113 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/instance.md) | 905 | `declaration-track:1c026ee17b615b1106a5cd9d7c2c6df8a9cfe08f454c533b3fab3807f8bd388f` |
| 114 | `instance` | [uniqueNormalizationMonoidOfUniqueUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/uniquenormalizationmonoidofuniqueunits.md) | 912 | `declaration-track:ff34316db26c13f01b511cdb1f65ae9634c467b36821e5e12998396fa5bdf9a3` |
| 115 | `instance` | [subsingleton_gcdMonoid_of_unique_units](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/subsingleton-gcdmonoid-of-unique-units.md) | 917 | `declaration-track:662d4cf8ea9a8377e53133d274498a29898b1b0037485a819d9c1efcbcf46f6c` |
| 116 | `instance` | [subsingleton_normalizedGCDMonoid_of_unique_units](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/subsingleton-normalizedgcdmonoid-of-unique-units.md) | 937 | `declaration-track:a32a268693adc844f5f5230c6a8d4dd10949931185519f43a25d075993495893` |
| 117 | `theorem` | [normUnit_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normunit-eq-one.md) | 950 | `result-track:114d5af462270709da5b7ae083dde53f65dd6f64df68b2d553df0742591d7f6f` |
| 118 | `theorem` | [normalize_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-eq.md) | 956 | `result-track:1c82064d5a755f1c91efb22631b66963588e23b11248622dbf9f90bd6a7bda09` |
| 119 | `def` | [associatesEquivOfUniqueUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/associatesequivofuniqueunits.md) | 962 | `declaration-track:21bc41e64f493ed0514cc71f4c9355be3647533a5354dfa5ab2e4eadcdffe4f9` |
| 120 | `theorem` | [gcd_eq_of_dvd_sub_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-eq-of-dvd-sub-right.md) | 978 | `result-track:860696610504700b4db572d8c4aa4439591329d74256bd7c245385378003b451` |
| 121 | `theorem` | [gcd_eq_of_dvd_sub_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcd-eq-of-dvd-sub-left.md) | 994 | `result-track:6c04e959b0910c4a74f020d9c9e63ee75112c6731b17f792d02b88204989134e` |
| 122 | `theorem` | [map_mk_unit_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/map-mk-unit-aux.md) | 1006 | `result-track:7a16079997e99208bf328144db08481365cbf480d7624e5951807448d2c2e26c` |
| 123 | `def` | [normalizationMonoidOfMonoidHomRightInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalizationmonoidofmonoidhomrightinverse.md) | 1012 | `declaration-track:219a00c7c34ad477c7b5050ee8626f1419580de47d552d6f670f468e6aedc076` |
| 124 | `def` | [gcdMonoidOfGCD](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcdmonoidofgcd.md) | 1041 | `declaration-track:17a6271d97cf746c39795b3d9f77da00ba293782252b11c96de25bbd461d2371` |
| 125 | `def` | [normalizedGCDMonoidOfGCD](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalizedgcdmonoidofgcd.md) | 1072 | `declaration-track:49861361cc5b27c6219813ad745fd32127c15f7cb84de849710538e8675558cc` |
| 126 | `def` | [gcdMonoidOfLCM](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcdmonoidoflcm.md) | 1137 | `declaration-track:3cb6188007f06f49b7667559cea85d409cd6aea9b68dafff912b9ae70c1aa841` |
| 127 | `def` | [normalizedGCDMonoidOfLCM](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalizedgcdmonoidoflcm.md) | 1211 | `declaration-track:b5350b8a7f2503b52d3a3975fdcd00c5131e5ac964a6e02e1359455cdacf413f` |
| 128 | `def` | [gcdMonoidOfExistsGCD](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcdmonoidofexistsgcd.md) | 1307 | `declaration-track:2b58e616ce182f957a9ecda963924f1b9094c6e488cea22d960228a48f09f2f4` |
| 129 | `def` | [normalizedGCDMonoidOfExistsGCD](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalizedgcdmonoidofexistsgcd.md) | 1316 | `declaration-track:7dd5d5776a0c18dbe0cce4482489c03de69f32e23fdfe2884fab45b2d61a0d3e` |
| 130 | `def` | [gcdMonoidOfExistsLCM](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/gcdmonoidofexistslcm.md) | 1328 | `declaration-track:bc9f0ba60fc68c1b176f45d2bc66dc875f95cffbd15197e5a3c9d054d3d9cf29` |
| 131 | `def` | [normalizedGCDMonoidOfExistsLCM](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalizedgcdmonoidofexistslcm.md) | 1337 | `declaration-track:c5076d6e95cdd57a95818ab42bef1cadcd0cd5141cdedc16b35f6ed863e3f435` |
| 132 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/instance-source-edition-4.md) | 1356 | `declaration-track:b725091952165b02ad38a53886cef4528674b059a9903aef014a6387e5f45f87` |
| 133 | `theorem` | [coe_normUnit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/coe-normunit.md) | 1416 | `result-track:b13ed228e382c913109e9ccefa8e59211b69f550a2c958a3d8bf54284990f7fb` |
| 134 | `theorem` | [normalize_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/declarations/normalize-eq-one.md) | 1419 | `result-track:ad095274647e4486b735b471d8399aa30f4afb01b109e14c29c44af189bc217f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be2ef719856adc3d132e0dbe7975a743035f0140bad42373dc91241e7b9f7283 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
