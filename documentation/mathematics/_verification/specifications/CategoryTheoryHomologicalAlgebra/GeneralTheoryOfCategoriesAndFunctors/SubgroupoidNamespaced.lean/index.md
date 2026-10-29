# Verification target: Subgroupoid Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00059bd0799693d4371d6a71f34d18149602e51d",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00059bd0799693d4371d6a71f34d18149602e51d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid.VertexGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subgroupoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/subgroupoid.md) | 77 | `declaration-track:b80ac8758571fa87d9b6eb8afe0062a2f0541591e158f2b262f4bbd0b5d333c5` |
| 2 | `theorem` | [inv_mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/inv-mem-iff.md) | 87 | `result-track:a50e0aaefffeffc6c9df3edf6944f29cad873ea63148046b1431ba7cea9d00e1` |
| 3 | `theorem` | [mul_mem_cancel_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mul-mem-cancel-left.md) | 94 | `result-track:37f9694cbcae0424b8dec7e3945b8904200001e5c9d1ebfe41552973238dd93c` |
| 4 | `theorem` | [mul_mem_cancel_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mul-mem-cancel-right.md) | 103 | `result-track:1722ef9435cd40f23c7e41bec345ee9886e791dae1ef0c89b7a49c30b421b3cc` |
| 5 | `def` | [objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/objs.md) | 113 | `declaration-track:c01e983b48a24df2f986a8f080881c4a50df9617ef765ecb2bdd1eedca631e9d` |
| 6 | `theorem` | [mem_objs_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-objs-of-src.md) | 116 | `result-track:50b9fab42f4cc291fb43e6230d8e08f55a98f13c6874641e521755223703822c` |
| 7 | `theorem` | [mem_objs_of_tgt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-objs-of-tgt.md) | 119 | `result-track:7fea0e78fcae641b35290a36bf6e28ce58a0a9335cf387991fcb5df55b20ec8a` |
| 8 | `theorem` | [id_mem_of_nonempty_isotropy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/id-mem-of-nonempty-isotropy.md) | 122 | `result-track:cc5960bd913b47cb3d958ebc9018017fdae27c6e6cbc8ec9a6bbc70e22232734` |
| 9 | `theorem` | [id_mem_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/id-mem-of-src.md) | 127 | `result-track:9af266884926e0707caf69f720ba45766d4660dcd049cd5cfa899e2fdeae2f58` |
| 10 | `theorem` | [id_mem_of_tgt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/id-mem-of-tgt.md) | 130 | `result-track:4178072d69e54ee2e7f3f0b95941823e457c7596a88e643930f2137e20a6b51c` |
| 11 | `def` | [asWideQuiver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/aswidequiver.md) | 134 | `declaration-track:20040565a795e2c5553ea4ebb17e2cc2f2fedb434e6d49b321e4a8b87bca0e76` |
| 12 | `instance` | [coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/coe.md) | 139 | `declaration-track:983d1f87766136606aaeafa6ac3c91a09c64a42dd0741bff2ae8966ee2d7b405` |
| 13 | `theorem` | [coe_inv_coe'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/coe-inv-coe.md) | 146 | `result-track:656f6cd5bf130085ead19ca770d493aefc6c9753f9e7d8ef07f0cd0b4ebff5f2` |
| 14 | `def` | [hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/hom.md) | 151 | `declaration-track:2c58975c83a5f8229faf5cceaddd1bd8cf8c1fca29d2d028dca068e0632d48b5` |
| 15 | `theorem` | [hom.inj_on_objects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/hom-inj-on-objects.md) | 157 | `result-track:74609d9c92586915b58643af4961f0d16e67cf628715661e776aebb1255e057e` |
| 16 | `theorem` | [hom.faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/hom-faithful.md) | 161 | `result-track:4e83d898072c37911b790e98717133148ad51170fbc394d44d22b875afd1dd6b` |
| 17 | `def` | [vertexSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/vertexsubgroup.md) | 165 | `declaration-track:be614c2047d052f09f9585b1f904f044f4869e3ff62d52c1f0580b210b9cf179` |
| 18 | `def` | [toSet](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/toset.md) | 172 | `declaration-track:ab717a80baf7923856144430891339a2791f8560b5f726e1416c2b9d0d2e354e` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/instance-source-edition-7.md) | 175 | `declaration-track:f30a4871ee3b4b10098db4a7fd481e83557457e6577fc45e46ee038954a14401` |
| 20 | `theorem` | [mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-iff.md) | 179 | `result-track:4e43f5a4196f490c10ab7385eb6c0331d44493e4ad3df923bf1c6d330ec43684` |
| 21 | `theorem` | [le_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/le-iff.md) | 182 | `result-track:b3b0c5e81eba03783b622f782b67730cca0c670a33a4f2a6da60a119259c0539` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/instance-source-edition-3.md) | 185 | `declaration-track:876bdc2ebfc3f626b0474d8b8c6f787a8b2132c95d55840fba9aa6112178e401` |
| 23 | `theorem` | [mem_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-top.md) | 190 | `result-track:43947d44c617ae8fdd2e70f7fc1a6219f46fdfe73a69d87ddf03993e6f6763bf` |
| 24 | `theorem` | [mem_top_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-top-objs.md) | 193 | `result-track:df7ca42a32e933ec9a78203b61c676b5b1a942b7e72a2018ecbd78c02899985f` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/instance-source-edition-4.md) | 197 | `declaration-track:aa37acd5ee8af6928de2379b9d26d4fb1d36ee8a47f4921855bdc78a47390c08` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/instance-source-edition-5.md) | 202 | `declaration-track:bec58cb3c7a31fa7d1671d0dea745a9395705b7399053e6b2b9e41bd868ce4ea` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/instance.md) | 205 | `declaration-track:01fe618edc4b2a12775f6e845e68266d622c92684beb8c17803505a049e54815` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/instance-source-edition-6.md) | 211 | `declaration-track:cac3b26b27b0e8ef3d3b18af4bc7b9b0e97f3a5ddb1c3812868863268fd54e5c` |
| 29 | `theorem` | [mem_sInf_arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-sinf-arrows.md) | 219 | `result-track:5d2b3c667b4c1b668c6a361185831ec587dbbb5e47d31564a0f967154af88231` |
| 30 | `theorem` | [mem_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-sinf.md) | 223 | `result-track:d8c21bcf51b7ffea16fb7506540b033f1633bd26b989f46daba75928770f13fe` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/instance-source-edition-2.md) | 227 | `declaration-track:2d23ddb8f2537f84f7d780629f1a2bf871d225d5e0a9f4e6a98191c33ec08e5e` |
| 32 | `theorem` | [le_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/le-objs.md) | 240 | `result-track:ac788797ff36fd754201a84eecbddc4e19bc9a8a3ab813b289f2b3b3a16753a8` |
| 33 | `def` | [inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/inclusion.md) | 244 | `declaration-track:f711a2e4cea6e81332d84a51a8aa18d9275a4393b10340f54f584648966c5572` |
| 34 | `theorem` | [inclusion_inj_on_objects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/inclusion-inj-on-objects.md) | 250 | `result-track:31e7a15965591f032866d17196b15d232cfa8f011b1e54b858bdc6cc3d29211b` |
| 35 | `theorem` | [inclusion_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/inclusion-faithful.md) | 254 | `result-track:f8eaa73c5b56625ffc956d0aec5cf21ea31eab0361bea29671db2c4fcdbb4a04` |
| 36 | `theorem` | [inclusion_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/inclusion-refl.md) | 259 | `result-track:8117b4be5e9168f91f8f62f79b8763bc3e51c5da73b8f6b0d679f002e8d5cc40` |
| 37 | `theorem` | [inclusion_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/inclusion-trans.md) | 262 | `result-track:12596646b4a60d413fa2b1696210b89ef667f65196817de9dd2ebed81aa2d407` |
| 38 | `theorem` | [inclusion_comp_embedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/inclusion-comp-embedding.md) | 266 | `result-track:8f6537b34710f037d88c0faa0e2ffa083d93d7b1a81fa713711e1927b8b11e2f` |
| 39 | `inductive` | [Discrete.Arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/discrete-arrows.md) | 270 | `declaration-track:1b2df9c0e7ad340777b84e9883e538ad18bc110e35e6f289d750acfeb5a07b5b` |
| 40 | `def` | [discrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/discrete.md) | 274 | `declaration-track:e05d3b50e839fcab0c68bea6d53d6bf0008d2595858244442655c4733891e053` |
| 41 | `theorem` | [mem_discrete_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-discrete-iff.md) | 279 | `result-track:4dd4b36a5a7d8fb25a81970623755a70cc2012b8f01fb143508b192a58c3ad49` |
| 42 | `structure` | [IsWide](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/iswide.md) | 284 | `declaration-track:1c861aaae503ca815c78c6246758be020f14c4b7cdccda1f2f246f1b26d3d35d` |
| 43 | `theorem` | [isWide_iff_objs_eq_univ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/iswide-iff-objs-eq-univ.md) | 287 | `result-track:38fb827e53197cceea06c6d0e7bc1958cedee6eeebf877f3f5dc8670f741fe84` |
| 44 | `theorem` | [IsWide.id_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/iswide-id-mem.md) | 297 | `result-track:91399be8fcc0900899a9a4af0592e9fcae888c2d14e7ce8ee02ba78cc07956f5` |
| 45 | `theorem` | [IsWide.eqToHom_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/iswide-eqtohom-mem.md) | 300 | `result-track:6cfb8d9f89a26b07378fab1742b1cbaeb8f0c7a72691f3060f7c4aa8c017cc8a` |
| 46 | `structure` | [IsNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isnormal.md) | 304 | `declaration-track:3888498faeb799913dd8890bab8c80824c5951242e2cf967d316f6700368c512` |
| 47 | `theorem` | [IsNormal.conj'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isnormal-conj.md) | 307 | `result-track:30517d2235037d7c6f146d939ff4ee7b59c2dd3845895a33a2bd68e9f1235988` |
| 48 | `theorem` | [IsNormal.conjugation_bij](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isnormal-conjugation-bij.md) | 311 | `result-track:2fa4ce255392849fe30412aedcef9d41e21a137fc95d0f6f6ae288b922d77ceb` |
| 49 | `theorem` | [top_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/top-isnormal.md) | 320 | `result-track:6b5894dce7515002e9475a1df5f554152fdd2e63bf7d4bcd02daaa9eda8be5a3` |
| 50 | `theorem` | [sInf_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/sinf-isnormal.md) | 324 | `result-track:aa737ad414638e20c98ac6eaf163a7f61a379899495967d422265b719523febe` |
| 51 | `theorem` | [discrete_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/discrete-isnormal.md) | 328 | `result-track:a9b449b8dc22b9f2ef69287a464ae7e120d74bf6500d1b8db2954461ff84c21e` |
| 52 | `theorem` | [IsNormal.vertexSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isnormal-vertexsubgroup.md) | 334 | `result-track:02dcf9ba097ad222d02ce062d0dc33fb7b195eb46f5856b37084b32fe95a62b7` |
| 53 | `def` | [generated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/generated.md) | 344 | `declaration-track:4eb4029621eca2eacb2139fb4cb700a7368066e8577e7e89f463f29fe0245969` |
| 54 | `theorem` | [subset_generated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/subset-generated.md) | 347 | `result-track:e3d89873b5da97f248be2314a40447ccdf480a64d27c30b6a46e597f6d3270d9` |
| 55 | `def` | [generatedNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/generatednormal.md) | 353 | `declaration-track:b172c6b84f8e047ab77b4b9234bf708e6ebe541c8a1c17ae6d8d30c17f603936` |
| 56 | `theorem` | [generated_le_generatedNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/generated-le-generatednormal.md) | 356 | `result-track:9bde63fba49fa494a3bc9ff924e20468ef26f8a86cad24869aa41f730c8192db` |
| 57 | `theorem` | [generatedNormal_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/generatednormal-isnormal.md) | 360 | `result-track:c63e0e15f3bcffbbf2b40b33c8b58309c990424b3a3e1b370995ccfb102607cf` |
| 58 | `theorem` | [IsNormal.generatedNormal_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isnormal-generatednormal-le.md) | 363 | `result-track:706871f924614b00dfd7c545eae6148714fecaac89db1195512c577f0eecc112` |
| 59 | `def` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/comap.md) | 383 | `declaration-track:a10983855d044d98fa7bd2c00866cdf1a205367778085b2a72c3c4d3caee27b2` |
| 60 | `theorem` | [comap_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/comap-mono.md) | 391 | `result-track:b189925f84511c7aefd5358035d7ff1d2c1de6fc7080f953c37360d34b7ef375` |
| 61 | `theorem` | [isNormal_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isnormal-comap.md) | 394 | `result-track:84b0f6bf3bbb0fea0191072af77afb7528a5de4200f3bdb50f522165672349e3` |
| 62 | `theorem` | [comap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/comap-comp.md) | 401 | `result-track:87f1c8e0e7ff2e89b240b31337fec76a5ba8c3e7abe0834cdc3a4d6cdaa9db5a` |
| 63 | `def` | [ker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/ker.md) | 405 | `declaration-track:05578bb4deb6f8a305f39d5d27f55e6a04b2152a29484420548938800148e623` |
| 64 | `theorem` | [mem_ker_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-ker-iff.md) | 408 | `result-track:0d8bb8096c5677d2308b6e5267e2cb5b01c287e5e59c7f5e03f337d92c9adf86` |
| 65 | `theorem` | [ker_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/ker-isnormal.md) | 412 | `result-track:01208bfc505daa9ea03ad240ef931c9d9fbd5eed4d1ab2acb36cf98e165b3921` |
| 66 | `theorem` | [ker_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/ker-comp.md) | 416 | `result-track:c2694b2f914eb71813979a962106db68af61930f7b9d3bc5a7d0a693e84a57f8` |
| 67 | `inductive` | [Map.Arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/map-arrows.md) | 420 | `declaration-track:f2c11e32e5833385e73cfffaa1cec3fac7b7a681dbb5f8ac6885966ab762ef28` |
| 68 | `theorem` | [Map.arrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/map-arrows-iff.md) | 423 | `result-track:32eec147f960d19c037cf2490b2886c03df844f0f18580ba8191f0fd6520b65d` |
| 69 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/map.md) | 432 | `declaration-track:1f3923469d8d75c19650a053825d5242446ffb76eb8fa485e413d20267a9810e` |
| 70 | `theorem` | [mem_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-map-iff.md) | 444 | `result-track:4597c264433c7ac11587e2d4bdbd3c7ee55fb22120b91a6b1ade701cecab91fd` |
| 71 | `theorem` | [galoisConnection_map_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/galoisconnection-map-comap.md) | 450 | `result-track:97d15ed16055e40263551d7f4a05e93913329be40ba89ead557289981c0b7d7f` |
| 72 | `theorem` | [map_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/map-mono.md) | 457 | `result-track:45a68136ae3d8e436289e7ec1cce3fc8c60f8db6b6f432b00531f682a8bdcc5c` |
| 73 | `theorem` | [le_comap_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/le-comap-map.md) | 460 | `result-track:6bd4ddd95d13e817f924804a41eb9734f489d65c3f6dc1e6cbb68ee03be106d3` |
| 74 | `theorem` | [map_comap_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/map-comap-le.md) | 464 | `result-track:02bb6fca9f02fe93e4eafac907d07dc03bad0828f67ec666469a4e4ce54dcec7` |
| 75 | `theorem` | [map_le_iff_le_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/map-le-iff-le-comap.md) | 468 | `result-track:324f578a28339c57703397fbb507a1a17632d52d83ccb9dd2c63d2ccbe40a152` |
| 76 | `theorem` | [mem_map_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-map-objs-iff.md) | 472 | `result-track:193d80a20b6d141cc405e885fbcf4b88541ba3aa0aea5415bc2099d4e098c8f8` |
| 77 | `theorem` | [map_objs_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/map-objs-eq.md) | 484 | `result-track:271d6e0c3d573d461acea1dc92e3ce140f1922bb363c1985a68daeaee4b3ef6a` |
| 78 | `def` | [im](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/im.md) | 488 | `declaration-track:b052f77af63257afcb845861e9ee45763a9acb24c5ff9dd0d8c022e5103a4cf2` |
| 79 | `theorem` | [mem_im_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-im-iff.md) | 491 | `result-track:0da3e2ab5c83e3f9146793d3be64dc122320437df5350cd17f9cbeef4912fdfd` |
| 80 | `theorem` | [mem_im_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-im-objs-iff.md) | 497 | `result-track:d85ff6b402ec437e7ee637073a63b8ec98f5486b7f3278e6ffbce3ec60d92e3d` |
| 81 | `theorem` | [obj_surjective_of_im_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/obj-surjective-of-im-eq-top.md) | 501 | `result-track:671027f2ecbc6e7eea3c22b1350cda6547669a3f49a5f3cdbb2c7979b50a2b63` |
| 82 | `theorem` | [isNormal_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isnormal-map.md) | 507 | `result-track:eb1b9f8e5600edc4ee40e082ab7c818e3fafd58667e0d591cac3f32c6575f040` |
| 83 | `abbrev` | [IsThin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isthin.md) | 534 | `declaration-track:61cde9426ea9527ce22b958e8a05d7c6b0dfeb20958e02c6def0a24123f429c3` |
| 84 | `theorem` | [isThin_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/isthin-iff.md) | 537 | `result-track:3f405b7278da74c382348bdaa8561eb17ff04651bc4fced977fa23af1d608415` |
| 85 | `abbrev` | [IsTotallyDisconnected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/istotallydisconnected.md) | 544 | `declaration-track:8b584cacb62dc4c6570d8c552936152f4a2e8ad4c11eae86fdc155f5b020ec24` |
| 86 | `theorem` | [isTotallyDisconnected_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/istotallydisconnected-iff.md) | 547 | `result-track:b3b45021aed501d8034ce096365d01cbbb373128bea42d81d2b286c5a1b954fc` |
| 87 | `def` | [disconnect](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/disconnect.md) | 557 | `declaration-track:7ffacfb64d2a96983b3d604cdc9caa1f58c30bf39c317e5828adcd3af3852bdc` |
| 88 | `theorem` | [disconnect_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/disconnect-le.md) | 562 | `result-track:b488cf33a32da372335ddc0f306c604b505343789a77a29208254e0aadd25a3f` |
| 89 | `theorem` | [disconnect_normal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/disconnect-normal.md) | 564 | `result-track:14f21b6ecaa68123d95ad4093455b1e892ecb8ff32c2194ee8131a5372a9de2a` |
| 90 | `theorem` | [mem_disconnect_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-disconnect-objs-iff.md) | 569 | `result-track:8b29228c5cdf4668fb2d7ad952e95c67d3c71a50bda63995dfbde08768d67c71` |
| 91 | `theorem` | [disconnect_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/disconnect-objs.md) | 572 | `result-track:075adcc1f0f28b09a635dfe1deb21dfd2befb6537b18372544f78b46c956dbed` |
| 92 | `theorem` | [disconnect_isTotallyDisconnected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/disconnect-istotallydisconnected.md) | 574 | `result-track:5836eb3fa5243a24f4aedc177887f48d2a3e68e738f06d58de9fc4164e5bd745` |
| 93 | `def` | [full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/full.md) | 584 | `declaration-track:aca8e756d403ec9f2614e1495db67c069c0178b2a8c14826bbe73f6aba617150` |
| 94 | `theorem` | [full_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/full-objs.md) | 589 | `result-track:d5f346fe80ab94331502398c54fd5cd01f3476ba9cb1e964c477115604842de7` |
| 95 | `theorem` | [mem_full_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-full-iff.md) | 593 | `result-track:74c097ecb2919460b9006ee8055de86c00e3a9b0bc74ce02dd06c3e1002012ce` |
| 96 | `theorem` | [mem_full_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/mem-full-objs-iff.md) | 597 | `result-track:ba2391d19665826f9c0988807b08cecbf90c216af0fe5b96f29d1e92407a1954` |
| 97 | `theorem` | [full_empty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/full-empty.md) | 600 | `result-track:55f46caa0de3d4676ef14fbb185284feecaafb30cc17c0e0c6a21ca9a5020938` |
| 98 | `theorem` | [full_univ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/full-univ.md) | 605 | `result-track:3cf6335e8914ef5e74d3c7bcc253019ea8e59e8d0a606cc33b1000973f45fb07` |
| 99 | `theorem` | [full_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/full-mono.md) | 609 | `result-track:987502203de45c14272f0609a1452fa443718ca268908226506c929b763375e8` |
| 100 | `theorem` | [full_arrow_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespaced.lean/declarations/full-arrow-eq-iff.md) | 616 | `result-track:ad68e35045708cfb861c652b1a5a358a61a44d76f7b943aad4592ba9cccd36cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c8c2bdb8f370f4dec5be6c156633f2d0c94b9e011d357df97f9f7b9a5d25dcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
