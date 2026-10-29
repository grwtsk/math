# Verification target: Kummer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be79d1d416e292844925c01fd5b0fe7da281a0e4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be79d1d416e292844925c01fd5b0fe7da281a0e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.DependencyInvariant` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteH1Map](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/declarations/finiteh1map.md) | 28 | `declaration-track:549e9d67be63c7d523814f3a8984d49d34ba3b1a9efb248b40ec553679b324fd` |
| 2 | `structure` | [FiniteKummerSelmerData](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/declarations/finitekummerselmerdata.md) | 42 | `declaration-track:51e63f849fa8e7a4add9e317f05a5351c8022a893e9fa7cc4a544092576bfb00` |
| 3 | `def` | [compatibleWithRestriction](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/declarations/compatiblewithrestriction.md) | 65 | `declaration-track:9b60aa7868f84b2692a740176f317bff209fd31c881a7861214fd317785eb12c` |
| 4 | `theorem` | [compatibleWithRestriction_of_field](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/declarations/compatiblewithrestriction-of-field.md) | 73 | `result-track:a303fc9e1325d33f3cdb0fae81efd162148578472d0d10d0a2ff120b9c02bfea` |
| 5 | `def` | [globalImageLandsInSelmer](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/declarations/globalimagelandsinselmer.md) | 80 | `declaration-track:1410dbc86b09a4d2df15a6181960968900f5753d5328ce849cebce31ec165c8a` |
| 6 | `theorem` | [globalImageLandsInSelmer_of_local_conditions](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/declarations/globalimagelandsinselmer-of-local-conditions.md) | 87 | `result-track:359b087705559fb44a8cebd22a5079497a0833392b3996d3ae0ecb622f1f4310` |
| 7 | `theorem` | [depends_after_finiteSelmer](../../../../../ComputerScience/AlgorithmsInComputerScience/Kummer.lean/declarations/depends-after-finiteselmer.md) | 102 | `result-track:b38185d2bf86797b6e3f0bc05b9c55e7fa04632c6c7716d7020a484976d500d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54d49e4d54bead41dad7e307190639f28f2c5b1c9e68ebb4fe97099e60e5487e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
