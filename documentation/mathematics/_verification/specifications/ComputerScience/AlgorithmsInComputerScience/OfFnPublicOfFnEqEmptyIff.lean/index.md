# Verification target: Of Fn Public Of Fn Eq Empty Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88c58cc7d923f3353e0ba0c6cf2bbcfa6105f0db",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant6d2a4858482842fc4d408c93f275c67b9a20bc7149db0caceff318f37b42d30a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88c58cc7d923f3353e0ba0c6cf2bbcfa6105f0db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant6d2a4858482842fc4d408c93f275c67b9a20bc7149db0caceff318f37b42d30a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant6d2a4858482842fc4d408c93f275c67b9a20bc7149db0caceff318f37b42d30a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Monadic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.FinRange` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofFn_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offn-zero.md) | 31 | `result-track:53570c416bec052e7b6221738e15aa10183f96cae93ef4e6fa5df04b1abc9517` |
| 2 | `theorem` | [ofFn_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offn-succ.md) | 34 | `result-track:3d239bb7421e3598ade96c9b41c59b223c1dc7ca008dfd0267abde4f0b55d6dc` |
| 3 | `theorem` | [ofFn_add](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offn-add.md) | 44 | `result-track:49a624547400dedcfa732b6370a88dc4c538c4d561ae68f8ad4fb4703de4b38e` |
| 4 | `theorem` | [_root_.List.toArray_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/root-list-toarray-offn.md) | 50 | `result-track:3111140cf85897f7ba58c717e7ff5f56d8e12e2e1c19a0b36379543539a5795d` |
| 5 | `theorem` | [toList_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/tolist-offn.md) | 53 | `result-track:3067721fdf68d145b2fbb98b32be3a7c526f458a75b58c13ee8f86d0e8a0a5b2` |
| 6 | `theorem` | [ofFn_succ'](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offn-succ-source-edition-2.md) | 56 | `result-track:96bd439bad100621e70617570359ec4f08e383465de7b9b9699dcc01d21c4cbb` |
| 7 | `theorem` | [ofFn_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offn-getelem.md) | 62 | `result-track:e7c117e00ad90fef78f220730e62f7143ea99c28feef2170cad560cafa89880b` |
| 8 | `theorem` | [ofFn_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offn-eq-empty-iff.md) | 67 | `result-track:7bc04d3cec6bc73356fb995d0841bd3e09fec010318ef3c9f163cb94675c7218` |
| 9 | `theorem` | [mem_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/mem-offn.md) | 72 | `result-track:b83eff12b401374fabeddcdf874ea775da5394d37a091d36b54cec8ef30f9599` |
| 10 | `theorem` | [map_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/map-offn.md) | 81 | `result-track:11e57707a9d860dd82818535847328089732bb82f96d07a38e506eb9f48f1954` |
| 11 | `def` | [ofFnM](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offnm.md) | 89 | `declaration-track:17287c398fe3c624f23c40334287bdd131eaf996945c99a5447fce9115da3b70` |
| 12 | `theorem` | [ofFnM_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offnm-zero.md) | 93 | `result-track:87a48891ee5a3ad1c260cf286dc877bfd3f9579b0780e3bcbef7d869dca081b4` |
| 13 | `theorem` | [ofFnM_succ'](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offnm-succ-source-edition-2.md) | 96 | `result-track:8f8fcb8d01d9fa36bd9154e0b6605197a23f4b407c3ae6ae486effaedfefe7db` |
| 14 | `theorem` | [ofFnM_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offnm-succ.md) | 103 | `result-track:8cbedb2dd6d56d8050796e06b5e5a4dfbac7d6e9e6f8743e6c0dba9d09c759e3` |
| 15 | `theorem` | [ofFnM_add](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offnm-add.md) | 110 | `result-track:a88926bf6f2e907e366bb332a27676859addccdec7de0e47df274dc62a8f7163` |
| 16 | `theorem` | [toList_ofFnM](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/tolist-offnm.md) | 128 | `result-track:0188bac735fbee0cd0f6ac6665f3c2956ed1f9094095ec5c2a451a95647a8fe4` |
| 17 | `theorem` | [ofFnM_pure_comp](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offnm-pure-comp.md) | 135 | `result-track:eec343d7847f08ff443b7277ee9ff86f5dc71f0ee34b673fe4a21afc99e89a3e` |
| 18 | `theorem` | [ofFnM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/offnm-pure.md) | 142 | `result-track:fb4c8ea0e29132b2190b2a0d45ba1d38e0c5193437b5b504a332d836c9be32f9` |
| 19 | `theorem` | [idRun_ofFnM](../../../../../ComputerScience/AlgorithmsInComputerScience/OfFnPublicOfFnEqEmptyIff.lean/declarations/idrun-offnm.md) | 146 | `result-track:1300099e9cd2659b33183a05157b84aa7fa7a6c1d8ece4ee12d7a80e3f7ce5b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=537efb77f80910063a8297c0642f9654b1d05e44124c5f2ac1010b20a88da6ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant6d2a4858482842fc4d408c93f275c67b9a20bc7149db0caceff318f37b42d30a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant6d2a4858482842fc4d408c93f275c67b9a20bc7149db0caceff318f37b42d30a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
