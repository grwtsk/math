# Verification target: GRWTSK.Topology.GeneralTopology.UpperLower.Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d4c73c3105bedfaf02a7d0f327575f9534f1ede",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d4c73c3105bedfaf02a7d0f327575f9534f1ede`.

Source path: `GRWTSK/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.UpperLower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasUpperLowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/hasupperlowerclosure--f07c4c64b581fb4beabcf85a.md) | 38 | `declaration-track:f07c4c64b581fb4beabcf85a2c5fb5fd6feba08b24ce1cb8acd0774383a8e39a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/instance--99d3ec446f621493d17b6d28.md) | 48 | `declaration-track:99d3ec446f621493d17b6d28463c97d8b66b73ccec9174a5c6012405d9d88e7c` |
| 3 | `theorem` | [IsUpperSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/isupperset-closure--6f30454026626e657e398a71.md) | 68 | `result-track:6f30454026626e657e398a719dd0d84214f8f8ec2215eeee683eee8c9a575580` |
| 4 | `theorem` | [IsLowerSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/islowerset-closure--a20165ccf14bbf62468f8250.md) | 71 | `result-track:a20165ccf14bbf62468f8250a1e35f0f1826e441c87d3149a3d2862b88fa577b` |
| 5 | `theorem` | [IsOpen.upperClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/isopen-upperclosure--0ead957254be37d74176e485.md) | 74 | `result-track:0ead957254be37d74176e4854f8a14ff0fd498a958bd2b57b0edffe5f5c5de9b` |
| 6 | `theorem` | [IsOpen.lowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/isopen-lowerclosure--f0f5182983f7bed30aa4d83a.md) | 77 | `result-track:f0f5182983f7bed30aa4d83afd3aa9b4f61683a71d0e7afdbf59490ea13cfa6d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/instance--e5e89b747f7ea29c4b00f47e.md) | 80 | `declaration-track:e5e89b747f7ea29c4b00f47e7bbcd89c1d665af018c2649f13855c777742a9ee` |
| 8 | `theorem` | [IsUpperSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/isupperset-interior--b7a548cccc2e7a01ab96bd27.md) | 100 | `result-track:b7a548cccc2e7a01ab96bd271f57075fee6ff88ae601ac97e0b57ddf0dfc09b7` |
| 9 | `theorem` | [IsLowerSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/islowerset-interior--545365d56f018a31e0826524.md) | 104 | `result-track:545365d56f018a31e0826524d06a189c3520154b0e191efa905bd1843ca24049` |
| 10 | `theorem` | [Set.OrdConnected.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/declarations/set-ordconnected-interior--4c4c9ab0bba59e9ca287a690.md) | 107 | `result-track:4c4c9ab0bba59e9ca287a6906722456db45ed2501ce7aaa54f5d01830a7dbfca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
