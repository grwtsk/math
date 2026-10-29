# Verification target: Combinatorics Matroid Loop Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6315208fbc611a8cc0857ecdf080f7c229401d2",
  "lexical_observation_count": 168,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant0cf1321a8cf6eddf8f55414c37e47c8fa4ba5033b1c8e2e230b8e69cc61ab847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/index.md) · [Full source](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6315208fbc611a8cc0857ecdf080f7c229401d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant0cf1321a8cf6eddf8f55414c37e47c8fa4ba5033b1c8e2e230b8e69cc61ab847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant0cf1321a8cf6eddf8f55414c37e47c8fa4ba5033b1c8e2e230b8e69cc61ab847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loops.md) | 66 | `declaration-track:c6cbeee69d7ebd40dfec6e57822a7b393e3eed93174051f4b6cf4c82a116b83f` |
| 2 | `lemma` | [loops_subset_ground](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loops-subset-ground.md) | 69 | `result-track:85432104c13045424485af668943511ac3f58a7c640cdd684eebfc2b4187c8c4` |
| 3 | `def` | [IsLoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop.md) | 73 | `declaration-track:7018a972d12a3c345390887bc46c8c9aa5a2ccb7660304c8591cc4eb4914ed2b` |
| 4 | `lemma` | [isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-iff.md) | 75 | `result-track:c5fc7e7b73c5d8d91d974fed4c9b6dc553a06f192a9c645f6e00b0a76daa994c` |
| 5 | `lemma` | [closure_empty](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-empty.md) | 77 | `result-track:06eecfbb572f60006f7af9947b720946766ecc0c0e12d11119fba2cdfcb38e5b` |
| 6 | `lemma` | [IsLoop.mem_ground](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-mem-ground.md) | 80 | `result-track:a4171234961936d7bdb641d7abba3db8ba0cc8c5d369aea3a716d373151bf2cf` |
| 7 | `lemma` | [isLoop_tfae](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-tfae.md) | 83 | `result-track:0b39dded0c8381ebe2c6cb7203f9afe0cfd8a80fb5b820374536d8c86b56fd98` |
| 8 | `lemma` | [singleton_dep](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/singleton-dep.md) | 102 | `result-track:2385564e41cb743a8b14f859cd9d170fc851d50389c750e337420e3fdda030b7` |
| 9 | `lemma` | [singleton_not_indep](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/singleton-not-indep.md) | 107 | `result-track:796cd99c5b3601b10e497a9aded46cb3634de316bc623a891398eeb6e3dfca12` |
| 10 | `lemma` | [singleton_isCircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/singleton-iscircuit.md) | 111 | `result-track:18941208b0fbcf9c4796693cbf28042bab32606ac4301641fdb58fa9576fb293` |
| 11 | `lemma` | [isLoop_iff_forall_mem_compl_isBase](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-iff-forall-mem-compl-isbase.md) | 116 | `result-track:4390a69931261ced733eaac54f74011ec0cff42b23b331c79089842a755fd444` |
| 12 | `lemma` | [isLoop_iff_forall_notMem_isBase](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-iff-forall-notmem-isbase.md) | 119 | `result-track:c1dc43335fee6f6ff93c36b87b6b695877facbd0f1bcd7a944204f9444ba0184` |
| 13 | `lemma` | [IsLoop.mem_closure](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-mem-closure.md) | 123 | `result-track:c0c925f9b5080b7b1caa78914557c814d4e7d67fa2c104b872a9c2cff30751c0` |
| 14 | `lemma` | [IsLoop.mem_of_isFlat](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-mem-of-isflat.md) | 126 | `result-track:bc414670ad4f96ba868f500b4b686ccc431cc56594073827aabda3ce8423427b` |
| 15 | `lemma` | [IsFlat.loops_subset](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isflat-loops-subset.md) | 129 | `result-track:332d61ff6c1e0c10a0795847cad5841a1adcc72bc037adea082e874f74fd0932` |
| 16 | `lemma` | [IsLoop.dep_of_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-dep-of-mem.md) | 132 | `result-track:ba86713ff9ac062d370e8afcbdb4b8c8b1d1ae43f03b5d38892c640ff6991f10` |
| 17 | `lemma` | [IsLoop.not_indep_of_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-not-indep-of-mem.md) | 135 | `result-track:473f372888efb26f6bf0fee0de1e159e6ab2e06b3154dd5355c08570d07e184a` |
| 18 | `lemma` | [IsLoop.notMem_of_indep](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-notmem-of-indep.md) | 138 | `result-track:550e5d87ea86fd0156f50f1daa185276c23d53ecf12ab42f137f9bfbf4a05ed4` |
| 19 | `lemma` | [IsLoop.eq_of_isCircuit_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-eq-of-iscircuit-mem.md) | 141 | `result-track:711968d9b58a5afb1105421e23a6da7772197ef2b69396e81e75332f635fd4b9` |
| 20 | `lemma` | [Indep.disjoint_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/indep-disjoint-loops.md) | 144 | `result-track:bf251eb08684c9ecaff97dab8cebd937869857a9660526712d4b40bfe8b18613` |
| 21 | `lemma` | [Indep.eq_empty_of_subset_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/indep-eq-empty-of-subset-loops.md) | 149 | `result-track:285a89beaab0fcee99458afd4afbe49ff04fd44044bc23d4d0143d1a5bdf6cf1` |
| 22 | `lemma` | [isBasis_loops_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isbasis-loops-iff.md) | 153 | `result-track:e056136769393b7f3d971c501d5edcfad6c3e48bea2cda247326ef141fdb53c5` |
| 23 | `lemma` | [closure_eq_loops_of_subset](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-eq-loops-of-subset.md) | 157 | `result-track:cd018a913404bdfcfcae9b536d4e1f52868eef9a48630be71de3454942d006e9` |
| 24 | `lemma` | [isBasis_iff_empty_of_subset_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isbasis-iff-empty-of-subset-loops.md) | 160 | `result-track:ecc47ab3afc67c8f5624267ed29eca833560345a1f84e6aab48e1cd734d82a6a` |
| 25 | `lemma` | [IsLoop.closure](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-closure.md) | 165 | `result-track:801f5d753d884e828599be4b2d31285588244cc65c95d184d00c154924ea858a` |
| 26 | `lemma` | [isLoop_iff_closure_eq_loops_and_mem_ground](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-iff-closure-eq-loops-and-mem-ground.md) | 168 | `result-track:28222a167f7d4b5b90d58cf9bde60d509d6aec206cb1e206c5d0e32d8c14bb12` |
| 27 | `lemma` | [isLoop_iff_closure_eq_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-iff-closure-eq-loops.md) | 175 | `result-track:acafc00de7d8dfea2d7d22202f724d97d4da69e124e3583332f3665479d356b1` |
| 28 | `lemma` | [closure_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-loops.md) | 180 | `result-track:5deb318f0fdd8a7c8679b6a6d90c08e7f7474c4a0e7bc8ab0c09263909afdf62` |
| 29 | `lemma` | [closure_union_loops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-union-loops-eq.md) | 184 | `result-track:cdaea9e6ba14fb7aa975a69f232036e227d05282dfd6e53253b03d189007f492` |
| 30 | `lemma` | [closure_loops_union_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-loops-union-eq.md) | 189 | `result-track:9ae20d1c4cef56597b0f03dd1f1290e96fa2f4641e7f5d13f2403bd8707bcc45` |
| 31 | `lemma` | [closure_sdiff_loops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-sdiff-loops-eq.md) | 193 | `result-track:2460d851f1bda067c1c47ec340e2c967133b11a04a67638c4d308f83a8125263` |
| 32 | `lemma` | [restrict_loops_eq'](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/restrict-loops-eq-source-edition-2.md) | 201 | `result-track:5b5826008fe4d94bd3a75038fea4ffe2bf83a09793ac55a0e3d05ed3f6f6291f` |
| 33 | `lemma` | [restrict_loops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/restrict-loops-eq.md) | 205 | `result-track:5179c560d8b979819f1c502cd478e57d345f4472b973e515a173d018edcef75e` |
| 34 | `lemma` | [restrict_isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/restrict-isloop-iff.md) | 209 | `result-track:83d9bed0dca8485eb3cae4969c68bf510fd4679278ded8be269a047d5e1a2a59` |
| 35 | `lemma` | [IsRestriction.isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isrestriction-isloop-iff.md) | 214 | `result-track:92320d8102b37a1119ad49b488e0cc6e05b75d5c539a16a9c585f86dea948b18` |
| 36 | `lemma` | [IsLoop.of_isRestriction](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-of-isrestriction.md) | 219 | `result-track:45ae492c439e06e874377f7f2e18b00de5e2a67b5a51bbaa6d0bc4462a19d084` |
| 37 | `lemma` | [IsLoop.isLoop_isRestriction](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-isloop-isrestriction.md) | 222 | `result-track:34bea12453888d8974741b77a28a0555a56e2fe4e61c8d114c9ad874d236032b` |
| 38 | `lemma` | [map_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/map-loops.md) | 226 | `result-track:5801513d893bcfe7940acd81b6574fd1a37725cf91f0280215ad4252aee92743` |
| 39 | `lemma` | [map_isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/map-isloop-iff.md) | 230 | `result-track:1997bbf1ab39c30ea28a436c8ea9b7ffa6fb8fbf6c9b5cd12ea683b72027470a` |
| 40 | `lemma` | [mapEmbedding_isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/mapembedding-isloop-iff.md) | 235 | `result-track:51d52e818ebf8b5cff5cda5f2b76799f2da2439093ac54ccd7db9fac50af2c7f` |
| 41 | `lemma` | [comap_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/comap-loops.md) | 239 | `result-track:9a22a1d9ab2ca31a5d30f32c148582cfb48d7e9312b999395461b8ee6a33695b` |
| 42 | `lemma` | [comap_isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/comap-isloop-iff.md) | 243 | `result-track:86704ce09252d785fc016a0fec21fb21ecf6ff8e76f9cfd3e9e00d85956a2a25` |
| 43 | `lemma` | [loopyOn_isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loopyon-isloop-iff.md) | 247 | `result-track:36f3c1751db05a23f63ace8ecf93e490c2ef9c0416a9a0e1197a1e761eb48070` |
| 44 | `lemma` | [eq_loopyOn_iff_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/eq-loopyon-iff-loops.md) | 250 | `result-track:6e585a3d62ac3281882de704bfb68772f8ddf7e41cdb3156ee9f8ae1a4189fac` |
| 45 | `lemma` | [restrict_subset_loops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/restrict-subset-loops-eq.md) | 254 | `result-track:21cb817a2ce6ce5889b3ebd8ce1ce033fe45a48d945a1f30c08cfa9691d51271` |
| 46 | `lemma` | [freeOn_not_isLoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/freeon-not-isloop.md) | 259 | `result-track:b4fe017980bf08664ebdd5f411f3155a146ed171d5b810d809866f51e0ee8a5e` |
| 47 | `lemma` | [uniqueBaseOn_isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/uniquebaseon-isloop-iff.md) | 263 | `result-track:6ee4bad73d3ecdcbb45b21472b93449883b4528d940baadd2da8c23a731c2b8c` |
| 48 | `lemma` | [eq_loopyOn_iff_loops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/eq-loopyon-iff-loops-eq.md) | 266 | `result-track:bed262d91f6a5df28dec748866996dbdb7ba5b3b9b72f030e19cf74c89f3d24d` |
| 49 | `structure` | [IsNonloop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop.md) | 274 | `declaration-track:5359a9951a9c2809a223f26dabe7417d5c3d667e4736d99740d3035180000f8b` |
| 50 | `lemma` | [IsLoop.not_isNonloop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-not-isnonloop.md) | 280 | `result-track:c0648e91dc263d1462a1df034ecb1aaefcfb200c2a411f8781ea6f7902e3db4d` |
| 51 | `lemma` | [compl_loops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/compl-loops-eq.md) | 283 | `result-track:ca9cdb7242e5415b0d0c8c0dddc32d58ac7560919ea50142717499898890b2ae` |
| 52 | `lemma` | [isNonloop_of_not_isLoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-of-not-isloop.md) | 286 | `result-track:f2f24ae978061be5c329354cf6bc34f8649232c62a3be04a4e8587ca7bb2f5ea` |
| 53 | `lemma` | [isLoop_of_not_isNonloop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-of-not-isnonloop.md) | 289 | `result-track:dfd12e7ebe555d916ef79a1a2d1bec8fe93ed44c9b615ebaf787aaf18bc3e84a` |
| 54 | `lemma` | [not_isLoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/not-isloop-iff.md) | 294 | `result-track:cd676c977378388f3499137087e9ddee278a01021efa438307fea9739f11b959` |
| 55 | `lemma` | [not_isNonloop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/not-isnonloop-iff.md) | 298 | `result-track:0d868a84ca5017f07b07f312f0f3e19c7e9aabdabe8913fd96e37e748a185304` |
| 56 | `lemma` | [isNonloop_iff_mem_compl_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-iff-mem-compl-loops.md) | 301 | `result-track:3193ee1a0ee36a2b6a00dec39d01c88a5e793da49cf0674a8e4d5a06fb3b18b4` |
| 57 | `lemma` | [setOfPred_isNonloop_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/setofpred-isnonloop-eq.md) | 304 | `result-track:c13d1311c20611c79a3299543ba71f5f0705176767506bed4fd3d70cbe9ad61b` |
| 58 | `lemma` | [not_isNonloop_iff_closure](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/not-isnonloop-iff-closure.md) | 310 | `result-track:6393ffc9914cfe635bbd93b72ff779061e592e5f960508f7fb5499b14ee8ab75` |
| 59 | `lemma` | [isLoop_or_isNonloop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-or-isnonloop.md) | 316 | `result-track:b11174948c0cdea7ddd2c62f3c2ff18a043cb0d2f7e2a08b9751ef3d30a597e8` |
| 60 | `lemma` | [indep_singleton](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/indep-singleton.md) | 321 | `result-track:c58fcc6747ae30772644f54be782b3c8c5700055a5252915d2fe3be01adbe7a6` |
| 61 | `lemma` | [Indep.isNonloop_of_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/indep-isnonloop-of-mem.md) | 327 | `result-track:4d9296c45474d0796614813262c2e05be0a924149aeef55ce7f5e908c8fefcd0` |
| 62 | `lemma` | [IsNonloop.exists_mem_isBase](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-exists-mem-isbase.md) | 330 | `result-track:8d2c044ca6571658831740992c3495f5780f07b9f3a627a06b2fb93670a40838` |
| 63 | `lemma` | [IsCocircuit.isNonloop_of_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscocircuit-isnonloop-of-mem.md) | 333 | `result-track:eda70a4f861f007f6f3a28dc6831fea037dd04f42a185e0d8b738a19e282745e` |
| 64 | `lemma` | [IsCircuit.isNonloop_of_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscircuit-isnonloop-of-mem.md) | 340 | `result-track:f5721dfe35e43e529868067fe08b2dec5d94e5c38a816619e64df467d9601281` |
| 65 | `lemma` | [IsCircuit.isNonloop_of_mem_of_one_lt_card](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscircuit-isnonloop-of-mem-of-one-lt-card.md) | 345 | `result-track:5e326db926f1dbc51482f86f836895fc3351be6ab1d8a0462ae4e4b3de7dda36` |
| 66 | `lemma` | [isNonloop_of_notMem_closure](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-of-notmem-closure.md) | 351 | `result-track:ae92985f7677ae79085e2ab130f6f63c45f4ce0a2abbf1f6d3824911570cf4b9` |
| 67 | `lemma` | [isNonloop_iff_notMem_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-iff-notmem-loops.md) | 355 | `result-track:0a510271f0ba31b436b5073b928d6cb51653be86420eb2876de52d0a7bc54509` |
| 68 | `lemma` | [IsNonloop.mem_closure_singleton](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-mem-closure-singleton.md) | 359 | `result-track:db56bdf76e038be0d530c2140f4ec265b08e06e9658e013597ab11d98b9ca42a` |
| 69 | `lemma` | [IsNonloop.mem_closure_comm](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-mem-closure-comm.md) | 365 | `result-track:ae99c2a6b1b719e365fdb0482af83cd064ac85bdbf063087d365d8b1748e9c78` |
| 70 | `lemma` | [IsNonloop.isNonloop_of_mem_closure](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-isnonloop-of-mem-closure.md) | 369 | `result-track:2e9baf89d204cca27daf85e88f0a3150cd120a8ee289f891a5067aa4b77d6bd1` |
| 71 | `lemma` | [IsNonloop.closure_eq_of_mem_closure](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-closure-eq-of-mem-closure.md) | 379 | `result-track:853d07dc44c0b68ed7ac12f1c4bfa70f6bb0ee0959394640a4f0ba288c4f1d5c` |
| 72 | `lemma` | [IsNonloop.closure_eq_closure_iff_isCircuit_of_ne](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-closure-eq-closure-iff-iscircuit-of-ne.md) | 386 | `result-track:6b1fca649cfc2ae82f5af01fe79a3d0e285e0ba6c289c59eba8535f6eec786ee` |
| 73 | `lemma` | [IsNonloop.closure_eq_closure_iff_eq_or_dep](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-closure-eq-closure-iff-eq-or-dep.md) | 399 | `result-track:da303894d178803c12c5d61313252fa7b7f6be14020a6f0c868a6f41d9293f17` |
| 74 | `lemma` | [exists_isNonloop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/exists-isnonloop.md) | 411 | `result-track:6e6dd4f08d099c8abf8a7fedcd6b436784f2c5fd73a02933769c80e143a9281b` |
| 75 | `lemma` | [IsNonloop.rankPos](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-rankpos.md) | 415 | `result-track:b42c11fb52a9ab55f73638023b4df85cdbdc94b152cfe20da60e24b9777a5f98` |
| 76 | `lemma` | [restrict_isNonloop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/restrict-isnonloop-iff.md) | 419 | `result-track:e851be3208d2c0fe438c0120a496ae17834227a02a8e552b46dcae2ab142e579` |
| 77 | `lemma` | [IsNonloop.of_restrict](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-of-restrict.md) | 422 | `result-track:40f3343dece39278f22ae66bf29278fbdd8f051daec9df75936ddbf306d8eb04` |
| 78 | `lemma` | [IsNonloop.of_isRestriction](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-of-isrestriction.md) | 425 | `result-track:6552bc2726981c1cfefe2884d288e711b1c1729d35821e02de874be8f1d06eeb` |
| 79 | `lemma` | [isNonloop_iff_restrict_of_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-iff-restrict-of-mem.md) | 428 | `result-track:0e226069efccb0b3d4a5f8b8ff4b480eafabd9a933a60307b4238da8d8de18cc` |
| 80 | `lemma` | [comap_isNonloop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/comap-isnonloop-iff.md) | 433 | `result-track:28ab58cd0a15b78be1fb622fb18e55b0e41824846f4485dd9476130c8602297b` |
| 81 | `lemma` | [freeOn_isNonloop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/freeon-isnonloop-iff.md) | 439 | `result-track:13221d59088f2a688b2b1cfc615ee1c1dc51bc7be720c9b443e398808028f435` |
| 82 | `lemma` | [uniqueBaseOn_isNonloop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/uniquebaseon-isnonloop-iff.md) | 443 | `result-track:4102a549cfd34c4f746e405b9cb263f378bd288ac3097a71d1d646ac582e482b` |
| 83 | `lemma` | [IsNonloop.exists_mem_isCocircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-exists-mem-iscocircuit.md) | 447 | `result-track:a9b04babf94f0ecd4a3116b7c18484ca595f3ee98252ad24b7d257fc6943fa7e` |
| 84 | `lemma` | [closure_inter_setOfPred_isNonloop_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-inter-setofpred-isnonloop-eq.md) | 452 | `result-track:41dc198f19f8e32261989a0122ad4a4d681995218d68094d0c290565b4315149` |
| 85 | `def` | [IsColoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop.md) | 467 | `declaration-track:28d217f8ca929be4128ed223a6ceaec9753bd32d42ecbec704d9fc264fe90366` |
| 86 | `def` | [coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/coloops.md) | 470 | `declaration-track:7a42f8e9e0a2c1264c8978abbf23ad03f774731604fbf2d9d03da7d874b6676c` |
| 87 | `lemma` | [IsColoop.mem_ground](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-mem-ground.md) | 473 | `result-track:89f3a3171e65d6aa0323211dbbc1f560221f0d6883f8bad25e2b00b14b27f578` |
| 88 | `lemma` | [coloops_subset_ground](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/coloops-subset-ground.md) | 477 | `result-track:eb452b207963810a4d470fd373e9f2657be5bd01f1dc05913e468f3533100a6e` |
| 89 | `lemma` | [isColoop_iff_mem_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-mem-coloops.md) | 480 | `result-track:a481ad08c15c6329c99c099c134222ee4140719ad33c8eddd827e7ac19a30a5d` |
| 90 | `lemma` | [dual_loops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/dual-loops.md) | 483 | `result-track:6752e20326e8214ed1cd82fbba0822c77e82d0c6c4989919bb404990ce700e4d` |
| 91 | `lemma` | [dual_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/dual-coloops.md) | 486 | `result-track:39199161ae43f2a715cf7cc8d62521e685bac6daa632a133d111080a9dc20e3e` |
| 92 | `lemma` | [IsColoop.dual_isLoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-dual-isloop.md) | 489 | `result-track:251d5a73d6a81272c66e03cce02f72d0d7323e4844134f7eef7d296ec5c08616` |
| 93 | `lemma` | [IsColoop.isCocircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iscocircuit.md) | 492 | `result-track:8e7a1351c14ecdc358a4bb35406efb5767a86b3b66b857f64cf8b9e229ef8da1` |
| 94 | `lemma` | [IsLoop.dual_isColoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-dual-iscoloop.md) | 495 | `result-track:31ec34e3892a9a22ca23ae54428f3b3b9e832cd339f31714350287253a949018` |
| 95 | `lemma` | [dual_isColoop_iff_isLoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/dual-iscoloop-iff-isloop.md) | 498 | `result-track:649c9923686902a06ff03b0b202e10340bfa99f56cbb8b249ae4e86921378b74` |
| 96 | `lemma` | [dual_isLoop_iff_isColoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/dual-isloop-iff-iscoloop.md) | 502 | `result-track:0dd3d02ba66206c86cabeeb995ae199e224dde365cd50a36c2bb1dd489abf547` |
| 97 | `lemma` | [singleton_isCocircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/singleton-iscocircuit.md) | 505 | `result-track:2c7ba2e8a1b657899bb555615577211fa6ad935ed4e37a1fc89f2b7d39e2fb17` |
| 98 | `lemma` | [isColoop_tfae](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-tfae.md) | 508 | `result-track:79788076631a7725c25a9b5b1687d58b0aae44184e770c2d0c934539e077017a` |
| 99 | `lemma` | [isColoop_iff_forall_mem_isBase](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-forall-mem-isbase.md) | 543 | `result-track:03b183275e85eda4a63b13bc3ef5486cfe5bf96fd7b15d7420a624f2b3ba0aba` |
| 100 | `lemma` | [IsBase.mem_of_isColoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isbase-mem-of-iscoloop.md) | 546 | `result-track:6a5f6369c0e530c1e30773e4a6c8b154d4429ae7e486f8ad831bd2c7e7e86f1c` |
| 101 | `lemma` | [IsColoop.mem_of_isBase](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-mem-of-isbase.md) | 549 | `result-track:d46e08ded36720a241e7e90b076fa4c03a1812663d41aa8d7bff85b41a991333` |
| 102 | `lemma` | [IsBase.coloops_subset](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isbase-coloops-subset.md) | 552 | `result-track:63bae114dba7ae83e84391c1d47c6d3baf56783c74437f856e723efd7ac14c23` |
| 103 | `lemma` | [IsColoop.isNonloop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-isnonloop.md) | 555 | `result-track:7e473b9afb2f5a500bc7faba0fea8c8faebe9d5872266baeb56a5e9ddb01d101` |
| 104 | `lemma` | [IsLoop.not_isColoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isloop-not-iscoloop.md) | 559 | `result-track:4980b38e3232f8c9546f0a345ca872dff56a43c8ebbd0ddad673f859e9321f96` |
| 105 | `lemma` | [IsColoop.notMem_isCircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-notmem-iscircuit.md) | 563 | `result-track:3cbdbcf1970799dc8e477ce848c15b36715c6dc3f730122a936db6d87ab7733a` |
| 106 | `lemma` | [IsCircuit.disjoint_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscircuit-disjoint-coloops.md) | 566 | `result-track:1d3e5063ccdd8c95e6b21434a5b551dc86990f74e8c5286740822aef744925c5` |
| 107 | `lemma` | [isColoop_iff_forall_notMem_isCircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-forall-notmem-iscircuit.md) | 569 | `result-track:5020ba36ad6f98a11fc5ad1bc385587f6164bf3314a6635dcf325faefdb3cc4e` |
| 108 | `lemma` | [isColoop_iff_forall_mem_compl_isCircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-forall-mem-compl-iscircuit.md) | 573 | `result-track:1495de6d5ad3836e039f45d793bad9c35ea9f1cf02f9768acc383f838830f916` |
| 109 | `lemma` | [IsCircuit.not_isColoop_of_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscircuit-not-iscoloop-of-mem.md) | 580 | `result-track:3b3fe8f712103bad4a9ffd0852aecb3a31df52088cf45d21cb469aa66c1bb043` |
| 110 | `lemma` | [isColoop_iff_forall_mem_closure_iff_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-forall-mem-closure-iff-mem-source-edition-2.md) | 583 | `result-track:b4f72394f6c0ce909eaf9802802685746c8e3341330ea895eb680b4715db43ef` |
| 111 | `lemma` | [isColoop_iff_forall_mem_closure_iff_mem'](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-forall-mem-closure-iff-mem.md) | 588 | `result-track:45dd4ef1caca8c05a6c0699abbae410502463c625bc0f0cb9131e024abd3dab3` |
| 112 | `lemma` | [IsColoop.mem_closure_iff_mem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-mem-closure-iff-mem.md) | 594 | `result-track:dcea9217f824d110a5c934f9b4ffc1592d4e49b3560761349ec7c73e8d9f56ef` |
| 113 | `lemma` | [IsColoop.mem_of_mem_closure](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-mem-of-mem-closure.md) | 597 | `result-track:cf6db9028055d839958943add147b661fb783351a48ca8b9384fc03a70bf700a` |
| 114 | `lemma` | [isColoop_iff_sdiff_not_spanning](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-sdiff-not-spanning.md) | 600 | `result-track:aef66f5ce489ce84b94133a9dcc86a604b0efd62cb46bdb1598b5c875e8a8d62` |
| 115 | `lemma` | [isColoop_iff_sdiff_closure](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-sdiff-closure.md) | 608 | `result-track:899dd3d026fc1b6cbe160fcca5ab64c4b371394a67512604ae94f96747023de2` |
| 116 | `lemma` | [isColoop_iff_notMem_closure_compl](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-iff-notmem-closure-compl.md) | 613 | `result-track:111c9594b258985d704e798d3853415c8b2313f8b1c51abe72f4866aa1ff1355` |
| 117 | `lemma` | [IsBase.isColoop_iff_forall_notMem_fundCircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isbase-iscoloop-iff-forall-notmem-fundcircuit.md) | 621 | `result-track:a0a8e5a4fea8137c52174f0cd49ed70ddd8fee7df8b6ed9d424433bb8813624d` |
| 118 | `lemma` | [IsBasis'.inter_coloops_subset](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isbasis-inter-coloops-subset.md) | 638 | `result-track:5cd8f2b3b3080b5c93ebe4855bc4fb6b6592f7bcc63bb8f17f1a38c71da833ae` |
| 119 | `lemma` | [IsBasis.inter_coloops_subset](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isbasis-inter-coloops-subset-source-edition-2.md) | 643 | `result-track:daf685eae671c1b97703294c3cbb228a4b092514cd40dec66126fd1ed7f533b0` |
| 120 | `lemma` | [exists_mem_isCircuit_of_not_isColoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/exists-mem-iscircuit-of-not-iscoloop.md) | 646 | `result-track:823d7881df4ec16908e275d695046a0a1ca82a0ad58d0c61c58a0df25cadf3b0` |
| 121 | `lemma` | [closure_inter_coloops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-inter-coloops-eq.md) | 653 | `result-track:003241fc7a74fb22fec892de22227f04c5255b0dbca3897f64119c627714027c` |
| 122 | `lemma` | [closure_inter_eq_of_subset_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-inter-eq-of-subset-coloops.md) | 659 | `result-track:96bec85559bfb57405012e3d2b5a6976c643eb1f011ce7b797fbc82a4e517c84` |
| 123 | `lemma` | [closure_union_eq_of_subset_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-union-eq-of-subset-coloops.md) | 664 | `result-track:630c10d3ae93cb23b4aea2e942f89492e2b5fae8baa4c1d96af2fad3f1e3f9c1` |
| 124 | `lemma` | [closure_insert_isColoop_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-insert-iscoloop-eq.md) | 675 | `result-track:b7e8c446765378d82360b1a1b5296b6e9626c8e5f26bba33a4e731112692e491` |
| 125 | `lemma` | [closure_eq_of_subset_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-eq-of-subset-coloops.md) | 679 | `result-track:849a199ee42ad0f70ac4f6e59c8818cac789a9b672e688d62dade39e0cc2383b` |
| 126 | `lemma` | [closure_sdiff_eq_of_subset_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-sdiff-eq-of-subset-coloops.md) | 683 | `result-track:6464afd07b36758a493c7825cccb5a0f8b35b0f0953ea0f6ec25f982c82f14a7` |
| 127 | `lemma` | [closure_disjoint_of_disjoint_of_subset_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-disjoint-of-disjoint-of-subset-coloops.md) | 696 | `result-track:b88a5789e890bb399b3c291201b3c13ae08d58e81bb344cc056eaf9ec524c0b0` |
| 128 | `lemma` | [closure_disjoint_coloops_of_disjoint_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-disjoint-coloops-of-disjoint-coloops.md) | 701 | `result-track:13769ab8dcce58c1cae5bf0bf1a88564c0212a01b348d7dd19697f317797bf22` |
| 129 | `lemma` | [closure_union_coloops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/closure-union-coloops-eq.md) | 705 | `result-track:1ceb34caaafd64dd00175ece2aeb5967f67cbc0d7a20e6731493fc7d169d7b38` |
| 130 | `lemma` | [IsColoop.notMem_closure_of_notMem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-notmem-closure-of-notmem.md) | 709 | `result-track:2151d58a7423379b53b7e61bbb45bf472fde6afc0c96f224fcd49b751ef00c72` |
| 131 | `lemma` | [IsColoop.insert_indep_of_indep](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/iscoloop-insert-indep-of-indep.md) | 712 | `result-track:924a1dc7ee603d4701217d6d3786ebd3fee703989c632a9792ee1eb2bf84c470` |
| 132 | `lemma` | [union_indep_iff_indep_of_subset_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/union-indep-iff-indep-of-subset-coloops.md) | 718 | `result-track:94caa994213f73de79f90ce0e1e61d20f578978c4f37ef17d1e1749219b33ac8` |
| 133 | `lemma` | [sdiff_indep_iff_indep_of_subset_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/sdiff-indep-iff-indep-of-subset-coloops.md) | 724 | `result-track:0bfd020418757fd9035a6566b1be494e03b03f22d74f2dce784f8db49b657c69` |
| 134 | `lemma` | [union_coloops_indep_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/union-coloops-indep-iff.md) | 733 | `result-track:116b042a5abd593142b8839c3cf6fa42b480084540d151ad5bd5ed5d144c9edc` |
| 135 | `lemma` | [sdiff_coloops_indep_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/sdiff-coloops-indep-iff.md) | 737 | `result-track:4f9046ff0a3f213f969d4684254ee7f15ad7aad9fcbcc5cd5001b19082747bf3` |
| 136 | `lemma` | [coloops_indep](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/coloops-indep.md) | 742 | `result-track:8f71ee38ea49f356f6d4e0a764e3c9389f6497ac58897a89be2dcc5ae813df66` |
| 137 | `lemma` | [restrict_isColoop_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/restrict-iscoloop-iff.md) | 746 | `result-track:8e38b4474e9aec07a41c651fab1fe034d3a227b60d7c3884acc2d537acda9098` |
| 138 | `lemma` | [ext_indep_disjoint_loops_coloops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/ext-indep-disjoint-loops-coloops.md) | 756 | `result-track:91b136edf1e31c16680d36a19b5f3ddc0dd90bf7032e9307c7680cbc2f8d0ec4` |
| 139 | `class` | [Loopless](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loopless.md) | 778 | `declaration-track:4ba8f3aac7252b80a8bd377f179aaa09ce12d352787fbd5151eb536f13c44cfe` |
| 140 | `lemma` | [loops_eq_empty](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loops-eq-empty.md) | 782 | `result-track:4f590a50f545a6611197b09029d2dd48a7a01cd062ca7a8965403ebfc6a9287b` |
| 141 | `lemma` | [isNonloop_of_loopless](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-of-loopless.md) | 785 | `result-track:e07126c0b688a9affb13adf73f4095f027d0a9d50ffabe2e9dc66a19ef541511` |
| 142 | `lemma` | [subsingleton_indep](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/subsingleton-indep.md) | 790 | `result-track:9ca99f8e419513438f4e8cc9f45461f7146104371b4e0919068b06dbad8d88b0` |
| 143 | `lemma` | [not_isLoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/not-isloop.md) | 796 | `result-track:de2e7fdf9188d9b8c2883648aa2165a23f368cda27fdc7b17e0040f307f54aa2` |
| 144 | `lemma` | [loopless_iff_forall_isNonloop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loopless-iff-forall-isnonloop.md) | 799 | `result-track:5b58d27f2edac4f9e8c9f0d418d158fd38f45ee9a0d75612895683d302da5f4c` |
| 145 | `lemma` | [loopless_iff_forall_not_isLoop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loopless-iff-forall-not-isloop.md) | 803 | `result-track:6bb79e2614baa9a13550d5603a42258f32cac2dd09d2aa30ca75d741a634e1d3` |
| 146 | `lemma` | [loopless_iff_forall_isCircuit](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loopless-iff-forall-iscircuit.md) | 807 | `result-track:bb1e2213ea412e12eef57666121ea776e5187c84707d1bccd77613d4525a2774` |
| 147 | `lemma` | [Loopless.ground_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loopless-ground-eq.md) | 817 | `result-track:2d8c277f127bf1b626b6b18b891ef7e1b0f35eac48f7cf1da5aec6a1407a6073` |
| 148 | `lemma` | [IsRestriction.loopless](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isrestriction-loopless.md) | 820 | `result-track:bd509e5d07222782f724262f0a0636b834fac83ef5777891eb449685de1a6a9b` |
| 149 | `instance` | [(anonymous)](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/instance.md) | 824 | `declaration-track:8517df937ce25e984199fbc3e2e1dc283d7f77c29b0a273594722cfe010e62bf` |
| 150 | `lemma` | [loopyOn_isLoopless_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/loopyon-isloopless-iff.md) | 827 | `result-track:4eb312a405ee1bc1125d34fe066a2b4622b47855c5f204e58c41a14c398bc451` |
| 151 | `def` | [removeLoops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops.md) | 831 | `declaration-track:b1df8ca346b6ab4c5a13814c2e510e8ca57b9e7352f53a63e919d8658d9ca4e2` |
| 152 | `lemma` | [removeLoops_eq_restrict](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-eq-restrict.md) | 833 | `result-track:1e1a6c77332edf97fce4e77f01a0397bcd606d8b0731ffbaa03f54741039b621` |
| 153 | `lemma` | [removeLoops_ground_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-ground-eq.md) | 835 | `result-track:b56cc539b93e4b52e0c6df095975f893149f59efbddd4446b6ed849dcb6a74ed` |
| 154 | `instance` | [removeLoops_loopless](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-loopless.md) | 837 | `declaration-track:aebd179c0ff633e813d6da7b403513829e07295d1c08263d31b5574b5b41b708` |
| 155 | `lemma` | [removeLoops_eq_self](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-eq-self.md) | 841 | `result-track:74a56dec3c6497b7b3f78728725e7a4dc736ba1245222ca5e050eda54d385a7b` |
| 156 | `lemma` | [removeLoops_eq_self_iff](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-eq-self-iff.md) | 844 | `result-track:ad94e5b897f456babf40c9e0e76b1bb0c2e5349b0f347aad7d253c03d46e504c` |
| 157 | `lemma` | [removeLoops_isRestriction](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-isrestriction.md) | 849 | `result-track:82af22883baa7585927d69730c3bae8b308f07f7fb9fd5b3242d47ed8793c2ea` |
| 158 | `lemma` | [eq_restrict_removeLoops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/eq-restrict-removeloops.md) | 852 | `result-track:b83e0b339f770e1c5d271e4682928f6fa623b7f523597cbd98174d06c6ee21c2` |
| 159 | `lemma` | [removeLoops_indep_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-indep-eq.md) | 858 | `result-track:e37fa0d39e39e81c8768637b28a5f8b52fba483f7371364f2134d86e8f33989f` |
| 160 | `lemma` | [removeLoops_isBasis'_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-isbasis-eq.md) | 864 | `result-track:757e7cc76771de165113e55f88e3ce05976b61c39b2ab7ede7b60263079f729e` |
| 161 | `lemma` | [removeLoops_isBase_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-isbase-eq.md) | 868 | `result-track:d4959366c034642857b5f965637eb127c70793e160352db2f602064315eea3e0` |
| 162 | `lemma` | [removeLoops_isNonloop_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-isnonloop-eq.md) | 873 | `result-track:d0d809407f3a648788bb13d647613b7a3044437caadcadff6217c1cbbf571edd` |
| 163 | `lemma` | [IsNonloop.removeLoops_isNonloop](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isnonloop-removeloops-isnonloop.md) | 877 | `result-track:fa35428f95efd3aa4ed695af3edcd9ec88502a0f29e09e284938552274ff2c57` |
| 164 | `lemma` | [removeLoops_idem](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-idem.md) | 880 | `result-track:e91a3ebeb04a4b727137fb65a997d20b0bd804aa8dcd35f61f8433f54a6e5ced` |
| 165 | `lemma` | [removeLoops_restrict_eq_restrict](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-restrict-eq-restrict.md) | 883 | `result-track:fdfff42b39afac38f11784c9a017e4c10ba449c01ef6939e48b7c2a17f931b26` |
| 166 | `lemma` | [restrict_univ_removeLoops_eq](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/restrict-univ-removeloops-eq.md) | 888 | `result-track:5f2d1d07f23e3adb8258a10bd6f576d5e20a62c3e62f123cedcd199d2f2a60fc` |
| 167 | `lemma` | [IsRestriction.isRestriction_removeLoops](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/isrestriction-isrestriction-removeloops.md) | 892 | `result-track:44e82de24bb7018fa8c1716b887d4e0c6cb1fea957267e116bf2bce05255e7cb` |
| 168 | `lemma` | [removeLoops_mono_isRestriction](../../../../Combinatorics/CombinatoricsMatroidLoopPublic.lean/declarations/removeloops-mono-isrestriction.md) | 896 | `result-track:733c26f0082a67476df923dcc7d2bb04d0f3cc65a5e6d1e723f48acd2862609b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83c4e0f65c357053911d56784be2177bcb8f3de5f65acc777c558fcb8f590d1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant0cf1321a8cf6eddf8f55414c37e47c8fa4ba5033b1c8e2e230b8e69cc61ab847.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant0cf1321a8cf6eddf8f55414c37e47c8fa4ba5033b1c8e2e230b8e69cc61ab847.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
