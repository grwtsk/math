# Verification target: Arithmetic Modularity Assessment Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "089eedcd5118fe54f916db48a711d30bbb182df2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ArithmeticModularityAssessment/Variant26afbf8a68c19c073100b164f59142877ca65f6bb1601c1ac0f9e7008de80fcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `089eedcd5118fe54f916db48a711d30bbb182df2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ArithmeticModularityAssessment/Variant26afbf8a68c19c073100b164f59142877ca65f6bb1601c1ac0f9e7008de80fcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ArithmeticModularityAssessment/Variant26afbf8a68c19c073100b164f59142877ca65f6bb1601c1ac0f9e7008de80fcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.ArithmeticModularityObligation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResearchRequirement](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/declarations/researchrequirement.md) | 22 | `declaration-track:cca512657acb79d6634c60382fec357654b061d075ca84c480df830a0cc2abd1` |
| 2 | `inductive` | [LiteratureNode](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/declarations/literaturenode.md) | 30 | `declaration-track:327e50e826c2b5c61f06d46ed63bbdf9d311d42d9acfc32118df7c351034fcbd` |
| 3 | `structure` | [ArithmeticModularityAssessment](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/declarations/arithmeticmodularityassessment.md) | 51 | `declaration-track:71facd5329b948876ee8d64f914c3b895f66797a70a89b355cf18b84d90952ea` |
| 4 | `def` | [ArithmeticModularityObligation.assessment](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/declarations/arithmeticmodularityobligation-assessment.md) | 56 | `declaration-track:3de550fd577be84a90321c5b519400172e196241799631750231f25342dd79ff` |
| 5 | `def` | [ArithmeticModularityObligation.advisoryVerdict](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/declarations/arithmeticmodularityobligation-advisoryverdict.md) | 163 | `declaration-track:6e104db8929c6018ed3b0d51a4caf6a0213316f5b0e355dfa968a8bdfc2d485c` |
| 6 | `theorem` | [advisoryVerdict_not_certified](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/declarations/advisoryverdict-not-certified.md) | 170 | `result-track:5765b88df743dedf26a378c7d1a56e3e7bfcb77a7a1a8fb1da138f100d342db5` |
| 7 | `theorem` | [advisoryVerdict_not_refuted](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ArithmeticModularityAssessmentNamespaced.lean/declarations/advisoryverdict-not-refuted.md) | 177 | `result-track:e6f08ad60076964c45433766542afda2b69264ff95861ce809392c68bf4349ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c0004e38ba4bc91f6121483cc709ec1f96ff82816a85cbc033d84abbd5fcfe2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ArithmeticModularityAssessment/Variant26afbf8a68c19c073100b164f59142877ca65f6bb1601c1ac0f9e7008de80fcb.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ArithmeticModularityAssessment/Variant26afbf8a68c19c073100b164f59142877ca65f6bb1601c1ac0f9e7008de80fcb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
