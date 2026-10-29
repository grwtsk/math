# Verification target: Subterminal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0abfbacb2b7810c5f54622b25d58b7f1726c7a4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variant3804c4b39276c58b6dcbb22648f81ec77b75917fc8a12b1b4d22eca87579c6ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0abfbacb2b7810c5f54622b25d58b7f1726c7a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variant3804c4b39276c58b6dcbb22648f81ec77b75917fc8a12b1b4d22eca87579c6ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variant3804c4b39276c58b6dcbb22648f81ec77b75917fc8a12b1b4d22eca87579c6ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.MonoOver` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSubterminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal.md) | 41 | `declaration-track:542389bbf67426a064f58f6eb46d325193e18375286faa599a3db28228a4a3c9` |
| 2 | `theorem` | [IsSubterminal.def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-def.md) | 44 | `result-track:bf6ede81132f551d6ba4d1647c0460ac7050629f16c2f7a6d4b8d30960e744eb` |
| 3 | `theorem` | [IsSubterminal.mono_isTerminal_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-mono-isterminal-from.md) | 50 | `result-track:70593f8f4499551a7ba24363a687cc9ae2b1220a287b842713844fee0d238c43` |
| 4 | `theorem` | [IsSubterminal.mono_terminal_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-mono-terminal-from.md) | 57 | `result-track:8086a5505acaa3efeb6cb92289f63c6894a415ebaa1194b6d7d77ef208f90c4a` |
| 5 | `theorem` | [isSubterminal_of_mono_isTerminal_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-of-mono-isterminal-from.md) | 64 | `result-track:be4ac9c4e0f76982c05aada20aea7c7b5b7b8576b89a2f09a2072e565052d485` |
| 6 | `theorem` | [isSubterminal_of_mono_terminal_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-of-mono-terminal-from.md) | 72 | `result-track:d19fada0fe2ff10b2a095353245275e6af31d3a16c3692571d960f3ec722de88` |
| 7 | `theorem` | [isSubterminal_of_isTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-of-isterminal.md) | 77 | `result-track:d9ee67245af384b03dc04a3315ccf5c413dd4c3ca149b06762a99ea3c2f564e4` |
| 8 | `theorem` | [isSubterminal_of_terminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-of-terminal.md) | 80 | `result-track:b9c0f75a1e946e49ad9e39ab4dc392c81fe0aca1ce077b221efdb69db34d570b` |
| 9 | `theorem` | [IsSubterminal.isIso_diag](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-isiso-diag.md) | 86 | `result-track:74613ee454c378b628ca75522e615878bb917ec6b618827af8c766b1eecdb38e` |
| 10 | `theorem` | [isSubterminal_of_isIso_diag](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-of-isiso-diag.md) | 95 | `result-track:cf44be5aca1e03485a81aa1875d10f33643dde1dd7b6167c4c472c5bf0d11062` |
| 11 | `def` | [IsSubterminal.isoDiag](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/issubterminal-isodiag.md) | 102 | `declaration-track:f91bdf969bf355fc2f21b29ed7b859bf87edc580e732c285aba69aaaabbbaebc` |
| 12 | `def` | [Subterminals](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/subterminals.md) | 113 | `declaration-track:4816a2a90468d2946e528ff428bb39a137486433900f5b7b7fc147cf9133b159` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/instance-source-edition-3.md) | 116 | `declaration-track:bcceb68c74086ed65f794140f095f0e076dfc591605cd039893514a0e7afa476` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/instance.md) | 119 | `declaration-track:38e1e36034dcf4a4a464042d67d44dab1f2ba1e80506b5e8b649f98c0752abd4` |
| 15 | `def` | [subterminalInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/subterminalinclusion.md) | 124 | `declaration-track:36ece1d30852b6bbae065b1b388fd15f7df15a6489356c70fd6c395ded9d1fc8` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/instance-source-edition-4.md) | 127 | `declaration-track:fedef2b3ada0c88e825b5508c0b8d47feb50bace20b3a189a053782aac47f78f` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/instance-source-edition-2.md) | 130 | `declaration-track:53018dbef97cc1d47964494bdfca7ae9ccead26d7f1b23b2863e6ee683af248c` |
| 18 | `instance` | [subterminals_thin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/subterminals-thin.md) | 133 | `declaration-track:2b09286ee29e7bd842dede0084a38df9ce1768c5149048569f003cb1a71502a5` |
| 19 | `def` | [subterminalsEquivMonoOverTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/subterminalsequivmonooverterminal.md) | 141 | `declaration-track:fe27d63f3b1bdb5b919023cb05cd50e8b82bbe6e408170dcf67df5c0fb8d23c4` |
| 20 | `theorem` | [subterminals_to_monoOver_terminal_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/subterminals-to-monoover-terminal-comp-forget.md) | 156 | `result-track:6716198f9c1010e7d09fdf7dfe4153a052f51f9210e8abeb2d91913cc281e11e` |
| 21 | `theorem` | [monoOver_terminal_to_subterminals_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subterminal.lean/declarations/monoover-terminal-to-subterminals-comp.md) | 162 | `result-track:c7dfe1fd0ddaba4d3282acae0780f691241cd9265f81b32df4568e256ddb0d09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31a2933edc72f7e995beacb793e328f626df08deec5a93fd40b54e1e1019c1c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variant3804c4b39276c58b6dcbb22648f81ec77b75917fc8a12b1b4d22eca87579c6ca.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variant3804c4b39276c58b6dcbb22648f81ec77b75917fc8a12b1b4d22eca87579c6ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
