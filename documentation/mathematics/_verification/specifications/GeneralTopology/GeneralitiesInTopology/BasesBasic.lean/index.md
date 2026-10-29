# Verification target: Bases Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a261adf6cd4733fa46374c8cf978fc2af123d36",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant36f4b9410c07e0ba6ea9cf97fe17ebb3c340f144a6eaf2083848944989e6a61e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a261adf6cd4733fa46374c8cf978fc2af123d36`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant36f4b9410c07e0ba6ea9cf97fe17ebb3c340f144a6eaf2083848944989e6a61e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant36f4b9410c07e0ba6ea9cf97fe17ebb3c340f144a6eaf2083848944989e6a61e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Sigma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filterbasis.md) | 80 | `declaration-track:1ab5a697f6b973d46a5dae59a27033061dde98bf54775df865f610e423ab5eab` |
| 2 | `instance` | [FilterBasis.nonempty_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filterbasis-nonempty-sets.md) | 88 | `declaration-track:f677413b1723e66753e49c9b3e010d94a33031489f928e0a53d53a516b9ea9aa` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:f2866e93667ca4e95a83a498dc92dce546f63d382a4e9ba681b36b84df4bd382` |
| 4 | `theorem` | [FilterBasis.mem_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filterbasis-mem-sets.md) | 96 | `result-track:45e1bde78eeb47078d460a928d1ac4b05e5b2df70f36ed3550a0dde483ab6c99` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/instance.md) | 99 | `declaration-track:dbd63729ed636174003d9417a8507fabdfa28cca2f52a5c8e2133c5ca2685f33` |
| 6 | `def` | [Filter.asBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filter-asbasis.md) | 107 | `declaration-track:3a7fce2db000824104691db984f66d6aa041c5910dd25d0b1af6a57ac5e5847c` |
| 7 | `structure` | [Filter.IsBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filter-isbasis.md) | 112 | `declaration-track:22daea796b9ac1912ff78328eb1d35af3542328055d3c7051f768df49b655952` |
| 8 | `def` | [filterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filterbasis-source-edition-2.md) | 123 | `declaration-track:cbd98ead5a9a39fd897b5e175e9ba49eb18d994ab218ea09d4ae447621bce597` |
| 9 | `theorem` | [mem_filterBasis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/mem-filterbasis-iff.md) | 135 | `result-track:a68bdb023e6503611e3f1ec1323d02719b72e9a81940bb137c92032976fd2201` |
| 10 | `def` | [filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filter.md) | 145 | `declaration-track:45830d5947b45c972ada2fa3ef9b04c7c10ad8fee23f302f0642744ec6d1d0f8` |
| 11 | `theorem` | [mem_filter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/mem-filter-iff-source-edition-2.md) | 153 | `result-track:f9ddfd1c645c35101bc5d3ddb93dd0a62e9d951dff699099ccfa820a92a9d6b4` |
| 12 | `theorem` | [mem_filter_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/mem-filter-of-mem.md) | 156 | `result-track:3c6a43f581e111c5267a636a28b6d3a48f4cc612b780421e1752e52f55fbf80f` |
| 13 | `theorem` | [eq_iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/eq-iinf-principal.md) | 159 | `result-track:32ed1cd7d233b3c4c7df4201200dfea551784b74270a7383b3affac93ad6620c` |
| 14 | `theorem` | [generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/generate.md) | 169 | `result-track:a0cfafc1cc9cf231881330225d156c634d3295d6873c95f375757e503fdf51dc` |
| 15 | `def` | [filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filter-source-edition-2.md) | 186 | `declaration-track:e46dbdc1181f5a712fa66778bc317d398ff756f571faa26ac926f29d95cc75fe` |
| 16 | `theorem` | [mem_filter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/mem-filter-iff.md) | 189 | `result-track:1ccb16ed760e13dd3cc8afced057cf03a243c205cc1499e3ad58c8c471761c53` |
| 17 | `theorem` | [filter_eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/filter-eq-generate.md) | 194 | `result-track:f707d1cc56c80d4c925d13c272c3cf80ed7b611d7a3c4bf0b2d68259fcab94a1` |
| 18 | `structure` | [HasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis.md) | 202 | `declaration-track:a7d6cec895dd53e5e4fbd2b766bc0d7bade20ee488c9a6d67e3b99d407fcc04f` |
| 19 | `theorem` | [HasBasis.mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-mem-iff.md) | 212 | `result-track:cce6ac9ed4072ae93f4e4b6c1bd53fab9020be4a207f497583a428790d686530` |
| 20 | `theorem` | [HasBasis.eq_of_same_basis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-eq-of-same-basis.md) | 215 | `result-track:984be5f0243bf4a6e5ace82779a5c036ae28542073e36d6a82646fd51a7c1bfe` |
| 21 | `theorem` | [hasBasis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-iff.md) | 219 | `result-track:5de51c838b9ad748d1f2be61dee620f7e52e24909e22a3dfbfe7cc659aa5d4ec` |
| 22 | `theorem` | [HasBasis.ex_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-ex-mem.md) | 222 | `result-track:d256c37b22796f5b229785586395b16e6087167e6dfc7aad91ec0f7149492380` |
| 23 | `theorem` | [HasBasis.nonempty](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-nonempty.md) | 225 | `result-track:988255cb901a44cbc15b7d963d448848f602f6d2e52abc00b6d185c964a26435` |
| 24 | `theorem` | [IsBasis.hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/isbasis-hasbasis.md) | 228 | `result-track:504724d50db3eb4fece7885531cf3124b0c7d500cb833586f76c7ce298f23a0e` |
| 25 | `theorem` | [HasBasis.mem_of_superset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-mem-of-superset.md) | 231 | `result-track:28af41d8599149f48e22c625d349a7829d7b5168387939aef1f0a829546a50a8` |
| 26 | `theorem` | [HasBasis.mem_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-mem-of-mem.md) | 235 | `result-track:a0263706102cc43fd925f737a1c489e873090bc396fed0e6654d3ec5b474d52d` |
| 27 | `def` | [HasBasis.index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-index.md) | 239 | `declaration-track:b6a8e86828b09a724e55c9b8ea01c3b025990ab132475c78b37125361b99f674` |
| 28 | `theorem` | [HasBasis.property_index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-property-index.md) | 242 | `result-track:8778702516487aad204cae9f9c00ce84dce2b61825ac14e2ea51539f782b3892` |
| 29 | `theorem` | [HasBasis.set_index_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-set-index-mem.md) | 245 | `result-track:490d0a0de5ebeaf701b8638dd46fe1ba6fa8f35c40217b9faf6578bce99615a7` |
| 30 | `theorem` | [HasBasis.set_index_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-set-index-subset.md) | 248 | `result-track:dd190c9151c530a06eb40b6db57bce464be5a40804ee2686973a12152d49a460` |
| 31 | `theorem` | [HasBasis.isBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-isbasis.md) | 251 | `result-track:fac42650553dd6c43dd1987dac04a807ee238d9f3de464408d55691ffaa88738` |
| 32 | `theorem` | [HasBasis.filter_eq](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-filter-eq.md) | 256 | `result-track:c1399c8a20638b84fdbe2a6d5ad107555bbc1b1802dcf36ea79acddb8b9d9981` |
| 33 | `theorem` | [HasBasis.eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-eq-generate.md) | 260 | `result-track:d082823407d761cd9dda0f9374b4a80b137f15c85064caaabcfbf29ef8be529a` |
| 34 | `theorem` | [_root_.FilterBasis.hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/root-filterbasis-hasbasis.md) | 263 | `result-track:19edffaabee49afb18b162d1555a70c5b7c7d570b1e420e1e9fb2519916da9fc` |
| 35 | `theorem` | [HasBasis.to_hasBasis'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-to-hasbasis.md) | 267 | `result-track:418958f4ce3462d9b605be9ebf306eafa5232d7b54ffce67c08e8f56242aa499` |
| 36 | `theorem` | [HasBasis.to_hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-to-hasbasis-source-edition-2.md) | 274 | `result-track:68c963a6bf465fc6c30e50cc57c0f4a3e0072add6b07564007fe80a5df734726` |
| 37 | `lemma` | [HasBasis.congr](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-congr.md) | 280 | `result-track:bc40ff92185d2ab6fedb0857e68185d6ff4828826e07de466062e4059431f030` |
| 38 | `theorem` | [HasBasis.to_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-to-subset.md) | 285 | `result-track:5cf693cf820615130632fee703c6eebf2a57764b9aa912e5a2ec7ae1cb80d9a9` |
| 39 | `theorem` | [HasBasis.eventually_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-eventually-iff.md) | 289 | `result-track:394b9034c3f0fd1c621e2a793c64bedd40ff5bc7d078663c26b6883c58ee3202` |
| 40 | `theorem` | [HasBasis.frequently_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-frequently-iff.md) | 292 | `result-track:3a2fb0afa831b46672700abe5e7fd016213e072b27dae21efefa90e1dbc32356` |
| 41 | `theorem` | [HasBasis.exists_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-exists-iff.md) | 296 | `result-track:d92fc5e645f00d84834cdd8373c1d8988786b96b582456bcc3f92394cb525734` |
| 42 | `theorem` | [HasBasis.forall_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-forall-iff.md) | 303 | `result-track:18b22a903566b5071467a83d070a7fc664ef343e74d51bfc45cc769a5bac298f` |
| 43 | `theorem` | [HasBasis.neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-nebot-iff.md) | 309 | `result-track:f810f1640bf662d0199bc869bb25512171ed5fdac5594a44c55c1b7ef529635e` |
| 44 | `theorem` | [HasBasis.eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-eq-bot-iff.md) | 313 | `result-track:ec90dc745443a59c96e97793ba59c04f49a3df2199e1faae8bc94d1577c12845` |
| 45 | `theorem` | [basis_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/basis-sets.md) | 317 | `result-track:9aa30a34d34dcc2435262a99fbf6d093e399e42ea84c67c329443f9e4bcaf1d2` |
| 46 | `theorem` | [asBasis_filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/asbasis-filter.md) | 320 | `result-track:890c165727117c4d4fb642d7c4dcefe477a70f3b51704206d28e64d33f3a867d` |
| 47 | `theorem` | [hasBasis_self](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-self.md) | 323 | `result-track:e30fbae66567c4228ef7e8b46192264c3c97a8c71bdd9c46d783295ac510b2d2` |
| 48 | `theorem` | [HasBasis.comp_surjective](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-comp-surjective.md) | 329 | `result-track:488c764cd16e6672407967a19ac879036fa2f8a11d54b610590ab8f908477c11` |
| 49 | `theorem` | [HasBasis.comp_equiv](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-comp-equiv.md) | 333 | `result-track:cb156e5388220c1d5b5219f0f3a7056e1e63d1ab80cf01d9a899748a861d2e7d` |
| 50 | `theorem` | [HasBasis.to_image_id'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-to-image-id-source-edition-2.md) | 336 | `result-track:ec0f5d81640e6bd19984a10fceebf9e35930436edfa64d4cfda56c1fbdc09837` |
| 51 | `theorem` | [HasBasis.to_image_id](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-to-image-id.md) | 339 | `result-track:ceb5a73c1dabf8ba8cc3c319d9e062de29e1314abf64bd3ad6af30a7c289b3da` |
| 52 | `theorem` | [HasBasis.restrict](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-restrict.md) | 345 | `result-track:038edfb812389924a4de9ed625a62e3236f23c52a9e4376434e0a62da7a5a7ae` |
| 53 | `theorem` | [HasBasis.restrict_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-restrict-subset.md) | 354 | `result-track:1a50368d58856e6802cf9583947e28096fa71c704ce2c1df764b7f9b906ca30d` |
| 54 | `theorem` | [HasBasis.hasBasis_self_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-hasbasis-self-subset.md) | 359 | `result-track:37ca053d87b3d6f32a591a8fe44d1555a55bbcffb6267fb37817abeee13d8132` |
| 55 | `theorem` | [HasBasis.ge_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-ge-iff.md) | 363 | `result-track:8f2ac19b71ab869cb50025e35cd599c04311e56327fbdb68b1ae018a44bedafd` |
| 56 | `theorem` | [HasBasis.le_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-le-iff.md) | 368 | `result-track:18419417595caf2636cbb00b4e39d7b81c30bad2a8f0e5b6bbb8241d57c91330` |
| 57 | `theorem` | [HasBasis.le_basis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-le-basis-iff.md) | 371 | `result-track:59883083ea39a5155fe7a90b3e578342902eaf9b050a6895be9dc0234d076aa7` |
| 58 | `theorem` | [HasBasis.ext](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-ext.md) | 375 | `result-track:13237d2071af80335bc76dc9f03eb776428dc8a2373908faedccd906653e24ef` |
| 59 | `theorem` | [HasBasis.inf'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-inf.md) | 384 | `result-track:0736492535d9f947a682b9402bc8853a5aaaabf71a0f94a7b9ea29e653fae6ee` |
| 60 | `theorem` | [HasBasis.inf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-inf-source-edition-2.md) | 395 | `result-track:24198b3a957dd5e78cd8d4a453048721d28cca91479c650908c223a97455899e` |
| 61 | `theorem` | [hasBasis_iInf_of_directed'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-iinf-of-directed.md) | 400 | `result-track:807e35ac94a4e590042a568a3c7d90eef6ac7d25a21e01dd46fa533524ec5407` |
| 62 | `theorem` | [hasBasis_iInf_of_directed](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-iinf-of-directed-source-edition-2.md) | 408 | `result-track:a0aaa3b5a60ff5fe6a3459c72ab6f24c8dd26f3e83f99d87bf135455850e47b0` |
| 63 | `theorem` | [hasBasis_biInf_of_directed'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-biinf-of-directed-source-edition-2.md) | 416 | `result-track:a56f53a10b32a85a1f9ffaaa7acf8a11de600b848aaf694ca143655067ab7ff9` |
| 64 | `theorem` | [hasBasis_biInf_of_directed](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-biinf-of-directed.md) | 430 | `result-track:83bdfbcff9c5ce3482f39797a240f875f44dfe216c130c9b2827db30d710cb07` |
| 65 | `theorem` | [hasBasis_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-principal.md) | 444 | `result-track:8f5bdc405274414dfd0c28e2067269d2571eb7240a24957588dae1bf711de3c8` |
| 66 | `theorem` | [hasBasis_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-pure.md) | 447 | `result-track:3f2ab0bda1d4a4d019b2137d135a6bbf11d948b2fd847d24a11185149d5977d9` |
| 67 | `theorem` | [HasBasis.sup'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-sup-source-edition-2.md) | 451 | `result-track:68f13385fd6b90b6c174097e7a51a88decaa878e257d68ce24d81dfe3b720138` |
| 68 | `theorem` | [HasBasis.sup](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-sup.md) | 459 | `result-track:1e9e16c59b10d0aed5e157839b5f652f14202bbace235432fd42c954d35e1eff` |
| 69 | `theorem` | [hasBasis_iSup](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-isup.md) | 464 | `result-track:75aaa11849c9e68afbf5cb8bb61ffae968d003a4bb5394dea386dc22c23ce002` |
| 70 | `theorem` | [HasBasis.sup_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-sup-principal.md) | 471 | `result-track:cfd502888100502d58048e5c3b20b5d4afe2e52f5d6bff00d5bb7711712b2aac` |
| 71 | `theorem` | [HasBasis.sup_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-sup-pure.md) | 477 | `result-track:0d3d9d6303865290049e02090f7f653c589e69ebc8a2a87b53884008732ce281` |
| 72 | `theorem` | [HasBasis.inf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-inf-principal.md) | 481 | `result-track:698f970f6b62abed61491ada530857dea5a779d74f10849a5e0eb974d29a1c22` |
| 73 | `theorem` | [HasBasis.principal_inf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-principal-inf.md) | 486 | `result-track:a7d42cf627f3762b80ae9d6355b753a96655a01e72c9f43d61b2166e02f8517e` |
| 74 | `theorem` | [HasBasis.inf_basis_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-inf-basis-nebot-iff.md) | 490 | `result-track:e4df87058c83d0049bcfa464eb2b739e136186ac78d971e9a5e7e7ab5b6a40f4` |
| 75 | `theorem` | [HasBasis.inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-inf-nebot-iff.md) | 494 | `result-track:ece18f5e7f372de836ea5c4c6dd79704fc1c1bf2643cf5a9074ef61a518f34fc` |
| 76 | `theorem` | [HasBasis.inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-inf-principal-nebot-iff.md) | 498 | `result-track:a876eef1000d66bb615368c406253c85421f53069a4df0c45c860c46ed4ebb06` |
| 77 | `theorem` | [HasBasis.disjoint_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-disjoint-iff.md) | 502 | `result-track:4326aa2cfade53b189c0637410740ca7002d581da695a90958e60c24877aff87` |
| 78 | `theorem` | [_root_.Disjoint.exists_mem_filter_basis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/root-disjoint-exists-mem-filter-basis.md) | 507 | `result-track:6b69c22830b5fefb075af2edf47355cb845377635bd8443e58d3d280ce6a5df2` |
| 79 | `theorem` | [inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/inf-nebot-iff.md) | 511 | `result-track:c8bd68ad4893d2518e995c8f949c342c7fd47fceef29ce4863ee96c4c1955d32` |
| 80 | `theorem` | [inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/inf-principal-nebot-iff.md) | 515 | `result-track:d57dfb62453d48ca01cd5d314057d01719ddd4178c4f4c71a100c25cd4c5950e` |
| 81 | `theorem` | [mem_iff_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/mem-iff-inf-principal-compl.md) | 518 | `result-track:de12e6f16c472884c7019918fcea83b3ce7b172cb2ed3df3ab4ed3ce18c36cab` |
| 82 | `theorem` | [notMem_iff_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/notmem-iff-inf-principal-compl.md) | 524 | `result-track:e32c74ca60a85483c7263bab83ef1586d64b2d25b0ea9ac5ad67c44a7a42475d` |
| 83 | `theorem` | [disjoint_principal_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/disjoint-principal-right.md) | 531 | `result-track:0e95126abea965a51c6550577b1e1bfd6a22c27c8c2cdc013912c0ae06d342fa` |
| 84 | `theorem` | [disjoint_principal_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/disjoint-principal-left.md) | 535 | `result-track:9a021d65a6bcf3ea5d194a6d95aca44d8787ffc4c009c4df7671f21846465949` |
| 85 | `theorem` | [disjoint_principal_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/disjoint-principal-principal.md) | 539 | `result-track:b0814e9d53213998174b0e981a658ed1c2db4fbb61bdbaff344c69b5a41cd80c` |
| 86 | `theorem` | [disjoint_pure_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/disjoint-pure-pure.md) | 545 | `result-track:b31429f9563de24483fc45289d193643ad3dc435d91d20341c991c2461c496de` |
| 87 | `theorem` | [HasBasis.disjoint_iff_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-disjoint-iff-left.md) | 548 | `result-track:47e76c0c8c3adc400e8f64f8e7a816d220f9aaaa8456449e0e8558ebb881af41` |
| 88 | `theorem` | [HasBasis.disjoint_iff_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-disjoint-iff-right.md) | 553 | `result-track:4b45ee0f5116df26377c849c2c978861c091464b0af7803835c685ca576ccdfc` |
| 89 | `theorem` | [le_iff_forall_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/le-iff-forall-inf-principal-compl.md) | 557 | `result-track:301707e04cf132234054684189a5ae25f5d4d5023a9713d536250ce89d63d929` |
| 90 | `theorem` | [inf_neBot_iff_frequently_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/inf-nebot-iff-frequently-left.md) | 560 | `result-track:704205dd1b2cfb46172cda8408b699a926554c68d33f1aa0d583305d19c17198` |
| 91 | `theorem` | [inf_neBot_iff_frequently_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/inf-nebot-iff-frequently-right.md) | 564 | `result-track:55ca8b5cae537a2f067a34b5e688a33fb8a4f9618e000fedc96307358da74e5c` |
| 92 | `theorem` | [HasBasis.eq_biInf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-eq-biinf.md) | 569 | `result-track:c42e27f6d100bcc2c9811f46ae6a1e9ffa3fc130016d9743c518c08eadfdd28a` |
| 93 | `theorem` | [HasBasis.eq_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-eq-iinf.md) | 572 | `result-track:60c2bd80f8cafaa04775676277a25c0d9fb039ff53d2bd154bac49457f69a3b1` |
| 94 | `theorem` | [hasBasis_iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-iinf-principal.md) | 575 | `result-track:f23ccf9ec4b9a7e9738ad36d281fcae46643417ffcae110a4c0fe1395956c8c2` |
| 95 | `theorem` | [hasBasis_biInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-biinf-principal.md) | 580 | `result-track:12b0e253b85514cb5e8fda7175292c964520b9d808f6ab12e9e919aea4b2db0d` |
| 96 | `theorem` | [hasBasis_biInf_principal'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-biinf-principal-source-edition-2.md) | 588 | `result-track:7023a4e81c50d7fd64e21d758517b7e9b37f78052c98fb8fc0185ff348838c53` |
| 97 | `theorem` | [HasBasis.map](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-map.md) | 593 | `result-track:e1c7869e853cd9fee84b2e79e057d0c70229562ae7e572a1424e213e73bcf0ee` |
| 98 | `theorem` | [HasBasis.comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-comap.md) | 596 | `result-track:5a126094c008ef4e696786974e184f69998d1feb9ec6590d9fbb0c18b248ef2b` |
| 99 | `theorem` | [comap_hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/comap-hasbasis.md) | 603 | `result-track:b96a842961296f3de6d264d578190600230591172e3bdef0ddd0b52b08c65ad7` |
| 100 | `theorem` | [HasBasis.forall_mem_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-forall-mem-mem.md) | 607 | `result-track:4d8512631a8e8b760408404ab5521ee1d307e1bd6c1b667ca2101ce20825d28d` |
| 101 | `theorem` | [HasBasis.biInf_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-biinf-mem.md) | 612 | `result-track:ecac2d0041dd65beb6ae6af885090ef23b500623b3b25aa2311b514d976a5e30` |
| 102 | `theorem` | [HasBasis.biInter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-biinter-mem.md) | 619 | `result-track:8cb6ef932cfdca2fd0283bcd52e7bdcec487913b500f2d024e309a8c1afae05e` |
| 103 | `theorem` | [HasBasis.ker](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-ker.md) | 623 | `result-track:cb8e49dfd2ca1d5ae5d9d0ecdddd9ff35b591ed1f92d39d2ee3f7216099b45a4` |
| 104 | `structure` | [IsAntitoneBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/isantitonebasis.md) | 629 | `declaration-track:a8b77fd0d8e2c1c0c27a8900654faaa48a10b042d2ad1615471336daefb2500f` |
| 105 | `structure` | [HasAntitoneBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasantitonebasis.md) | 635 | `declaration-track:81113b21973716e61d2ecf50c8f02eed4ffc10487662e32626a6892b39c2c438` |
| 106 | `theorem` | [HasAntitoneBasis.map](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasantitonebasis-map.md) | 640 | `result-track:791fdbb1587c87b87c9c8c7e67a4a0a884830f14ef4c9542d9a16c446111d4a3` |
| 107 | `theorem` | [HasAntitoneBasis.comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasantitonebasis-comap.md) | 644 | `result-track:87896522df6d580337bdb9a5b8925a53721497cc42c7d543406d434d966b97a1` |
| 108 | `lemma` | [HasAntitoneBasis.iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasantitonebasis-iinf-principal.md) | 648 | `result-track:934e574d70acf925d7f10747d0789bc03ac734d2bc855c4330479cd29676496c` |
| 109 | `theorem` | [HasBasis.tendsto_left_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-tendsto-left-iff.md) | 659 | `result-track:42646cfcb073c548410ce2fe986f3d74ef50490f645dd1b97e954124814c731d` |
| 110 | `theorem` | [HasBasis.tendsto_right_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-tendsto-right-iff.md) | 664 | `result-track:7fa0ed5b601b358fda30c28f67d9bb3919acedf043fd45f70db228edebbe9be8` |
| 111 | `theorem` | [HasBasis.tendsto_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-tendsto-iff.md) | 668 | `result-track:929d0bf07e41f0bad51d6b55c70cd68dce29836298c417f7530d3bbbd56b6d6b` |
| 112 | `theorem` | [Tendsto.basis_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/tendsto-basis-left.md) | 672 | `result-track:b43980c3ecf21be96e63778e9ad7c6471d09b806fda3a5982caddd967e36a5b0` |
| 113 | `theorem` | [Tendsto.basis_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/tendsto-basis-right.md) | 676 | `result-track:cc204a061044e3c5f692649bafba74363e85af13cbc77203d2e39bc5582a74eb` |
| 114 | `theorem` | [Tendsto.basis_both](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/tendsto-basis-both.md) | 680 | `result-track:22171e2d52c59861e1d2a8cd4730a78becb072e96641739b4f29900f2bafd1ac` |
| 115 | `theorem` | [HasBasis.prod_pprod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-prod-pprod.md) | 685 | `result-track:f9c8fef7f18da28abaadb2452ad2d5b577d6160cab56f52902bf1436be10f1c4` |
| 116 | `theorem` | [HasBasis.prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-prod.md) | 689 | `result-track:2553aaf904059a28bb2becb635b94b55e1579482cc5b183ae8657cc9601d5a36` |
| 117 | `theorem` | [HasBasis.principal_prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-principal-prod.md) | 694 | `result-track:5b9b7ea9bc86a2c899b5d2ccb140fbd8a835458df2d79d0cc2b5ecd73810f1e2` |
| 118 | `theorem` | [HasBasis.prod_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-prod-principal.md) | 698 | `result-track:7fe163179fc6bb975fd3751ea04739a41ce57e0e9820d26ab7f04d182a6ef899` |
| 119 | `theorem` | [HasBasis.top_prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-top-prod.md) | 702 | `result-track:921ec60046ca663d7824637deab0965a4d004a8396a422c825c217ee94e8297e` |
| 120 | `theorem` | [HasBasis.prod_top](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-prod-top.md) | 706 | `result-track:7e79e2026622c781ee86549663ab89aa395cc4289a586eef29f6fd165d1f03f5` |
| 121 | `theorem` | [HasBasis.prod_same_index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-prod-same-index.md) | 710 | `result-track:e842e6922907d02b78dd6a5773b74ab734570ecff2381d4efde8167019654195` |
| 122 | `theorem` | [HasBasis.prod_same_index_mono](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-prod-same-index-mono.md) | 721 | `result-track:bbbe05820cc88d7c9d954b4744e0436c3f83960bc205351f0c87246791c6353c` |
| 123 | `theorem` | [HasBasis.prod_same_index_anti](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-prod-same-index-anti.md) | 729 | `result-track:40ce09deeb1f03359149eaa2a5e67fbbf453e33f2dac3ff3ff68c376f0a88466` |
| 124 | `theorem` | [HasBasis.prod_self](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-prod-self.md) | 735 | `result-track:7d860f29e47eb33ae98cef4c4337f70e822b82b658727d481168d90e28c25110` |
| 125 | `theorem` | [mem_prod_self_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/mem-prod-self-iff.md) | 741 | `result-track:1f1bc7beb814cc4aee82d38343b8824ce0526cf7a4a54a7b8475d1bbb0fafd2c` |
| 126 | `lemma` | [eventually_prod_self_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/eventually-prod-self-iff-source-edition-2.md) | 744 | `result-track:662c36e94b68c6d31698a6fd62267e65ffb495a6a228a23cc98827720620f5a8` |
| 127 | `lemma` | [eventually_prod_self_iff'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/eventually-prod-self-iff.md) | 749 | `result-track:0230afc5a024bbdba00079db55a7834c4f9905cc8206052832595bc519e87665` |
| 128 | `theorem` | [HasAntitoneBasis.prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasantitonebasis-prod.md) | 753 | `result-track:5d1b9acfdc1f8e1dd14366cb15b34a979f2cbe33fc2699787e18d71e315b31a8` |
| 129 | `theorem` | [HasBasis.coprod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/hasbasis-coprod.md) | 758 | `result-track:b476897a569c35ddc6c0822d1d3e3f430d1659881f5a041ed492c95837fb1516` |
| 130 | `theorem` | [map_sigma_mk_comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasic.lean/declarations/map-sigma-mk-comap.md) | 766 | `result-track:bc1323d6c55f390c7cf8dbcd239f37b73b1faa840d3b52d623ac8b4f75d6ab13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e58f01d022e7573721113c5769a509548901f78722f6c26bf164b60ed7154afa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant36f4b9410c07e0ba6ea9cf97fe17ebb3c340f144a6eaf2083848944989e6a61e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant36f4b9410c07e0ba6ea9cf97fe17ebb3c340f144a6eaf2083848944989e6a61e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
