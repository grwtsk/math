# Verification target: Core Lean Declaration Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b299ac06b1c4106686e672bb17f8e94395029ebd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b299ac06b1c4106686e672bb17f8e94395029ebd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LeanDeclarationKind](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/leandeclarationkind.md) | 5 | `declaration-track:7ad86189af65e58a0e6b6c99659881bd5a047b03bc31a811a3489001c31d03dc` |
| 2 | `inductive` | [LeanProofStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/leanproofstatus.md) | 17 | `declaration-track:7d8d1f20bd1c34345aa58f629bb5d0163044ddd1a0c4d09077e5977fba89c601` |
| 3 | `inductive` | [LeanTrustedStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/leantrustedstatus.md) | 27 | `declaration-track:d6c63fe0db634c4ee47e073459612771da57ce5a61ae1b33b65195fb12b3bd43` |
| 4 | `inductive` | [PaperUseClassification](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/paperuseclassification.md) | 34 | `declaration-track:705f32f1cfb3708de44a634232213cdd92ee8f77165a6d6d0638a698efa13afe` |
| 5 | `inductive` | [PaperAuthorityStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/paperauthoritystatus.md) | 43 | `declaration-track:245c59a6194829cbca3c00bd6b1670fbf254e73ed02e15deb55dda34bce681cb` |
| 6 | `structure` | [PaperUseRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/paperuserecord.md) | 51 | `declaration-track:667eb7598287d665619026d4d6913311cdd7bef796308dca9a4cd2a914bf43fe` |
| 7 | `def` | [PaperUseRecord.hasTheoremAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/paperuserecord-hastheoremauthority.md) | 61 | `declaration-track:6a161b1799d0e0ef3699d77cb3b28947f26a98e2be972a954363a7670f2d65dc` |
| 8 | `theorem` | [paper_without_checked_theorem_has_no_theorem_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/paper-without-checked-theorem-has-no-theorem-authority.md) | 65 | `result-track:cb6f259d891dc85bad2a94250acbc112d6e8c4508e0423b9349609230a18fd6f` |
| 9 | `structure` | [LeanSource](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/leansource.md) | 74 | `declaration-track:c10fe190ff1c9fbaed4ce087ffff57068a2be32a1776ec7041d2ea178120940c` |
| 10 | `structure` | [LeanModuleAst](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/leanmoduleast.md) | 80 | `declaration-track:26933f1983cc68ebdada7ec49ebd33edc00ebb45fe5001e6532cc8c69417ce96` |
| 11 | `structure` | [LeanDeclarationAst](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/leandeclarationast.md) | 92 | `declaration-track:631c2a6ca2c99d3820914cfed727ec7092e1d5b2139ae4be8679ee86166980dd` |
| 12 | `structure` | [LeanAstEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreLeanDeclarationKind.lean/declarations/leanastedge.md) | 108 | `declaration-track:7e5092c8890322166e5a5b923adafb7acca8474f87028fefd2da9edd1892cc7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06f43c76317f61da00c1a2c353f88ac8e3bff2d9e4d9fcd540a064915501c60d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
