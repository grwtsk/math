# Verification target: Presentable Strong Generator Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "232ac409a31120aa2b6d74c110de3785f322901d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `232ac409a31120aa2b6d74c110de3785f322901d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean.json)

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
| 1 | `lemma` | [IsCardinalFilteredGenerator.of_isDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/iscardinalfilteredgenerator-of-isdense-source-edition-2.md) | 40 | `result-track:e3cc84042274c15e06f1f9875f18b938ae4924a27e989c213b6e643c36eb39bc` |
| 2 | `lemma` | [IsCardinalFilteredGenerator.of_isDense_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/iscardinalfilteredgenerator-of-isdense.md) | 60 | `result-track:123562dee9b2555c5fd0167d6a5f1c6e43082408255aad8a03f423d18dc89dfb` |
| 3 | `instance` | [ObjectProperty.isCardinalFiltered_costructuredArrow_colimitsCardinalClosure_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/objectproperty-iscardinalfiltered-costructuredarrow-colimitscardinalclos.md) | 71 | `declaration-track:e4a4b9f3374e145dc58d2783b196578249071e450719e7bfa2f5515a582c2e19` |
| 4 | `instance` | [ObjectProperty.isFiltered_costructuredArrow_colimitsCardinalClosure_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/objectproperty-isfiltered-costructuredarrow-colimitscardinalclosure.md) | 79 | `declaration-track:0a1d1ac189211a962fd806eb745b0613598c80a177047b996450cb120d468be2` |
| 5 | `lemma` | [ObjectProperty.IsStrongGenerator.isDense_colimitsCardinalClosure_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/objectproperty-isstronggenerator-isdense-colimitscardinalclosure.md) | 88 | `result-track:a94d7bbd8fe0f761653cc4f6eb292d3aef153f322a34ffa2d7fc8d3763a0ca24` |
| 6 | `lemma` | [ObjectProperty.colimitsCardinalClosure_le_isCardinalPresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/objectproperty-colimitscardinalclosure-le-iscardinalpresentable.md) | 139 | `result-track:047b75c6c176c2d0f2d3305ccbc78728c66fd814b212f6bdb7e7a89e08bbdf6a` |
| 7 | `lemma` | [IsStrongGenerator.colimitsCardinalClosure_eq_isCardinalPresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/isstronggenerator-colimitscardinalclosure-eq-iscardinalpresentable.md) | 145 | `result-track:440bb839d464cde20e3067939c931aaa0e6320bece65cf6db9eabed1d1741fda` |
| 8 | `lemma` | [iff_exists_isStrongGenerator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/iff-exists-isstronggenerator.md) | 162 | `result-track:e0378a87e3e6a7c83c5ef4123a86d5ba44acec91409e061844a764f40368d319` |
| 9 | `lemma` | [of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableStrongGeneratorPublic.lean/declarations/of-le.md) | 177 | `result-track:4ed6f1e56a8d6698c53482a60b99f8609df07abb40f7b0a6725a400051baec11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bc7127ee7ff8c8d7bf357ac79050062ff56dec8da6c62852dd91f7cd42df6e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
