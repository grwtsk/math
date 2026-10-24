# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Uniformizable.Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79a198cf7a93dbffb6fd6dfb034cd5380c0f86cf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79a198cf7a93dbffb6fd6dfb034cd5380c0f86cf`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.OfCompactT2` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsThickening](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/declarations/isthickening--068fde0c4fbd905ee761d3c3.md) | 58 | `declaration-track:068fde0c4fbd905ee761d3c3d52e3fa53fdc518b61ae88a004fd5010f92a9861` |
| 2 | `theorem` | [urysohns_main](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/declarations/urysohns-main--08744a8625e39e76814a440a.md) | 67 | `result-track:08744a8625e39e76814a440a404fe4aacc9545b4ad6ff667b975a73ab9606de6` |
| 3 | `instance` | [UniformSpace.toCompletelyRegularSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/declarations/uniformspace-tocompletelyregularspace--10abf1a1cdd2c84dd3979427.md) | 86 | `declaration-track:10abf1a1cdd2c84dd397942783f0ffd6044fa318479ee9eb9e87a080a76c961b` |
| 4 | `theorem` | [CompletelyRegularSpace.of_exists_uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/declarations/completelyregularspace-of-exists-uniformspace--1082570d227b5ef3ced0ac8d.md) | 111 | `result-track:1082570d227b5ef3ced0ac8d3d0cf8e28f107d034765d67bad3b19bf6262d7dc` |
| 5 | `theorem` | [CompletelyRegularSpace.exists_uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/declarations/completelyregularspace-exists-uniformspace--ad31e1d27d5127f489c34d80.md) | 117 | `result-track:ad31e1d27d5127f489c34d805065c1206b27cbb8dabbe0135130e51f3cef3763` |
| 6 | `theorem` | [completelyRegularSpace_iff_exists_uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/declarations/completelyregularspace-iff-exists-uniformspace--c6f779c51b81bd9450d6d377.md) | 121 | `result-track:c6f779c51b81bd9450d6d377364aff2b3f2e395b8a59c71fb8aaeafaefe2a07d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
