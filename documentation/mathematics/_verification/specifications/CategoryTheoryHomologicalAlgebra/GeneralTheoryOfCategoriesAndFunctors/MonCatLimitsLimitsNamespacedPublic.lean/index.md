# Verification target: Mon Cat Limits Limits Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49e9f6fbe524846b260c42fb24c3423fdac5d494",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49e9f6fbe524846b260c42fb24c3423fdac5d494`.

Source path: `GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean.json)

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
| 1 | `instance` | [monoidObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/monoidobj.md) | 46 | `declaration-track:5a67c5f0c16a73c66378a874730cdd1823823c075892ab3f3dceaeafe86c1804` |
| 2 | `def` | [sectionsSubmonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/sectionssubmonoid.md) | 52 | `declaration-track:bf49fec07844ac0547287c937508d3ca0212338f439ba87f2eeef290bff1bd7b` |
| 3 | `instance` | [sectionsMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/sectionsmonoid.md) | 58 | `declaration-track:f7a621131702b1ffa6ea826ed0cfd2ece04ec8c951dc54895ccf1192cc4655f1` |
| 4 | `instance` | [limitMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/limitmonoid.md) | 64 | `declaration-track:0b4f0c71d9503c6adaff8e240c4bb763a12a2e16f432735a80613192a029b4c3` |
| 5 | `def` | [limitπMonoidHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/limit-monoidhom.md) | 72 | `declaration-track:99526d15ea2ab65347effda9840f829ecc980b9f22739d831c076c9069314571` |
| 6 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/limitcone.md) | 88 | `declaration-track:ac1632c07b4cdb4e18099a5a09fb29e611d9f2291b8dff473377fac77d038d2a` |
| 7 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/limitconeislimit-source-edition-2.md) | 101 | `declaration-track:7e72c415fb0e174ccebcee958e1a1df03f3e555fe3141e058c0426834525be36` |
| 8 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/haslimit-source-edition-2.md) | 112 | `declaration-track:df46e17934f2652a740bc3cff5d7cf2373223715c1702b12750af1355dacf08c` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/haslimitsofshape-source-edition-2.md) | 120 | `declaration-track:daa5d46efac67a178392ce85019b12ff77f7e0905adea7df68b577e5bd8bb88e` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/haslimitsofsize-source-edition-2.md) | 129 | `declaration-track:6702aa5c45ba9179b8578311dafd7f9a71b4c4388e67552dd0ea0eb1c5aab4e3` |
| 11 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/haslimits-source-edition-2.md) | 133 | `declaration-track:d5ca52eebf69cd5a6909d2e94184b48654a6357d7208937e3c6035515f52c26d` |
| 12 | `instance` | [forget_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofshape-source-edition-2.md) | 139 | `declaration-track:bb7e7a820fff1be71e3a866b41cbb9915f5e5ab2a9ab0de50c97c137a01b9727` |
| 13 | `instance` | [forget_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofsize.md) | 151 | `declaration-track:8e2925b92bebbb4052e370e27cadf8857af8544bbbd905c9f679b5c716e6235c` |
| 14 | `instance` | [forget_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimits.md) | 156 | `declaration-track:0cc00570bc007ee040c33507cf37073a17e9cd38702c4416ffb929b16c9c346f` |
| 15 | `instance` | [forget_createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimit-source-edition-3.md) | 162 | `declaration-track:5533033ffc43c20c4f1f9d176225971fa235c7bbe9df15491ac63910a5ea46b6` |
| 16 | `instance` | [forget_createsLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimitsofshape.md) | 194 | `declaration-track:72af70882cbb48f9856919101183854887a66ab54a1e8f79f9504fae14561d6d` |
| 17 | `instance` | [forget_createsLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimitsofsize.md) | 200 | `declaration-track:c673a4de7d6b0ed80dd76936d88140cee6380090583666f9c5178e2cab984242` |
| 18 | `instance` | [forget_createsLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimits.md) | 205 | `declaration-track:155e758e3178c795e4c23b9903180eac4bc54e3553d546a94c1a226ffc378820` |
| 19 | `instance` | [commMonoidObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/commmonoidobj.md) | 217 | `declaration-track:1729bc8c441b9577915bc1af6f6bda2a91e4f57d3120c6babefef52f790086f6` |
| 20 | `instance` | [limitCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/limitcommmonoid.md) | 223 | `declaration-track:b81bf0a3bea6bf88b223c09e6f7be42d87ccb693d3068698f847d14ff5598fa0` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/instance.md) | 231 | `declaration-track:7f5bb2816264772a83b2992afd5ebcd4e26a065b768d7d4a725ca2905d275349` |
| 22 | `instance` | [forget₂CreatesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimit.md) | 242 | `declaration-track:227ad7a52a9b385e15aa89cb6f325ff7dac29c8b5d65b8ba7294f97c05aa9881` |
| 23 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/limitcone-source-edition-2.md) | 261 | `declaration-track:d1ea2ae1e8183c6dd1b968bef449dde58a9defaff76b1ebf8063a8b6af84dcaf` |
| 24 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/limitconeislimit.md) | 270 | `declaration-track:171408121f352049968d56220ae4c6bc1e19b18ff6af29686678b8864f83ebde` |
| 25 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/haslimit.md) | 275 | `declaration-track:d5ed3cecc18698bfe6c0ddc8a273f1a87a2abaadde83c411de8fff9c3e73bb39` |
| 26 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/haslimitsofshape.md) | 283 | `declaration-track:2f4f67b203083223735c845e83fbe8238e7f4c52889d394b02438f664537b01b` |
| 27 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/haslimitsofsize.md) | 288 | `declaration-track:5c55d456c8c55305fa18dfa4967a48bcf7b1a44aabfe51e8abdeec0f452d4b32` |
| 28 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/haslimits.md) | 292 | `declaration-track:4c6eccebba2598251e08147696858c32c6f61febd2136efb3bd97b97f3fce8bd` |
| 29 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-mon-preserveslimitsofsize.md) | 304 | `declaration-track:0ff76900f60953599ea4c982417d7ae4eb765e6df5df26e5bad8b8b7e1b51fad` |
| 30 | `instance` | [forget₂Mon_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-mon-preserveslimits.md) | 309 | `declaration-track:bd02caf2e2d4b1742615542b6307d77de1476568291ec826294817e84881e7b6` |
| 31 | `instance` | [forget_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofshape.md) | 317 | `declaration-track:5210cd410020f8f95f7ca59b0d04684db70d158b430d12b1fdeddff64b8d8638` |
| 32 | `instance` | [forget_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofsize-source-edition-2.md) | 329 | `declaration-track:e9444170c7c0c6c6f6dedea6c81e78bf7cee5332bb2da1baa8b0b79200563f7c` |
| 33 | `instance` | [Mon Cat Limits Limits Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimits-source-line-333-occurrence-2.md) | 333 | `declaration-track:0d57ecea985994c7287922f5d634b17bdd35292842218b913c53199fe681990e` |
| 34 | `instance` | [forget_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimits-source-edition-2.md) | 338 | `declaration-track:2b92e702c69c23fc5eb7279c2d8eada737c6a52a48b0b4f6cef45fd89db317c2` |
| 35 | `instance` | [forget_createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimit-source-edition-2.md) | 342 | `declaration-track:42146b4155743ed969559b6e8ef9926a3a31529a2644f1778d55303a3d399cae` |
| 36 | `instance` | [forget_createsLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimitsofshape-source-edition-2.md) | 349 | `declaration-track:cce4946c021134f62770105d8fe5948f9646b0b8b466e2a7d96770c3415942fa` |
| 37 | `instance` | [forget_createsLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimitsofsize-source-edition-2.md) | 356 | `declaration-track:f3a335cd3bcabefce4b54e971d277b26401d042df523e8c2e2b09b2d536fdf42` |
| 38 | `instance` | [forget_createsLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatLimitsLimitsNamespacedPublic.lean/declarations/forget-createslimits-source-edition-2.md) | 361 | `declaration-track:8a6791a8c87ef49919543308cfccd0ab6bf58ded3f86c7e42fda1fd7bd4db46e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=075c69488ba7aba90aa8ab528887459f9b5bc29f13a771ac04c9131b6ceb41c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
