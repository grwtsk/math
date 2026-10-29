# Verification target: Of Fn Namespaced Public Length Of Fn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "308522d8b9fa1f0798029490b062d989b1d2ec67",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant468dec9a6bfa1feefa6e4a296f4036ab24ac202cd4103fe320bbe86aba4ec635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `308522d8b9fa1f0798029490b062d989b1d2ec67`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant468dec9a6bfa1feefa6e4a296f4036ab24ac202cd4103fe320bbe86aba4ec635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant468dec9a6bfa1feefa6e4a296f4036ab24ac202cd4103fe320bbe86aba4ec635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offn.md) | 42 | `declaration-track:83ad333f9dab83f1fc1dcd77219d5d9428cadaf105bed57a880185c9daae6b56` |
| 2 | `def` | [ofFnM](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offnm.md) | 48 | `declaration-track:e3476a58ad6b5183c739e7ab4c7fb75468202b9f62cd7954b697e3b4de858f0c` |
| 3 | `theorem` | [length_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/length-offn.md) | 52 | `result-track:47d47d0e423dc8ef27984409dd0be39ebc3d346e1e3139ba5d69b0c3bdb343f8` |
| 4 | `theorem` | [getElem_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/getelem-offn-source-edition-2.md) | 59 | `result-track:bf76a0556152f0c44084a861c1029fb94c4cc42d942ca84f9f9f722deea7e817` |
| 5 | `theorem` | [getElem?_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/getelem-offn.md) | 73 | `result-track:3c321064c8e4a936cc7e5a4b2717542bbe37df7fe0e30adface3016fb2adcb9b` |
| 6 | `theorem` | [ofFn_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offn-zero.md) | 85 | `result-track:d4784b9170ac32fe874148d3aa37482b376a9d1556c9625992a1f062c615d70b` |
| 7 | `theorem` | [ofFn_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offn-succ.md) | 89 | `result-track:77f583aad83149ebe64ddb4acaa54c936e99b953d9effe7d964b15434e72b09a` |
| 8 | `theorem` | [ofFn_succ_last](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offn-succ-last.md) | 95 | `result-track:2f4af00370e2b8fa430fa8dd3066663b869af36a55c35647a641df932c781113` |
| 9 | `theorem` | [ofFn_add](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offn-add.md) | 105 | `result-track:575a160e15f999fa59d5eb315cc9fc8d274abd4a48635a87387c9aa874e4e395` |
| 10 | `theorem` | [ofFn_eq_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offn-eq-nil-iff.md) | 113 | `result-track:b9b719ba224015f9fcfa028107d1bf97c7bf5ff5361c405239c17b8da675bb63` |
| 11 | `theorem` | [ofFn_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offn-getelem.md) | 117 | `result-track:2c3f709fbd5d627bd24bb363ffb61356ab69b89086567a187570e24da9a3dce7` |
| 12 | `theorem` | [mem_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/mem-offn.md) | 122 | `result-track:0ad31e4e9c411abf96e4eed30fadabf8e334eaaed640ead8656ad305983abe1e` |
| 13 | `theorem` | [map_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/map-offn.md) | 131 | `result-track:d62a7fa55a57780e9ceba4f408920311b5016fa1ec3d3c604c44916c321062a2` |
| 14 | `theorem` | [head_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/head-offn.md) | 136 | `result-track:2e02d638b624f8211c653a8bc907277334df1599b53433c34c6e3a1a528662c9` |
| 15 | `theorem` | [getLast_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/getlast-offn.md) | 141 | `result-track:947cb244200649291edf68bf6b07d79820d6e5eb0cffd03ac0ae84124a14db3e` |
| 16 | `theorem` | [ofFnM_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offnm-zero.md) | 147 | `result-track:6312385a2840240a22a1c9b09ac6afb31320343649acdf048d20f8acae760d8f` |
| 17 | `theorem` | [ofFnM_succ_last](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offnm-succ-last.md) | 152 | `result-track:ed4277e8a80c937fed8aa0a37c2fd0e56978cba989ccbf769814d74ef69cc133` |
| 18 | `theorem` | [ofFnM_add](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offnm-add.md) | 159 | `result-track:56024f6ef503050f9a8a54b44bb9936877402d383c69a1cceb5d96fae3ff3f2c` |
| 19 | `theorem` | [foldl_cons_eq_append](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/foldl-cons-eq-append.md) | 173 | `result-track:ab3b86e828e66fe863a6d4b91c2b8b786711a17234487a97f00e881968f0dd55` |
| 20 | `theorem` | [foldr_cons_eq_append](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/foldr-cons-eq-append.md) | 179 | `result-track:e69ece11d6def3b7bbfc03345230bad9017c1dbbf39aab82b900b34ac7c43e9b` |
| 21 | `theorem` | [ofFnM_pure_comp](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offnm-pure-comp.md) | 190 | `result-track:eacd727bd9be4e2923982a021ae3e69acbc47c1a00beca1ad2d0eb6bc7c331fc` |
| 22 | `theorem` | [ofFnM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/offnm-pure.md) | 196 | `result-track:8b2e52d81389ee25e30badccae7a1e5eb6b9ed3fe539bde8381827d295c5126e` |
| 23 | `theorem` | [idRun_ofFnM](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnNamespacedPublicLengthOfFn.lean/declarations/idrun-offnm.md) | 200 | `result-track:083491f89dca01041aa5d5fd873490464e226b4e853eeb3c9b9a03b2994764d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8791b00e73ad0e0232ba428e6a73ff8069b9d4b49c94107fecb9958dfa9859e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant468dec9a6bfa1feefa6e4a296f4036ab24ac202cd4103fe320bbe86aba4ec635.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant468dec9a6bfa1feefa6e4a296f4036ab24ac202cd4103fe320bbe86aba4ec635.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
