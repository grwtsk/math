# Verification target: Structural Isomorphism Namespaced Preserves Structure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc720e345e3983bd612cb886d4a0fa2853e6e004",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variante456fd3399af3567754471b3ea18911b538637545b45fefb9079957c8fb1de04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc720e345e3983bd612cb886d4a0fa2853e6e004`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variante456fd3399af3567754471b3ea18911b538637545b45fefb9079957c8fb1de04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variante456fd3399af3567754471b3ea18911b538637545b45fefb9079957c8fb1de04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.PolyHierarchy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreservesStructure](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/preservesstructure.md) | 26 | `declaration-track:0a7d63efadbec0d6a09f49dbb645605486d440e33435a7345a9797bbe29b14eb` |
| 2 | `def` | [StructuralIso](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/structuraliso.md) | 40 | `declaration-track:917f146f10ff9b7b3cf16266c37271198b653c79b8c72f2961b330b66c7bafa9` |
| 3 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/instance.md) | 50 | `declaration-track:1057b627fde2cbe4f4a7e72fca828daa32c4478299a4b10de50ca7802a68a454` |
| 4 | `theorem` | [ext](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/ext.md) | 54 | `result-track:ee3e51436dd64a585e14b51906771bf81e83ca5d0d39acb735bfe39ed7b0aec5` |
| 5 | `def` | [refl](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/refl.md) | 60 | `declaration-track:08e506b31993afe6f4a11693cb019fa6fa48a62cfffafe63b522f395eda7d1ae` |
| 6 | `def` | [trans](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/trans.md) | 71 | `declaration-track:b18d3c7dea123a91024937d2a893d1593809d770489cb45337f5ce9436a18a86` |
| 7 | `def` | [symm](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/symm.md) | 87 | `declaration-track:cee555419a4dc13d096b3e4be5d63fcdb1164183cf83678cd9fd05edfb175007` |
| 8 | `theorem` | [refl_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/refl-apply.md) | 103 | `result-track:ab75b526288107ab6e91c88ce432c6a51a48c2a7895f49f0db975ed16402565b` |
| 9 | `theorem` | [trans_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/trans-apply.md) | 110 | `result-track:b135e6ead0b88807bd97f09dc6da117668d3833708a00ac7be8c61ce9b9e004f` |
| 10 | `theorem` | [symm_apply_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/symm-apply-apply.md) | 118 | `result-track:ab85eb3e12dc6169e107562cc585a30aabec5e193103930e49e19aef924a1c0c` |
| 11 | `theorem` | [apply_symm_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/apply-symm-apply.md) | 125 | `result-track:39b267960d1a7de8e7f16f94f967f538292c5527cc0014fd2abfdba6a16d6e4b` |
| 12 | `abbrev` | [Aut](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/aut.md) | 134 | `declaration-track:cb131eafa7db950908ddafa3d831b8a3a6d0e71d947e89142a246c13a8760293` |
| 13 | `def` | [elementOrbit](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/elementorbit.md) | 138 | `declaration-track:f4ac6c2e5df5e89de1e1f0bc0a90a01c9edcf5f03115bc617541d565d612e861` |
| 14 | `theorem` | [element_mem_orbit](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/element-mem-orbit.md) | 143 | `result-track:ed0d54495a599c9529b73d98cd5fedd525829f9a105ecf6f9f5a00fd6c8f96c3` |
| 15 | `structure` | [IntrinsicLabel](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/intrinsiclabel.md) | 150 | `declaration-track:70d3a8eaa52a0825dec5d99f4dff576496791ace9a1f9a744504555cd9d31905` |
| 16 | `theorem` | [intrinsic_label_obstruction](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismNamespacedPreservesStructure.lean/declarations/intrinsic-label-obstruction.md) | 160 | `result-track:e7a0861e92651a64a5b1b3e0ec3848fe4ef34229610d378749a96f3d2df5ed8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed881eadc45e5ebc7865bc8eef8b15e8651440bcc5eb86fb2bf6806aed50ce2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variante456fd3399af3567754471b3ea18911b538637545b45fefb9079957c8fb1de04.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variante456fd3399af3567754471b3ea18911b538637545b45fefb9079957c8fb1de04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
