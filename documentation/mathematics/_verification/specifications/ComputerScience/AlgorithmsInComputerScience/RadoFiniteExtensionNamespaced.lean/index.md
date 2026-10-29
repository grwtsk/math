# Verification target: Rado Finite Extension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "232133cfc3e264e84627132035d0ac0fa1ec8a2a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `232133cfc3e264e84627132035d0ac0fa1ec8a2a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M4b65726e656c2f5468656f72656d732f42617369632e6c65616e` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Graph](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/graph.md) | 20 | `declaration-track:c3c9d6ed5b6da9fd2606bf47eb55c1b61999f3ab08bada3d8e833c971cc905f2` |
| 2 | `def` | [DisjointLists](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/disjointlists.md) | 23 | `declaration-track:55e18766d1ef583f97cb1debd8adfa881724df6a36359c7fd53abe409683a3fe` |
| 3 | `def` | [Realizes](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/realizes.md) | 26 | `declaration-track:fab0f5cd162156280ba67a55e442e8cfe36a33163dc51089b3414af3087ac4ca` |
| 4 | `def` | [ExtensionProperty](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/extensionproperty.md) | 31 | `declaration-track:593c177103be1b8fcb6bfb96e91d0b13096c8f882e18f4266c24e35a6890e42e` |
| 5 | `theorem` | [extension_property_produces_realizer](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/extension-property-produces-realizer.md) | 35 | `result-track:baf8f9111fb3d88df70cf55ed87d6954645ff73cf0fa09b725da1c68d2281c2e` |
| 6 | `theorem` | [realizer_adjacent_to_left](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/realizer-adjacent-to-left.md) | 43 | `result-track:c7a04e1fdc6953018c729b767c2a10c912a3aca1f15c464e098d4d18f0659a7f` |
| 7 | `theorem` | [realizer_avoids_right](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/realizer-avoids-right.md) | 51 | `result-track:476ef7a4954d5e9bf80d9d978e8fa5256204d927792b3fa558bc3506535fde58` |
| 8 | `def` | [extensionStatement](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/extensionstatement.md) | 59 | `declaration-track:e0ec61512bae204704d7f198a120754578b0b1b90bb0b8e339e2c978e9824f57` |
| 9 | `def` | [extensionFormalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/extensionformaltheorem.md) | 65 | `declaration-track:9c223243c1c3ce8bdf7564940dc22df383bb9fd0872013c34d03b3c5fad5b33a` |
| 10 | `theorem` | [extensionFormalTheorem_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/extensionformaltheorem-complete.md) | 75 | `result-track:56decf944d49e44f234b1a1cd7e36e8f6a0f8adc888f5f03d469a00646b765b7` |
| 11 | `theorem` | [extensionFormalTheorem_has_no_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoFiniteExtensionNamespaced.lean/declarations/extensionformaltheorem-has-no-residue.md) | 80 | `result-track:cb3327daaf027681fa5fe9f33b869c83b3cd280b3a9ce354fda4ca8108397429` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e68cbee8144977e3a8d6a42fcaeaddba7450148c6a4b373feaaeeffd9a4bf822 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
