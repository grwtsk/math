# Verification target: Morita Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a780af81b7546a11621c6ad861ccbb6f1a6cae1e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant20e744081bfc992aaef7e94865254bca627a22cba4822df8bc0a41ea3f5df22a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MoritaBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MoritaBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a780af81b7546a11621c6ad861ccbb6f1a6cae1e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant20e744081bfc992aaef7e94865254bca627a22cba4822df8bc0a41ea3f5df22a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant20e744081bfc992aaef7e94865254bca627a22cba4822df8bc0a41ea3f5df22a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MoritaEquivalence](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/moritaequivalence.md) | 55 | `declaration-track:15be5460f53c0d0668631708d71b6fcf597ea8021280866467a2902e409c115a` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/instance.md) | 66 | `declaration-track:1143c2cb718fb1aa07c41beb97e9c44ba451c0191aeccf478b9147d291a38cb0` |
| 3 | `def` | [refl](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/refl.md) | 73 | `declaration-track:107dec92e63978a8eff5d2a67c72dd4bbbe0a312613144c24e92e9917114fe36` |
| 4 | `def` | [symm](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/symm.md) | 81 | `declaration-track:eab194ed7b7f0ea42314375211173306399a0e2334a528b87ee8652bb53cc8b3` |
| 5 | `def` | [trans](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/trans-source-edition-2.md) | 97 | `declaration-track:c154c11a7dd480cef9efedbf09d05b5e3cb14b374df88c46002499187b4e99d6` |
| 6 | `def` | [ofAlgEquiv](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/ofalgequiv.md) | 108 | `declaration-track:4c54eedd32e14db31564a06d44b784fb45df597d63d2c5ece67074e5071bac66` |
| 7 | `structure` | [IsMoritaEquivalent](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/ismoritaequivalent.md) | 120 | `declaration-track:a956bec8432b41c8ee635c5ed90e32ce6d4c966c85cb5e764292d31310c825f4` |
| 8 | `lemma` | [refl](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/refl-source-edition-2.md) | 127 | `result-track:75d39e12ed1c480db3b28558cf42ab42bed53f681a86c3fc9ce348e754d7880c` |
| 9 | `lemma` | [symm](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/symm-source-edition-2.md) | 130 | `result-track:f018b4817ba569bc40813c821f27026541b0bd8f0302b5c31e3aa1d35e28635c` |
| 10 | `lemma` | [trans](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/trans.md) | 134 | `result-track:3871e5f3fbdf06f0d5ecff04240926e768518421d0e665cce97573448ac76739` |
| 11 | `lemma` | [of_algEquiv](../../../../CommutativeAlgebra/MoritaBasic.lean/declarations/of-algequiv.md) | 139 | `result-track:0ba5e7704b1e54f5a487663d22fab0d1ee3ce42cba5fe8f4874125c7b8aefaf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60fa6bbf9025924fdc6c70544bc835d514cefe5290c0dcdb3fdb9db1f0f3c66a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant20e744081bfc992aaef7e94865254bca627a22cba4822df8bc0a41ea3f5df22a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant20e744081bfc992aaef7e94865254bca627a22cba4822df8bc0a41ea3f5df22a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
