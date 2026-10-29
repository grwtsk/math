# Verification target: Imo1981 Q3 Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7833e4dc01c45e9f5f10168f88a4a6d74688603",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7833e4dc01c45e9f5f10168f88a4a6d74688603`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProblemPredicate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/problempredicate.md) | 45 | `declaration-track:ace553b0c34dc52a75b309e40dabfe25a6758a3d6ea7a705198020a814e5d495` |
| 2 | `def` | [specifiedSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/specifiedset.md) | 51 | `declaration-track:b30beb86b1631b7bfacaa9543e4dc9c5b0f7e4d41610d66916933d36c4ae48a2` |
| 3 | `theorem` | [m_le_n](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/m-le-n.md) | 64 | `result-track:132fd1b554e675b2407cf8cf79796a702a297e29387fe68164ef62931c53c6bd` |
| 4 | `theorem` | [eq_imp_1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/eq-imp-1.md) | 72 | `result-track:0b0c6189b3c698ade5b2a7ac4608ffcfce6a2b9f16f45b4d85afbd46ee354eba` |
| 5 | `theorem` | [reduction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/reduction-source-edition-2.md) | 77 | `result-track:96156fd6b64a422aa8dcfefc6cdc2e5e6c5ffff0eca0b3153a5b4f9834ae1b36` |
| 6 | `def` | [NatPredicate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/natpredicate.md) | 100 | `declaration-track:cc7558705e662a61f850b7cf964802c1ad43339f8c0f11a07852e9de1a14214f` |
| 7 | `theorem` | [m_le_n](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/m-le-n-source-edition-2.md) | 108 | `result-track:1f80905a0ee19ba541a42114c681e028c705b61cb0893ea478414e41245c7682` |
| 8 | `theorem` | [eq_imp_1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/eq-imp-1-source-edition-2.md) | 111 | `result-track:2471f1ab210417199c5fe1ea2cc30abfdd302039fbb4f4792da2663d25cb8089` |
| 9 | `theorem` | [reduction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/reduction.md) | 114 | `result-track:17fb634ae440b969017208f264b9fc70db283ea8bc05fac1ea827537ceb49cb4` |
| 10 | `theorem` | [n_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/n-pos.md) | 120 | `result-track:43789c628681530f21e3c8d6b76c77945a059b23d6c07946dfd46b4db94030e8` |
| 11 | `theorem` | [m_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/m-pos.md) | 123 | `result-track:d78b4ba73afd82f93ed22f56296184b8f51cc7858d06fed237df2fbacae2fa33` |
| 12 | `theorem` | [n_le_N](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/n-le-n.md) | 126 | `result-track:c4bebba270b5fd5e526f85fedb5d73b77d06793d8cbbf0f18b1e17e060ab64b2` |
| 13 | `theorem` | [imp_fib](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/imp-fib.md) | 133 | `result-track:fb4f82d37a81bd1d1ae2b4bb0ea2543abeeb522eeb6db51ba11ffd09837c9d1c` |
| 14 | `theorem` | [m_n_bounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/m-n-bounds.md) | 157 | `result-track:3ab5f1a4ce6ffa7c6fc9026987637a42fd772a7aca69c7bb6e975bc2c5ac9bda` |
| 15 | `theorem` | [k_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/k-bound.md) | 185 | `result-track:6e3ed0a45e1c9987c3e71d72364b93a905f61804593512b432566e930ec8eca9` |
| 16 | `theorem` | [solution_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/solution-bound.md) | 195 | `result-track:9545b875f509b915c1ba9148e84b6c9562629e9ba644892aa5b8179413ee4a2c` |
| 17 | `theorem` | [solution_greatest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/solution-greatest.md) | 199 | `result-track:f0a11e16a49dba33dad0a09f4611801619805768b809b78739631af7c8792842` |
| 18 | `theorem` | [imo1981_q3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedAligned.lean/declarations/imo1981-q3.md) | 212 | `result-track:6e81b96bd055cd24d9dc64132045163f1a5678d82f0d83385286cf2ccdecf7d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81c0600dbc0d3f9e0ece9d7e0699bec4ca4c5bd5b4bf01e3c9aca79b3f3383e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
