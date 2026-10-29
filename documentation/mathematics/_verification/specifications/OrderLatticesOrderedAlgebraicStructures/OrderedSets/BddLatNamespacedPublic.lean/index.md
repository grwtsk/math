# Verification target: Bdd Lat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bd3c32f059505d85af89a60ea5fd40c409760ec",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant646ba0ad83fe454a8680c6c3d0f284ceb9fb70f2ccab7dbba3ce53c8eaa4d905.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bd3c32f059505d85af89a60ea5fd40c409760ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant646ba0ad83fe454a8680c6c3d0f284ceb9fb70f2ccab7dbba3ce53c8eaa4d905.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant646ba0ad83fe454a8680c6c3d0f284ceb9fb70f2ccab7dbba3ce53c8eaa4d905.lean.json)

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
| 1 | `structure` | [BddLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/bddlat.md) | 39 | `declaration-track:c0cd1fa4fc0cf61c9583bebfa5cc9f42fe27be7a857929ae874fa6dddbb42803` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 47 | `declaration-track:84649c34c60246a0c07f05812fd174f9207fae24716803f02ce49571f621d46a` |
| 3 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/of.md) | 53 | `declaration-track:13886f7b0dd42cb40036ea76539669421327efe914ed75e33123578337d099aa` |
| 4 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/delabof.md) | 59 | `declaration-track:c1823649d842c8818f374201cba9840732bf50c9a142242db9dc9b09b9483ca0` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/coe-of.md) | 61 | `result-track:70fbd5876626b348e3eacda9ce5b71391e223d8fbb2bd5c5d0c98c57b7ae6286` |
| 6 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hom.md) | 66 | `declaration-track:d1bef3933868be5de78835a8b0bffc0c2e0ddbd875b9e2c3467a9bcedc1e9fa3` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:802e6b78db68bea12605cfa312b6e882e79e396948c9499e054d4d743d498505` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 74 | `declaration-track:c5f98fc927e53d6b6e24a3f4c4a31d0da84de8c16996077d13bef595cb5cc118` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/instance.md) | 79 | `declaration-track:3e9abb57bc9ab8c555951c28c7c8c98f029312f5128ee0c0c3c18bc63c91e18e` |
| 10 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hom-hom.md) | 84 | `declaration-track:86595a76b82b5c80183df0d6dcf0c7111561b88884f4bc27deb396cfe6345e46` |
| 11 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/ofhom.md) | 88 | `declaration-track:f4b7debe6455a8be02ab3d42924803d5deafe58336f885cad534b4ec92199451` |
| 12 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hom-simps-hom.md) | 94 | `declaration-track:b29ea6cfad9e728bfddafcf9a03d0e2733afcc57350d149089bb9c87bb610419` |
| 13 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hom-id.md) | 100 | `result-track:c8a3b97b04c974a51af3ba4009ce3410b1137c18261fb5371f06ddab4a4b33f4` |
| 14 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/id-apply.md) | 103 | `result-track:0af0376a2885cd7dc6a64e96ee56508a90ae57c24a6c3a0c3255e840ad33ad8a` |
| 15 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hom-comp.md) | 107 | `result-track:dcac2fd504ce075ee6e02ba403613e2a0e8411f1ecd7db263e8c002c8eac80db` |
| 16 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/comp-apply.md) | 111 | `result-track:d3c0f7578f0ab61525cebe179cf121a86621b0d65b9ce74807f165762e9a3d1a` |
| 17 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/ext.md) | 115 | `result-track:60409ce6a23621180e2471ab3cf6c69d8f967ad343b91b500b28f766f6e156fc` |
| 18 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hom-ext.md) | 119 | `result-track:50932ec323dc10e73ba46a59854cb04c2a8b3637dba2e05950328ad9a1c68a88` |
| 19 | `instance` | [hasForgetToBddOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hasforgettobddord.md) | 122 | `declaration-track:ccbea9c701ff0dc850a95ee8afd1e3020228b9ebdf88a15f3666c4e86d70b6ce` |
| 20 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hasforgettolat.md) | 126 | `declaration-track:a8042cf9a6e2be98d106885980010062868e9f72c9973bd2ba9b94002dcced88` |
| 21 | `instance` | [hasForgetToSemilatSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hasforgettosemilatsup.md) | 130 | `declaration-track:859704b4842be240cba4e564083ec847dc006f78b8532009fc76752539bf5c0a` |
| 22 | `instance` | [hasForgetToSemilatInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/hasforgettosemilatinf.md) | 134 | `declaration-track:70c4118ded82ee95ee108a8b62e8e2e68f610979461e6824a8aa0f4b0c1b84db` |
| 23 | `theorem` | [coe_forget_to_bddOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/coe-forget-to-bddord.md) | 139 | `result-track:95ee543a1717500fb8a3189f35cd5a26a611c83521f5552ef4ffa1017323af05` |
| 24 | `theorem` | [coe_forget_to_lat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/coe-forget-to-lat.md) | 143 | `result-track:0de590bf76604b1ba8a89113c98a1b2253a2d4a47d64fb5d3d81a0a7b20ee04d` |
| 25 | `theorem` | [coe_forget_to_semilatSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/coe-forget-to-semilatsup.md) | 147 | `result-track:f8bbaaeedb43fa03388619a0b778fb9f9fa4be435dfb67efaedc677ff00df186` |
| 26 | `theorem` | [coe_forget_to_semilatInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/coe-forget-to-semilatinf.md) | 152 | `result-track:4274a66b9845f594701be797fa77029138f1e50864969ae51054f1f1a542b797` |
| 27 | `theorem` | [forget_lat_partOrd_eq_forget_bddOrd_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/forget-lat-partord-eq-forget-bddord-partord.md) | 156 | `result-track:da6336e007a335c0c140e445e26df37d516e7b14e8061e29fdb800a1e1099816` |
| 28 | `theorem` | [forget_semilatSup_partOrd_eq_forget_bddOrd_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/forget-semilatsup-partord-eq-forget-bddord-partord.md) | 161 | `result-track:cfdf981f5a39ed8955660212cf3757a562a00bff390cfc828e431c59f9984b46` |
| 29 | `theorem` | [forget_semilatInf_partOrd_eq_forget_bddOrd_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/forget-semilatinf-partord-eq-forget-bddord-partord.md) | 166 | `result-track:df5c85fb56d08cb7826fbf387bb1f35f8eb8f4cc8d72803276d3fd077efee182` |
| 30 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/iso-mk.md) | 174 | `declaration-track:168f76938c694d9a6fbb1e11951bf33628a6f95529afd4b11c76db9a0a4c794d` |
| 31 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/dual.md) | 182 | `declaration-track:4458ac31b36e86b593a137d25161b792f5335036945ef6ddb4a0446ad2f829fd` |
| 32 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/dualequiv.md) | 188 | `declaration-track:718d0b3d4d5fd4142160aa73bdcd0fcbbb660195c7b04e7d845d799f69645f3e` |
| 33 | `theorem` | [bddLat_dual_comp_forget_to_bddOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/bddlat-dual-comp-forget-to-bddord.md) | 196 | `result-track:21803ab94c18dac60588d58ec2a0ab73dba26d7b5e317b1c57ac7ed1ff1d2482` |
| 34 | `theorem` | [bddLat_dual_comp_forget_to_lat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/bddlat-dual-comp-forget-to-lat.md) | 201 | `result-track:098025ade510c9ebe804bed8d92c503d7912e5530c63e3f8623a682accfb912b` |
| 35 | `theorem` | [bddLat_dual_comp_forget_to_semilatSupCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/bddlat-dual-comp-forget-to-semilatsupcat.md) | 205 | `result-track:41c7935615e1ce90cae4da51d6fcb574a266d5bf312b58a6d6445aceb0b892a8` |
| 36 | `theorem` | [bddLat_dual_comp_forget_to_semilatInfCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/bddlat-dual-comp-forget-to-semilatinfcat.md) | 210 | `result-track:e2af75ebb5c04aa3c1aa7ed8c72778ee7192408c25a9b3b04b041d15ddcb92ca` |
| 37 | `def` | [latToBddLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/lattobddlat.md) | 216 | `declaration-track:b6df3aa46403d5837f0541bd452d614da858cb2920a5bb48ddd1206334012cc0` |
| 38 | `def` | [latToBddLatForgetAdjunction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/lattobddlatforgetadjunction.md) | 222 | `declaration-track:5c8c60d5b0c1748ca508d0e2c4f74c0b8b5ca853b9aeb43b0f18731a5647cb86` |
| 39 | `def` | [latToBddLatCompDualIsoDualCompLatToBddLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatNamespacedPublic.lean/declarations/lattobddlatcompdualisodualcomplattobddlat.md) | 245 | `declaration-track:1ff052319ad7c42fb208b1dc4f9fa9d8cca7322440a4c06e1a5b8488896d9a6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3aff2b8da4c5ca83c87b9991469ff6759beb441beedf2e1e7e3ab54566b367a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant646ba0ad83fe454a8680c6c3d0f284ceb9fb70f2ccab7dbba3ce53c8eaa4d905.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant646ba0ad83fe454a8680c6c3d0f284ceb9fb70f2ccab7dbba3ce53c8eaa4d905.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
