# Verification target: Algebra Subsumption Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "818d0dff57c42bcc2d53f4835bae8095acc4b3c7",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AlgebraSubsumption/Variant7957d9f5be0415b8a2570228e71406f213109c3b420012ef9f8a4f3fb04f3310.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `818d0dff57c42bcc2d53f4835bae8095acc4b3c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AlgebraSubsumption/Variant7957d9f5be0415b8a2570228e71406f213109c3b420012ef9f8a4f3fb04f3310.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AlgebraSubsumption/Variant7957d9f5be0415b8a2570228e71406f213109c3b420012ef9f8a4f3fb04f3310.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Formula.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Boolean.Formula.Corpus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [link](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/link.md) | 24 | `declaration-track:ceb09c3a6155ceb6f514c9b5289d92620878c75576bd6c79ed23e97e71abd33c` |
| 2 | `def` | [join](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/join.md) | 49 | `declaration-track:19b1af6566ca5c54d674b05ae8434dbd00a6973d48440de9915d15be676c30b4` |
| 3 | `def` | [meet](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/meet.md) | 54 | `declaration-track:e3654ab1ad0b74f3756227e45e8fd8696589597de7be1eed6d603c5b62a47651` |
| 4 | `def` | [complement](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/complement.md) | 59 | `declaration-track:f3d1a196707c526692f3791d30a0c87818f82f5482d9ec1e02bb09773fdab35b` |
| 5 | `def` | [bottom](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/bottom.md) | 64 | `declaration-track:3f823158984deeffc9b7b19c45e6888a42f38f99e19c01418d91c02910767672` |
| 6 | `def` | [top](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/top.md) | 69 | `declaration-track:b28da606309999f8d359cf230bcd2ae45425cac5a52681d54ea6180a5fc57b47` |
| 7 | `def` | [joinBot](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/joinbot.md) | 74 | `declaration-track:faae50b43c1f02cbb3f81a2f2fd15eefcc84356a1bfffbdc0c8c2f02824e76b2` |
| 8 | `def` | [meetTop](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/meettop.md) | 79 | `declaration-track:577a424e68d108dbaafda38a67be949ff8cd28236ad07b8952cb7f44f53e37dc` |
| 9 | `def` | [joinIdempotent](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/joinidempotent.md) | 84 | `declaration-track:6f4914c81f0ad0a672fa5bdbeecc0068befd6272388aea299b1fe674ee9a2462` |
| 10 | `def` | [meetIdempotent](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/meetidempotent.md) | 89 | `declaration-track:6b54e7b2c2678e141a1cf93cf7f7b2ee84c4cb2bb9fa9f49a4a6224c668a937e` |
| 11 | `def` | [joinTop](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/jointop.md) | 94 | `declaration-track:ccd297a5cde2100bdb6b0bf4f06633bdf00708fe9221e108ab9d05adb3c6cbd3` |
| 12 | `def` | [meetBottom](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/meetbottom.md) | 99 | `declaration-track:91606d4e3c1b5e2d1abb33fe2c2ae328393d45772af70cca3428e13116207ff5` |
| 13 | `def` | [joinAbsorption](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/joinabsorption.md) | 104 | `declaration-track:f73e9db1540c361df823e5c333245063cb988557641efb3758206c6d44c555ba` |
| 14 | `def` | [meetAbsorption](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/meetabsorption.md) | 109 | `declaration-track:a20f8dc9ed34613e2c18beefa3c0cd12d6e4497028bc518b2175d033829a0fbb` |
| 15 | `def` | [joinMeetDistributive](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/joinmeetdistributive.md) | 114 | `declaration-track:b024c17ece26d995ee4dea67815b063e08f81efa5aa8c01236986136c0e7112e` |
| 16 | `def` | [meetJoinDistributive](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/meetjoindistributive.md) | 119 | `declaration-track:0782b6cdf122b8e861a30b075e7ddfa5d5363b9b0bc5e5bafc51349e2ccee9e7` |
| 17 | `def` | [joinComplement](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/joincomplement.md) | 124 | `declaration-track:da54459465f79d8061bf02dfe07769059179e680d57c8ceb39ef7bb959d6d085` |
| 18 | `def` | [meetComplement](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/meetcomplement.md) | 129 | `declaration-track:2c1af207c05fa1594f90c3e80be494d7a495890a52787b58f43936bdfc6efa4e` |
| 19 | `def` | [complementUnique](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/complementunique.md) | 134 | `declaration-track:cd4617dc7d47dc5acc26341a0087d3cf91c60c6f88f6bbced415de7c67b2f0f1` |
| 20 | `def` | [bottomNotTop](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/bottomnottop.md) | 139 | `declaration-track:a9835b3b50a300ce46051523058b4bb94cee4001ab6ecd05929f3b8e05ed04e5` |
| 21 | `def` | [links](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/links.md) | 144 | `declaration-track:4c6d3d87ca77a983120c20a79189fcc19cc0e8fae3696d5354366b9ea8ec0af7` |
| 22 | `theorem` | [links_length](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraSubsumptionNamespaced.lean/declarations/links-length.md) | 166 | `result-track:28f327226c82a26b8f427e674dc2d4d186f56f52f278095e1a6148b28215bd4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d31523b7a181f94ee3c7ad8e2e1a8426567f200a4fba3dad503801ed2b67505 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AlgebraSubsumption/Variant7957d9f5be0415b8a2570228e71406f213109c3b420012ef9f8a4f3fb04f3310.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AlgebraSubsumption/Variant7957d9f5be0415b8a2570228e71406f213109c3b420012ef9f8a4f3fb04f3310.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
