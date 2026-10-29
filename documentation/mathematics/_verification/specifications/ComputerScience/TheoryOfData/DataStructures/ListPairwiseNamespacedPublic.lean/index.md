# Verification target: List Pairwise Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8df88938af2e3658fcd6f38df2ae2861eca75906",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8df88938af2e3658fcd6f38df2ae2861eca75906`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean.json)

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
| 1 | `theorem` | [pairwise_iff_forall_infix](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-iff-forall-infix.md) | 52 | `result-track:98632ccf3748a65cb3abffc28167d48b1ab36a4e44694a8f271f3eb12c347355` |
| 2 | `theorem` | [Pairwise.forall_of_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-forall-of-forall.md) | 59 | `result-track:a919fc6781ebb6ce68edfcaef09b83e5640718a2cf526011b77d7430300f7c8c` |
| 3 | `theorem` | [Pairwise.forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-forall.md) | 63 | `result-track:53286cbb3f243aef7420102beb7a5d531231d465e71110d74f38671032e745a0` |
| 4 | `theorem` | [Pairwise.set_pairwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-set-pairwise.md) | 70 | `result-track:b91f5d66a0181dab48493473cdfc5a5fb3c5e9053d062e2056336d2b51b1e295` |
| 5 | `theorem` | [pairwise_of_reflexive_of_forall_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-of-reflexive-of-forall-ne.md) | 73 | `result-track:83b4d899c2c21f3235ad422752b90ede1931b27d6c1c2a1c9dbe4f5cdda2926f` |
| 6 | `theorem` | [pairwise_append_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-append-of-mem.md) | 83 | `result-track:2ee9bbf7802459dbabd130327be7033b0edaeaca60c5942aae294d89de3c06ef` |
| 7 | `theorem` | [pairwise_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-cons-of-mem.md) | 90 | `result-track:4a75e927982c41d8f29d42d412044bd22db30a80b292a9ac212ba14bf8f9f7f1` |
| 8 | `theorem` | [Pairwise.rel_head_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-rel-head-tail.md) | 94 | `result-track:868429688e2c7ebdef27b76d5c7fa4e937191bd49166027e2771421c6f4a1b6e` |
| 9 | `theorem` | [Pairwise.rel_head_of_rel_head_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-rel-head-of-rel-head-head.md) | 98 | `result-track:b219d9cbaacf91851426e11c750d58016b28e3bc27dee83a6e9393ae07d24edd` |
| 10 | `theorem` | [Pairwise.rel_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-rel-head.md) | 103 | `result-track:c47141dc2f3522b0817e987b59264cda6b9a04c59412e91f8a9a7909810fc848` |
| 11 | `theorem` | [Pairwise.rel_dropLast_getLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-rel-droplast-getlast.md) | 107 | `result-track:11823be9c12a8c0280796ad5bbab567f6ba0d4ddb4b4a577a8765b4633fb83fc` |
| 12 | `theorem` | [Pairwise.rel_getLast_of_rel_getLast_getLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-rel-getlast-of-rel-getlast-getlast.md) | 113 | `result-track:d6e78873e3b30022555f6b7a5cd528003dbd3e4e55e671c84451b8b1a3974252` |
| 13 | `theorem` | [Pairwise.rel_getLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-rel-getlast.md) | 119 | `result-track:06d51e1b16e6038a2be80efc00eecad4ad4d01ab9694a401d61669016e41afba` |
| 14 | `theorem` | [Pairwise.head!_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-head-le.md) | 125 | `result-track:a4b49b5aaf013a9231f2b4d3187f0040c527ef60fdfa0032cab1477d80239df0` |
| 15 | `theorem` | [pairwise_replicate_of_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-replicate-of-refl.md) | 133 | `result-track:09b5df8127bc4bc6efc6cc5d644a28b00b5ed17678beb00292ae6df32149f65f` |
| 16 | `theorem` | [pairwise_cons_cons_iff_of_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-cons-cons-iff-of-trans.md) | 140 | `result-track:dcd44e80cc93928259da877da97a423daab47939d021a8c83c72611f2528599d` |
| 17 | `theorem` | [Pairwise.cons_cons_of_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-cons-cons-of-trans.md) | 144 | `result-track:10719a6961da50c9f2fee5b20dd28942f67ccb021de8a88a078f1e3a1853ab58` |
| 18 | `theorem` | [Pairwise.rel_get_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-rel-get-of-lt.md) | 149 | `result-track:41684c5ed74299d4819bd17bb7eb57da9eb77b2d36af21a9eb10e7ad11f16060` |
| 19 | `theorem` | [Pairwise.rel_get_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-rel-get-of-le.md) | 153 | `result-track:88fe62f553a0f0f577314e84eee1073d3cf4195abf2b3ce488d6d8fbbb8b318f` |
| 20 | `theorem` | [Pairwise.decide](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/pairwise-decide.md) | 157 | `result-track:0f91a1311cc0085c192a956755bbf48c22b43919d525ffd7e0da9997a453e356` |
| 21 | `theorem` | [tfae_iff_pairwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-iff-pairwise.md) | 167 | `result-track:8930c450b715acd136f210fb804b6228bc6e5f67223d98266a4dfc0ce3107c4d` |
| 22 | `theorem` | [tfae_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-append.md) | 170 | `result-track:e7624bf8974fd858d2089d5e4ab37e943cbb6acaad0da837ce288e7bc504bdb6` |
| 23 | `theorem` | [tfae_append_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-append-of-mem.md) | 174 | `result-track:3d4e60cd24961b3b91e5b1829d58e19c9ab60d422e351e78a26f2fec0867f30c` |
| 24 | `theorem` | [tfae_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-cons.md) | 178 | `result-track:f9c94a05416e3c2234f1a10200eba8e446a633418f7674ca279cad0a1598a16f` |
| 25 | `theorem` | [tfae_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-cons-of-mem.md) | 182 | `result-track:6edb6bb1a6ff6047e34f14ca49e3bda821f08ccc0d6104fdae2e083c7d79e472` |
| 26 | `theorem` | [tfae_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-concat.md) | 185 | `result-track:348b9c9a05b3f4811a04d01349007a6f58c7149b01df11678faf8bd64411b695` |
| 27 | `theorem` | [tfae_concat_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-concat-of-mem.md) | 189 | `result-track:ed9069e5de9f46298c20cc3b68ee17e750be0ce5188f459f764a67c8c8d8117e` |
| 28 | `theorem` | [tfae_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-cons-cons.md) | 192 | `result-track:9ba6063bc4ddbdb8fab84628d02b94805144cc5ddf32c535429bca5352a09305` |
| 29 | `theorem` | [tfae_cons_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-cons-self.md) | 196 | `result-track:dee5800e1f141afb19ef73aa017dbc41aa39df84704d904cf9d8c6b81309c832` |
| 30 | `theorem` | [tfae_of_cycle](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPairwiseNamespacedPublic.lean/declarations/tfae-of-cycle.md) | 198 | `result-track:da1f0a613a6cb31f64a493786328dceb493635be33a76ecb5014ef0de20a5b09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96f140e34c5dc3e2c5ea430188c872eaf80e9a5c16b6d48aaf67bc420fa0643f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant419ba4cd186cf7c9a1effa5b1347e4645a6763e0a07bbc4c12da34c8ec7a8dda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
