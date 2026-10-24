# Verification target: GRWTSK.Topology.GeneralTopology.TopologicalRegistry.Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47cf6cd3571ce8e10ea58c0343ec2ad3653cb4ae",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47cf6cd3571ce8e10ea58c0343ec2ad3653cb4ae`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.TopologicalRefinement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TopologicalSphericalEmbeddingChoice](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/topologicalsphericalembeddingchoice--da7e4d9e30233daf6b600319.md) | 25 | `declaration-track:da7e4d9e30233daf6b600319fc3b7e523e83610a45062d3a0d9c8f3ed687cf7c` |
| 2 | `def` | [SelectedTopologicalBoundaryCompatibility](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/selectedtopologicalboundarycompatibility--95bf9d9ef93bce32f3b3b1af.md) | 38 | `declaration-track:95bf9d9ef93bce32f3b3b1af6445a9406aa5a41ec8cf37be271b3ae628daa0b9` |
| 3 | `def` | [SelectedTopologicalSphereCompact](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/selectedtopologicalspherecompact--49a56e0717c164043eface0a.md) | 50 | `declaration-track:49a56e0717c164043eface0a60482569b1699e0a9c53d3dc67388b87d4cadeea` |
| 4 | `def` | [SelectsTopologicalSphere2](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/selectstopologicalsphere2--4e3ce1ef4278eae9c9fb8e25.md) | 60 | `declaration-track:4e3ce1ef4278eae9c9fb8e258f8269b4489c023ae79c449852af92a8eff76760` |
| 5 | `def` | [SelectsTopologicalSphere3](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/selectstopologicalsphere3--0886276d11e422ada5a66af0.md) | 69 | `declaration-track:0886276d11e422ada5a66af08db956a24393e6ca621197be1b8055d2c4ac85c5` |
| 6 | `def` | [SelectedTopologicalRefinementCoherence](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/selectedtopologicalrefinementcoherence--485e4bf3234ed9fbfa8c5e26.md) | 81 | `declaration-track:485e4bf3234ed9fbfa8c5e26f3efcb39eabdcf09c50c116ed2014508344a5c8b` |
| 7 | `structure` | [TopologicalGraphWitnessPackage](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/topologicalgraphwitnesspackage--4d6ef49a203686006ccecc1d.md) | 112 | `declaration-track:4d6ef49a203686006ccecc1df55ba99be1daf40e2be0678eeb68e8b66eddfea2` |
| 8 | `def` | [TopologicalGraphWitnessPackage.refinement](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/topologicalgraphwitnesspackage-refinement--78769f59da24279c35623ac9.md) | 147 | `declaration-track:78769f59da24279c35623ac9cafda052ff2671dc4307202eeabec5f9957ba917` |
| 9 | `structure` | [TopologicalGraphResearchRegistry](../../../../../mathematics/Topology/GeneralTopology/TopologicalRegistry/Variantb1c79501ee04565933012e2708e7491989546cede44baa061790a4efb54b4964.lean/declarations/topologicalgraphresearchregistry--8efd5f5fcde12a2e2cf1d65d.md) | 163 | `declaration-track:8efd5f5fcde12a2e2cf1d65d632143f8d533fc16286af6c2431a47e5e53c782e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
