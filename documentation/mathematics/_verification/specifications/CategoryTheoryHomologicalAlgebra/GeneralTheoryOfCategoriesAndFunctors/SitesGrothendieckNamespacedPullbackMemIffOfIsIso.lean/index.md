# Verification target: Sites Grothendieck Namespaced Pullback Mem Iff Of Is Iso

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "794611dfd82772e7f78760fd93aa3b4428d3ed4f",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantd21e75a003d49f268fb9806782ef36f8420d1337d094882cce7ec9313f5a270f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `794611dfd82772e7f78760fd93aa3b4428d3ed4f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantd21e75a003d49f268fb9806782ef36f8420d1337d094882cce7ec9313f5a270f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantd21e75a003d49f268fb9806782ef36f8420d1337d094882cce7ec9313f5a270f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sieves` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Copy` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GrothendieckTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/grothendiecktopology.md) | 80 | `declaration-track:c98220e1275741eb1669ab774b9695abaceaf82a8ed0c8b0c9e576d63e2efa27` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-10.md) | 97 | `declaration-track:f3b49417de6b9469d2b4a43410733c3d481dba81414ad2025cced8326e7e92c1` |
| 3 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/ext.md) | 110 | `result-track:3fa931e508ec813d29e93dae387e505e96e16624a2d167015091bf76988987a4` |
| 4 | `theorem` | [mem_sieves_iff_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/mem-sieves-iff-coe.md) | 114 | `result-track:72f50bed63001846cdc71932cb795309df9d969eec07f4ff96c4de820776ccb5` |
| 5 | `theorem` | [top_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/top-mem.md) | 119 | `result-track:895a2b5052a3905c11992587ef25b31e15b9bc422f337634a6fd3ed1ed627feb` |
| 6 | `theorem` | [pullback_stable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/pullback-stable.md) | 124 | `result-track:292c6f14831995c1a9949f4e80efe50c27870d2e2342870e79fb129c71e1e26e` |
| 7 | `lemma` | [pullback_mem_iff_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/pullback-mem-iff-of-isiso.md) | 129 | `result-track:604f06f881c72dd8d8ae7a3f40cce6e9b14d71452f50c0c46adc5cbec512658f` |
| 8 | `theorem` | [transitive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/transitive.md) | 135 | `result-track:1b9aa7bec9d0a577ada5a5f57bbe16b8a498ebf593c13825c5d7ad9955fe7d3e` |
| 9 | `theorem` | [covering_of_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/covering-of-eq-top.md) | 139 | `result-track:aefb87e76153c291dbffd3b48fab7748e43aac78c91ea4c2666abc9a216cb379` |
| 10 | `theorem` | [superset_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/superset-covering.md) | 145 | `result-track:4c9f938faa581a94cf2091551d6767c2514abe7971693f1f330a4f7cdac79fdf` |
| 11 | `theorem` | [intersection_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/intersection-covering.md) | 156 | `result-track:2f31068f17c29e7488e4eb2050edb0ed2f5f13ff8ecf6b790b9a1f4e904ace8e` |
| 12 | `theorem` | [intersection_covering_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/intersection-covering-iff.md) | 163 | `result-track:994ce25a0b0d41fe1d5838f563d3ac02eb76e14c6a538bff3781db664aa3f1a3` |
| 13 | `theorem` | [bind_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/bind-covering.md) | 167 | `result-track:f91a83ccb3ff8d20a4fc5ffc38b58cc8e616fc5cd7054596a57ac0f856f0cab3` |
| 14 | `def` | [Covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/covers.md) | 174 | `declaration-track:84a8b5353c0ef30a86b54f0468cef4e13c64f3ab2b9dd5320ba160c9f7fb8965` |
| 15 | `theorem` | [covers_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/covers-iff.md) | 177 | `result-track:35ad4afbd44bdee7f2253c1cac6f4247b591592c73ebed8c5d8dfb8281df9f6f` |
| 16 | `theorem` | [covering_iff_covers_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/covering-iff-covers-id.md) | 180 | `result-track:bc51bb2c6433bc896cf8050758378d485939c57af6ece8ec6ca1ff9c7e55aab6` |
| 17 | `theorem` | [arrow_max](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-max.md) | 183 | `result-track:f42b68e0e68ee4fa1c8fe618affa8424d42dddfb1df47b35079b1a34de43853c` |
| 18 | `theorem` | [arrow_stable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-stable.md) | 188 | `result-track:c2e6c3c51d1eb2142a90059a16c8ebde980943e8f3a650165bca71f831996bfc` |
| 19 | `theorem` | [arrow_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-trans.md) | 196 | `result-track:b01bee6577e881146c03b1851735b7f75cc28236512e3808481c173bc53ec5c4` |
| 20 | `theorem` | [arrow_intersect](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-intersect.md) | 204 | `result-track:32a0021dd9cee5070054ea7970daa1ff169eeee2736c308ffea1c6a8d1de6918` |
| 21 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/trivial.md) | 215 | `declaration-track:4a171d00e81f6806d760a6056cc5de6b91b952cd77b21ab72b5a658dba998f9b` |
| 22 | `def` | [discrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/discrete.md) | 229 | `declaration-track:03c263e693669bad470c1e76b1033a92112c3e222f9fc920e04fa8959453131f` |
| 23 | `theorem` | [trivial_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/trivial-covering.md) | 237 | `result-track:8be6ea331305696ca2fa21dfac75d67ed160df9150ef2d1b04cd9d1799882f8d` |
| 24 | `instance` | [instLEGrothendieckTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instlegrothendiecktopology.md) | 241 | `declaration-track:6c1b71667abb663f1ce7e47752503433d080015a0e14f843801dc2e514dc8ee0` |
| 25 | `theorem` | [le_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/le-def.md) | 244 | `result-track:8613182159009a7d8b96a0e067e298ba95e908b55c00683a68b12da8c108b411` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-5.md) | 248 | `declaration-track:67d4673815cbc102f32fc670fedb46e0d2209e002c8266a83fab1906d24ab1c4` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-2.md) | 255 | `declaration-track:1c97a1e64e5c51c23e27749bec97ba5675f8fba9cec0a5588a2e30b05c030135` |
| 28 | `lemma` | [mem_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/mem-sinf.md) | 269 | `result-track:06de98b6ae34b40ae04fd9f46a94bb736f2f96ef95ca44d895c21582c3dcf189` |
| 29 | `theorem` | [isGLB_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/isglb-sinf.md) | 275 | `result-track:feeb8f4b8b0aa32e8a56a8782e08cf7bf23a5c937559a838745af71a5689bef7` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-9.md) | 283 | `declaration-track:b5689e319202f9f3eafe40b2bc5cc8779273063f4be2578d4c6a8b1ae6e24c16` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-3.md) | 299 | `declaration-track:2becaa412b630e6412d8799d880a68fd2a558b7105db4a992546e31f200c4d5a` |
| 32 | `theorem` | [trivial_eq_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/trivial-eq-bot.md) | 303 | `result-track:2d484919c501be3f30b27a68247291c88742222e6585d27225d11cbfce60c7ce` |
| 33 | `theorem` | [discrete_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/discrete-eq-top.md) | 307 | `result-track:cd3d92254828926d426b0ace8fa43151de8ec08de4f30e3a41909537ee11c2e6` |
| 34 | `theorem` | [bot_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/bot-covering.md) | 311 | `result-track:8566e9205f83195c1f9610f54c152500d6de77b3d0aa30a40e2d3d80922c8f03` |
| 35 | `theorem` | [top_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/top-covering.md) | 315 | `result-track:b80c7882db50590cfc17547c2cac0500a34f60b3e6692ee2ee4fa7c905b54cdc` |
| 36 | `theorem` | [bot_covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/bot-covers.md) | 318 | `result-track:8d767e975e90bb3bcd51fffce75e8530df9c64623139e19b0867c99b8c730da1` |
| 37 | `theorem` | [top_covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/top-covers.md) | 322 | `result-track:f492f1c7fac9b9e7c42fb054dac999f2dac33453aea929361b14ea53c396fe59` |
| 38 | `def` | [dense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/dense.md) | 329 | `declaration-track:50a89a6a48dde63dbbb883b1e16ec3aadfa5036d0d232ce4c58e3b0f14c39298` |
| 39 | `theorem` | [dense_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/dense-covering.md) | 342 | `result-track:f9d332284dc89ade0c20b0b192bda1e42ecc50e0845839c320f450b1e4335c85` |
| 40 | `def` | [RightOreCondition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/rightorecondition.md) | 350 | `declaration-track:e4deb849815ecdd6766ca593b1bd57c904ca3b9c65814f303ae0c3747d4498b6` |
| 41 | `theorem` | [right_ore_of_pullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/right-ore-of-pullbacks.md) | 353 | `result-track:1ecdd0b6e29b909137320f5ad8bd198e262d39c29c5211b391896452f4f216ea` |
| 42 | `def` | [atomic](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/atomic.md) | 361 | `declaration-track:189df75df6c5a9da79cdd49f37a499a889db2876e532c86ff4cb6b9e1b6248ca` |
| 43 | `def` | [Cover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/cover.md) | 378 | `declaration-track:1ad4d9f5933a28ceffb8c84187e4b943d573300e5456d378618964e232b5b733` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-7.md) | 383 | `declaration-track:97bf9eb4c65bc4f2b52845d22344774a92100785c75b4f70102ed0201fdc2126` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-8.md) | 390 | `declaration-track:ab8694da3982e33a8670f5cb58d9c2199bf7cc1bed1c033242b6bc77983002a5` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-11.md) | 392 | `declaration-track:fe4b71cfd7922577dd4ee0752e87e9de09422b59245d3c4000c9bc2b4d4c37ec` |
| 47 | `theorem` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/condition.md) | 394 | `result-track:eb389b44e5f6b4beca7e30e9bcf6ff432b3530e583f4c4c746f3a3fc34909403` |
| 48 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/ext-source-edition-2.md) | 397 | `result-track:f21505e773aa4b40de4449f6d4bf4d23d522f93580eae93f4119b8c56a08f367` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-4.md) | 400 | `declaration-track:391bd81c82ca6197c9fee8acd2a627ef1fe276afe5e6232e630046b204f17263` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-6.md) | 405 | `declaration-track:73ed5f663dae267a52dfbb3ca6e397e28e911f195086a923b1a1d8d3fa8f1042` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/instance.md) | 413 | `declaration-track:0a15c68a7cbe6509c58e25526e1ed29429b79ecdefa40fb3cdb5f4a066938ed6` |
| 52 | `structure` | [Arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow.md) | 418 | `declaration-track:63e5eaa0f7b5be76f725bffbd9239b3094209eafbea5564f0f1498e69f7128b7` |
| 53 | `structure` | [Arrow.Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-relation.md) | 429 | `declaration-track:d1b1e1a9418768d9ccf5b5c9731cd25b885816d35c5656c139b3e984ee0b86fd` |
| 54 | `def` | [Arrow.precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-precomp.md) | 444 | `declaration-track:5df9ae61676b32873e56b9b386c006cbee7ba514bc048b1103166cabffd936f3` |
| 55 | `def` | [Arrow.precompRelation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-precomprelation.md) | 450 | `declaration-track:fb88acd565bbf0d12448e010ba027da9c9923a0c85f0051c447e95da58a1aa88` |
| 56 | `def` | [Arrow.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-map.md) | 458 | `declaration-track:bb2e16c77e414be8bd5663fc71b6091c2492c407bd4e13367d6ac9578e60d170` |
| 57 | `def` | [Arrow.Relation.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-relation-map.md) | 463 | `declaration-track:6eb18b8261c35740670ccd9d52a48c64c36d22d59bd2d5c241ebe569a0104c44` |
| 58 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/pullback-source-edition-2.md) | 468 | `declaration-track:ad597dcfe34b6ed06387d73448bc5492d29835c2419220b16780728d6aeb7f0a` |
| 59 | `def` | [Arrow.base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-base.md) | 473 | `declaration-track:8d5ed83bf2d2e547e32d9b02b64a40a5c2c08f99c10c953a4dead22c7544bf4b` |
| 60 | `def` | [Arrow.Relation.base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-relation-base.md) | 477 | `declaration-track:c9b66dfea09cd0d9139884300e2aee9209446f34ebe730b3fe5d1a23d41cac8c` |
| 61 | `theorem` | [coe_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/coe-pullback.md) | 483 | `result-track:91b32836662e3d54080ed7c697ab8e79963934bc518d61956c4469c8fb03d235` |
| 62 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/pullbackid.md) | 488 | `declaration-track:894d83238dc29a62aef3e82262be60e17b1b72ed8ee837ccb1856ea055b67180` |
| 63 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/pullbackcomp-source-edition-2.md) | 492 | `declaration-track:82bb8cce5df122d0306886d5657f61f69b9abc73341f335fae26b9700117e8ae` |
| 64 | `def` | [bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/bind.md) | 497 | `declaration-track:e31b7ab6c1a283477aa93270f9b1900599067b8fe89e86a46333dbccda3ef587` |
| 65 | `def` | [bindToBase](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/bindtobase.md) | 502 | `declaration-track:992819f7d0361a84b0d135bd45bbfa578eed9e1640c92e3eaf71f30e298556b8` |
| 66 | `def` | [Arrow.middle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-middle.md) | 511 | `declaration-track:e26942c97130cb240474cb5f83c800dff8833e477b862a03a14f5e291b4c5504` |
| 67 | `def` | [Arrow.toMiddleHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-tomiddlehom.md) | 517 | `declaration-track:1bb2fea8e0ad6eef6b6dda3145636217488498b56fe314918d66add8e77460a1` |
| 68 | `def` | [Arrow.fromMiddleHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-frommiddlehom.md) | 523 | `declaration-track:04cfb97d3c2592ac120797c35300fd4ee99f019c40d90cf584bdbac197ab4148` |
| 69 | `theorem` | [Arrow.from_middle_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-from-middle-condition.md) | 527 | `result-track:441fa96dcaf7a0ee7079647c6e890b7dbe0c140854def7cf9a83231878273a38` |
| 70 | `def` | [Arrow.fromMiddle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-frommiddle.md) | 533 | `declaration-track:ea79e952fb7d87bf8adf71a61d11488a6db67e3039ab5f132dfb8af5415d33fb` |
| 71 | `theorem` | [Arrow.to_middle_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-to-middle-condition.md) | 537 | `result-track:1ee2f89cff1fb2a276ec08d6e17dd3844d622817b7182f2e089df84a50d6b4e2` |
| 72 | `def` | [Arrow.toMiddle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-tomiddle.md) | 543 | `declaration-track:8b4332d9450cc45cfb967e374c21ffb7874b04a557edde0e2bb2666e3d068892` |
| 73 | `theorem` | [Arrow.middle_spec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/arrow-middle-spec.md) | 547 | `result-track:7eb5696d912dcb39d63df496d481197f786e2840aefbfd80913c2981de51037e` |
| 74 | `structure` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/relation.md) | 553 | `declaration-track:159da66d649c901b90d20138e32b585c0a2dc4f4093f5d41e2b0931ffeabe5a0` |
| 75 | `def` | [Relation.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/relation-mk.md) | 564 | `declaration-track:7adc16c398ac2fd41190feb08d7e9308a68a4016f0d53b04889ba47b0dcfb5e0` |
| 76 | `def` | [shape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/shape.md) | 573 | `declaration-track:0668f7438f280a0c689e8be254bd6fe08f9f1bc3dd9626876496886104a84357` |
| 77 | `def` | [index](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/index.md) | 583 | `declaration-track:b8228f6e9ec91895c2e4a2861b77c3bf272d307e43e094bf4d94aeefb2cf7187` |
| 78 | `abbrev` | [multifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/multifork.md) | 595 | `declaration-track:16d74a97114d3fd06ea1d1dced8b058813868bf0c09203dff353f5a58f74101e` |
| 79 | `abbrev` | [toMultiequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/tomultiequalizer.md) | 606 | `declaration-track:1f6b78201a019dee993ae34be73a4ee6032c49934496554712bfd81ccf0d69e7` |
| 80 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/pullback.md) | 619 | `declaration-track:3537afe37db81765ab3bec6a49f36263e17910a98a989624ca77518610374b26` |
| 81 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/pullbackid-source-edition-2.md) | 624 | `declaration-track:f7487da093359cceaa9b0442536f05303e1754c952a8e7d8d29097a5a9b933a9` |
| 82 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckNamespacedPullbackMemIffOfIsIso.lean/declarations/pullbackcomp.md) | 629 | `declaration-track:191632ca8e0b7f9bd2689c64d15d30770017acd43c2fc47bba2a7629e2af697b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=828502f8b02daa113eb3ff8f14a188633ccf1e7e5660d1fb8c9b88d148fbbc0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantd21e75a003d49f268fb9806782ef36f8420d1337d094882cce7ec9313f5a270f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantd21e75a003d49f268fb9806782ef36f8420d1337d094882cce7ec9313f5a270f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
