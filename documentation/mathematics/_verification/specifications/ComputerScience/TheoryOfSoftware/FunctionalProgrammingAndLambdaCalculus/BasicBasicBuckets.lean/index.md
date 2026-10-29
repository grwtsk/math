# Verification target: Basic Basic Buckets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b76fd9cc62291d5ca45448032ef27ebb45d968b",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbc587fd13a227830fc4922356fc0347caecf04e91244271eda782cba1e786393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b76fd9cc62291d5ca45448032ef27ebb45d968b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbc587fd13a227830fc4922356fc0347caecf04e91244271eda782cba1e786393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbc587fd13a227830fc4922356fc0347caecf04e91244271eda782cba1e786393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.AssocList` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Classes.BEq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LawfulHashable](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/lawfulhashable.md) | 13 | `declaration-track:09383b45f9c3ae88a6c660254f608bb1fc3f1da532a9dff95f79ba28e603e192` |
| 2 | `def` | [Buckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/buckets.md) | 23 | `declaration-track:cf993792570949d122e162107da25677502a0dc783410596787365925e3b6a1d` |
| 3 | `def` | [mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/mk.md) | 28 | `declaration-track:6ffda6f4c20538cee719a87a843edaa4a16be71efa4c226b96cc4b8d1c210a75` |
| 4 | `def` | [update](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/update.md) | 32 | `declaration-track:69e1a29aa2a47f82a5b64eaaaf4fb090f17f37e4d7c2d91349cd347b1ad90614` |
| 5 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/size.md) | 40 | `declaration-track:8ae369f2bd2b1d91fd53fe47209de8fd3f73916de8b144e01064dcc80e20ad3d` |
| 6 | `theorem` | [update_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/update-size.md) | 42 | `result-track:6c0b68bc354c467e0115db9f39544e606c7e76cb8938db239dc26fd840559a9d` |
| 7 | `def` | [mapVal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/mapval.md) | 46 | `declaration-track:480c89a8c5dc7dd947906379a87c533acf33540f9ab53f569ebca8b996e85d29` |
| 8 | `structure` | [WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/wf-source-edition-2.md) | 53 | `declaration-track:f90760ebb67706cfb7f8bd03d4d68d97ca26ce96aa44cf80c2ff8c4466e60cc8` |
| 9 | `structure` | [Imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/imp.md) | 65 | `declaration-track:453b49fbaf8273441f1bd147fd0efa5825dfcb91d8d39416a5048b5388df4aa5` |
| 10 | `def` | [numBucketsForCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/numbucketsforcapacity.md) | 79 | `declaration-track:35c87e60e09869b1d1b5afe30880bc7751a0364c099b26322c157d36a8640dfa` |
| 11 | `def` | [empty'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/empty-source-edition-3.md) | 83 | `declaration-track:b86b833f4adf612c48f2e7e0ccaab487915926ebca417a9aa8881851c7ca2bce` |
| 12 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/empty-source-edition-2.md) | 87 | `declaration-track:654bd3cf1a8dfb798f23d07f09cb6a2b8021d5629bc92e4cd1f48537604ddd25` |
| 13 | `def` | [mkIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/mkidx.md) | 95 | `declaration-track:9b61dbe2fb7575b8dbacf979be9294a0be6607be166fb6a1fbdf7509ef3d20f6` |
| 14 | `def` | [reinsertAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/reinsertaux.md) | 102 | `declaration-track:291bdbc13652f84032d180b56ee9525cd354e5737d3de13a944d601b52b9a27c` |
| 15 | `def` | [foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/foldm.md) | 108 | `declaration-track:54d9f40fa6dcd947f6ed47a60ae4e78e56a11a3c82a48dbdee464108c16c16c4` |
| 16 | `def` | [fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/fold.md) | 112 | `declaration-track:46726fb9051d015f7c76556ae184d7b17909c341f2d9197e809239d1b6b353cd` |
| 17 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/form-source-edition-2.md) | 116 | `declaration-track:8ac0cbc0d56438c0955c03f33b6c34b40dd57d0f87a73e93c8cb2a675513a571` |
| 18 | `def` | [findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/findentry-source-edition-2.md) | 120 | `declaration-track:b82f1e381d0e260aa1b81cd9387ac0e0dc07c2ea96b4b62c64034365d7b5c3cf` |
| 19 | `def` | [find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/find-source-edition-2.md) | 126 | `declaration-track:9ed6b9268f9405d3f1383e63bfd33194146541474fb62a8e1c2f685df87c691e` |
| 20 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/contains-source-edition-2.md) | 132 | `declaration-track:f9ffeabbc361fb886d0e181b5f507303e52635e52af9177177bc79a5fdd57da4` |
| 21 | `def` | [expand](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/expand.md) | 138 | `declaration-track:11d2298215dac2d643ec68931a2a696f68c2bac13f23f74d4b63bf84f186906e` |
| 22 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/insert-source-edition-2.md) | 160 | `declaration-track:e9b4cd2d8ae73884b60a1bb95861da97dee1592a485731eee77b2c380591c39d` |
| 23 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/erase-source-edition-2.md) | 177 | `declaration-track:e74dd16db9e2e1611bc1cd58de2082627268aa708d01ff8e0bc2abbee5550b40` |
| 24 | `def` | [mapVal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/mapval-source-edition-2.md) | 184 | `declaration-track:d5c2cdcff1d838c53d9f5afe065049bfd36acbaeba94cb7a89092c0e117c4463` |
| 25 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/modify.md) | 188 | `declaration-track:76cd8924f0039062c81090b259ddc1fe2020990371cb0e32a9dc54e0e29ac09b` |
| 26 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/filtermap.md) | 199 | `declaration-track:a6a3f95e5f1326f2e8c98b860dd02d98ce280da50755243c2756ca1be27683f4` |
| 27 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/filter.md) | 217 | `declaration-track:ffb5acbf9ebcc75a41a66ffdc86ba101ed798a3563a2f3bb1126f45041b13a15` |
| 28 | `inductive` | [WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/wf.md) | 225 | `declaration-track:a37fb470dfd39c6b1e6afd80d76b8fd3832641bd4edcab850c91591e52504975` |
| 29 | `theorem` | [WF.empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/wf-empty.md) | 240 | `result-track:92584f10c4a8f35ba9832dcc6a10456e9431ce5971dc12b26146c9e1fe334f75` |
| 30 | `def` | [_root_.Std.HashMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/root-std-hashmap.md) | 251 | `declaration-track:e7062db1f4aa06ab8ae9081c843d42f95ffd64a8671fd63e1ab6db0ceb6ea122` |
| 31 | `def` | [_root_.Std.mkHashMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/root-std-mkhashmap.md) | 256 | `declaration-track:01058cc8a35f2042e4f66eb259f02a8fb4a1e556eda582e00082aec0d43089a7` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/instance-source-edition-2.md) | 259 | `declaration-track:926ab56dbef22e93d2f459ddfb65fa13d4df411b2a089dd30bb079638a3f9cea` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/instance-source-edition-3.md) | 262 | `declaration-track:966c4eb59aaf99d15c72b4e052915537bbf28951a05a6b9b079216132aedfc46` |
| 34 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/empty.md) | 265 | `declaration-track:4d79fa087e7c3292bd35eab5f28d34a6bad6bd464e9a7256b056819581cd867a` |
| 35 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/size-source-edition-2.md) | 270 | `declaration-track:f77a13dacb974e771488d138c2ada6fb5169139761d77659328ff43a118bc752` |
| 36 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/isempty.md) | 273 | `declaration-track:fa9c551d60e1edd33d9a71465ee3245622097c00598ec8b146262a3f23cf4ded` |
| 37 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/insert-source-edition-3.md) | 279 | `declaration-track:f3cb6a7335ba517281930216ebb427039c4d0e76c8ec2a0f207d887e700d4ba7` |
| 38 | `def` | [insert'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/insert.md) | 285 | `declaration-track:9a24aa8d943a332d0396aacc836d0fec0b8083551642157df4d85648cd42fa8b` |
| 39 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/erase.md) | 294 | `declaration-track:7871f2bb62abad96b7cae1c7ddc2429af18bce7d834f23ab4a75916d0ad2a666` |
| 40 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/modify-source-edition-2.md) | 300 | `declaration-track:9b22549a498306a74f25da8976c965bbd994fd9a25759e697c50560d1eee169c` |
| 41 | `def` | [findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/findentry.md) | 304 | `declaration-track:8eac66d023845fdd732f0d0f84afe9b5327d1e8b0eaf33637ac12b2de6c2aab5` |
| 42 | `def` | [find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/find-source-edition-3.md) | 307 | `declaration-track:e25a3889684d2a986617476b5b5071ac99f488bfe126ef55c491ec32dedc3c9d` |
| 43 | `def` | [findD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/findd.md) | 310 | `declaration-track:a77f69ba8cd79c91beeb03602f2c811b1a3d3c7efd3251e10845162caae2bc89` |
| 44 | `def` | [find!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/find.md) | 313 | `declaration-track:6533b978fc45d3c8c75faa0ba6f0db20392123e889d1fba7d2105023d2c825b5` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/instance.md) | 316 | `declaration-track:3cd960f2bcdb19dd5f13215093819541057b078d33ec04821c116dcde37c12ed` |
| 46 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/contains.md) | 320 | `declaration-track:7cb714aef1ec241ed8d4dc4fee3b72692300fa3404e5106d8aaf119af8c8a8b7` |
| 47 | `def` | [foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/foldm-source-edition-2.md) | 323 | `declaration-track:d66a532d2a1e6fd95273c951218caa55fb5fec63a26a3013681829fc15df44cb` |
| 48 | `def` | [fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/fold-source-edition-2.md) | 327 | `declaration-track:bb3b2127a0eefeea9560aa47ac258cfe654fdb4c21eb0ecfc5d50a65780eebef` |
| 49 | `def` | [mergeWithM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/mergewithm.md) | 330 | `declaration-track:d044aa9ab70e248171e27eb8fe95dc20379517140434d3646bc665ee4fb595e1` |
| 50 | `def` | [mergeWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/mergewith.md) | 338 | `declaration-track:d3e1bc23b602bbc8da8eb58f956fb97cdc1ad3a7941e46d6cca18be2e6b82cae` |
| 51 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/form.md) | 347 | `declaration-track:7e0d42767a87746c3e7709be3601ec6a086dadba100244bdc3734f75326d0289` |
| 52 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/tolist.md) | 350 | `declaration-track:f0cb17775ed47218c79539b00e84f8fb6259c870a89e0916be576c2f88d8027a` |
| 53 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/toarray.md) | 353 | `declaration-track:4a0881bf04b476ca1b74175f07117cb89e70eaec05457276a2ea9fefec6d7b65` |
| 54 | `def` | [numBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/numbuckets.md) | 357 | `declaration-track:0217968fa4c3410fb5ee188bec99354a50929e93506fba047ebc6850050f14c4` |
| 55 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/oflist.md) | 363 | `declaration-track:301f977bcba0fa185eacb3cd867553d801ee9c01bc3b77f34ff7d1b3ee17b042` |
| 56 | `def` | [ofListWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBuckets.lean/declarations/oflistwith.md) | 367 | `declaration-track:05f4556d3e01b942600504050f20c0324ea2937c6a2aa20adf1738f1bf97a574` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a280ae4ada49110cac8c1d8a688677bae300b40b624b5ac43fe4cf2fd117b49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbc587fd13a227830fc4922356fc0347caecf04e91244271eda782cba1e786393.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantbc587fd13a227830fc4922356fc0347caecf04e91244271eda782cba1e786393.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
