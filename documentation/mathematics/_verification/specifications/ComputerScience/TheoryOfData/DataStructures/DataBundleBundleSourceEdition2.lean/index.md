# Verification target: Data Bundle Bundle Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f45b4faa76f851e368023a829e44805be4ebebe0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Variant426f41306efe19da32a6d2bfa2c053d3b16c23fe815ff3bfa8befe6eabd45179.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f45b4faa76f851e368023a829e44805be4ebebe0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Variant426f41306efe19da32a6d2bfa2c053d3b16c23fe815ff3bfa8befe6eabd45179.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Variant426f41306efe19da32a6d2bfa2c053d3b16c23fe815ff3bfa8befe6eabd45179.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TotalSpace](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace.md) | 52 | `declaration-track:864216aad22da5da2a150610dd277f3608597a41376a9bcce1a9e0c65aba599b` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:dde433757b1e981c1a7d1d6c8d8d8523fd3931e182cffbdaf0319a8c050de0cd` |
| 3 | `abbrev` | [TotalSpace.mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-mk.md) | 66 | `declaration-track:fc0997d87fb2d17d6a6a4929268175967a6e84be37dbf2da13addcd91616da61` |
| 4 | `theorem` | [TotalSpace.mk_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-mk-cast.md) | 68 | `result-track:7f3576b9ddc9128bf0cfec527f6203d45dbf3d3a236aa90558cfce50d8bbbdc4` |
| 5 | `theorem` | [TotalSpace.mk_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-mk-inj.md) | 72 | `result-track:1eb1bb487453c10e106ac15bbffcf895ea0960d670c8878818e99e470145fa6e` |
| 6 | `theorem` | [TotalSpace.mk_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-mk-injective.md) | 75 | `result-track:a83d3ce19493ae789b51678e5518f1dd84e8c319a8d6fae68fa23be62302bd25` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:fd748621c514fe174210df499e8ccafaa70d2b642f6815ad96bf8afef014a9c5` |
| 8 | `theorem` | [TotalSpace.eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-eta.md) | 81 | `result-track:a5a3e29a2412dcae2ca0c4e7080f3074022bab80b60cb4f1195889aa2543c612` |
| 9 | `theorem` | [TotalSpace.exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-exists.md) | 84 | `result-track:ddedd293433a815dcf7e8f0e93b9616b559eb513f1162bfb793bd3fc1023bf63` |
| 10 | `theorem` | [TotalSpace.range_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-range-mk.md) | 88 | `result-track:4189cc647cad7883f06048ea80aabbba599c052630e08dbc781d5c0958814afa` |
| 11 | `def` | [Trivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/trivial.md) | 100 | `declaration-track:f91724bfa00e881990735fcdf367ef1d9eff14a13e1a2456ffce8573a14491ee` |
| 12 | `def` | [TotalSpace.trivialSnd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-trivialsnd.md) | 103 | `declaration-track:b43824c9b3736ff7cb780421c6522494a5df355556029da256d6176ce86c09af` |
| 13 | `def` | [TotalSpace.toProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/totalspace-toprod.md) | 108 | `declaration-track:b2afa51c6d49d8608cdf8b84782af56f17e03143e8d81b65e6f51afb15e26665` |
| 14 | `def` | [Pullback](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/pullback.md) | 120 | `declaration-track:d2032af719e9288fe030fecc53389094b3bc9a6c9658b11be8ef78e4543e574c` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/instance.md) | 125 | `declaration-track:84ca25b6d17365710a0f27b2e34701bd76735d6701a96a58f15bc28a4e367d8c` |
| 16 | `def` | [pullbackTotalSpaceEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/pullbacktotalspaceembedding.md) | 130 | `declaration-track:81bd5d97348bed208c518eb614dbababac3ab870b43802de496b5cd6d46a550b` |
| 17 | `def` | [Pullback.lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/pullback-lift.md) | 135 | `declaration-track:53ad55e7e1ccbc21abb673bf50aa19ce291c4cc196b35e4772fb7d71bb8cb176` |
| 18 | `theorem` | [Pullback.lift_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition2.lean/declarations/pullback-lift-mk.md) | 138 | `result-track:44bc7184589ef96c918ffbb42f91dcf8150c9379fc6c262e0670de5662cc2cd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb800a67bf7785ce83312e8aeb6b5f8569341ffa3bfccb4c682f8c386bb57757 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Variant426f41306efe19da32a6d2bfa2c053d3b16c23fe815ff3bfa8befe6eabd45179.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bundle/Variant426f41306efe19da32a6d2bfa2c053d3b16c23fe815ff3bfa8befe6eabd45179.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
