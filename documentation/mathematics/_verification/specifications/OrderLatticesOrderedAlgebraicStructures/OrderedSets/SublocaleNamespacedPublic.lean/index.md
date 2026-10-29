# Verification target: Sublocale Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "689f1aaa71f9b3fbcaa33ccd44dfc08d6965787a",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `689f1aaa71f9b3fbcaa33ccd44dfc08d6965787a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean.json)

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
| 1 | `structure` | [Sublocale](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/sublocale.md) | 47 | `declaration-track:557bf4352b7b13092cfebfdbe62c1b96a27ca549672fcac1061eec2672a96b77` |
| 2 | `instance` | [instSetLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/instsetlike.md) | 63 | `declaration-track:af7ae78e1d2d4b4634775db4c9c1ee208feb30b2c33cd9ad2ff45a213b1b18e7` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/instance.md) | 67 | `declaration-track:ec1be6b6a0805c9af15632925de33f91707f154e0041b668c688b6cf9acfb9da` |
| 4 | `lemma` | [mem_carrier](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/mem-carrier.md) | 69 | `result-track:aa90d527f648e51c0695e6d96d4b90b53b430805169b4adfdfbd40a109617d0a` |
| 5 | `lemma` | [mem_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/mem-mk.md) | 71 | `result-track:a27e24b349d1cbe4842ca75be6498caf8b4dba42e28c9ad1fe79ebd05abcfa1e` |
| 6 | `lemma` | [mk_le_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/mk-le-mk.md) | 75 | `result-track:c8d3e03c1e1810e8bdc7c047c1df24769972fa054d54f2d5fd80b919cd2dc727` |
| 7 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/ext.md) | 81 | `result-track:a68c728332e9203c39727a4cb343a7e878687e4a72e298ddff0f9168d0bfea09` |
| 8 | `lemma` | [sInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/sinf-mem.md) | 83 | `result-track:9c4eccf6bf541b6d2833a9e1bafba7af93e3860408dfb99e58a4ac72520eacfc` |
| 9 | `lemma` | [iInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/iinf-mem.md) | 84 | `result-track:a7118c49961747dad9e357be6f267d9c48689a78652e4361299c3648c5bb3715` |
| 10 | `lemma` | [infClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/infclosed.md) | 86 | `result-track:22d6a9637eb9ceed13bf745b21c68a11deaef1af55c6ee3e0eeb21833ad4dda4` |
| 11 | `lemma` | [inf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/inf-mem.md) | 89 | `result-track:03a0a4c2901d0d5ca37cc25810bc759a57ac7d8805eb3d27dd643b5d08192824` |
| 12 | `lemma` | [top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/top-mem.md) | 91 | `result-track:378cdd7b0ffa773981cd64fb5fc10c150e69439016a87db99d7687723ace93bd` |
| 13 | `lemma` | [himp_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/himp-mem.md) | 93 | `result-track:04a862abd826e95d5d7656fcbe9d5547b7fee7f123903c1b5577032512fd1896` |
| 14 | `instance` | [carrier.instSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/carrier-instsemilatticeinf.md) | 95 | `declaration-track:5287981dcf3b73c65cb1af12651c4bdcae3649db3b825e9cc18a61a011cd3a13` |
| 15 | `instance` | [carrier.instOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/carrier-instordertop.md) | 97 | `declaration-track:077b85a605c1ae243265549afca9239440edee5eefa046be427f5fd5c702193e` |
| 16 | `instance` | [carrier.instHImp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/carrier-insthimp.md) | 99 | `declaration-track:299ddb1ee1ed4368bf6ba73a876ae1938f42070de95c701d621e23494544a1d6` |
| 17 | `instance` | [carrier.instInfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/carrier-instinfset.md) | 101 | `declaration-track:ef9ecfa9c3e92b2ea81373a2bd1b04aed056758af9bbea117206b551d9355e79` |
| 18 | `lemma` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/coe-inf.md) | 105 | `result-track:a5cc2187bc2afafaed1e025330ca7f628d8079336b004b5213ad8eae069b8df2` |
| 19 | `lemma` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/coe-sinf.md) | 106 | `result-track:ad143c73b2244ca7968e6e033b9693f0b6c7580ab3e869d45e9360d4297eb0dc` |
| 20 | `lemma` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/coe-iinf.md) | 107 | `result-track:380fd6e38e61702c122dd26c2b5c3b6fa7e0554fd7cdbeaab9e57ecc783d58f4` |
| 21 | `instance` | [carrier.instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/carrier-instcompletelattice.md) | 110 | `declaration-track:92527f7b2b68e6f3ff77cef723eff2083502fc559f33074d92495043a4f59cbe` |
| 22 | `lemma` | [coe_himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/coe-himp.md) | 115 | `result-track:33ec7bdbd132db228a12ac7884ba6716cc2596f574edd929e8077e10f0ef8966` |
| 23 | `instance` | [carrier.instHeytingAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/carrier-instheytingalgebra.md) | 117 | `declaration-track:0a6b6f20b60e1e859a2d25804b65db51a77ed40327187649177d3baae2cd321f` |
| 24 | `instance` | [carrier.instFrame](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/carrier-instframe.md) | 122 | `declaration-track:6b5816e20b014de588dd71f5930f0c8016d298b9ecf953e6803d0476daa0c3b7` |
| 25 | `def` | [restrictAux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/restrictaux.md) | 128 | `declaration-track:cca81b099cf293f285be157caa6c3740f7648e6f0950df85d396e200bd452f18` |
| 26 | `lemma` | [le_restrictAux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/le-restrictaux.md) | 130 | `result-track:ab93143c8eca6c82abbb8c3dee02edd1ce67661cb018306e6010b4a7afc46b59` |
| 27 | `def` | [giAux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/giaux.md) | 134 | `declaration-track:aa7779ebef9910ae18b7dc98513b8280e1a527978b9d24fe6d7e479bb6c14186` |
| 28 | `def` | [restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/restrict.md) | 146 | `declaration-track:a3fbe1f36ebbe83f91e92522b61a0c7e642f64c6fd9b852fb764aac578ddd46f` |
| 29 | `def` | [giRestrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/girestrict.md) | 173 | `declaration-track:dc590b225cac3082f7f965cda45776d8671efd4af12fcd0aa8787029ece25076` |
| 30 | `lemma` | [restrict_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/restrict-of-mem.md) | 175 | `result-track:55eacdac5f8d0467f6e276cc3b6e4fdc71a3ddbe4a76e6b1e0ae236b568900a3` |
| 31 | `def` | [toNucleus](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/tonucleus.md) | 179 | `declaration-track:5db1907a7a0c9d9fa44431e6b91b5908a4c31a1e7c6a3a03446728940b41123e` |
| 32 | `lemma` | [range_toNucleus](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/range-tonucleus.md) | 185 | `result-track:86a90247dafcfdcb3dc281e356de8ec55fd12d05dc27f79be6da9f253f545f6d` |
| 33 | `lemma` | [toNucleus_le_toNucleus](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/tonucleus-le-tonucleus.md) | 192 | `result-track:f315b24f5cc1f82754d0536005aa173f8326fe91cd00d5f007e739e9e36bbcf3` |
| 34 | `def` | [toSublocale](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/tosublocale.md) | 201 | `declaration-track:217f0af7f16a352e4252bb7570f36042ca62dc5612609df51923629425b532ef` |
| 35 | `lemma` | [mem_toSublocale](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/mem-tosublocale.md) | 212 | `result-track:3e426f98180355bcf250dcd9aed232a36abc252efae72a480d5e55329a6b5c6e` |
| 36 | `lemma` | [toSublocale_le_toSublocale](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/tosublocale-le-tosublocale.md) | 214 | `result-track:4827daaf4d20bf876f3f16b52c38bd3367de02b33b20cbf3eabbd112493b9404` |
| 37 | `lemma` | [restrict_toSublocale](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/restrict-tosublocale.md) | 217 | `result-track:e8fe2239fd8275d50df664a0224242436cfaac06762d5b1097f3c98f8297b3b9` |
| 38 | `def` | [nucleusIsoSublocale](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/nucleusisosublocale.md) | 227 | `declaration-track:91fea99a8f4be95ae123025be94416022159b9047596970705b424c6eca8f6cb` |
| 39 | `lemma` | [nucleusIsoSublocale.eq_toSublocale](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/nucleusisosublocale-eq-tosublocale.md) | 234 | `result-track:d385177bc7f534543861e2f3ba473fea0fb6afdad41b98a4026738cd7cf7ff29` |
| 40 | `lemma` | [nucleusIsoSublocale.symm_eq_toNucleus](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/nucleusisosublocale-symm-eq-tonucleus.md) | 235 | `result-track:ab116c18beff1c5dfbae6b67486547d42be20ae50d7692635b1eab76ab452917` |
| 41 | `instance` | [Sublocale.instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/sublocale-instcompletelattice.md) | 238 | `declaration-track:9c1ae08c24e6dc47bbb8511e6c84fecb991f601098fb6edd32b38c90359c1390` |
| 42 | `instance` | [Sublocale.instCoframe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublocaleNamespacedPublic.lean/declarations/sublocale-instcoframe.md) | 242 | `declaration-track:5cdca451baae03faba7e2afe28edbb4b5bbf3ab1dd7e5e1d7c8cd36b3f53db56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8279352d345aff104f62fd9ea75c3eef1ac5fc1f8f7a6bf05f6afe92042cac4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sublocale/Variant046cbfcc57cd68e2e127429bf77481f128253acc3cc3ff265b5e7687e8d7a32a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
