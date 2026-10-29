# Verification target: Notion Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09896fade587c0a7ee777ce41231b68e065de429",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variant3c7510ecc5eda255d2ca2122d20866c199e74217667eb537d357776f17a84d4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/NotionEdition2.lean/index.md) · [Full source](../../../../Combinatorics/NotionEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09896fade587c0a7ee777ce41231b68e065de429`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variant3c7510ecc5eda255d2ca2122d20866c199e74217667eb537d357776f17a84d4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Notion/Variant3c7510ecc5eda255d2ca2122d20866c199e74217667eb537d357776f17a84d4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ObservationPolicy](../../../../Combinatorics/NotionEdition2.lean/declarations/observationpolicy.md) | 15 | `declaration-track:df8925df082b61ff28663a1c2afefe19f3ac53dbd10faa92a51280560516398a` |
| 2 | `def` | [ObservationallyEquivalent](../../../../Combinatorics/NotionEdition2.lean/declarations/observationallyequivalent.md) | 22 | `declaration-track:744f0df395b0f8773f0324852b0d52126fdae00097979f99b92171f9cb29d156` |
| 3 | `def` | [notionSetoid](../../../../Combinatorics/NotionEdition2.lean/declarations/notionsetoid.md) | 27 | `declaration-track:7ba52a909ed6e68e2117b0852a50dd32f4d947cfb2202845dffa7b85963cfd20` |
| 4 | `def` | [notionQuotient](../../../../Combinatorics/NotionEdition2.lean/declarations/notionquotient.md) | 34 | `declaration-track:b997e5196dac3abcd4b938b2d8d6cc085830d0b5198d32046f69332f0ea8833f` |
| 5 | `theorem` | [observationallyEquivalent_of_budget_le](../../../../Combinatorics/NotionEdition2.lean/declarations/observationallyequivalent-of-budget-le.md) | 39 | `result-track:baf5502198600ec108e21634fa7ae98f80400550c08e2a83b16af4b095c10c04` |
| 6 | `structure` | [FiniteNotion](../../../../Combinatorics/NotionEdition2.lean/declarations/finitenotion.md) | 46 | `declaration-track:0e2f78e7bab3aedf8f3d1d7092137c91d9adbb21f49039580c877c6be754c007` |
| 7 | `def` | [FiniteNotion.Equivalent](../../../../Combinatorics/NotionEdition2.lean/declarations/finitenotion-equivalent.md) | 55 | `declaration-track:fcaccc3e6e52f35e18dd0fdb6f0a42b9b8a55901eb878ce122c962cfa6c373b7` |
| 8 | `def` | [FiniteNotion.setoid](../../../../Combinatorics/NotionEdition2.lean/declarations/finitenotion-setoid.md) | 61 | `declaration-track:d65cd1d49e2142d90e6b9dc98c261191dc9a53aab258f5fe8ef9d1af2f890b5b` |
| 9 | `def` | [FiniteNotion.compare](../../../../Combinatorics/NotionEdition2.lean/declarations/finitenotion-compare.md) | 68 | `declaration-track:0c498f315e5209fa26d2e2169701f18258c861b77d403d5ddbd76b2a94a0adcf` |
| 10 | `theorem` | [FiniteNotion.compare_eq_true](../../../../Combinatorics/NotionEdition2.lean/declarations/finitenotion-compare-eq-true.md) | 74 | `result-track:8e67516b3708def1fdd043272067721c9a6b24dea74ea05f5a62f932243e2019` |
| 11 | `theorem` | [FiniteNotion.equivalent_of_budget_le](../../../../Combinatorics/NotionEdition2.lean/declarations/finitenotion-equivalent-of-budget-le.md) | 81 | `result-track:6676af09b2f078eec36278e73b42ce2861854ec744ffba889167729b203faee8` |
| 12 | `theorem` | [FiniteNotion.equivalent_of_semantic](../../../../Combinatorics/NotionEdition2.lean/declarations/finitenotion-equivalent-of-semantic.md) | 88 | `result-track:1e85dc65e15ad96a2e132cac2377c4e9c8e1d2252d1c8c48071664dada7a0769` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ef75599bd82243a4967ae2ccec5d76514b38b74a3d20bdc8cf5174e76778a32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variant3c7510ecc5eda255d2ca2122d20866c199e74217667eb537d357776f17a84d4e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Notion/Variant3c7510ecc5eda255d2ca2122d20866c199e74217667eb537d357776f17a84d4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
