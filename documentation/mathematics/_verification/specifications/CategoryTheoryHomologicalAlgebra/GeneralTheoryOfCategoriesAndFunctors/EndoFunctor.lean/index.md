# Verification target: Endo Functor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7fd470a656283ba5503717e8d37275537c6aa57",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndoFunctor.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndoFunctor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7fd470a656283ba5503717e8d37275537c6aa57`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endofunctor.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Endofunctor.algebraPreadditive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndoFunctor.lean/declarations/endofunctor-algebrapreadditive.md) | 30 | `declaration-track:328514dcb564a724aa4c432346b42963f08058a57fe0bf951ebb61a4c1a0fba3` |
| 2 | `instance` | [Algebra.forget_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndoFunctor.lean/declarations/algebra-forget-additive.md) | 104 | `declaration-track:14723fe5832dd02cb3af34b4adf7a14b691681c4d37a3e5223908dc36b087ff4` |
| 3 | `instance` | [Endofunctor.coalgebraPreadditive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndoFunctor.lean/declarations/endofunctor-coalgebrapreadditive.md) | 107 | `declaration-track:fb731bbf71bea0558e5d18399271fa34987553e86e2a13ecdf8d311f45692e94` |
| 4 | `instance` | [Coalgebra.forget_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndoFunctor.lean/declarations/coalgebra-forget-additive.md) | 181 | `declaration-track:234d936e2cd781e8fc64718623f5dc7d8ba196524f217900ba953b1646975761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=271dd3e88b31206a0b42c00d55fce91a541449a3216be89a0c1eada4ff5842b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
