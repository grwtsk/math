# Verification target: Rel Classes Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a3031f952f8052230d7a0bd0fa134c1429a3abb",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a3031f952f8052230d7a0bd0fa134c1429a3abb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean.json)

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
| 1 | `theorem` | [Std.Refl.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/std-refl-swap.md) | 31 | `result-track:d85ec5e358a74888f5b3019469f45b84fb71e2cd45b3e3d2856dbffe85890fb9` |
| 2 | `theorem` | [Std.Irrefl.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/std-irrefl-swap.md) | 35 | `result-track:f58655dab6242d5ce50ed9a687dfc4ecb9b9e6cc5e5fb687209cc7318129ae60` |
| 3 | `theorem` | [IsTrans.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/istrans-swap.md) | 39 | `result-track:48d7c073c01662ce6eb5d7070bd20b4f109605d850dc3e2796a20b61d00ada4c` |
| 4 | `theorem` | [Std.Antisymm.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/std-antisymm-swap.md) | 43 | `result-track:9eda93825d600f49ef607aa9386561882e7624a52808c12ee1e82102f105f972` |
| 5 | `theorem` | [Std.Asymm.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/std-asymm-swap.md) | 47 | `result-track:e3e885e774b7e6cb9786d626653ebc311239a94e3b24332b9979f144ca76f8c2` |
| 6 | `theorem` | [Std.Total.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/std-total-swap.md) | 51 | `result-track:7058e12cb8a0657160f15b55413901cce7f855042ccf81511fe5ecb5dac13e69` |
| 7 | `theorem` | [Std.Trichotomous.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/std-trichotomous-swap.md) | 55 | `result-track:d7b18a14542a81083e7dfb2aff272e95aa8a71a2ce092962cce5bbde10a87644` |
| 8 | `theorem` | [IsPreorder.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/ispreorder-swap.md) | 59 | `result-track:caceacc75eb3fb57936924e993379269e074aadba777d9f1ce6bb284ec77fa0c` |
| 9 | `theorem` | [IsStrictOrder.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isstrictorder-swap.md) | 63 | `result-track:c712dc7557bd55118ed266f09e03d6d183f8413789df0426595fc3f9a007cbb2` |
| 10 | `theorem` | [IsPartialOrder.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/ispartialorder-swap.md) | 67 | `result-track:7f4e722bb0396840a3057ce78766c1e9ba4e215905ee09392b9f44c3fb4467b2` |
| 11 | `theorem` | [eq_empty_relation](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/eq-empty-relation.md) | 70 | `result-track:47fe96a3da01f4ce327d1a0b5623884c1e9ef090349546ad5d0ad6be67c01df5` |
| 12 | `abbrev` | [partialOrderOfSO](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/partialorderofso.md) | 76 | `declaration-track:b4935efc6569ccf833974bb53159d52b30cf05f0723db844b9a3ba62034bea82` |
| 13 | `abbrev` | [linearOrderOfSTO](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/linearorderofsto.md) | 97 | `declaration-track:eabf0413dae3766e04f3f8ababe5ae446d9f6f639469c2b8f4b3dec1fefe3145` |
| 14 | `theorem` | [IsStrictTotalOrder.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isstricttotalorder-swap.md) | 112 | `result-track:6376df8aa054b433bfa948b6f472c312f0af3b6aec1a8b5f2e02749919f7fe3e` |
| 15 | `class` | [IsOrderConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isorderconnected.md) | 121 | `declaration-track:1b45639be77f9431e3d9c6f780ab200ecfc6b3747981681a1dd18df5feb4c9e2` |
| 16 | `theorem` | [IsOrderConnected.neg_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isorderconnected-neg-trans.md) | 125 | `result-track:90fe9cd8304c5460a15834761d8bab615d62674582a8a38bf016498b20f79ad2` |
| 17 | `theorem` | [isStrictWeakOrder_of_isOrderConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isstrictweakorder-of-isorderconnected.md) | 129 | `result-track:8e9619497803ac5389f534ba94cb604b8dbee643dd01e136773b028edf2d435a` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-14.md) | 137 | `declaration-track:bdb605efb7143d59d309af37142f86a2c056ffc5f440c1ed1468d9fd47a4a4fa` |
| 19 | `instance` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/refl.md) | 148 | `declaration-track:0cc6825cfdf5f7b88f56714200a0ec4aeef9cc77586f19d0e2c549935533e28d` |
| 20 | `instance` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/symm.md) | 151 | `declaration-track:bfc60c539ac565c03a326ba4793bf3e5768ad1bcbcfc6bdd15ffbe393a5c37fc` |
| 21 | `instance` | [asymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/asymm.md) | 154 | `declaration-track:eeb9a9a4ca8497290388c78c6a28e0cb72638d1c07a11895a25c91cb7073f6b7` |
| 22 | `instance` | [total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/total.md) | 157 | `declaration-track:ed37dfd5d1dc23d8a5534b7623443ad27a9fdb9a97a26dbe178139ae7f0da6bd` |
| 23 | `instance` | [isPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/ispreorder.md) | 160 | `declaration-track:7191e770c24773ac88614cb8d2698cc64f7496070cd0d8ada7d03456ecc87b61` |
| 24 | `instance` | [isEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isequiv.md) | 163 | `declaration-track:ca3b53706189bb19e1b4ed5d90fc42feb5f168aae5af65df2ed4806c5acac3de` |
| 25 | `instance` | [isStrictOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isstrictorder.md) | 166 | `declaration-track:c1556b59610f8d16e74d9198c7f1f01246ced2005d7419d87f04788761f178cb` |
| 26 | `instance` | [isStrictWeakOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isstrictweakorder.md) | 169 | `declaration-track:112dc0b5d84611852fbfee14fb8c81ba1268f788cae18845494d370b2b75db69` |
| 27 | `theorem` | [antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/antisymm-source-edition-2.md) | 174 | `result-track:dc580c7072e7e2917814533574a404d01eb97d1dddca2146a8b19e22d54af2c8` |
| 28 | `theorem` | [trichotomous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/trichotomous.md) | 177 | `result-track:174f9ca5a82928fdc6b97011a9a52826b54b93aadb0c42252c06388a054585a7` |
| 29 | `theorem` | [isPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/ispartialorder.md) | 181 | `result-track:207a079b32b79530469683847f49bc46fd75db9e1f1def235b1b3bc37d519639` |
| 30 | `theorem` | [isLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/islinearorder-source-edition-2.md) | 185 | `result-track:b198bf50e1bf826b6c54e6289d5e797f414d7f252b08a1581487fdf33465ffb4` |
| 31 | `theorem` | [isStrictTotalOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isstricttotalorder.md) | 189 | `result-track:4c9eb4b68f6ce2c7e416b64d16bf3ddb62797fbd767a8eb6d593e88746567310` |
| 32 | `class` | [IsWellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/iswellfounded.md) | 202 | `declaration-track:01a3595d025e29f1bbef45f8092591b8d82f80c1c71dd282da8b28dca7a9296d` |
| 33 | `instance` | [WellFoundedRelation.isWellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfoundedrelation-iswellfounded.md) | 208 | `declaration-track:45d35de8e9303fd959cba4ed0987ee1aafcbf7b15a566ac154290438ba683cfb` |
| 34 | `theorem` | [WellFoundedRelation.asymmetric](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfoundedrelation-asymmetric-source-edition-2.md) | 212 | `result-track:ac8cedd0912d70cd775f283a71d38a12cfc9b8511998f241716eae90d4f7fdd3` |
| 35 | `theorem` | [WellFoundedRelation.asymmetric₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfoundedrelation-asymmetric.md) | 217 | `result-track:47770e8b7dfedbe94c811df7a6021ddd7db37d6f0dff5a8f1acf06b17f61b830` |
| 36 | `lemma` | [WellFounded.prod_lex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfounded-prod-lex.md) | 222 | `result-track:76e21d1de43b04d0d06ff9f01db92317dc35f5a38fff2200d90b1c852cff7d2f` |
| 37 | `theorem` | [WellFounded.psigma_lex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfounded-psigma-lex.md) | 231 | `result-track:5476c5c08ba376a6e19fd7b893af21e988f8f59b2d45dd49e6dacb0984f89120` |
| 38 | `theorem` | [WellFounded.psigma_revLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfounded-psigma-revlex.md) | 236 | `result-track:7d59e07337790d20636c42b308cadd8732f8db310e300a5962b786d4ea853885` |
| 39 | `theorem` | [WellFounded.psigma_skipLeft](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfounded-psigma-skipleft.md) | 241 | `result-track:9b7fcf931ab1d1a66e89524bb132d86ed2091cc7379d5b7eb1b95a588a9f755f` |
| 40 | `theorem` | [induction'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/induction-source-edition-2.md) | 255 | `result-track:bc60dae621a07ca8e787bc30751ff95f411109a576581b353a6eb576b5fd94d3` |
| 41 | `theorem` | [apply'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/apply.md) | 260 | `result-track:4582bf7f8b6493e31c0599d754354b2174bac2d1c856c64340434cf1428ea0a7` |
| 42 | `def` | [fix'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/fix-source-edition-2.md) | 265 | `declaration-track:be79a576f56f155f1586c3129a4c39663c73857caf64a71110e2e1531c4d046d` |
| 43 | `theorem` | [fix'_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/fix-eq.md) | 270 | `result-track:03c37efc8236f82c76afcd60558a8d862dd4a8f5293e126b7517e256b85aae98` |
| 44 | `def` | [toWellFoundedRelation](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/towellfoundedrelation-source-edition-2.md) | 276 | `declaration-track:98ef3bb3a6d5f111cfe73cd5492f66b55b12736bb29531d3b64cc8a2bb24858a` |
| 45 | `theorem` | [WellFounded.asymmetric](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfounded-asymmetric.md) | 281 | `result-track:90c2e08fba4eb1c94f614c8774b024450e1a5248ca9571de52cbe3093f2b6fc8` |
| 46 | `theorem` | [WellFounded.asymmetric₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfounded-asymmetric-source-edition-2.md) | 285 | `result-track:efae68cb1df2209b7f6167138f3652da4bbed8b42587d7bb0539b0334bf6f06a` |
| 47 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-22.md) | 290 | `declaration-track:f2e7884d0c3a6e545fbcadc361768e0f1e056dd6719a7273018550005238ddb8` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-21.md) | 293 | `declaration-track:e9638199569b40e3b93bcbd48dcfbb5fd5d5f0e8efa717b561ec83873bbf90c1` |
| 49 | `abbrev` | [WellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfoundedlt.md) | 298 | `declaration-track:f649518b4a41e6009bc861b31d8e147229a28362214be66fc8fa9fa81176ffff` |
| 50 | `lemma` | [wellFounded_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfounded-lt.md) | 303 | `result-track:91bbf03a706942be8eedaaa020d3184c4b45380719de0e05bcfd8cafc1da909c` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-12.md) | 307 | `declaration-track:82a97302533875786ab8039d70cb86d1f125e3cc2ed4f8705c99feb6fa694674` |
| 52 | `theorem` | [wellFoundedGT_dual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/wellfoundedgt-dual-iff.md) | 311 | `result-track:6bd1c8756880589636cff3e3aa60567ae07667f7e20cd6a24d5fb87b61c62e9c` |
| 53 | `class` | [IsWellOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/iswellorder.md) | 316 | `declaration-track:1fb6b45e967dcd579b8af524aa724d52959bfb608159ad341a2470451350ffeb` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-18.md) | 322 | `declaration-track:d9c37409154d6a9453883935c5b9825a1f9dea1c6fb2ec7d9521f31c26515b8c` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-13.md) | 330 | `declaration-track:a0fa74d08419b787e923159ca4d0c32fed3d8f20a275231659f21759c9d277c4` |
| 56 | `theorem` | [induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/induction.md) | 339 | `result-track:bacef0474efe4f1a5c604994fbe4c40aab23cf7dc599872975524ff4750dcfa5` |
| 57 | `theorem` | [apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/apply-source-edition-2.md) | 345 | `result-track:ec2cab06c0d7562984ffaff2e3aaeb54c37ae8a69d7cba79630a9a882b90f11a` |
| 58 | `def` | [fix](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/fix.md) | 352 | `declaration-track:3d3d22fe181ba88a5f089c1e541472bc018122477152fc3bf1715a98f057574d` |
| 59 | `theorem` | [fix_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/fix-eq-source-edition-2.md) | 358 | `result-track:bc6ed2c046180ce622dd2f46ff3bc4b6836cad530abcea17cfc69ddcc5b8c991` |
| 60 | `def` | [toWellFoundedRelation](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/towellfoundedrelation.md) | 366 | `declaration-track:4c6ed15e02c35bc0193efd175b2fd4508779957bb99ca2d2e15391770387bbc9` |
| 61 | `def` | [IsWellOrder.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/iswellorder-linearorder.md) | 374 | `declaration-track:25aaa18f0a929515e1fd646296da78bc350bf37357f63a351780c792e5849094` |
| 62 | `def` | [IsWellOrder.toHasWellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/iswellorder-tohaswellfounded.md) | 379 | `declaration-track:8acd9147779f9e4b334445ed8ddcf1865425a14acbe5c1775bbee30fcccbad30` |
| 63 | `theorem` | [Subsingleton.isWellOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/subsingleton-iswellorder.md) | 384 | `result-track:6fb8d5d0fd0ebd5b057f8b9de2bfefc3acc78bf8b66f2e08ce34565f332aa618` |
| 64 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-5.md) | 389 | `declaration-track:33f27a87c86364edad2bccc02b554ac9efae58deb4fc3be78a691d140e8d830b` |
| 65 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-15.md) | 392 | `declaration-track:c140e7f83879613beb4f2440e4531317c7d43949f4b92756a4233e8c7c7169fd` |
| 66 | `instance` | [Prod.Lex.instWellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/prod-lex-instwellfounded.md) | 396 | `declaration-track:16092aeb686d109d9de249b3790f12b00977bec83b94960702ed39d9995cd2e2` |
| 67 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-10.md) | 400 | `declaration-track:68efe51fc043831375fe280aef43cb2083d01821f9b17a4df63150a22e533062` |
| 68 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-11.md) | 408 | `declaration-track:7bb560cb77b77b35f85f32de763fc46d9fd91acaff151452fd33aab4008c0f1b` |
| 69 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-16.md) | 411 | `declaration-track:c3af75fc5b6716a29da8e06f0ca5a5fd0a5e564fd464629f4e48da9a8440bf1e` |
| 70 | `theorem` | [Subrelation.isWellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/subrelation-iswellfounded.md) | 414 | `result-track:359f774beabb7bfd43004e6e9b65379affbfadf495e3a53969fdaa0a203c90cc` |
| 71 | `instance` | [Prod.wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/prod-wellfoundedlt.md) | 419 | `declaration-track:6030c5205764495d8cd53fe1a003169c97a645797668f0f511ad29885b8df515` |
| 72 | `def` | [Unbounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/unbounded.md) | 433 | `declaration-track:832a69d19f09b31fdd6c11b24015cda1aab448bd71581044d743d197fbdae9c5` |
| 73 | `def` | [Bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/bounded.md) | 437 | `declaration-track:89ad7f558dc763c349b0094bb3c16e4db8619eff917dd948c106d5d30f49f85e` |
| 74 | `theorem` | [not_bounded_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/not-bounded-iff.md) | 441 | `result-track:4fca609cab1488f02a61c1af5212e815f9c1eda1d4ff89422944b008eb1cc5fc` |
| 75 | `theorem` | [not_unbounded_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/not-unbounded-iff.md) | 445 | `result-track:3fe0bed5a669abbb83d995e323cb0c5b65bcc4cf74cd75514d868eeb49bddac0` |
| 76 | `theorem` | [unbounded_of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/unbounded-of-isempty.md) | 448 | `result-track:4c2cf99dd5098916a6572ecce1ba53e99238fd828b14f9d6aa68aa94c81d9ab6` |
| 77 | `instance` | [instRefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instrefl.md) | 455 | `declaration-track:e4ea696d2021fb42ac03f665ddc9a91d64062c9e12fb64dd9622bdb7bf43d1ed` |
| 78 | `instance` | [instIrrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instirrefl.md) | 458 | `declaration-track:16ccc515422df437f8c8525deff6e72c13852fb2341dbc853345d890a16deb3e` |
| 79 | `instance` | [instIsSymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instissymm.md) | 461 | `declaration-track:9955ce563bd975ca3e8be5e4e13426772cd9468b7756747639be199f085e8d02` |
| 80 | `instance` | [instAsymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instasymm.md) | 464 | `declaration-track:bc64e3dd2ca4ed4430deacc7fc56420e4d29d229c942b040a6563553896b217d` |
| 81 | `instance` | [instIsTrans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instistrans.md) | 467 | `declaration-track:e0ef84d7a200ef651795dc27f20f454389925c97c04bcc3473597822a4891942` |
| 82 | `instance` | [instIsPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instispreorder.md) | 470 | `declaration-track:ae985d10fa3c26a33b80df9eb083a044dee3d0008253492361481fb1c1656c17` |
| 83 | `instance` | [instIsStrictOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instisstrictorder.md) | 472 | `declaration-track:698c9de004b9d09669426dcac3f5417ec9a325bddcded76e5071fc4f7a0c04af` |
| 84 | `instance` | [instIsStrictWeakOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instisstrictweakorder.md) | 474 | `declaration-track:98783ceabac0909a4eebe915b36580fc4fad222312a58c549dbb1bb858d18177` |
| 85 | `instance` | [instIsEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instisequiv.md) | 478 | `declaration-track:69d232e02621c1ae56acc038a08022dca0aa3ce686a4ab19731147294aa639e7` |
| 86 | `instance` | [instTotal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/insttotal.md) | 480 | `declaration-track:4fa7a5d2a6673d16d1ace6412c688c60093cdcf630654ed900a0f423e2fa5527` |
| 87 | `theorem` | [antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/antisymm.md) | 483 | `result-track:b3ece8c4099be2c23fa875ee70de06819aa4f0a6fd6f374e73d3641100e2323f` |
| 88 | `theorem` | [trichotomous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/trichotomous-source-edition-2.md) | 486 | `result-track:8d7a72521aebe2005eccc63a0e9bcf85fa887c1b94613c144b4a72aa1f946f0b` |
| 89 | `theorem` | [isPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/ispartialorder-source-edition-2.md) | 490 | `result-track:c506f6375d9781283d54ecacb9a45c979e69ec54f5cc41c7307ebcf11bdade56` |
| 90 | `theorem` | [isLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/islinearorder.md) | 494 | `result-track:37bbc4f94e5ec66984dabb73a0725d677d9165aa5ec8221cd2761650b80ee71f` |
| 91 | `theorem` | [isStrictTotalOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isstricttotalorder-source-edition-2.md) | 498 | `result-track:fec8279e086b9833287b38cfce4b3f32b515b8dc91b2215ed260494207f4b7cf` |
| 92 | `class` | [IsNonstrictStrictOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/isnonstrictstrictorder.md) | 510 | `declaration-track:00a77e84de4cbfa54eb855ede9a1ae9d271295c6533976f2ae659fbbd9199222` |
| 93 | `theorem` | [right_iff_left_not_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/right-iff-left-not-left.md) | 515 | `result-track:364fb1f5015fe79f2721a176d4d388486db5537a549511d05128d7fd04565d1c` |
| 94 | `theorem` | [right_iff_left_not_left_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/right-iff-left-not-left-of.md) | 520 | `result-track:f3e6b05c078fc330ddb6da3fa493cfa73ca9b29f9e2a7e758d13d9e415616019` |
| 95 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-6.md) | 524 | `declaration-track:3d9b6c48ab02071e42922360d7477ca63062c6235f57bbe9fdd0b2264ac0866f` |
| 96 | `instance` | [instReflLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instreflle.md) | 623 | `declaration-track:25cc19d0e1f3f6711ef21e5577585dc9ac409ac81181a92b937dcebd4397d9fa` |
| 97 | `theorem` | [Std.ge_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/std-ge-refl.md) | 629 | `result-track:f40179cf113aaf774fa5d21417f78ad11d0f1e6fd9efe9f2f092b84be9910a3a` |
| 98 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-4.md) | 635 | `declaration-track:16e3e3175c33b2487c5b66421bd6af4d5e13ed917ae2c757631c13b4fed401af` |
| 99 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-19.md) | 639 | `declaration-track:de7152ca668337b789e0e564d1050cacfe64dcd176c02926f0cd80b6bb544a57` |
| 100 | `instance` | [instIrreflLt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instirrefllt.md) | 642 | `declaration-track:9d2940278fcd795e54343acfc2350fc571e3f4dac4538f3916ee324a13002c6d` |
| 101 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-17.md) | 646 | `declaration-track:cf08d93bde81ccf42b1073cb50f954c4db1bf8cafe682012d2828b8488112788` |
| 102 | `instance` | [instAsymmLt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instasymmlt.md) | 650 | `declaration-track:49179304ec8898d2781745b56b31a3bd064368f57729bd0e624c89a82da24a6e` |
| 103 | `instance` | [instAntisymmLt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instantisymmlt.md) | 654 | `declaration-track:35430568c23943757e74c9f06eb6dd913129fa7bd781bea52dbbaa27dfc30aa1` |
| 104 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-9.md) | 658 | `declaration-track:5e85d619569a2c257a69cb1ecbfed44f62f2e22b8d402bc5f491e7601b24bf95` |
| 105 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-20.md) | 661 | `declaration-track:e6c488740706a11316b41f1f7715d773633eba71ddb01cab002f3a0e01fbe15c` |
| 106 | `instance` | [instAntisymmLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instantisymmle.md) | 665 | `declaration-track:c985930a0a919cdb5d125e044377d6c81ef7beb6d9c6df90252846a2ccc8242f` |
| 107 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-7.md) | 669 | `declaration-track:56148eaca8b62e6865a034e06460e751dfcca942cc72290e97f47de36015116e` |
| 108 | `instance` | [LE.total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/le-total.md) | 672 | `declaration-track:f2434bda15e8b6da8d6bded23411aba11f4e2f9a45f79b98816a081834b7418c` |
| 109 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance.md) | 676 | `declaration-track:109ab457738e162be76f771d4caadc791cd5068f17e39827410b110a878f6881` |
| 110 | `instance` | [instTrichotomousLt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/insttrichotomouslt.md) | 679 | `declaration-track:941ca1608e394a0f95eef645f0bd927195fc9edffa0a16ef9c336f572ae56e30` |
| 111 | `instance` | [instTrichotomousLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/insttrichotomousle.md) | 683 | `declaration-track:78728ea863c816a425f878b5b3ffa2e51968bd7f1251fed4f3fb62170a8816b3` |
| 112 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-8.md) | 687 | `declaration-track:59c013972247acecfcca953c2101acc4e9584c3f6bce11044df83d092d0686d4` |
| 113 | `theorem` | [isTrans_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/istrans-le.md) | 690 | `result-track:4486329a3c5603c598918b13e30be34b932c711f7ba13c7cb1d91c136f226e49` |
| 114 | `theorem` | [isTrans_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/istrans-lt.md) | 694 | `result-track:7b10eeadd307293b43090b33246f9fc1ec111714b30cb76db9d56e317fc3fd2a` |
| 115 | `instance` | [OrderDual.total_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/orderdual-total-le.md) | 698 | `declaration-track:3dc840532d682a4ecdbfcd727f45915cb209dfec8e7f46938125b259b9e4330f` |
| 116 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-2.md) | 701 | `declaration-track:10e799313dae2129d2b301ad53a17c33375b8564b75de85287b4be445e8f2e4f` |
| 117 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelClassesPublic.lean/declarations/instance-source-edition-3.md) | 704 | `declaration-track:15cb70a9284284aa1ff1d59bb9a8daa484c33fe522e9293eeec0f12dca2bed4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a49c242141ec5011ca683eefd1bdbc24919c7ffb8347b9d8d640cc41c9f70b93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
