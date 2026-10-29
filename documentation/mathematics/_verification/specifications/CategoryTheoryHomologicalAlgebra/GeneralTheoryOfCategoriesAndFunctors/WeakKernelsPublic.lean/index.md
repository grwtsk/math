# Verification target: Weak Kernels Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18a5b9be7da0e43f4535dbfe2c2d584185895b07",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18a5b9be7da0e43f4535dbfe2c2d584185895b07`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean.json)

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
| 1 | `abbrev` | [HasWeakKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/hasweakkernel.md) | 37 | `declaration-track:0ca9e1032fc0d5fb216a96ce4c407d0b8f7dc90762fb4870670d96a73702cd95` |
| 2 | `class` | [HasWeakKernels](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/hasweakkernels.md) | 42 | `declaration-track:f9b752c9dc00a519f4e89dcfc0a17de771a5588690d0155742a9a3129d3113c8` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/instance.md) | 48 | `declaration-track:1d4a9f695a3fb328e6e0110560132de310c207c332f984a50baf6bc9d7951f9e` |
| 4 | `abbrev` | [weakKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/weakkernel-source-edition-2.md) | 56 | `declaration-track:a5effc99aa81f7ebba5d3106e5399ee0dcb5c6d9e6ee38ee71c503fd8f18c3aa` |
| 5 | `abbrev` | [weakKernel.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/weakkernel.md) | 60 | `declaration-track:11b24f9f679b39bc35ddbfbab3e5464bd9968a2f817fd4b11e9994129f8aadf8` |
| 6 | `theorem` | [weakEqualizer_as_weakKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/weakequalizer-as-weakkernel.md) | 64 | `result-track:df5355df0eca4d5b0c6f5ae06ea9c3bbaf6545080889e49530e1035128d3cc19` |
| 7 | `theorem` | [weakKernel.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/weakkernel-condition.md) | 67 | `result-track:7464d0debe8c45c49255083b091a2deb7884e02170a5676befcf27a8db476608` |
| 8 | `def` | [weakKernelIsWeakKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/weakkernelisweakkernel.md) | 72 | `declaration-track:5d3980b728b11a4baf58f1b5411d96d5934e54f0ac9e0907037e32e2c0a8c93a` |
| 9 | `abbrev` | [weakKernel.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/weakkernel-lift.md) | 78 | `declaration-track:1003343c53a2394c1bb9bc8d894b1f9a6c3b1b0787a68fbf939aed4e62dc5655` |
| 10 | `theorem` | [weakKernel.lift_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/weakkernel-lift-source-edition-3.md) | 82 | `result-track:7dac8f73a7a90496635b52605d868966232daa7b6273b2dfef59d55146e7b587` |
| 11 | `def` | [weakKernel.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/weakkernel-lift-source-edition-2.md) | 88 | `declaration-track:543acd89b515a39844110043d32ceb25c3de53310e9a990fe962aab5fa0fbd39` |
| 12 | `def` | [isWeakLimitForkOfKernelFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/isweaklimitforkofkernelfork.md) | 101 | `declaration-track:dfd0d580b6b7fbbe039e5babb93091b88e71c42fb1eec31f54411b19137b3e50` |
| 13 | `theorem` | [isWeakLimitForkOfKernelFork_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/isweaklimitforkofkernelfork-lift.md) | 106 | `result-track:b25650e4fa129b73fa212c7798e7c7bba78888a8c9c2951ba53aca0ee8d30380` |
| 14 | `def` | [isWeakLimitKernelForkOfFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/isweaklimitkernelforkoffork.md) | 111 | `declaration-track:2051a6db8d71d9ba4b162d1379ec5791c41f07051cd2309fe9490bfd446a4f1d` |
| 15 | `theorem` | [hasWeakEqualizer_of_hasWeakKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/hasweakequalizer-of-hasweakkernel.md) | 119 | `result-track:aca5436543f86c8b14b9d709794b7cf6b6940eccacc3dbcb5d4987b021116750` |
| 16 | `theorem` | [hasWeakKernel_of_hasWeakEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/hasweakkernel-of-hasweakequalizer.md) | 126 | `result-track:beadb21ba70f4f1f06ec3fb16a02b8c8c3ab0ea9c1582e25ab0b9b838392fb35` |
| 17 | `theorem` | [hasWeakEqualizers_of_hasWeakKernels](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakKernelsPublic.lean/declarations/hasweakequalizers-of-hasweakkernels.md) | 132 | `result-track:6eb3cc9c19514a1fa2598569a4ddf2b28ca4703719795b74d8d11fd587184811` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=127725610134df5abcdb6f82dd3b5c544e6a422dc6435b141424b0bd033fe9bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
