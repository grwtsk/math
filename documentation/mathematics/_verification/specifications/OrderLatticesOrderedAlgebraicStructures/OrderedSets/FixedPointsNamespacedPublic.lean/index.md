# Verification target: Fixed Points Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94cd98658ba54357f6d830b001dd2c4dc4e24e7f",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant6a476af58b62301e9c34cf3ac7dfa03ceb5797e4f2faf6dd831864b1647a85f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94cd98658ba54357f6d830b001dd2c4dc4e24e7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant6a476af58b62301e9c34cf3ac7dfa03ceb5797e4f2faf6dd831864b1647a85f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant6a476af58b62301e9c34cf3ac7dfa03ceb5797e4f2faf6dd831864b1647a85f4.lean.json)

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
| 1 | `def` | [lfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/lfp.md) | 57 | `declaration-track:81842cf5c925e8cf419534f69f5ba00a0def700416273e332c5538a98eef27e4` |
| 2 | `def` | [gfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/gfp.md) | 62 | `declaration-track:019061aeb6562ab4c3d5071a1a25afd671f9c3d5c942bc492a7e641afa08c3b0` |
| 3 | `theorem` | [lfp_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/lfp-le.md) | 66 | `result-track:e661a6f6444332b4faff003560b3eded6f4f0bbb7abd8617ddd5a6224e90c355` |
| 4 | `theorem` | [lfp_le_fixed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/lfp-le-fixed.md) | 69 | `result-track:131b3652cf7b50ad9a480733361c1ef12c7123fd480c1e26e19475233354132f` |
| 5 | `theorem` | [le_lfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/le-lfp.md) | 72 | `result-track:5bfd4990075676462dfc2f9ee3b9fe4e52144af1d5c1ce48a3ef49d5ef15c7e6` |
| 6 | `theorem` | [map_le_lfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/map-le-lfp.md) | 75 | `result-track:4ae88d894108c6579d0e6856aea9c76c1a657e8846eb39797127108d5f572869` |
| 7 | `theorem` | [map_lfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/map-lfp.md) | 79 | `result-track:898d843eb6b040a93b991ffca78a45947c30423b08cc11f75b374c958f8c192b` |
| 8 | `theorem` | [isFixedPt_lfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/isfixedpt-lfp.md) | 83 | `result-track:8befad8714891bbb9a6f580800248ad49fcc2a0f9a007a4de75bbd0865bb041f` |
| 9 | `theorem` | [lfp_le_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/lfp-le-map.md) | 86 | `result-track:1331805f87a79ad0f5ae8072dff35f482e403d988d724f5b203e203eabec2670` |
| 10 | `theorem` | [isLeast_lfp_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/isleast-lfp-le.md) | 91 | `result-track:6059d9c7fed88ce03cfdf5a7c06db1ca44535d92561ef80326d59ef36cada9f8` |
| 11 | `theorem` | [isLeast_lfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/isleast-lfp.md) | 94 | `result-track:1d8eb522ef9f467258f0cf9128a4aa23b17de36af2b9205a4814f34b8027515d` |
| 12 | `theorem` | [lfp_induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/lfp-induction.md) | 97 | `result-track:c19e5e51400aebefaf5a6d751ef85e42837b8032627202106da0cbd286ef8d22` |
| 13 | `theorem` | [le_gfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/le-gfp.md) | 106 | `result-track:85d0a0f4226575d640be50c86ced9853844fd6b6c7f7e727c9764005af48fcdb` |
| 14 | `theorem` | [gfp_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/gfp-le.md) | 109 | `result-track:f6518ed52f96908eab6e6aefc3f21e5b3ff5699b3f2561cf86b4a4877f25fb7f` |
| 15 | `theorem` | [isFixedPt_gfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/isfixedpt-gfp.md) | 112 | `result-track:8ff756576e4dad3c30a49a14a1118f8be399021fb05b2db2915592b420fd0740` |
| 16 | `theorem` | [map_gfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/map-gfp.md) | 116 | `result-track:cb387875bae011d61ffad9cd6eb22ec7686d527c8240d34d1b78c5ffd1856437` |
| 17 | `theorem` | [map_le_gfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/map-le-gfp.md) | 119 | `result-track:178af4495d5c64fbb06ddb6fd4507f37e45a414421740a440b3d8bd84ff6ce5d` |
| 18 | `theorem` | [gfp_le_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/gfp-le-map.md) | 122 | `result-track:6636c6b84c1534f6f0fe48a62b92bcef3759ee5ab613387b6154af1d2c933cf2` |
| 19 | `theorem` | [isGreatest_gfp_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/isgreatest-gfp-le.md) | 125 | `result-track:2925e9a9ebfb53230cec568031d37ed9cbe981bd889112e4497fea9d88af18b9` |
| 20 | `theorem` | [isGreatest_gfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/isgreatest-gfp.md) | 128 | `result-track:c113d712a32d11873701265827d81dec90ec2a076e0a022f7abe7778b11d2c3e` |
| 21 | `theorem` | [gfp_induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/gfp-induction.md) | 131 | `result-track:82d57a97d639bbddf9fde04099012a9b5f17e296328d548d488696ede2a8c7fc` |
| 22 | `theorem` | [lfp_le_gfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/lfp-le-gfp.md) | 135 | `result-track:1f097a8302e93e357549a67581e2f5de581904825c2dc4a51eb1b330af6f80bd` |
| 23 | `theorem` | [map_lfp_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/map-lfp-comp.md) | 145 | `result-track:22e21183c9de9aa1f829a22e617f38f58e115167a752dbe3f38934cbe592e020` |
| 24 | `theorem` | [map_gfp_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/map-gfp-comp.md) | 149 | `result-track:1a30cd9aacdcafac65b7659111572ed3ce3fb1e199ff199d1b2c0952d0c27e72` |
| 25 | `theorem` | [lfp_lfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/lfp-lfp.md) | 153 | `result-track:e5052fc0e452d53a54d24c24235ca194deb2645bd4f1ea5715c6aa0b51aa9b73` |
| 26 | `theorem` | [gfp_gfp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/gfp-gfp.md) | 163 | `result-track:02ed198bf2da5f09f9cc2e339ee980ef34ec12864f030f80496b3d0c7676ca6d` |
| 27 | `theorem` | [gfp_const_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/gfp-const-inf-le.md) | 172 | `result-track:aaa4217d39c55290498dd55734093abe4fc7d33e7ed4930c0685746cfdd38c0c` |
| 28 | `def` | [prevFixed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/prevfixed.md) | 178 | `declaration-track:194c7777643d7fa297a1564a6aa9796fa4805fd8421fe6c87853b33cb2795fbf` |
| 29 | `def` | [nextFixed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/nextfixed.md) | 189 | `declaration-track:10e54604c2021e596479adceb09ffe1cdffa1e5fbf36bed1ce00b3c7605e95b5` |
| 30 | `theorem` | [prevFixed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/prevfixed-le.md) | 192 | `result-track:ff6c3dfdbadea5efc15c7c1655105c7dd43b1d1225c279e0fc6ca13eba02aac7` |
| 31 | `theorem` | [le_nextFixed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/le-nextfixed.md) | 195 | `result-track:4fe3bcf436a182e9b9b9feacadfd270a2988bb2fb81d69bc30fbfce6410769e6` |
| 32 | `theorem` | [nextFixed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/nextfixed-le.md) | 198 | `result-track:483f5d1cf4a2b7882e08509f4b839e80373649f9da390fb63b173ba6c92e777a` |
| 33 | `theorem` | [nextFixed_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/nextfixed-le-iff.md) | 203 | `result-track:106d1040c8524964bde4f9184d92d5e9d3f8835ab05b1dc56d5394f36bd7e9a0` |
| 34 | `theorem` | [le_prevFixed_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/le-prevfixed-iff.md) | 208 | `result-track:62a9b0467b7ffa57584216a901a9bb674b621743f7c9223f407cc3b2aa3dece3` |
| 35 | `theorem` | [le_prevFixed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/le-prevfixed.md) | 212 | `result-track:bb8174ec27a2940ecdd158675be5b233154256402fac19f8e4cfcc8f9d647b2a` |
| 36 | `theorem` | [le_map_sup_fixedPoints](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/le-map-sup-fixedpoints.md) | 216 | `result-track:7a7db16d1f7313ff7b519c9294d1dacd65faebea3142e7f960115bc01d87362d` |
| 37 | `theorem` | [map_inf_fixedPoints_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/map-inf-fixedpoints-le.md) | 222 | `result-track:a32b40cb546fa3f5e1831e6a671c9c8f08322770830a1e37eb15573f02fb2cd0` |
| 38 | `theorem` | [le_map_sSup_subset_fixedPoints](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/le-map-ssup-subset-fixedpoints.md) | 225 | `result-track:e5c7631a0c92b5533dddbb0eb3e5d2e049659be6813ce951a696d3a89bf46b21` |
| 39 | `theorem` | [map_sInf_subset_fixedPoints_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/map-sinf-subset-fixedpoints-le.md) | 229 | `result-track:ef54f0ae0e021a53b76b121b7d3605b0eaa7022291ff930f5ab6a4fcf052649d` |
| 40 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/instance.md) | 243 | `declaration-track:4c88348dfebf00a3428208b275f3c3bfb4a62db443c27ec7cb48832fc2ad0e00` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 249 | `declaration-track:59a7ad861a2c4681e83b6569599c9b75c4093286f9cdcf23c56f8ef89499db2b` |
| 42 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 255 | `declaration-track:d88eed27c19ce04ef8d248d77bea0b3af80fe9ed1f02ee621f5194b9bbe9e81d` |
| 43 | `instance` | [completeLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/completelattice.md) | 261 | `declaration-track:69a8392f7109da509510fb035b245ada325b049028d4391c2e7f49ed69ba4c65` |
| 44 | `theorem` | [lfp_eq_sSup_iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/lfp-eq-ssup-iterate.md) | 280 | `result-track:d89fc8d59b6cce5563b52b19d89fe72682ee20bd82c308adbf0bd04568e20852` |
| 45 | `theorem` | [gfp_eq_sInf_iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPointsNamespacedPublic.lean/declarations/gfp-eq-sinf-iterate.md) | 290 | `result-track:1d1622975269abab8fd37909438b0c78a62913b8fce58f4b4c0f9eb19a1236a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7b44d2967255aed7a49529bf830671f3749bec428d2845a01fbde8746ab4321 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant6a476af58b62301e9c34cf3ac7dfa03ceb5797e4f2faf6dd831864b1647a85f4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant6a476af58b62301e9c34cf3ac7dfa03ceb5797e4f2faf6dd831864b1647a85f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
