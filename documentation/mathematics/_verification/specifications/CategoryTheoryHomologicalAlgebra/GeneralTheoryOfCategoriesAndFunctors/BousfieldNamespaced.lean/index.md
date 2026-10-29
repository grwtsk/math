# Verification target: Bousfield Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e53776d0d14547ab21edc6254e83319ea94df4d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variant4ffcfe65d9511f432a566bec3c4c70ade1580351557943852c30ba6dceb9472b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e53776d0d14547ab21edc6254e83319ea94df4d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variant4ffcfe65d9511f432a566bec3c4c70ade1580351557943852c30ba6dceb9472b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variant4ffcfe65d9511f432a566bec3c4c70ade1580351557943852c30ba6dceb9472b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Adjunction` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [W](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/w.md) | 58 | `declaration-track:8265619f7647620bcf5a47e9aa53a9c1d429e2265f3fcced24e45d927acc0f65` |
| 2 | `def` | [W.homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/w-homequiv.md) | 65 | `declaration-track:1c031dc3254af8e14963d495167ff85a768288662a0fcd6c89620c83dc48b54c` |
| 3 | `lemma` | [W_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/w-isoclosure.md) | 69 | `result-track:337da3609764784238ccb00d82816e7dcc19d26aae3de1987d004e47eb46fac6` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/instance.md) | 84 | `declaration-track:7c5e523600547e6c98fa2710b3d538a2840d57919b75dcaab0938d790d2767f3` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:dbad06d5671211e8dfc5e24fbcf482e3bc4dae99722236079de5896121831687` |
| 6 | `lemma` | [W_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/w-of-isiso.md) | 97 | `result-track:b026cd74652d30b6885450f36dba0531912772d7b9c76b9be8b62456efc29d79` |
| 7 | `lemma` | [W_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/w-iff-isiso.md) | 104 | `result-track:568575b09f437a5c8a9d5e945256aa1248cf3d55b1c0585d210c52f5274c356f` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:8e20e57d5fb9e3dc2df80e9d63efbc47d075a22f8ea9f10602effcfc1575929a` |
| 9 | `lemma` | [W_adj_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/w-adj-unit-app.md) | 123 | `result-track:1eb582332ece6d50996d03d8b14a88358d3e15f4b5d1f61d625926ed62a922c6` |
| 10 | `lemma` | [W_iff_isIso_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/w-iff-isiso-map.md) | 130 | `result-track:6041bcd3e31d767493e0469329b90ccd0057f825b60665922302bcc60c04bca7` |
| 11 | `lemma` | [W_eq_inverseImage_isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/w-eq-inverseimage-isomorphisms.md) | 144 | `result-track:700c0d065efabf89e59af1dd39d9553f927fc3472fddc171b523c550a2d69bf1` |
| 12 | `lemma` | [isLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BousfieldNamespaced.lean/declarations/islocalization.md) | 150 | `result-track:87846198bb1412189f140a8aecf1f72a4593ec65e36b34356010a5661ddb392a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c24414fcfd5a024f46868cee77e8b3eed2358959a480e3318dbb1003aca1b0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variant4ffcfe65d9511f432a566bec3c4c70ade1580351557943852c30ba6dceb9472b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variant4ffcfe65d9511f432a566bec3c4c70ade1580351557943852c30ba6dceb9472b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
