# Verification target: GRWTSK.Topology.GeneralTopology.Sheafify.Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7043c72cc7a8344ac6e45110c24aafd12a43715e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7043c72cc7a8344ac6e45110c24aafd12a43715e`.

Source path: `GRWTSK/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isGerm](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/declarations/isgerm--f63e4fe2e8d36ca79bd422b4.md) | 49 | `declaration-track:f63e4fe2e8d36ca79bd422b44a403605f896babf2e584f12aa3988f5c41e8267` |
| 2 | `def` | [isLocallyGerm](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/declarations/islocallygerm--d935f1972a27f87d04602617.md) | 56 | `declaration-track:d935f1972a27f87d046026170f79384d999bd79f4520ae5f50b9aa3ecc0a2038` |
| 3 | `def` | [sheafify](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/declarations/sheafify--2b724db84728cb3601f8b7e3.md) | 64 | `declaration-track:2b724db84728cb3601f8b7e3538befeaef1b90db3f3769cf37bda9a1e8f5c81a` |
| 4 | `def` | [toSheafify](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/declarations/tosheafify--89d0299ca4dc6c9e63a5e59a.md) | 72 | `declaration-track:89d0299ca4dc6c9e63a5e59ab8c30d3492d4a7df14ca76989e3ed171bc5ce7d4` |
| 5 | `def` | [stalkToFiber](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/declarations/stalktofiber--c730216dff39cd8fc9062ce4.md) | 83 | `declaration-track:c730216dff39cd8fc9062ce46aec2676c3e80a9eb897dfd910a61da151b57fda` |
| 6 | `theorem` | [stalkToFiber_surjective](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/declarations/stalktofiber-surjective--1535d29cb39e866a6fcc2bc8.md) | 87 | `result-track:1535d29cb39e866a6fcc2bc854c73a93cc7ffb54c24725e0bcdbfcaa83de5a1a` |
| 7 | `theorem` | [stalkToFiber_injective](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/declarations/stalktofiber-injective--c9cdecd8f5549eba2f4bac28.md) | 97 | `result-track:c9cdecd8f5549eba2f4bac28516c6e89729275fb47eafa364a488f59c13a1c40` |
| 8 | `def` | [sheafifyStalkIso](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant80c8fa55c0680bbca42e87f568f29e7eb62c26249f1ea9ee1dc25a6f5f24f772.lean/declarations/sheafifystalkiso--f5653852b0c6ec5b086c602f.md) | 122 | `declaration-track:f5653852b0c6ec5b086c602f6069976695ff87dfcebd0c498f6034f5e5bdc22b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
