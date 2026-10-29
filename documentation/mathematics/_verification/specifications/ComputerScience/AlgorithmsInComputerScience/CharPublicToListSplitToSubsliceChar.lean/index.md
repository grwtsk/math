# Verification target: Char Public To List Split To Subslice Char

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12b199c9efa13f6dc5b212eda920b5eb8380cc7a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant6d9fd9adc71c912639352c148051b713eb02d3008132aebcd78e4ab8d92ca1e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12b199c9efa13f6dc5b212eda920b5eb8380cc7a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant6d9fd9adc71c912639352c148051b713eb02d3008132aebcd78e4ab8d92ca1e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant6d9fd9adc71c912639352c148051b713eb02d3008132aebcd78e4ab8d92ca1e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Termination` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Split.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Split.Pred` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Char` — import line 20; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Intercalate` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.List.SplitOn.Lemmas` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Slice` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pattern.Model.split_char_eq_split_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/declarations/pattern-model-split-char-eq-split-beq.md) | 35 | `result-track:f12b10443ad274d441be833c6f7e1a6fcd0502565f1033b022db3844d2977a50` |
| 2 | `theorem` | [toList_splitToSubslice_char](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/declarations/tolist-splittosubslice-char.md) | 49 | `result-track:469610449e7f11369fde73bc8a647b95b5f5baa7572f69e3e921154f5f7cf7ae` |
| 3 | `theorem` | [toList_split_char](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/declarations/tolist-split-char.md) | 56 | `result-track:1f585cfca623a8734d73d753c8350b5dcf027c8ba50949db1a1a677c34d9c1a7` |
| 4 | `theorem` | [toList_split_char](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/declarations/tolist-split-char-source-edition-2.md) | 62 | `result-track:87c37cbbf81ac4132333c3917e8214d3cefd04634bacd5a2c565686ef3a81685` |
| 5 | `theorem` | [Slice.toList_split_intercalate](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/declarations/slice-tolist-split-intercalate.md) | 66 | `result-track:3a792f0483eb41cfd1922fca092415b9432b83f49bc98485a55a0a3b44bd7493` |
| 6 | `theorem` | [Slice.toList_split_intercalate_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/declarations/slice-tolist-split-intercalate-beq.md) | 74 | `result-track:e16e1e369e758a964ef3d1b7dbdd6bd45b0e5778afc0923d5b469eee2b7ddd76` |
| 7 | `theorem` | [toList_split_intercalate](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/declarations/tolist-split-intercalate.md) | 79 | `result-track:6dc6318ea8bc8dd80707cf9f314d1e085bb3039dab373456acf37bc3c3053321` |
| 8 | `theorem` | [toList_split_intercalate_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/CharPublicToListSplitToSubsliceChar.lean/declarations/tolist-split-intercalate-beq.md) | 87 | `result-track:f4c11d323ec7e389cdb6c008a7083a0200675390871d06ae944edf98976dfc40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ec4972e85626bdd33f130f1d3bf5da9de04821ce8fb4664a81e74ff906fada4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant6d9fd9adc71c912639352c148051b713eb02d3008132aebcd78e4ab8d92ca1e6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant6d9fd9adc71c912639352c148051b713eb02d3008132aebcd78e4ab8d92ca1e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
