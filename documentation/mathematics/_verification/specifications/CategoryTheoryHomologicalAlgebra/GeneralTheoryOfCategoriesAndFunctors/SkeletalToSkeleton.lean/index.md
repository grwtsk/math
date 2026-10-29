# Verification target: Skeletal To Skeleton

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a848751c03556f7c75a78bdc0890c75b2501833",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a848751c03556f7c75a78bdc0890c75b2501833`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsomorphismClasses` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Thin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Skeletal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/skeletal-source-edition-2.md) | 38 | `declaration-track:58961102ff24f7fc6972edc1cd9a16b59663f2a03c0b0b3096727c25427dd8f4` |
| 2 | `structure` | [IsSkeletonOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/isskeletonof.md) | 44 | `declaration-track:28fe83e0d2170be0243b5774bef87c81cf9bfbfe60673e455040cd1ce6da2063` |
| 3 | `theorem` | [Functor.eq_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/functor-eq-of-iso.md) | 55 | `result-track:587f1daaedbdcbb3f036ef80141f20707ea8ce7b7b1098d15c6a5e41ee95da22` |
| 4 | `theorem` | [functor_skeletal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/functor-skeletal.md) | 62 | `result-track:7bc465d5295990b327f46c21e66148b8ce777c82f1458af8fdab7be44c01bd34` |
| 5 | `def` | [Skeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/skeleton.md) | 70 | `declaration-track:1ad6a470a974a25d54e361239f397460d43ec5f5cce43a8bf435cd6befc04e9c` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/instance-source-edition-5.md) | 74 | `declaration-track:9d79c115297c87b7b96cbf356d03373e421e156d319a38de9827896e2b28c7a2` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/instance-source-edition-4.md) | 77 | `declaration-track:9d18e830bc1e67ff1e7c78972be3afd367eaf688eb3cb6092be2f80c6e8b61fe` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/instance.md) | 80 | `declaration-track:0b76fdca2251d7eeeeb56486c901e5e71966436b80e9cbc8e308c5d19fbac5de` |
| 9 | `def` | [fromSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/fromskeleton.md) | 85 | `declaration-track:0cba8af826ed856ad44bbb8971bc73a37aedb843b15031b7c6b802e559b7bcbe` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/instance-source-edition-6.md) | 90 | `declaration-track:ac3a87190c4ab76c43f62ef7cc418d146cc5ddc415408aaf12e6ce175302007c` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/instance-source-edition-3.md) | 92 | `declaration-track:85ab2a3b2f6613051a94714e46973fd80af66a0d3ae16b815ff3bd23e8d5a0a6` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:7a3203dcde89bbfc43e7a72f8341357534480107073fc73d6dfc5b9ef43ff306` |
| 13 | `instance` | [fromSkeleton.isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/fromskeleton-isequivalence.md) | 97 | `declaration-track:b39e4f21caa47f9ab0ddbac7839f8dbdef9ef5ec7906fefe8e85a050032f6fae` |
| 14 | `abbrev` | [toSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/toskeleton.md) | 102 | `declaration-track:4b1095addb5835aeedeb8723440ea13e9b3226d1eb45a020fd29f59ec9ed273a` |
| 15 | `def` | [preCounitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/precounitiso.md) | 105 | `declaration-track:bf28f1c9fd534bc8ed88d380c2d6588b8370cd861b08214715e0bf392d4e9593` |
| 16 | `def` | [toSkeletonFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/toskeletonfunctor.md) | 111 | `declaration-track:c5dca0e37e1bcd39c35a0d2a5f4e4bf533148676e4d660ff4ce66458124c2eca` |
| 17 | `def` | [skeletonEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/skeletonequivalence.md) | 118 | `declaration-track:a12e498735a5e0bd5fa6db778d8ee7da2a32ee103a92bb69a3fa58373a92b275` |
| 18 | `theorem` | [skeleton_skeletal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/skeleton-skeletal.md) | 127 | `result-track:678f61d1d247436e688c918593f18af24108f2950d808ef3c50c282c2d62cd4a` |
| 19 | `lemma` | [skeleton_isSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/skeleton-isskeleton.md) | 133 | `result-track:c4ad6aab24b20688cc8225d5c338d539893d7c38743dde3a3931d3a3229d311d` |
| 20 | `def` | [Equivalence.skeletonEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/equivalence-skeletonequiv.md) | 143 | `declaration-track:8b1bce7e2b662d6499c2844bae9280cf88c29952a3d1a098b7d23f51a179d1e7` |
| 21 | `def` | [ThinSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/thinskeleton.md) | 156 | `declaration-track:aedd738ba8f2292a4d297f63c6ef74fe835b56d5caefa1bf349a11c87c5c9451` |
| 22 | `instance` | [inhabitedThinSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/inhabitedthinskeleton.md) | 159 | `declaration-track:a50927e08ecca66ab46abb56bd7c92fd1bb89e58f21c4fd27ee144d4bd441a07` |
| 23 | `instance` | [ThinSkeleton.preorder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/thinskeleton-preorder.md) | 162 | `declaration-track:4f3b14ab1aa2bcc6548123cb5df38e36f29433296b9fc947692956d4f4d1e7e9` |
| 24 | `def` | [toThinSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/tothinskeleton.md) | 179 | `declaration-track:ed76ee3d5633f9bb1ad06c2036d790b33b647fe6c502d115b7b7c494c413cb52` |
| 25 | `instance` | [thin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/thin.md) | 192 | `declaration-track:15b2271602b0d14853b6c6427700fa3be8bab22b675629c16cdbebabbf9664ed` |
| 26 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/map-source-edition-2.md) | 201 | `declaration-track:5048d10bc60da170ed1678db0b52d4a91c655beb1724c27f08036f3bb3b1b88a` |
| 27 | `theorem` | [comp_toThinSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/comp-tothinskeleton.md) | 205 | `result-track:81f0d5d0dfce63aa7351e0f325669d63c5883c27b52e90a78eb78e1921e9975d` |
| 28 | `def` | [mapNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/mapnattrans.md) | 209 | `declaration-track:ed86ccc51e615152aa2049b496227c87b8bf55f196659ed2e6cbf8f10927f44c` |
| 29 | `def` | [map₂ObjMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/map-objmap.md) | 224 | `declaration-track:1f990da36c5cfdc267cccacb496519be6779c58cd88c1cd8c8a68ba938582909` |
| 30 | `def` | [map₂Functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/map-functor.md) | 231 | `declaration-track:6f910ee1f6a7bfc7f83ccb37c4d36e04e802ed902eb858b382a97eaaf59ab0ca` |
| 31 | `def` | [map₂NatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/map-nattrans.md) | 241 | `declaration-track:2c9c5168ff7001b3a778f424953980d66be17718a29df8e5cfddcc922071acc6` |
| 32 | `def` | [map₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/map.md) | 252 | `declaration-track:07780535ab8aa4c96ca84c0feb609f948cac363b1cc403d195435404ef6e2899` |
| 33 | `instance` | [toThinSkeleton_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/tothinskeleton-faithful.md) | 262 | `declaration-track:97aee12e1badd8e453110bd539404460b61b8324e0619eba6e95a6129ce8938c` |
| 34 | `def` | [fromThinSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/fromthinskeleton.md) | 266 | `declaration-track:924a2901358f5209e6855af04d140e8b00c76df793e78466f15b278dc2a5f098` |
| 35 | `def` | [equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/equivalence.md) | 273 | `declaration-track:2cd62734fc328dc2768a9cf698556c4d50f09803b9f4b39408631c4a1448953a` |
| 36 | `instance` | [fromThinSkeleton_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/fromthinskeleton-isequivalence.md) | 280 | `declaration-track:bbd0fef9251e37d3dbc7f856b18a26ba88d0e720d10bbe687d49e42b8cabebe2` |
| 37 | `theorem` | [equiv_of_both_ways](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/equiv-of-both-ways.md) | 285 | `result-track:cc24cd29dd4d16bd7f5b172f414818d6ce29e3c7505a9d44d9d57b7f7ead840b` |
| 38 | `instance` | [thinSkeletonPartialOrder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/thinskeletonpartialorder.md) | 288 | `declaration-track:fcb3709c0eb2e28e7ee0f904bc77281131fa4cc823cb69fa2b3f05b63c3db136` |
| 39 | `theorem` | [skeletal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/skeletal.md) | 296 | `result-track:496103f1bbec4a03b75dc4f1b4b41641939620c72d22536d22cc03648cdf2358` |
| 40 | `theorem` | [map_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/map-comp-eq.md) | 299 | `result-track:4bb0e1c3c00b721fda77c8e25df7af70ea2c75100fb4540355cbf29b70b96750` |
| 41 | `theorem` | [map_id_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/map-id-eq.md) | 303 | `result-track:70d7f25844fd5b19a8350598dc1101dfb1707c97374381eaa827cba6024e0f41` |
| 42 | `theorem` | [map_iso_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/map-iso-eq.md) | 307 | `result-track:41e3a44d84b57ab21eac7b3d5738133f094e71e88d7f9ef12430dfb886a2998c` |
| 43 | `lemma` | [thinSkeleton_isSkeleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/thinskeleton-isskeleton.md) | 313 | `result-track:f02a75e344df98ed70aa3c085feca15a33736b3a6d8c969d5fa430f0da5beed1` |
| 44 | `instance` | [isSkeletonOfInhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/isskeletonofinhabited.md) | 316 | `declaration-track:f4980e2c1741422ccd80c4073c5d71d94866b73dee4ddfbb6e0dfee7fa8e10f5` |
| 45 | `def` | [lowerAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/loweradjunction.md) | 325 | `declaration-track:8f8fb22f56b519551bbf84cc72db990b1147b081594897984d9fec52d8923218` |
| 46 | `def` | [Equivalence.thinSkeletonOrderIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SkeletalToSkeleton.lean/declarations/equivalence-thinskeletonorderiso.md) | 349 | `declaration-track:0daa8b3b569abf55869e05c72f02634700d17e6b4c45a489680b08f240a514de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22fa87c308099cf46f1a28d2daec396945d5fcc11d17d62e42b0b32f7ef2e8f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
