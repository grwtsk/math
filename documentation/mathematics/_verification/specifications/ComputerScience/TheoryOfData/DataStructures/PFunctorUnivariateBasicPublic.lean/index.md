# Verification target: PFunctor Univariate Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbf6d1fb6d0b5d25e249c90736b77521a219ee96",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb1738551e529accb57f00ad108470504a730a7aa0bb16fd7bde28679cd7ad298.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbf6d1fb6d0b5d25e249c90736b77521a219ee96`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb1738551e529accb57f00ad108470504a730a7aa0bb16fd7bde28679cd7ad298.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb1738551e529accb57f00ad108470504a730a7aa0bb16fd7bde28679cd7ad298.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PFunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/pfunctor.md) | 32 | `declaration-track:80b521c597080906bc13d05b0e6fb614f59788e074defa5059adf1ab49beed7a` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/instance-source-edition-4.md) | 40 | `declaration-track:f3dc332411f40918ef438456eac480d9bad4f3d9c7467026715fe834937686dd` |
| 3 | `def` | [Obj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj.md) | 47 | `declaration-track:934266706d4ec28e72af010e8216bd6aa71328060ef979c72898c2110e9717cd` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/instance-source-edition-3.md) | 50 | `declaration-track:32ce95a26c96d50c802e2815b6d5e70f662cbcfa4b5923c39bf5eb2cb3f7cb7d` |
| 5 | `def` | [Obj.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-mk.md) | 62 | `declaration-track:63ef7ca4e44406d43c7fae6fdddfa8919a19885720c05f06907a479faea3325e` |
| 6 | `def` | [Obj.rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-rec.md) | 67 | `declaration-track:c5b7586991ff2a6366082b5541edec994bab955fbbb22a425f0b58d82e3f469b` |
| 7 | `theorem` | [Obj.rec_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-rec-mk.md) | 71 | `result-track:2a1d919b227444e087940e5ea07d7656fad22bb4b4b2121d4d9cd3fa309a8721` |
| 8 | `def` | [Obj.fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-fst.md) | 76 | `declaration-track:0cbb0e81280891c157e0c7ab2de09b7aced2c3ba4884fe34201052488365ff7a` |
| 9 | `def` | [Obj.snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-snd.md) | 79 | `declaration-track:e5c73d9ba56b0e5d46f1a688fb07c2d45ade75f509314d9fad766181482887dd` |
| 10 | `theorem` | [Obj.fst_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-fst-mk.md) | 81 | `result-track:e7ba29f63c1ebdebcaf16b3cf06b6202d8f19791307a3d8b4ba5238873eff52c` |
| 11 | `theorem` | [Obj.snd_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-snd-mk.md) | 82 | `result-track:c9e0d517b80bbcc7eda26b5ebbd4c5a15fd089b551afe0a69bf8bea944cf3d76` |
| 12 | `theorem` | [Obj.eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-eta.md) | 84 | `result-track:90ce0998905360f39f3743390c97e7059d7742746e34ec2e1f853b5916613fb8` |
| 13 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/map.md) | 89 | `declaration-track:d40ee616e64677bcb07fdcd39522325327505c3c81c4f9c4520c3814df93a04c` |
| 14 | `instance` | [Obj.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-inhabited.md) | 91 | `declaration-track:8335b3d993d1570087939aa06bea7283d398cc63cf747c42ea37a92f8f73e6f0` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/instance.md) | 94 | `declaration-track:03a87789491970169327cf54a4cade3eb2f0a32b1bc0a56337b10fdba7730da8` |
| 16 | `theorem` | [map_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/map-eq-map.md) | 98 | `result-track:e67cbdebd9d365c35ac912d7865fb2450324bb2557ccffc32e96d58197cedd9f` |
| 17 | `theorem` | [map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/map-eq.md) | 102 | `result-track:9991d46ad1d7f965a38db743f1d963308ede0c36ff7a235a35297c1524761450` |
| 18 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/id-map.md) | 107 | `result-track:02af5e32a28b28866b6b55498fcfb6c4f1d760faed3ede05af1123f2056033d5` |
| 19 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/map-map.md) | 110 | `result-track:8941121b8fbf2876f0fa24084e8908dba23f64d0d898aa108b740131ee3d14ab` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:2cb8cb1256cd4a1c3c95ffaa71474394d9e6c2a7dabd3da6deaaab27bf86e67a` |
| 21 | `def` | [W](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/w.md) | 120 | `declaration-track:391eec3b9899047d58b4ada55cd6124b41f6423ea96eb6d36672da7757ef20a2` |
| 22 | `def` | [W.head](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/w-head.md) | 129 | `declaration-track:ffc2cf12ac6c0bde709144c78242b6bcce9727927ce15b8fe00ba6c7f7f60303` |
| 23 | `def` | [W.children](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/w-children.md) | 133 | `declaration-track:18e2c071fd489781e71b5e561fd45230d634155a243991d91f3c3454623bd364` |
| 24 | `def` | [W.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/w-dest.md) | 137 | `declaration-track:c7570558995103271af9a8fa52da1c18d213fc6c8feeeeceeddf23f22a83a896` |
| 25 | `def` | [W.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/w-mk.md) | 141 | `declaration-track:a217c84cd1c7fcf97b469396e19fc4471bf7e13b0b9c1d85bab080a49e675429` |
| 26 | `theorem` | [W.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/w-dest-mk.md) | 145 | `result-track:67d4d22418a3e1b289b63ebda7b657a67617b5747a80a0bf34122d49820a4a67` |
| 27 | `theorem` | [W.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/w-mk-dest.md) | 148 | `result-track:2c695585f8f87799407c723f641523dd289868de49f3c53ed2e0ef3ce3067cb2` |
| 28 | `def` | [Idx](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/idx.md) | 154 | `declaration-track:f920db4791608fe940d8320fd313951328d7e567b71197ec03f47fb5f3c6d32c` |
| 29 | `instance` | [Idx.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/idx-inhabited.md) | 157 | `declaration-track:260c4e381794f03e72699aacc183299a319384fd611322b9b034822b1a7b0432` |
| 30 | `def` | [Obj.iget](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/obj-iget.md) | 163 | `declaration-track:5c6769b7f80d56078fd902a2aaede5f14b4eed17a9d6c42535036de8941cddb3` |
| 31 | `theorem` | [fst_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/fst-map.md) | 167 | `result-track:315cc3ecb9e0178e82d614f14cdb7cd8ea4d1b1535f27eff3e2b88f1f081ca2d` |
| 32 | `theorem` | [iget_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/iget-map.md) | 170 | `result-track:fe165ff8454563b45d877a7665d172d6d958a442c536ec4664afcda7853949f5` |
| 33 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/comp.md) | 185 | `declaration-track:fc0a9de94ca08d7d6a546b3cf280e158966f13bf629b77ab0dd429dd1ed6a9e4` |
| 34 | `def` | [comp.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/comp-mk.md) | 191 | `declaration-track:2b1c2c98ae2a43dcb90fa725bd19737d6c2cdd0512c4f8aa3ae356a3c1c18235` |
| 35 | `def` | [comp.get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/comp-get.md) | 196 | `declaration-track:e59f61a8d6b9a225dfd653ce55edeac7e7f1f347edfbddcfa0e9500c2b7b15dc` |
| 36 | `theorem` | [liftp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/liftp-iff.md) | 211 | `result-track:4df1f79ef944f39ab83d91ec31a1392036cf8ebc9326ec79f99681f1eb1a3c21` |
| 37 | `theorem` | [liftp_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/liftp-iff-source-edition-2.md) | 220 | `result-track:5787242fd9e030cb04b606e3e2935c525e9b01635374b7ac896d2009750b8069` |
| 38 | `theorem` | [liftr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/liftr-iff.md) | 228 | `result-track:664b47eb2aa0345d8b4c0453962df922864b3a296c96a475c3ab901c3eb0fe82` |
| 39 | `theorem` | [supp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/declarations/supp-eq.md) | 239 | `result-track:c4eae046dae0f310ffbd701861ef29f665f6f84a6d4e9f40e392cadc3999e9b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcc45c000628eb6d84446df533dea054d2e8e4523e72987f49724db0343077b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb1738551e529accb57f00ad108470504a730a7aa0bb16fd7bde28679cd7ad298.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb1738551e529accb57f00ad108470504a730a7aa0bb16fd7bde28679cd7ad298.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
