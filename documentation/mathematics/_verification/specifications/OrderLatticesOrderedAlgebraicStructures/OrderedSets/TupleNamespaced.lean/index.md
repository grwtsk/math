# Verification target: Tuple Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7d228fbcbfaec7081e441ef4bf9d67467faf98d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant1a530e6428e39a0cd53a7cc4b31322927e9c67c950dc8dfc98ec4659f7718993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7d228fbcbfaec7081e441ef4bf9d67467faf98d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant1a530e6428e39a0cd53a7cc4b31322927e9c67c950dc8dfc98ec4659f7718993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant1a530e6428e39a0cd53a7cc4b31322927e9c67c950dc8dfc98ec4659f7718993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PiLex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [pi_lex_lt_cons_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/pi-lex-lt-cons-cons.md) | 32 | `result-track:a2a33bd70284d73087dec8f77b24549e4cb395d91392c89c236087b1373ca3fa` |
| 2 | `lemma` | [insertNth_mem_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/insertnth-mem-icc.md) | 41 | `result-track:24040825c194168c06b41f0473bc6fd829aaaf9b05676d0060b91de1ff016ece` |
| 3 | `lemma` | [preimage_insertNth_Icc_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/preimage-insertnth-icc-of-mem.md) | 47 | `result-track:d66e569b966012a809c51989e6c75557468856672181659d3c221286da653895` |
| 4 | `lemma` | [preimage_insertNth_Icc_of_notMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/preimage-insertnth-icc-of-notmem.md) | 52 | `result-track:3a7ec22bf989d3328f98afc3c57f0d9aa50e97c4a2fb93e9b7ceb2b2137a8edb` |
| 5 | `lemma` | [liftFun_vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/liftfun-veccons.md) | 67 | `result-track:50119c083a3393d8569ea8cb624e8a5e7ed01b2a258055f83266e2e6e4fe0fce` |
| 6 | `lemma` | [strictMono_vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/strictmono-veccons.md) | 74 | `result-track:7a1fc9b8f6c794cbd65d2f10ccc6e40c37b381e6405415affaff87e4a90dd25a` |
| 7 | `lemma` | [monotone_vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/monotone-veccons-source-edition-2.md) | 78 | `result-track:8de9ec72c2b455d556ec391c92de98268de96fbcddb0a76adb4c6d87b46203c2` |
| 8 | `lemma` | [monotone_vecEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/monotone-vecempty.md) | 81 | `result-track:40d490142b9a08b85ee62985edfbfd321ac015cc489fa65d71c7f7d9d5883c3e` |
| 9 | `lemma` | [strictMono_vecEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/strictmono-vecempty.md) | 84 | `result-track:10418bec7fea6696b6f37e0c97f2f232fb246c0e9ae782709fcebba3e8ec8613` |
| 10 | `lemma` | [strictAnti_vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/strictanti-veccons.md) | 87 | `result-track:9d5eee2744f1c86eb5c51029c1ea756e69b8fab208b06cdd1286ffdc4df2b77c` |
| 11 | `lemma` | [antitone_vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/antitone-veccons-source-edition-2.md) | 90 | `result-track:b18f71121a3b2ea03a4ee0bd1ded258219354c72581d7649cab15574700b1ebf` |
| 12 | `lemma` | [antitone_vecEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/antitone-vecempty.md) | 93 | `result-track:32be0102a13cc787c48a9d21439f900fec09b976512d34bb64803a7118aff78f` |
| 13 | `lemma` | [strictAnti_vecEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/strictanti-vecempty.md) | 96 | `result-track:1fc4439574b4d1847b2d6ffd708ab90b358318e625224c24859c1aa9c99efa8e` |
| 14 | `lemma` | [StrictMono.vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/strictmono-veccons-source-edition-2.md) | 99 | `result-track:ef26a2a3c974a8ef984e83bf422c0d523870a0756cbe95d39b7496ac56bb490b` |
| 15 | `lemma` | [StrictAnti.vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/strictanti-veccons-source-edition-2.md) | 102 | `result-track:a29bf181863e8534441e87af9295969109f0160533c91f7447fb192bf88b7a3e` |
| 16 | `lemma` | [Monotone.vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/monotone-veccons.md) | 105 | `result-track:1e8b2afbd14fc95fe320b3ca895c4a762bc551be568fc332c40354abf1e7425b` |
| 17 | `lemma` | [Antitone.vecCons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/antitone-veccons.md) | 108 | `result-track:2034089ddcd72606be957dfc5d84dd835cd423bb46c85c74ec33e5ade61aadb6` |
| 18 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/example.md) | 111 | `declaration-track:86a2a4469b98c50cf99f97fbbb4cb37eda28ffb7b17037a200ffe2d8c71f8f13` |
| 19 | `def` | [OrderIso.piFinTwoIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/orderiso-pifintwoiso.md) | 118 | `declaration-track:7140fa5c67012b39ebb3351f9232a2d4bef570596b00586cbefffabf180737a5` |
| 20 | `def` | [OrderIso.finTwoArrowIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/orderiso-fintwoarrowiso.md) | 124 | `declaration-track:de082835efd47af413ed1a316b17c5ddfc56430b5a045a25e5aadb5c4b5b25cb` |
| 21 | `def` | [consOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/consorderiso.md) | 134 | `declaration-track:45e52b318e7d004403b6c2bf4041ed067efa55fc7cd027f0409732e82d9f0aac` |
| 22 | `def` | [snocOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/snocorderiso.md) | 144 | `declaration-track:bd90a8f98cd96509dd19d7802540555176f4807d0e41325a5de986df26fec2ec` |
| 23 | `def` | [insertNthOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/insertnthorderiso.md) | 154 | `declaration-track:b9b5cbe9d824b69b58e1efe53a2b2351adc0a3103802f71e1ab325595f93ce32` |
| 24 | `lemma` | [insertNthOrderIso_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/insertnthorderiso-zero.md) | 159 | `result-track:a00a876892e61d0675219d98eaabf22e16ff4d31646a3a5abd0f001bc4ec5783` |
| 25 | `lemma` | [insertNthOrderIso_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/insertnthorderiso-last.md) | 164 | `result-track:7f0a49051a701c7a920a1c51625da1a8302e9bdc1ba21a7db82638558af113d4` |
| 26 | `def` | [finSuccAboveOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/finsuccaboveorderiso.md) | 170 | `declaration-track:5be4b1743f38809534b379a58e8fde6a9b076a637a6aa3d679ebe884b75f386d` |
| 27 | `lemma` | [finSuccAboveOrderIso_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/finsuccaboveorderiso-apply.md) | 174 | `result-track:f74717cb1ef0ba0df0a5526e3ac27da9b50dcd4cf209f1e257c00213ecc7d922` |
| 28 | `lemma` | [finSuccAboveOrderIso_symm_apply_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/finsuccaboveorderiso-symm-apply-last.md) | 177 | `result-track:2bb1507e824c2aedcfa49d53c8e5aec6264d3010f47f6605a49bbc03d670d39a` |
| 29 | `lemma` | [finSuccAboveOrderIso_symm_apply_ne_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/finsuccaboveorderiso-symm-apply-ne-last.md) | 182 | `result-track:cf01216d03352ef25a62c4111dcacf637300aa40ee80f90026e5e6fc3ebc0695` |
| 30 | `def` | [Fin.castLEOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TupleNamespaced.lean/declarations/fin-castleorderiso.md) | 191 | `declaration-track:e985c855a5dbb8509789e64a9a50e2d0a8a8da79fce7035f993d86341a90e69c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4a893079431bf4b71994c154d27e10c5772e0377204fd60195798400a8e400f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant1a530e6428e39a0cd53a7cc4b31322927e9c67c950dc8dfc98ec4659f7718993.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant1a530e6428e39a0cd53a7cc4b31322927e9c67c950dc8dfc98ec4659f7718993.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
