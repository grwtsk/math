# Verification target: Ballot Problem Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc46fef5c92f090b04a5a2df57bd3602aa46494b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc46fef5c92f090b04a5a2df57bd3602aa46494b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.CondCount` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [staysPositive](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/stayspositive.md) | 48 | `declaration-track:6ae807891fb4f6241959d82e68bcb03e93a6195e6cde4b4b50147c911678e1c5` |
| 2 | `theorem` | [staysPositive_nil](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/stayspositive-nil.md) | 53 | `result-track:cbadcc80bf30a66f8f1a954e88cf6d341d6e29056973c0453e70c98c148ede8c` |
| 3 | `theorem` | [staysPositive_cons_pos](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/stayspositive-cons-pos.md) | 57 | `result-track:895e766228949cdcd00385da80416f91efd434e07a3a19bb807fd891e9d90f5e` |
| 4 | `def` | [countedSequence](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/countedsequence.md) | 79 | `declaration-track:d4898ab69defca685234dbf4e7921209033a18f87f5894a6bf31356426e49837` |
| 5 | `theorem` | [mem_countedSequence_iff_perm](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/mem-countedsequence-iff-perm.md) | 84 | `result-track:a4aed7413647261dfe4f37594cb4707cf4430b1081916f1c3d77a12311edc85e` |
| 6 | `theorem` | [counted_right_zero](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/counted-right-zero.md) | 93 | `result-track:bf00e40fa671f3b005e9d81cef004177275524b2bf9c13a077ea0b31b60d5245` |
| 7 | `theorem` | [counted_left_zero](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/counted-left-zero.md) | 98 | `result-track:db59f30f9c19c7b7b4eef9997b5063290d79eda684412211dbe422c019b1e99b` |
| 8 | `theorem` | [mem_of_mem_countedSequence](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/mem-of-mem-countedsequence.md) | 102 | `result-track:64621aace09facf8903ff69c064263050125a9c106831a2b98f333f2bc769141` |
| 9 | `theorem` | [length_of_mem_countedSequence](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/length-of-mem-countedsequence.md) | 107 | `result-track:b083b2d18e3edda104d48de99bf88f3690e9dc20d1cac8a1cdfd6d78b0e30b39` |
| 10 | `theorem` | [counted_eq_nil_iff](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/counted-eq-nil-iff.md) | 111 | `result-track:b30a7e3a12dacf3e2161022011e242965306be64d0bded72afaff49cccc185aa` |
| 11 | `theorem` | [counted_ne_nil_left](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/counted-ne-nil-left.md) | 116 | `result-track:1c73db57f1d97ed5bec887205c8ffebb91cbcca132f42553dfad7883083d4e09` |
| 12 | `theorem` | [counted_ne_nil_right](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/counted-ne-nil-right.md) | 120 | `result-track:bd835a4ed4661f3e14c739e4b06f091c4a3454b3a4f401ddb4d3bbdf28039d0b` |
| 13 | `theorem` | [get0_eq_head!](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/get0-eq-head.md) | 125 | `result-track:a10b127a2886d491e2a09c18295a32b4c45a71b3a80c5f23b556b1f66d093ab4` |
| 14 | `theorem` | [counted_succ_succ](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/counted-succ-succ.md) | 131 | `result-track:4eafcf5d35707fb0ce347a72dd5711da8fafcc3f60e1f6f9761afdf84d25496a` |
| 15 | `theorem` | [countedSequence_finite](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/countedsequence-finite.md) | 170 | `result-track:7704a0b58d3f428cae273abf45cf8ac6a312b928286c2eef94bca89284966080` |
| 16 | `theorem` | [countedSequence_nonempty](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/countedsequence-nonempty.md) | 180 | `result-track:f99dbc1d6961a0b860a44ab7aa2d76410bc636e1aca6cc71cfe4b760ab59aed7` |
| 17 | `theorem` | [sum_of_mem_countedSequence](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/sum-of-mem-countedsequence.md) | 188 | `result-track:5fe0a280b18f321a7f6c84b4a1a80bf62daab8bb005c5a29bef1b61e6ad79e28` |
| 18 | `theorem` | [disjoint_bits](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/disjoint-bits.md) | 192 | `result-track:3a8011b80d12cb25f3d13826a7e08e4afa6892244c8f397d30780b12feaf99e2` |
| 19 | `def` | [measureableSpace_list_int](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/measureablespace-list-int.md) | 201 | `declaration-track:774152b8308b811fea452c50d05ac43138dea13725ac4522a75ede61f6555344` |
| 20 | `theorem` | [measurableSingletonClass_list_int](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/measurablesingletonclass-list-int.md) | 205 | `result-track:016bff1f8cb5d093cfd9d1e6beac15dcf39f51991a346b55b6956680a665852d` |
| 21 | `theorem` | [list_int_measurableSet](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/list-int-measurableset.md) | 210 | `result-track:b2d2c4351c57b34534e01a7a80dd16be770f52334b0f05a025a4383fca48780f` |
| 22 | `theorem` | [count_countedSequence](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/count-countedsequence.md) | 212 | `result-track:768c60ad1a5ef2b75c52812b2409a37c88ef596333a8b6b051741f1cafe10164` |
| 23 | `theorem` | [first_vote_pos](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/first-vote-pos.md) | 224 | `result-track:34508010683ade5f5ec65fe493099efe086dd59dd55dd961db0b6883ef13969c` |
| 24 | `theorem` | [headI_mem_of_nonempty](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/headi-mem-of-nonempty.md) | 263 | `result-track:e248b90d9d2df1c745230856066786bd9c214695d42d5a83c2403d601fc9f657` |
| 25 | `theorem` | [first_vote_neg](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/first-vote-neg.md) | 268 | `result-track:4f684055089cd644bb961f049202a9c8e2572e3c0cf1ee5bb7d44b83b8516d17` |
| 26 | `theorem` | [ballot_same](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/ballot-same.md) | 282 | `result-track:a416ddf3e776cde054beb175bafe5bdea28d5f0a2fe93e8c08245c1753474296` |
| 27 | `theorem` | [ballot_edge](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/ballot-edge.md) | 292 | `result-track:25d8ade154dbefdb6663612d65267d25e1c3d5655012efd8037761ee96bf7998` |
| 28 | `theorem` | [countedSequence_int_pos_counted_succ_succ](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/countedsequence-int-pos-counted-succ-succ.md) | 303 | `result-track:203abcfe46c31dfec78c211c3835ad680e64f165a91d995b754d08afed37f1e5` |
| 29 | `theorem` | [ballot_pos](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/ballot-pos.md) | 315 | `result-track:21fe0a24bcb57ed0267719065211e37f83361f5c816c90389f834fd0160e586f` |
| 30 | `theorem` | [countedSequence_int_neg_counted_succ_succ](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/countedsequence-int-neg-counted-succ-succ.md) | 343 | `result-track:6f3be72e7109d4912ad6a7c720a015eabfca62901ab6f95d90046b615144d626` |
| 31 | `theorem` | [ballot_neg](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/ballot-neg.md) | 356 | `result-track:f12440eb49fd306c9dc88eb18db8e59cc29794a40186acdb0d24b756abdbf559` |
| 32 | `theorem` | [ballot_problem'](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/ballot-problem-source-edition-2.md) | 384 | `result-track:f64a2c654da0cf81bd7f2f96b6cf34bdfaad143629b098dcca71cc354741d3c9` |
| 33 | `theorem` | [ballot_problem](../../../../MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/declarations/ballot-problem.md) | 427 | `result-track:422b34564093d1c34a75dbfbc078b07462469d5ed06f064f73f3d0fab78d67b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=791e8260db67735535d64ac9a28400b7856cdf3824665b0e6d73ed7ae3d946ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
