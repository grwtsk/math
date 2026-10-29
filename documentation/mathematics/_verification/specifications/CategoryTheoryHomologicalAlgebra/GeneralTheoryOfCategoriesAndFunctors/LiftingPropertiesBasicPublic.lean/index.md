# Verification target: Lifting Properties Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80df92d5dc9ef350ebc1e833530ba5265ad1e595",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80df92d5dc9ef350ebc1e833530ba5265ad1e595`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02.lean.json)

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
| 1 | `class` | [HasLiftingProperty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/hasliftingproperty.md) | 46 | `declaration-track:5f28b5bed564c8c6f342aeb3df993a8df95bf5b8a6a606009c1a15fbe9f5a239` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:9d9155d21d577f158985c3bf1c4bfb3952d6b08e9a30b66a39c31af6c5947667` |
| 3 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/op.md) | 61 | `result-track:5fccebe0a180b13d0b6755b78e82012ed25a3b42b6c833eb4fc0983afb47166d` |
| 4 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/unop.md) | 67 | `result-track:ad26f440e2eac1cbbc306cb01d68778a3edfa83c6773a006d39e2d4401f68192` |
| 5 | `theorem` | [iff_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/iff-op.md) | 75 | `result-track:dd89649ec421071be949a669c71ca1767a9cc1743a0ab7212bc4039c3401c339` |
| 6 | `theorem` | [iff_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/iff-unop.md) | 79 | `result-track:c3e5bd07966debdfd3c000fa70574782c54a66b054e2a1c40b7a3c5c53b3a71c` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/instance.md) | 86 | `declaration-track:15350960ce4ca8b6b7d381423e485c698e04dc548c324a9c89982cd56c03a12f` |
| 8 | `instance` | [of_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/of-comp-left.md) | 94 | `declaration-track:6f33ed4f03b3a5d0b0804a0f1276367b2f4fd9f5f1c91e9550abe6e17f9c1b96` |
| 9 | `theorem` | [of_arrow_iso_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/of-arrow-iso-left.md) | 106 | `result-track:a21ccc4d5c15c9809362bd3ed2ee351c31f413675bc9697eccc63cf0c4e8fbd9` |
| 10 | `theorem` | [iff_of_arrow_iso_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/iff-of-arrow-iso-left.md) | 113 | `result-track:96520c02cd2e8d499f35fcb9ab65d5acf1ee5d8a844f18d76292a4f77ad2fb3e` |
| 11 | `lemma` | [RetractArrow.rightLiftingProperty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/retractarrow-rightliftingproperty.md) | 122 | `result-track:700fefc8df102837c4a502a7ba772c9bf3a8793787b57cb9e3c1f1aa71e92ac6` |
| 12 | `abbrev` | [LiftStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/liftstruct.md) | 136 | `declaration-track:6e572660b2e4d501375c48957eaae286a75b854ecd8d4b04c68df6541fd0c8b0` |
| 13 | `lemma` | [hasLiftingProperty_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/hasliftingproperty-iff.md) | 139 | `result-track:27e0a10a1abb4f5ccd2ace73c07463ea62c05b5beaeb0d92f2127eeb2052cba7` |
| 14 | `def` | [HasLiftingPropertyFixedTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingPropertiesBasicPublic.lean/declarations/hasliftingpropertyfixedtop.md) | 158 | `declaration-track:2cd8224e7f6142ac65a0e4a27a9ca7a2ad6658544b4c6e52fc598a48b2f340ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35a634970d1b26fe5374294d2fab8443e4069dfa336393ef58935a15f5ac13cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
