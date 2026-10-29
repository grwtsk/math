# Verification target: List Public Edition5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58ed0a95c2f87a933913edb5f938d9ece3a65ac7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantbd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ListPublicEdition5.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ListPublicEdition5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58ed0a95c2f87a933913edb5f938d9ece3a65ac7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantbd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantbd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.step_iterM_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ListPublicEdition5.lean/declarations/list-step-iterm-nil.md) | 27 | `result-track:1650ed345416b666995260e0adf9e90aae5abbd9a30efcbae6d7b32d38dade82` |
| 2 | `theorem` | [List.step_iterM_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ListPublicEdition5.lean/declarations/list-step-iterm-cons.md) | 32 | `result-track:fc14a0cbc87ef10c8cbd9f695c2f6f21718dc4b9f985b27b4d13867c1a061b88` |
| 3 | `theorem` | [List.step_iterM](../../../../../ComputerScience/AlgorithmsInComputerScience/ListPublicEdition5.lean/declarations/list-step-iterm.md) | 36 | `result-track:7181f5d8eef4c42853244b963bf95cfe63c71dda17a0e11646abd07bf74b6e08` |
| 4 | `theorem` | [List.toArray_iterM](../../../../../ComputerScience/AlgorithmsInComputerScience/ListPublicEdition5.lean/declarations/list-toarray-iterm.md) | 43 | `result-track:4834724457927a866f5fd13d3195034065375e2f831eecebdb2362ac83bd837e` |
| 5 | `theorem` | [List.toList_iterM](../../../../../ComputerScience/AlgorithmsInComputerScience/ListPublicEdition5.lean/declarations/list-tolist-iterm.md) | 54 | `result-track:49eebbd44078415e1b0826d31f3619437ce825c26a922fa3726a0ffb8e258532` |
| 6 | `theorem` | [List.toListRev_iterM](../../../../../ComputerScience/AlgorithmsInComputerScience/ListPublicEdition5.lean/declarations/list-tolistrev-iterm.md) | 59 | `result-track:5d806c92cdb8bce27aa9725727e845b1deb3219a5164ee9bd12c803069444790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d84e24a84d00e92d908d507a6ae02a2a4ebd6a8824405d84e1afe5a7fff59967 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantbd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantbd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
