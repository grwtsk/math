# Verification target: Witt Complex Namespaced Witt Complex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f4110cbcc9088f0ff3eb72f8ac7ec49c82eb744",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexNamespacedWittComplex.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexNamespacedWittComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f4110cbcc9088f0ff3eb72f8ac7ec49c82eb744`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WittComplex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexNamespacedWittComplex.lean/declarations/wittcomplex.md) | 32 | `declaration-track:18beb28ff07b067b17689c67accf4e70023710178545c3e59d4970e02778725c` |
| 2 | `structure` | [WittElement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexNamespacedWittComplex.lean/declarations/wittelement.md) | 44 | `declaration-track:d7240a8658eebd37c80d90b4068c32aa77849f40af7e40ab9fc39a37950e8151` |
| 3 | `def` | [WittElement.IsZero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexNamespacedWittComplex.lean/declarations/wittelement-iszero.md) | 50 | `declaration-track:b35d64820aa23d80c2a2236cf46b9413a2625d20466adc4c4140fb80992ec396` |
| 4 | `def` | [WittElement.Nonzero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexNamespacedWittComplex.lean/declarations/wittelement-nonzero.md) | 55 | `declaration-track:9b61a589099f6651e746d68ebd8e621fb6702857c3c537e0aaee6ee7ec3979d9` |
| 5 | `theorem` | [witt_complex_is_complex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexNamespacedWittComplex.lean/declarations/witt-complex-is-complex.md) | 60 | `result-track:ded37e1459ab27262432ac3ef0bd82d25692379d6e8577b65080b2559476d4ef` |
| 6 | `theorem` | [witt_element_has_degree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexNamespacedWittComplex.lean/declarations/witt-element-has-degree.md) | 65 | `result-track:0a5fdab548aca7f95deb8395841392b0ec225f28049fc1dcc215c366da504af9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=650a71c43c83eb7f88ee6c5375b6a93e95c437315668ba19287beb691c0613c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
