# Verification target: Cycle Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed1b757fa1db5152c59aa927bd428a59e41bf1c1",
  "lexical_observation_count": 142,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed1b757fa1db5152c59aa927bd428a59e41bf1c1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean.json)

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
| 1 | `def` | [nextOr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor.md) | 36 | `declaration-track:548281bb737b48455e0a6b5709c33340b8526741f1a0edb8afd2acecfceb86b2` |
| 2 | `theorem` | [nextOr_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-nil.md) | 43 | `result-track:8c5e22cb6f93b4bf8d4f80e8e69cd609eac9c70caeb2e374bc9ee2bc1a150bf6` |
| 3 | `theorem` | [nextOr_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-singleton.md) | 47 | `result-track:a484e5d7cd6c1619eb0c578c4e0d649b1e83b624c835245c11c342fd7777bb90` |
| 4 | `theorem` | [nextOr_self_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-self-cons-cons.md) | 51 | `result-track:68d65c31731df425160895c0306035da5a8afd1edfdb9f3fb3a4da27e602d8d0` |
| 5 | `theorem` | [nextOr_cons_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-cons-of-ne.md) | 54 | `result-track:ce621382dd1fe87662ac8cdc94142418fe3c4fcf7917de70257746fdd0e9946a` |
| 6 | `theorem` | [nextOr_eq_nextOr_of_mem_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-eq-nextor-of-mem-droplast.md) | 61 | `result-track:14213863c197e73613ddfd187547b95d3baa780122a02708758761c0bc0c9e4a` |
| 7 | `theorem` | [mem_of_nextOr_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/mem-of-nextor-ne.md) | 73 | `result-track:1057665dca8b77d8d0dcb742d3953d67606d514b8aee08f0ff4b989970f1247f` |
| 8 | `theorem` | [nextOr_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-concat.md) | 84 | `result-track:2f90e9ef42e54107f890fc420393787719dcb3011059bb0719cf8c5a6aa56f1c` |
| 9 | `theorem` | [nextOr_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-mem.md) | 91 | `result-track:177193430e3a83f1fdcec65312239b50bcd5ce8d713b72e7868fc6b4c1257bc9` |
| 10 | `def` | [next](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next.md) | 117 | `declaration-track:a6fba208c1c1538dc4b5340cd205b77f703972b7c234b2c1de5a4a7d36bc593e` |
| 11 | `def` | [prev](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev.md) | 130 | `declaration-track:08137553ad33f4c97254880e59b7c99d1f86d0dab5cf6d6a7482dca531608726` |
| 12 | `theorem` | [next_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-singleton.md) | 140 | `result-track:ac5af31a5d700011ff2a0b368a3f6f0823abc7e5ec0b78cbf1294eb0792871fb` |
| 13 | `theorem` | [prev_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-singleton.md) | 144 | `result-track:a5234d065158fffa3b34b6c9839060af085bb9efbd20b945f2115f49434f9cf6` |
| 14 | `theorem` | [next_cons_cons_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-cons-cons-eq.md) | 147 | `result-track:d268e11ceb8874f1058484abaca27b4bb374110c66b95a48420f3e5f0a01f659` |
| 15 | `theorem` | [next_cons_cons_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-cons-cons-eq-source-edition-2.md) | 151 | `result-track:d56c228c420f692014e403056f9bd94b8851b8a6538caf69b1a94a6af7f19378` |
| 16 | `theorem` | [next_cons_eq_next_of_mem_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-cons-eq-next-of-mem-droplast.md) | 154 | `result-track:aa324050ab9c54ec6de8c3c16fe81301a6777e83b1efe79a89943878bc266242` |
| 17 | `theorem` | [next_cons_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-cons-concat.md) | 159 | `result-track:3c2ae3f561f69d5771fa2d9673995bc3aca76752f2e4c8cf467e66e1c41360ef` |
| 18 | `theorem` | [next_getLast_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-getlast-cons.md) | 166 | `result-track:c4203c67bb09653cbc059c14c8cc53e1e7b6c0828942b97944a2b19096e34c49` |
| 19 | `theorem` | [prev_getLast_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-getlast-cons.md) | 181 | `result-track:49431161b154cdb71dae970567342636a31229f38d7e2c0427d28e598531a7d1` |
| 20 | `theorem` | [prev_getLast_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-getlast-cons-source-edition-2.md) | 185 | `result-track:604d2cdc58aed2ca4fc238bd9c3a9402addc4400f46b75414e1dc4510071e619` |
| 21 | `theorem` | [prev_head_eq_getLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-head-eq-getlast.md) | 189 | `result-track:5e04d7773bdb8d16e8d79fb5bd22a4a83369559a936b4f4f625f3a9acfb4caa4` |
| 22 | `theorem` | [prev_cons_cons_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-cons-cons-eq.md) | 194 | `result-track:0e0095f8aa93d4935251b6aa9e4fc26db1e37ab708a80701573cd0482a0f2424` |
| 23 | `theorem` | [prev_cons_cons_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-cons-cons-eq-source-edition-2.md) | 197 | `result-track:565673218bfc853295d4bf9b0e31adfd31112383e5dafc547e84d1ca73f59192` |
| 24 | `theorem` | [prev_cons_cons_of_ne'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-cons-cons-of-ne-source-edition-2.md) | 201 | `result-track:c06b96035f6ada1110b208869ff632cb5cdbb415ae9c8d969e256a7587034b88` |
| 25 | `theorem` | [prev_cons_cons_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-cons-cons-of-ne.md) | 207 | `result-track:0cc64e9b401a040b59ee26034e6a4a73ec67e6e067beb9362eb08e4eecd898bd` |
| 26 | `theorem` | [prev_ne_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-ne-cons-cons.md) | 211 | `result-track:13d31498c945710429bf5c2856da374b100de435bc969f98b9f8ec205411f0f0` |
| 27 | `theorem` | [next_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-mem.md) | 217 | `result-track:b683d4e704a9a70031d853fce0d919ad709f750d747f3888713526d1214bf03c` |
| 28 | `theorem` | [prev_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-mem-source-edition-2.md) | 220 | `result-track:8a2f23e381572d3c79fd1b48710b28ce415e5d5da2b52c980a8d3e5be023bbf3` |
| 29 | `theorem` | [nextOr_eq_getElem?_idxOf_succ_of_mem_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-eq-getelem-idxof-succ-of-mem-droplast-source-edition-2.md) | 234 | `result-track:c6ba0d0de66c175319581a5f60193c393b12d00de608ea984e79ead3d29ee384` |
| 30 | `theorem` | [nextOr_eq_getElem_idxOf_succ_of_mem_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-eq-getelem-idxof-succ-of-mem-droplast.md) | 246 | `result-track:5e028632587634750006cfee6b4951d7498bef44399468d7309eb06eaa8ba438` |
| 31 | `theorem` | [nextOr_infix_of_mem_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-infix-of-mem-droplast.md) | 250 | `result-track:6647d700cdcf1b621eb58aa0544187f5642a7e21ebb97d4807136eedb058dea5` |
| 32 | `theorem` | [nextOr_getLast_of_notMem_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nextor-getlast-of-notmem-droplast.md) | 259 | `result-track:a48f86a800d9bbd8f1e0e202e1958f749fa60c56805adc8e05f1508a3ed432ec` |
| 33 | `theorem` | [next_getLast_eq_head_of_notMem_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-getlast-eq-head-of-notmem-droplast.md) | 270 | `result-track:db10f42a9bc66fabcdd66f3cfb68f383e3d49255e236286c76ce7c31e153e0f8` |
| 34 | `theorem` | [next_eq_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-eq-getelem.md) | 274 | `result-track:d79e088fd6f9ff42480c265f658243d1fc8dcf30e98bce78aaa79e9b9b8976af` |
| 35 | `theorem` | [next_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-getelem.md) | 282 | `result-track:b78961c7710f284497468520f2524e9eee123ec92af0feb3f672c156077d69f3` |
| 36 | `theorem` | [prev_eq_getElem?_idxOf_pred_of_ne_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-eq-getelem-idxof-pred-of-ne-head.md) | 286 | `result-track:00f4657972dbb7b307edf97900a9a6756887160a99673d63d2085ee063e5c7ac` |
| 37 | `theorem` | [prev_eq_getElem_idxOf_pred_of_ne_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-eq-getelem-idxof-pred-of-ne-head-source-edition-2.md) | 294 | `result-track:ee78cffec946be4d7d19cd647543f68f60855902759c6009c996f1a8f836523a` |
| 38 | `theorem` | [prev_infix_of_mem_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-infix-of-mem-tail.md) | 299 | `result-track:3c228c724b9da5a6412032671dc1721fc87ac2cdbd24107388bac0acc79f2157` |
| 39 | `theorem` | [prev_eq_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-eq-getelem.md) | 308 | `result-track:a1a58be890a8aaaee381899c5daf66633d67fb73e1ec3d8485f0737619d76d91` |
| 40 | `theorem` | [prev_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-getelem.md) | 320 | `result-track:c31c68aa1e78167e3fe95550295bb837080d9cf9691c8c0b7bd8f7a5e72d4806` |
| 41 | `theorem` | [next_getLast_eq_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-getlast-eq-head.md) | 325 | `result-track:772c9bba8a07fbc34de8da05a7c4757b87c407f9b5b4e3d8df8010dabe6ad858` |
| 42 | `theorem` | [pmap_next_eq_rotate_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/pmap-next-eq-rotate-one.md) | 330 | `result-track:21db976bea5f4b78ce605cb0860fd56bd959076494765b29c1ebb0183edfb0c0` |
| 43 | `theorem` | [pmap_prev_eq_rotate_length_sub_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/pmap-prev-eq-rotate-length-sub-one.md) | 336 | `result-track:b50ee6b47c5ca16224164e721251dd83b291ee8ccc95dbabfa7af6a323a96bb5` |
| 44 | `theorem` | [prev_next](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-next-source-edition-2.md) | 343 | `result-track:f6b3a54bd442ce79a246a3050b5e3a9d1c312ac748f0e1df5e74c06641a70706` |
| 45 | `theorem` | [next_prev](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-prev.md) | 354 | `result-track:7e48dd5cd6cf4a647494a70463a85ee3c69ddf6529bfcc32efd9e9afec05cb85` |
| 46 | `theorem` | [prev_reverse_eq_next](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-reverse-eq-next-source-edition-3.md) | 365 | `result-track:e4bd1a32e37701cd38b9a4c5493edddbe8a7a4be43b5f0e68ac7ae725eef504e` |
| 47 | `theorem` | [next_reverse_eq_prev](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-reverse-eq-prev-source-edition-3.md) | 380 | `result-track:d908bc408947db4c6d713193af1cadc34420930d226fa19ccede68a3cac74530` |
| 48 | `theorem` | [isRotated_next_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/isrotated-next-eq.md) | 385 | `result-track:aee7489a1d6e32bd204d3e29a7683d31890fb632843d1da88bb9abebc592e178` |
| 49 | `theorem` | [isRotated_prev_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/isrotated-prev-eq.md) | 394 | `result-track:a9152748c69a5c62b367f1fa4357397d576441724104da48938000529aefbf4e` |
| 50 | `def` | [Cycle](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/cycle.md) | 406 | `declaration-track:38641bac51a5b6d27cac2960ce111d80d2bc1dbed33b663967ad9ed10e9beb23` |
| 51 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/oflist.md) | 414 | `declaration-track:9a1bb417185bd6940eed55ab6acb2d6c66e4dbb64c9224fc5e445c09abea6343` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance-source-edition-4.md) | 417 | `declaration-track:72e163984886dbbd9a57bfd235b8fcb141e8737322242bff34e58b4438c588c0` |
| 53 | `theorem` | [coe_eq_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/coe-eq-coe.md) | 421 | `result-track:76e1cdf7697c02f43a498757aa9c5b74bfb1c3afb2e2181ef099f7fc0dca2143` |
| 54 | `theorem` | [mk_eq_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/mk-eq-coe-source-edition-2.md) | 425 | `result-track:f35b074dc52b31b75a1e708ce2c38cd0bea761bbb4b86965fdf23d9ce25b0947` |
| 55 | `theorem` | [mk''_eq_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/mk-eq-coe.md) | 429 | `result-track:c844666925a6c8df8a4e3cf4b4b989800b8a0885b9872a38a4d5afa7c125fc51` |
| 56 | `theorem` | [coe_cons_eq_coe_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/coe-cons-eq-coe-append.md) | 432 | `result-track:b1b792859808c916f30d8e9ef8aac715c1440645271658237adf4de3b56ca3d6` |
| 57 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nil.md) | 437 | `declaration-track:c8e03baf9f6da8d3cd71fb9f619fd004288cdda5f38cad8ecb938fe4dc79aa2a` |
| 58 | `theorem` | [coe_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/coe-nil.md) | 441 | `result-track:a02ddc61598d9a3d8edc9b939823127ddbab085272db99783c76b3380b87dd7a` |
| 59 | `theorem` | [coe_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/coe-eq-nil.md) | 445 | `result-track:a8870eced65d55c1ade2f39026d09a994f9516a05fc55e22549490cf42b24ddc` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance.md) | 449 | `declaration-track:1d051b8a6255b8b509f2ea5dda89cb766abeb570da2c44c16c78f22a3c6d552f` |
| 61 | `theorem` | [empty_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/empty-eq.md) | 453 | `result-track:1b13aa9aed344c186d2a24f811e621b7c197c0b39fc92dd451a84890af55ef0c` |
| 62 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance-source-edition-5.md) | 456 | `declaration-track:7a4aa9aa958d8f38f0970b8cd1adacd9f72c8f86a466717dc5e9b78c0ff77932` |
| 63 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/induction-on.md) | 461 | `result-track:19d5a7e35edbef045c7a89e7b56732ff70a453ba74b6a120a51c82e350cdb256` |
| 64 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/mem.md) | 468 | `declaration-track:99ffec7fd0e7b530d6983eb6304d16971a086daf45698aa551a96bcfef79903d` |
| 65 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance-source-edition-2.md) | 471 | `declaration-track:3a7100892210bb4cbbf4be133c65430d12889d9870e3550b2a9d4c2264aee1ad` |
| 66 | `theorem` | [mem_coe_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/mem-coe-iff.md) | 475 | `result-track:03543dd4ecee5902377fb78086576d9a2623d94638f1fe39c43655f210b9ae43` |
| 67 | `theorem` | [notMem_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/notmem-nil.md) | 479 | `result-track:bc3440a8cb6e5bb68aa60ec17dc2ae540a728ed572aa361be6be3e07a18b2ebd` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance-source-edition-7.md) | 482 | `declaration-track:ae216be010b1ec9a84e11fd55bc33608b53fe892b66bf28f3ad36fa6788a8cca` |
| 69 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance-source-edition-8.md) | 485 | `declaration-track:e1bef907e9085de35a9665054b8f6ea809973fa23452e763dbe414f24b47f582` |
| 70 | `def` | [reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/reverse.md) | 489 | `declaration-track:7cae0c02373fea8b9dc8ed78e5ff269ea65318a3019702ffab0353502a1c5708` |
| 71 | `theorem` | [reverse_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/reverse-coe.md) | 493 | `result-track:a966ede31088a1e7c44cab493db8933f9c923cc479b1ed096b181d1bd9e7db9b` |
| 72 | `theorem` | [mem_reverse_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/mem-reverse-iff.md) | 497 | `result-track:1cb1295fd73cfd42bdb2e7db9e86b90bea99b0f02469400ba7c38b6e111ab44a` |
| 73 | `theorem` | [reverse_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/reverse-reverse.md) | 501 | `result-track:d9da8808a2f255d2adccfd7f1889090ca19e8a98b453c9b9561e9e656dbee731` |
| 74 | `theorem` | [reverse_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/reverse-nil.md) | 505 | `result-track:d7a4d9bb5916979ca6b3eae85c1c53d84377557207ece3a4c23ba34179a26fe4` |
| 75 | `def` | [length](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/length.md) | 509 | `declaration-track:01c7a9cbbb46bf2144a54526a47f7a1d453e027ab67d11e852baf6823c8c1259` |
| 76 | `theorem` | [length_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/length-coe.md) | 513 | `result-track:0dee10440e1492fd9e598b84bbe35f53d2b0d1b503933361af26169a08ea31e3` |
| 77 | `theorem` | [length_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/length-nil.md) | 517 | `result-track:d89bee54af3e50cf992023522b3ae48ffd970d1531ba8d456361a62c2afd77ab` |
| 78 | `theorem` | [length_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/length-reverse.md) | 521 | `result-track:56f45580413001bc08399b0c4fef6dd2793ab3e88013eb1fceea531bd45e31e1` |
| 79 | `def` | [Subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/subsingleton.md) | 525 | `declaration-track:cf9c249cffe29e8bcb77d3cd4df23363893365e9b3ff7289a9d8ab0b0fd2460f` |
| 80 | `theorem` | [subsingleton_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/subsingleton-nil.md) | 528 | `result-track:c16913c2ab9967b44d6af3aa0aecb25dc0491d029be7f3ac0aeb3050f5cd2013` |
| 81 | `theorem` | [length_subsingleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/length-subsingleton-iff.md) | 530 | `result-track:69b729b2637f9bf57de3dc6e0195ec42c5ea9c1c4e60c3e9e29b464db9f100d5` |
| 82 | `theorem` | [subsingleton_reverse_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/subsingleton-reverse-iff.md) | 534 | `result-track:df118db9533e28af3859a516edabdc0bcc54c21760fafda3ee3471445bbd1790` |
| 83 | `theorem` | [Subsingleton.congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/subsingleton-congr.md) | 537 | `result-track:99a63ee75cebbcfc927f5c006e4cdbf5bf61b28fcc424e69cb636c266c375c8a` |
| 84 | `def` | [Nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nontrivial.md) | 545 | `declaration-track:25a80afd8befa13ff4616aa45d04f59cee9ee3b596d99e460d04712ba2a4a868` |
| 85 | `theorem` | [nontrivial_coe_nodup_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nontrivial-coe-nodup-iff.md) | 549 | `result-track:747a06cee80bfbf6797acbdb9506cb8b2774e0ce282b2723885d2df29eef5df9` |
| 86 | `theorem` | [nontrivial_reverse_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nontrivial-reverse-iff.md) | 562 | `result-track:bc69a819777beb9cf94f3b84959e2fc91425c62b2e59266b809007b21058e7de` |
| 87 | `theorem` | [length_nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/length-nontrivial.md) | 565 | `result-track:5c8786f780fac753d062b26e1dea8132c75a0f6962d727692abbc84dc5ad4ffe` |
| 88 | `def` | [Nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nodup.md) | 575 | `declaration-track:7343b5d98fc0cf36c45246af423ffbb64afe3f396652808dfc07bb3f2bc7c578` |
| 89 | `theorem` | [nodup_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nodup-nil.md) | 579 | `result-track:1c783c6fc9969c1cd4128ba397e284ea1b7979251607d4b01c7b048295a1cc50` |
| 90 | `theorem` | [nodup_coe_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nodup-coe-iff.md) | 583 | `result-track:bd8dacf7043a77dd83554753b641606294a46c22e9a431fe687bc54770281ab8` |
| 91 | `theorem` | [nodup_reverse_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nodup-reverse-iff.md) | 587 | `result-track:7fa035e3439dab721782c60c62a3e184a555f2f7775557be50fcf528ee089cd9` |
| 92 | `theorem` | [Subsingleton.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/subsingleton-nodup.md) | 590 | `result-track:cbba1a71959a171e45d1e59165226d6f6b6919fee8d185c30165b32a66bef34e` |
| 93 | `theorem` | [Nodup.nontrivial_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nodup-nontrivial-iff.md) | 597 | `result-track:acf15a3d2b27afc25f75dc185773789bcd09869c8a9065bceeba22766719cba9` |
| 94 | `def` | [toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/tomultiset.md) | 605 | `declaration-track:688a7fa3611adad4062bb078fb7d0c0082d242e8c15b4d00f1def5b683778c17` |
| 95 | `theorem` | [coe_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/coe-tomultiset.md) | 609 | `result-track:2ac5cfaf8f2141af5c639b4b6f20ed9f719517914e01af85d7c4f110c999042c` |
| 96 | `theorem` | [nil_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nil-tomultiset.md) | 613 | `result-track:060ae139c4d5290c2698f1a5367a5a76da22f4277724f1448026affca80bebcc` |
| 97 | `theorem` | [card_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/card-tomultiset.md) | 617 | `result-track:d44ae3516a36535281787ebf06cd3c1ec7ecf724b15d13f1d6b4bc315cbcf9d4` |
| 98 | `theorem` | [toMultiset_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/tomultiset-eq-nil.md) | 621 | `result-track:b46cc5b4c4c2af554c3ee3e2d1ece6a3ce199527a0afee4af5fb233bd6bebe4d` |
| 99 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/map.md) | 625 | `declaration-track:4159112d5ca8dbc9469908da9dde89acf4258eb3b3a228a7010a7a4da5633aee` |
| 100 | `theorem` | [map_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/map-nil.md) | 629 | `result-track:e043ba879590a96f34822026f3f86d23e678bc810082988bd35ffec890034ff8` |
| 101 | `theorem` | [map_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/map-coe.md) | 633 | `result-track:194d77562d4aca9e3d11a791d819c3098b0dcc94df7170a6b1e70500cce30e44` |
| 102 | `theorem` | [map_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/map-eq-nil.md) | 637 | `result-track:4f530d9fb55ad8b339a5b730753d998932d6ed1000375f29a6449bd060869001` |
| 103 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/mem-map.md) | 641 | `result-track:be4f5fd2e0ef9b6f921cdc9ec76ff815515f19190daf8c0dc350c45b68bfe21b` |
| 104 | `def` | [lists](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/lists.md) | 646 | `declaration-track:3933b19affb79bd4a71c89c079e7964cf35234d06a7368314082fc6766b60824` |
| 105 | `theorem` | [lists_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/lists-coe.md) | 651 | `result-track:53db1b05eff9c3fbc37dce88df6011104482cac2ede75e19166314630519f48b` |
| 106 | `theorem` | [mem_lists_iff_coe_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/mem-lists-iff-coe-eq.md) | 656 | `result-track:6a735a3558135f64cae307bb8a6f5b031ecfb7dde8fc1bfe2e0598e9f97ded6f` |
| 107 | `theorem` | [lists_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/lists-nil.md) | 662 | `result-track:529a8df83c31cae55afb86bbfa9bd08c175d86927c824b28aa9146d13834c4b4` |
| 108 | `def` | [decidableNontrivialCoe](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/decidablenontrivialcoe.md) | 671 | `declaration-track:2001209e0ceff20474851c0960aa920343e03eaed9f04ab6659480b6df4b6dfa` |
| 109 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance-source-edition-9.md) | 680 | `declaration-track:fbb81318c499ccc463a1237aa82127b659be6fa2a8a3d35303b99dd8518c88f7` |
| 110 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance-source-edition-6.md) | 683 | `declaration-track:989ef72aa29f1cd45d3daec1827f9b499ff8867230feb21442e2926360290057` |
| 111 | `instance` | [fintypeNodupCycle](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/fintypenodupcycle.md) | 686 | `declaration-track:dc5afce8f4792d140923db0fe06df08d6835f5818bd40de1b1ee1004832ec5ab` |
| 112 | `instance` | [fintypeNodupNontrivialCycle](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/fintypenodupnontrivialcycle.md) | 692 | `declaration-track:5ec45f9c154e57d721e9519857bca3b6b6c182a1dadf1aa71e74c4417c3b6efb` |
| 113 | `def` | [toFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/tofinset.md) | 700 | `declaration-track:8d7de23ff712858523a19a731a524c03dedd8ffc23011b78df5bd21c3d7aff04` |
| 114 | `theorem` | [toFinset_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/tofinset-tomultiset.md) | 704 | `result-track:8d7dd0a50c296dcbef3f782384c8c382a6b2f9ed4936246e84e5f7f217ff85db` |
| 115 | `theorem` | [coe_toFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/coe-tofinset.md) | 708 | `result-track:e2ec11bd11e40233b846a7b822246996d64e2943dad65431b54b793b75bec562` |
| 116 | `theorem` | [nil_toFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/nil-tofinset.md) | 712 | `result-track:59c92d48357d6abc4887e213f283d4afa8e6246074ce0747f6e23c4a0b61927a` |
| 117 | `theorem` | [toFinset_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/tofinset-eq-nil.md) | 716 | `result-track:43949655a70399f54fafc6808a26ec466af01cf4587cf117eeb682f565b2c212` |
| 118 | `def` | [next](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-source-edition-2.md) | 720 | `declaration-track:f66f811acca53f4499fd64e5cd6544d2c2d2222d8b979c8354e67b96e9407757` |
| 119 | `def` | [prev](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-source-edition-2.md) | 730 | `declaration-track:82bc201717432f2afc137619d00d0e48d52cb5fbabb645492a503688f8c3b2ec` |
| 120 | `theorem` | [prev_reverse_eq_next](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-reverse-eq-next-source-edition-2.md) | 740 | `result-track:57c9546728feaacf9b6efe60c27c64e7a54fc3ce8d104701d2816ef51a5aff8c` |
| 121 | `theorem` | [prev_reverse_eq_next'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-reverse-eq-next.md) | 745 | `result-track:0fe0ba8961b86864d5da83cac84403d55853a1d4180f37b2b854e02671a934c5` |
| 122 | `theorem` | [next_reverse_eq_prev](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-reverse-eq-prev-source-edition-2.md) | 751 | `result-track:d115cd08423a0c4d7785c4b512bfc911441a36f0b9e601ab4d9fbb85bc3a5936` |
| 123 | `theorem` | [next_reverse_eq_prev'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-reverse-eq-prev.md) | 756 | `result-track:335a51d19ee6eb22d98a6628663bd0d58b2a8b380b0bc25ae5918c2106b9d8c1` |
| 124 | `theorem` | [next_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-mem-source-edition-2.md) | 761 | `result-track:c583710a9eb497e167d5a6c33cb57e92531dcacec9e76b8297cf660c8c817d2d` |
| 125 | `theorem` | [prev_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-mem.md) | 765 | `result-track:2789ea6eb5be86997f90dc333cf40ad4f7d00a4a189682abee04167857730b28` |
| 126 | `theorem` | [prev_next](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/prev-next.md) | 770 | `result-track:3b063768e60fd9a2377b6e5e347e7c958be7c38fc46533e214793082a36db0a4` |
| 127 | `theorem` | [next_prev](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/next-prev-source-edition-2.md) | 775 | `result-track:ef4505fbaf4f75c3bd012ae6b1758b5c0f7bffe91c1c9f4872b9780e4320d75f` |
| 128 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/instance-source-edition-3.md) | 786 | `declaration-track:3ba43607144705921d4273abbdfb6dc65f8fe0d4a7887b0c1bed382794ab73b2` |
| 129 | `def` | [Chain](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain.md) | 792 | `declaration-track:49163c80ec7cc870ca44586eca0baba8998efca3468d6ee097fd52ec7968e9f0` |
| 130 | `theorem` | [Chain.nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-nil.md) | 821 | `result-track:5aa66d2bf874225884738b8bfcd510e6f5509b30e8ee9da2389f2facc89321d0` |
| 131 | `theorem` | [chain_coe_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-coe-cons.md) | 824 | `result-track:80b5fed69e84bb4b31ec7418abc1d4802f9071701cd10b57638e8b1d8fb9f90f` |
| 132 | `theorem` | [chain_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-singleton.md) | 828 | `result-track:f7ca9bb05f74ae1afa65377669420f5a261142ab666b692606804c006917fa67` |
| 133 | `theorem` | [chain_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-ne-nil.md) | 831 | `result-track:f575ba0c562f2d604ffed9f184070f71e62cb156606cdc8679803920d29aa5e1` |
| 134 | `theorem` | [chain_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-map.md) | 837 | `result-track:41dbb634319166bc6a8ce727f9fad25dda5a0b8c61fcfadea0f46ee41ed3c1f5` |
| 135 | `theorem` | [chain_range_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-range-succ.md) | 844 | `result-track:848cd3fadb0bacc9ccfc0dde93d571dae4ee1ba8fa9580cd5b598b6ce4ed85d6` |
| 136 | `theorem` | [Chain.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-imp.md) | 850 | `result-track:2664dfc3767b4fdd041221fafe2b4f65c44f7e635b49bf4bc82f904c6f6ba92f` |
| 137 | `theorem` | [chain_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-mono.md) | 858 | `result-track:6ac4757ca737fe9b6e697f4e263acc26e741345cff294aa54b02fe64c6af01fd` |
| 138 | `theorem` | [chain_of_pairwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-of-pairwise.md) | 861 | `result-track:cf5a296a0172dec0521d09e3b6ec7eb8c9622cbd3ac66a8fabafa9fc93f4bcfa` |
| 139 | `theorem` | [chain_iff_pairwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-iff-pairwise.md) | 877 | `result-track:0d08aaef469ce7ea6f6c183176b17bcb59fa147fafe707357814692df19d45aa` |
| 140 | `theorem` | [Chain.eq_nil_of_irrefl](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-eq-nil-of-irrefl.md) | 893 | `result-track:1f434d8c6f5da345156ff2bf523cf35b710dcb24976d051689a046ba3355cf7d` |
| 141 | `theorem` | [Chain.eq_nil_of_wellFounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/chain-eq-nil-of-wellfounded.md) | 900 | `result-track:4fa1a4bc5f081c46fd557035ff0088165feec973dff7cd512b165d6cd8629f7b` |
| 142 | `theorem` | [forall_eq_of_chain](../../../../../../ComputerScience/TheoryOfData/DataStructures/CyclePublic.lean/declarations/forall-eq-of-chain.md) | 906 | `result-track:c7b850ac0762ab1b60523e68ef6ba17ff5cb704545d95f6b129985e157ee0184` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bab9a304d9d08acb436c5b86ecc5e0ae4657362e079544fe6765f9e0d8bda0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
