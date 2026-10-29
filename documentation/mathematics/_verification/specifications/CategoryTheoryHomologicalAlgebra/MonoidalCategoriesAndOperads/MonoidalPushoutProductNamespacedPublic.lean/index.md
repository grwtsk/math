# Verification target: Monoidal Pushout Product Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66a830f2f657733fec9270011f9cc890823e1a05",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66a830f2f657733fec9270011f9cc890823e1a05`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean.json)

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
| 1 | `abbrev` | [pushoutProduct](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/pushoutproduct.md) | 80 | `declaration-track:3b34b415d741a0381999d6f4b7f9bf1ea509811eb69a4a3cac5e3c94eb607d5b` |
| 2 | `abbrev` | [pullbackHom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/pullbackhom.md) | 95 | `declaration-track:bdaf1c1dcc2b0f28637f4301eb2e688c7397cebdd6ba972d81595aaf04b690d1` |
| 3 | `def` | [whiskerLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/whiskerleftiso.md) | 124 | `declaration-track:f11749a10185f012645b210146a15d809b968abbbac57b7f7df442b4ed3d6f54` |
| 4 | `def` | [whiskerRightIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/whiskerrightiso.md) | 143 | `declaration-track:e4019adac9501f54a09f764af3981e50ad5ba526d6f586f3baba745d10d0e848` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/instance.md) | 157 | `declaration-track:193a700dd1a71a0f1de00560413e0d7414e216e0d700117f6b632bc5106a67de` |
| 6 | `def` | [associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/associator.md) | 168 | `declaration-track:a235a2964984c9583f96c8c4b2f14a44d1137e8e52c2037b9f24cd3b9df7d9cb` |
| 7 | `def` | [braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/braiding.md) | 208 | `declaration-track:6aa665d0d4b0094a8f5d6cb633d0a51158230ebde66dc8e4424041b1a8ab24ef` |
| 8 | `def` | [isInitialIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/isinitialiso-source-edition-3.md) | 226 | `declaration-track:e66b1a4c74c3faa64b414d6f5d6100a9a9dd77b998b98ba6111e4b2dd7a615b9` |
| 9 | `def` | [isInitialIso'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/isinitialiso.md) | 239 | `declaration-track:2e9de5e23937f5a911334f55c64f194529a9ffbb8fabc628d2225e1dbbba1126` |
| 10 | `def` | [isInitialIsTerminalIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/isinitialisterminaliso.md) | 251 | `declaration-track:4287c2e0cd497b38a16bf27d4b0b85d908351d6463f5682b6236812a609cd99b` |
| 11 | `def` | [isInitialIsTerminalIso'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/isinitialisterminaliso-source-edition-2.md) | 263 | `declaration-track:7133bbf3ba10907be4c0826eacf8c5d0bf8f35ccf5c0d640a99f8ce4e9765c25` |
| 12 | `def` | [rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/rightunitor.md) | 277 | `declaration-track:3452fafd06665a20e1bd025fb396ccfc5154c71d3de59d3f41ebc7de823af740` |
| 13 | `def` | [leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/leftunitor.md) | 293 | `declaration-track:09b792e102d6e55462f9aa576459bb69fd6502bf4c1ad8002ca1a64a8e820618` |
| 14 | `def` | [isTerminalIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/isterminaliso.md) | 314 | `declaration-track:f2442e3e40a61958a55255a31c925674df46bdb8ae22f66b4d57ee751d44b8d0` |
| 15 | `def` | [isInitialIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPushoutProductNamespacedPublic.lean/declarations/isinitialiso-source-edition-2.md) | 332 | `declaration-track:c3d1dbd7fec83046477a5e2d55c94d1e0f7b00386835d8461aa72d71dbd65d60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc54e184c1e1b3c1faf5bf72b90fa8e9cd72cce411f1f0632d0d6023a3d959b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
