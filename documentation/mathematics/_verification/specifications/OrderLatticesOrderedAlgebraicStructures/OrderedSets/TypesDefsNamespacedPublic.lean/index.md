# Verification target: Types Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5923bd5da9347da35a2342197b3e531a4b1be073",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant8357a118efe52060c86ede4593fb14d5d3cebeff1cbeee7fb315ead79d9983dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5923bd5da9347da35a2342197b3e531a4b1be073`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant8357a118efe52060c86ede4593fb14d5d3cebeff1cbeee7fb315ead79d9983dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant8357a118efe52060c86ede4593fb14d5d3cebeff1cbeee7fb315ead79d9983dd.lean.json)

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
| 1 | `def` | [OrderType.instSetoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/ordertype-instsetoid.md) | 61 | `declaration-track:507851d9b09c816f63c1fc0979ee07683138997c7c85ef07ab2f136d41317bd2` |
| 2 | `def` | [OrderType](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/ordertype.md) | 67 | `declaration-track:34462e477568cb980221b22ac6788c64bc1ed0dee2111d66607057c8a3b127aa` |
| 3 | `def` | [ToType](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/totype.md) | 74 | `declaration-track:b4b860d4f7cf560a622aee81a6b21c2b2222b294e8cd7b5b70097a7dd93410e6` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 80 | `declaration-track:97ded2b1f687011ecadf3b89b4214cbe842c2ed7de2661ba802a2236caba0c2a` |
| 5 | `def` | [type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type.md) | 86 | `declaration-track:fb7b301af8409252c4d387a98a3166f590e5cd5e926df41657e15bf0192fd51e` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 89 | `declaration-track:94f8ce5d997a851596f5c1163fa60635d7301e834145cafe77abae94123479bf` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 92 | `declaration-track:ef54d769e133e0a68cbcef794399f82003b9b9a9022766a92ecdb4e6908a435a` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 95 | `declaration-track:7c053fb7614ead9a8520553a5cd52ab99d4f2efc52092808d530852bf0381733` |
| 9 | `theorem` | [type_toType](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-totype.md) | 99 | `result-track:ae3a8b1b97e72ec6b957e634651efe4407c9568fdb56fcfb9108de08cd3be14e` |
| 10 | `theorem` | [type_eq_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-eq-type.md) | 101 | `result-track:ffd4f5d42a877de114c5fac32d3b3d415fe5b94c81e457e6579dbb82cfd7d996` |
| 11 | `theorem` | [type_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-congr.md) | 104 | `result-track:28b8680541edd361d05df76e7d8c0d76ab6da57556e8f9c17364e5b6274b3ff4` |
| 12 | `theorem` | [type_of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-of-isempty.md) | 110 | `result-track:5279c818cf3ddbdafbfaf95824eef97f6f44acb0302750bdcc91d18b82fd4c73` |
| 13 | `theorem` | [type_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-eq-zero.md) | 113 | `result-track:2fb053bd3a4c5a6f62f15efd2e0907398d424a534e95f2474a0d040b60a5f902` |
| 14 | `theorem` | [type_ne_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-ne-zero-iff.md) | 119 | `result-track:0abd09afdadc514a3b16cd14d431b4fe7d919a0fdb021694ab27044df474bf62` |
| 15 | `theorem` | [type_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-ne-zero.md) | 122 | `result-track:41423a90003c6ba966751cf8ddd22301ef7c47ba1eb427b7dd6194208ab8c3ee` |
| 16 | `theorem` | [type_of_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-of-unique.md) | 126 | `result-track:94e35c690414915d52d3d7b99d6884e2159cecfc7a3e236d884d944691532d6d` |
| 17 | `theorem` | [type_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-eq-one.md) | 130 | `result-track:555f7424f9356d1af9b5f6350b1993e160d6f69cc38a93f353d189dc7efe7b79` |
| 18 | `theorem` | [isEmpty_toType_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/isempty-totype-iff.md) | 135 | `result-track:08fcabc08e36535899b3ac0e4a65fa2f31338b782206b06c5539bd3bdfbcb840` |
| 19 | `theorem` | [nonempty_toType_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/nonempty-totype-iff.md) | 139 | `result-track:e8b09a16bc4641f23cd0b35289b67f40257b0c377753865d2371124aac4e3749` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 142 | `declaration-track:9fac724aa1f4b9c4a86071daa40c31cc50ae5bb0f42cd1265fd0190b7a8037c5` |
| 21 | `theorem` | [inductionOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/inductionon-source-edition-2.md) | 147 | `result-track:879dd62c9a1bb4e460d49aa07253a13ca49e7f466f684c96209bc138f846160b` |
| 22 | `theorem` | [inductionOn₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/inductionon-source-edition-3.md) | 153 | `result-track:bad0e2382d0d89ebe9de8e07cf3afb84fe6713cadc618ae351214f480d3bbb2f` |
| 23 | `theorem` | [inductionOn₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/inductionon.md) | 159 | `result-track:76878f462e7b046905f270c8f479d09b75a3532cb874c5aa43a9919f83b00b5b` |
| 24 | `def` | [liftOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lifton-source-edition-2.md) | 167 | `declaration-track:d94733306a1c8c20f8408b08467d6de69ed0f22edaea6756573895b0cc7fb35f` |
| 25 | `def` | [liftOn₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lifton.md) | 174 | `declaration-track:c6422636b3204e7065fdb1a5557bede3fa70c7dc42030a850b97b204f7dc1be8` |
| 26 | `theorem` | [liftOn_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lifton-type-source-edition-2.md) | 181 | `result-track:5ca70c4e8e8ed882fb432fe63f987c6ad443acdbde14a83bc18fada4a866adef` |
| 27 | `theorem` | [liftOn₂_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lifton-type.md) | 187 | `result-track:597122b51e0430f74159eb578a0f49f6fe0481af57efaf25359acc030e41ddba` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 199 | `declaration-track:579c33c0ad52c63c832a0f58eff300c7ccf4fa391904ca45c5b091442d900c56` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/instance.md) | 208 | `declaration-track:3c5f5fb4e0581831e3c653f9735c3a6e048b8ff7bf692688f77af02912aabcce` |
| 30 | `theorem` | [type_le_type_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-le-type-iff.md) | 211 | `result-track:7a90f266bcdc7fe7720be84d67f94fbaa5215452a6dce0f414263b1c560d7d41` |
| 31 | `theorem` | [type_le_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-le-type.md) | 214 | `result-track:fbfcdc54ff604b44af9269b890ee9b836c54b7b2e33f8825eb4384dd10520a32` |
| 32 | `theorem` | [type_lt_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-lt-type.md) | 217 | `result-track:1bef2ad7526d5a7b968dea730b15d15608d87d7c887476e925b45b5acb35e180` |
| 33 | `theorem` | [zero_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/zero-le.md) | 223 | `result-track:1357545a0e82f46e348fac2347b2bfb9920d79c8ad3497f96b3629d482ad8a16` |
| 34 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 226 | `declaration-track:b2d75bbcb632121870f4bb65457daa1c92996b0e345464eeb6505613f119d36a` |
| 35 | `theorem` | [bot_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/bot-eq-zero.md) | 231 | `result-track:3cb32454ba510e2335a661b76bdcfc37dd63eb700c5cb901dd96a3258dec096d` |
| 36 | `theorem` | [not_lt_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/not-lt-zero.md) | 235 | `result-track:d99a3f15ed66d3b61f8c7552a161abf510d2c6d980cc63458c2ec1f0440ced6d` |
| 37 | `theorem` | [pos_iff_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/pos-iff-ne-zero.md) | 239 | `result-track:c854ca974e55c78094c52ff022ee2224f039742cd2efb87f57159542f41a3a41` |
| 38 | `def` | [lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lift.md) | 249 | `declaration-track:a3443ef5e1cffa20e2b71da4bc3e58d8fce359dc7389b3b597698554594394ec` |
| 39 | `theorem` | [type_ulift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-ulift.md) | 254 | `result-track:060f640083e38f0cdbb336e9563aaa7e4a6bb5b7024cdfc312fb2d739dd4451f` |
| 40 | `theorem` | [lift_id'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lift-id-source-edition-2.md) | 257 | `result-track:a3c89ed4ea039ba99605d78a28f18c4477784a9557b4e2908f82369ee5e8b25f` |
| 41 | `theorem` | [lift_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lift-id.md) | 262 | `result-track:36fb1c47324767784ae83c077cd3a723a6bd14e1b0aad45cff23165fbb5d02ef` |
| 42 | `theorem` | [lift_uzero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lift-uzero.md) | 267 | `result-track:71ae38ad0e75a7cd815deb5059936c1cfe28d9c14ce06b7c13cad52a958504c3` |
| 43 | `theorem` | [lift_lift.](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lift-lift.md) | 271 | `result-track:f1635023b8dc2f907c38beb59be93f5b9654544b732c67061a50685314329003` |
| 44 | `theorem` | [lift_type_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lift-type-eq-iff.md) | 275 | `result-track:699aeea6abd176ce37598cce8e74cafc98df4436cc1d9829f06b5bf122ce6b17` |
| 45 | `theorem` | [lift_type_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/lift-type-le-iff.md) | 280 | `result-track:6243fd00987fe0a168bd877858189f72550d01d12ccaf3f4bac2a90fd9bdd2c5` |
| 46 | `def` | [omega0](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/omega0.md) | 288 | `declaration-track:8ba93f1dc4321c7008beaf078dc23d194c39289cc3fe11eedc5294d0e1047b26` |
| 47 | `theorem` | [type_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsNamespacedPublic.lean/declarations/type-nat.md) | 295 | `result-track:cca0335638c7558d2e5aaf3893f31a2c2e03f49c31233edb2b118e1bf258c05d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed3a215392513a8ef4efefa7b96454ee641feac7908a6559dba840d4fceb56fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant8357a118efe52060c86ede4593fb14d5d3cebeff1cbeee7fb315ead79d9983dd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant8357a118efe52060c86ede4593fb14d5d3cebeff1cbeee7fb315ead79d9983dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
