# Verification target: QPFUnivariate Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17ed4e364a2fb6984086b1c44df55c025c11692a",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17ed4e364a2fb6984086b1c44df55c025c11692a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean.json)

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
| 1 | `class` | [QPF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/qpf.md) | 53 | `declaration-track:53e9dd9ec1b6e454707875a677852d2f9cdb2a57ce79e7c0f4792850352b5791` |
| 2 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/id-map.md) | 72 | `result-track:a65819b81bd246c0d1ec74c475f06984ffe22bd2f0f651f7ffb6b4fe9637acaa` |
| 3 | `theorem` | [comp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/comp-map.md) | 78 | `result-track:dff517451ae62839b15ecd9c97ae231c1a6c8e97702b9056a6240ad6a31e0894` |
| 4 | `theorem` | [lawfulFunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/lawfulfunctor.md) | 84 | `result-track:6cfa11edfc7ffddfc2c8dd5c59d7e71e3bab27894a221c9bfa8e139902411ddf` |
| 5 | `theorem` | [liftp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/liftp-iff.md) | 98 | `result-track:7989c09b092de297b95b8ca1da11bb8222c7972b10f08907f57df88e458906fa` |
| 6 | `theorem` | [liftp_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/liftp-iff-source-edition-2.md) | 111 | `result-track:d0c3b4ffe803aa17942019bcc5989237b1ca8b064820b96c8dd6ef6bdefa8277` |
| 7 | `theorem` | [liftr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/liftr-iff.md) | 121 | `result-track:907c6bf51ab2e231f7f9cde93ea09d24b9f147db80af716ec00943b9dcb34bb0` |
| 8 | `def` | [recF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/recf.md) | 146 | `declaration-track:4730313117c61fec9540025a51e7e9871415c2e717be6f28fbaf64f738117e4d` |
| 9 | `theorem` | [recF_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/recf-eq.md) | 149 | `result-track:3d3abaf62ca6809aa3b082e032a78e700caaf9ef1a8b3b93c57344c1c7299e2b` |
| 10 | `theorem` | [recF_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/recf-eq-source-edition-2.md) | 154 | `result-track:a528d97878b82a1a73405745f9a91b949a89f99f61fd9e875f641c807048ac65` |
| 11 | `inductive` | [Wequiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/wequiv.md) | 159 | `declaration-track:c8b87658c48b3882344902816a1355705605f6f4b89033f9fb47377b3f85b0da` |
| 12 | `theorem` | [recF_eq_of_Wequiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/recf-eq-of-wequiv.md) | 166 | `result-track:8b8f52d4a15a76f1fce611195a7639d31c5278ea9f95cc8bf554924cbbdcbf2e` |
| 13 | `theorem` | [Wequiv.abs'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/wequiv-abs.md) | 174 | `result-track:96d1dc421f8e7003ae7ce93cb99bc917edb4f2b56c28f54fe9d49fa07abe3bd4` |
| 14 | `theorem` | [Wequiv.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/wequiv-refl.md) | 180 | `result-track:20a0fdea5932ad493d9b1339f06b2a504b4ae5c54773a782ea1db073cdc02099` |
| 15 | `theorem` | [Wequiv.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/wequiv-symm.md) | 184 | `result-track:054914732806c12bb6bafe45b333077cd2ff6523d5f766fe54e970239474aeb5` |
| 16 | `def` | [Wrepr](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/wrepr.md) | 192 | `declaration-track:daf5054f383e8a6102a94a0bb371940a224aaeef408799aeda6782511d9e8320` |
| 17 | `theorem` | [Wrepr_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/wrepr-equiv.md) | 195 | `result-track:c8c68f63206bd78212ba36816007f4a107ddd1ae015ffe777df857061654f179` |
| 18 | `def` | [Wsetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/wsetoid.md) | 206 | `declaration-track:25ac214d6a72ae88c0dd6ec473ae8a7fb442e867d724a87887a0de75813da0ea` |
| 19 | `def` | [Fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix.md) | 212 | `declaration-track:5a6432922a3fd3fc33ba855e18624fda0fd804bfd51001668d2acaa23abe611c` |
| 20 | `def` | [Fix.rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-rec.md) | 218 | `declaration-track:38ebd29e5f272c7636e2351dad710769aecae2cd1c070357c6a970403bb083b9` |
| 21 | `def` | [fixToW](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fixtow.md) | 222 | `declaration-track:08ea069b884e55ec4d35e7480910f9320030be1199591cc08e130642484c8e5d` |
| 22 | `def` | [Fix.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-mk.md) | 226 | `declaration-track:c0b288cd7b1f3ccae759eecf6e3f104cf6a1ac5b52b5655d8eed1143fe4f62a7` |
| 23 | `def` | [Fix.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-dest.md) | 230 | `declaration-track:6bdc237db919f714a4d6e97924b8175970b7205367030f82f59bac7ac3e08221` |
| 24 | `theorem` | [Fix.rec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-rec-eq.md) | 233 | `result-track:8dbf492c441838149e5a8757b23528d67b8f8a62aaf97a39806377d89281cd6e` |
| 25 | `theorem` | [Fix.ind_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-ind-aux.md) | 249 | `result-track:b0f97d846b50092b6ac2269dd695ed81d1c9b389de68e46a3299eb86d7eee701` |
| 26 | `theorem` | [Fix.ind_rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-ind-rec.md) | 261 | `result-track:0825c528fc68511446408e094b02db0d586a90e857ad7875d36ec9a9e3f8bb7a` |
| 27 | `theorem` | [Fix.rec_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-rec-unique.md) | 272 | `result-track:75267f897ccfa182e11057485bd37fc22f3025e4d81410ec650603c6bcb4e372` |
| 28 | `theorem` | [Fix.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-mk-dest.md) | 279 | `result-track:584af50cba1ea556b9122ba09c1966ec3e6728850329c85e1d562d08d83ff9d3` |
| 29 | `theorem` | [Fix.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-dest-mk.md) | 287 | `result-track:3937d19c339a528d19208d99c3f7ece47e859216d4ea60f91099d50ba295e367` |
| 30 | `theorem` | [Fix.ind](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/fix-ind.md) | 295 | `result-track:ec9400262816f1f695193f78e81ba25edc65278f6ded3fc569c37de5a52dc360` |
| 31 | `def` | [corecF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/corecf.md) | 317 | `declaration-track:006361808969c09697252457bfaa497df86ca470d4da6b6479ec8badf5dc9937` |
| 32 | `theorem` | [corecF_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/corecf-eq.md) | 320 | `result-track:c64c8078437d144ebff26fe58f4fe3e2c68dc6b7995dddd66b489ccac9136b4f` |
| 33 | `def` | [IsPrecongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/isprecongr.md) | 326 | `declaration-track:349fa165ad1a0bca6bc1aba3d19caec3f71f83bb7342a123d875373ad1cf8941` |
| 34 | `def` | [Mcongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/mcongr.md) | 331 | `declaration-track:9e0a685251f999e9bb919d9de5353cfd192a44694663a71f178312489bb3c5e5` |
| 35 | `def` | [Cofix](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/cofix.md) | 334 | `declaration-track:e52c760e62d93367c73e682da9d125438b7db1b930895f7b11feb7e684b3dd2d` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/instance.md) | 337 | `declaration-track:686f77a9c205c6e0aff2b7b4155665022a24da328942cb516abb8fd500e762dc` |
| 37 | `def` | [Cofix.corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/cofix-corec.md) | 341 | `declaration-track:ca894d20459a8eac16cae12ebc002dc10888764d3d89b2ffbb38c3312e2fd6e7` |
| 38 | `def` | [Cofix.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/cofix-dest.md) | 346 | `declaration-track:3260822750b12a10b629553ed439b3614db5acf8e57767859d11479605ea2b65` |
| 39 | `theorem` | [Cofix.dest_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/cofix-dest-corec.md) | 359 | `result-track:d98dabf1af3155334cd8712c74c57af75bc902d18348579d15207c020e92e034` |
| 40 | `theorem` | [Cofix.bisim_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/cofix-bisim-aux.md) | 368 | `result-track:9252f3c91921c734a3c89949bc17fe40e8f47eb695dd863b56dea27d7f2d4c42` |
| 41 | `theorem` | [Cofix.bisim_rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/cofix-bisim-rel.md) | 396 | `result-track:133765e0b25697b0cf7632f7bd9410f0ab63aed3f71f76013976c65586e5b9bf` |
| 42 | `theorem` | [Cofix.bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/cofix-bisim.md) | 415 | `result-track:3df0079efac9d069cfa9debaf03004a976f22a8ac514f7e7f684f7624eeffdf7` |
| 43 | `theorem` | [Cofix.bisim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/cofix-bisim-source-edition-2.md) | 425 | `result-track:fe4247f199e0c2a43a130fa5c73ec5e695757bc1a92066ce52a87962b8baa8eb` |
| 44 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/comp.md) | 449 | `declaration-track:ff0204c00e7dde13073a385ce1daafc2fed67396c72b9ef5ad562f580192abbf` |
| 45 | `def` | [quotientQPF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/quotientqpf.md) | 481 | `declaration-track:c29558b26da6ade8877d7251fc0f7b304af832a2b38b1160b5a7ca921358844e` |
| 46 | `theorem` | [mem_supp](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/mem-supp.md) | 502 | `result-track:b573597feb9f206b7ebeadb64e98a3fface4429292e87b71aed874364637fe19` |
| 47 | `theorem` | [supp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/supp-eq.md) | 515 | `result-track:674e4354dd198b2ecb13fc274df2a37ca8043279fcfef0fc97b42ba8f397c8c9` |
| 48 | `theorem` | [has_good_supp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/has-good-supp-iff.md) | 520 | `result-track:6937328e1fc721afc2da954e2188e49008b910bb17bec57805e4794b9668c31f` |
| 49 | `def` | [IsUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/isuniform.md) | 547 | `declaration-track:34fa635cc7e9ff22f3890d4e716f44f65ff11cea88566a8ec18acb057e9098d3` |
| 50 | `def` | [LiftpPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/liftppreservation.md) | 552 | `declaration-track:8405aa0d5f6cb2cce35d56d2dfa730aabb32dcfc43c6655aadc20926c4872940` |
| 51 | `def` | [SuppPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/supppreservation.md) | 556 | `declaration-track:9b83764e0789c462d76812e3f46356a3625c210fdcc0de38b478440d71b4b2f0` |
| 52 | `theorem` | [supp_eq_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/supp-eq-of-isuniform.md) | 559 | `result-track:724e42dab6e93785496459de1215f29cad41dcc2244b9408c29f8b580e2bad35` |
| 53 | `theorem` | [liftp_iff_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/liftp-iff-of-isuniform.md) | 567 | `result-track:18c6576fae2c2df2b7f010bb6d1db9a29d94980e1afe0f9ce8194346025b43fe` |
| 54 | `theorem` | [supp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/supp-map.md) | 582 | `result-track:aa979aab524d730279aeee9b4645834bcb8a19bd6277c9feea9f5c9b70d7385e` |
| 55 | `theorem` | [suppPreservation_iff_uniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/supppreservation-iff-uniform.md) | 589 | `result-track:cdaa674f316ac1ffaf67143a67c49677175f5175a3b81160f5a7608bdebebe7c` |
| 56 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/supppreservation-iff-liftppreservation.md) | 597 | `result-track:e0321f39e215f80e856f0ecdf6fa50b85943c2b92d21000a14ec7e9b320fb2f7` |
| 57 | `theorem` | [liftpPreservation_iff_uniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicPublic.lean/declarations/liftppreservation-iff-uniform.md) | 611 | `result-track:72e021af31d270b5953ed05f9827b3d6a7f1ddc680955cce23471e5beb2f60d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0517edbe03f4ca638bf4b1ef472ddfadc66bcf6ff629c2f47e069c81858d3225 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
