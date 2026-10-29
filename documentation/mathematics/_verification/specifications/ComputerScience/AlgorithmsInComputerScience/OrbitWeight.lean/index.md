# Verification target: Orbit Weight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "968febd49e10818dadd4835e492066b75a513ab0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `968febd49e10818dadd4835e492066b75a513ab0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Weight](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/weight.md) | 13 | `declaration-track:d08cd7b161d3971d48d2ad5664e8db72185dd2ed06669f7f4cd7d96641a09cc4` |
| 2 | `def` | [Weight.difference](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/weight-difference.md) | 15 | `declaration-track:e6a18614a9bce90f6beb01ee9f74b6215af1ab6513c5fa7a9e21705a35d650e9` |
| 3 | `structure` | [RelationLatticeCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/relationlatticecertificate.md) | 18 | `declaration-track:8c4446341153ee65feb5fec57d61867293010a3cbc402f75d3a403bedca289fd` |
| 4 | `structure` | [WeightedComponent](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/weightedcomponent.md) | 27 | `declaration-track:f0e4d0bb8ad614415a9ce0786d5f4f76e3fad365e07af24af8a1b1a92c3d21a2` |
| 5 | `def` | [sameCharacter](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/samecharacter.md) | 32 | `declaration-track:dba9c72f8070b98861b3d23ab52260fdea1012059b55e3781a78782dfb07a675` |
| 6 | `def` | [characterProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/characterprojection.md) | 37 | `declaration-track:e9bf615e7d4f98e6d6e2e2b8eb8ad77fa47bf7dc79fcf0034cbaf31ab970354f` |
| 7 | `theorem` | [component_mem_own_projection](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/component-mem-own-projection.md) | 46 | `result-track:9eb38ab3fb7899adb4e856dce049eb9c62c04fdb2269db29c5e86d95b14ba74a` |
| 8 | `structure` | [CharacterCoverageCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/charactercoveragecertificate.md) | 56 | `declaration-track:668f423acbca8d87a12ef7fcaef00fa67ed60494bf3d5b3b8b4d9ecdd817d536` |
| 9 | `structure` | [AbelReynoldsAgreement](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/abelreynoldsagreement.md) | 66 | `declaration-track:4bbf2caf4f3c7ca3673313c0461b036baf6c8e9faf27450f6be25c2cdcb8e4d5` |
| 10 | `def` | [invariantWeight](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/invariantweight.md) | 73 | `declaration-track:c83e69be5c65fb232061c7fa9a3d749620de47c8ac9dc258dfc4bc4c77455318` |
| 11 | `def` | [invariantProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/invariantprojection.md) | 76 | `declaration-track:b38f38d469b0f88754a3d11ec6deeb3533ec2958dbe2200dbea73b6cbfe0a1a4` |
| 12 | `theorem` | [nontrivial_component_is_not_detected_by_invariant_projection](../../../../../ComputerScience/AlgorithmsInComputerScience/OrbitWeight.lean/declarations/nontrivial-component-is-not-detected-by-invariant-projection.md) | 81 | `result-track:81d6210a3b3ab2c7cace9e6d404cf2ae31ea8d824c8baf7f4cc36ef59a31f535` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0a3d6ab1a179a8f5e50ec420b6f37961d3dcd76ccc2f842e4ff5c2f4684464b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant01d98519feaf53da6e7bae9e601637790154ea676fc27cde505568e9d198e582.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
