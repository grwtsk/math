# Verification target: WF

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff68df64e99738244e72ff781894122d3071a3b3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantd7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff68df64e99738244e72ff781894122d3071a3b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantd7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantd7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4.lean.json)

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
| 1 | `instance` | [wfRel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/wfrel.md) | 44 | `declaration-track:e0df56178bb0279e6623f687881c7217160c400636f47bcde8902b67eea17677` |
| 2 | `def` | [recC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/recc.md) | 49 | `declaration-track:c066bb06a4eb064b9070488fb06d8eeb7fc36ce62069f8e68ef1116de6e02211` |
| 3 | `theorem` | [recC_intro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/recc-intro.md) | 56 | `result-track:40279448d224f4c2c1d276eaa7912da01d562b6dc5c46da4baa588d9720fea1e` |
| 4 | `theorem` | [rec_eq_recC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/rec-eq-recc.md) | 63 | `result-track:c0cb2fc69aee14499e27d9aa270ba554e298c4a002ad06919b70e098db76539f` |
| 5 | `abbrev` | [ndrecC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/ndrecc.md) | 71 | `declaration-track:88b57090b75ac0c813a3f32ca7c2223ed56fd26203bbf86330b786a3c5e119f8` |
| 6 | `theorem` | [ndrec_eq_ndrecC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/ndrec-eq-ndrecc.md) | 76 | `result-track:240bd4f772d494e955915218ddab25655190a1e79d72dacc8dfcc6e288d2f346` |
| 7 | `abbrev` | [ndrecOnC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/ndreconc.md) | 81 | `declaration-track:29c8e4ce9cbae2d8d95c350a5ea17305868f61e63dd40c3c861418f6448b807e` |
| 8 | `theorem` | [ndrecOn_eq_ndrecOnC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/ndrecon-eq-ndreconc.md) | 85 | `result-track:56948def235954df4d78ae8f7f4ac63d1cfe20de5ff89a5ee904543a4b6ea10a` |
| 9 | `def` | [fixFC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/fixfc.md) | 95 | `declaration-track:7e4910e44dfda74a99a5e266a777f138d16a8591109be1802c4b1b1b90cd26d4` |
| 10 | `theorem` | [fixF_eq_fixFC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/fixf-eq-fixfc.md) | 100 | `result-track:fecf938996b104eb86150a37914d3157772509eccf2ba4a6a67d67d03be50d32` |
| 11 | `def` | [fixC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/fixc.md) | 105 | `declaration-track:5ebd8a822b923c9fb7801801496def445bf20a03a8ecba49afda0c6d12d2d664` |
| 12 | `theorem` | [fix_eq_fixC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WF.lean/declarations/fix-eq-fixc.md) | 110 | `result-track:02924a75bcaf409dfc4efcdcf31b113951d7534d85055b57ae2a2735fdbcfa6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=706cd8e306b11f3cc788d0f71cd96c266b20fba512df9cc89d92c306776061ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantd7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantd7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
