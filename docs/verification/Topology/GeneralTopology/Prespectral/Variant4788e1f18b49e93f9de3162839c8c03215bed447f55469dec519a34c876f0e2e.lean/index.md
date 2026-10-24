# Verification target: GRWTSK.Topology.GeneralTopology.Prespectral.Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19532c7f33ffe52ca0d5124f8d7cda928763896a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19532c7f33ffe52ca0d5124f8d7cda928763896a`.

Source path: `GRWTSK/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.OpenCover` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Hom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PrespectralSpace](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/prespectralspace--edad7c6fbae7794ae45254ea.md) | 33 | `declaration-track:edad7c6fbae7794ae45254ead12b72b5e46960f442a1916f59963e96e9559144` |
| 2 | `lemma` | [PrespectralSpace.of_isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/prespectralspace-of-istopologicalbasis--219ba1609f4f5cc02cfccdcc.md) | 37 | `result-track:219ba1609f4f5cc02cfccdcc7f49c83cbfb86440a2378625e247891cb7e9038a` |
| 3 | `lemma` | [PrespectralSpace.of_isTopologicalBasis'](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/prespectralspace-of-istopologicalbasis--a32e2170fd7e3d2f44d53c62.md) | 45 | `result-track:a32e2170fd7e3d2f44d53c6292060b7b5e080504c1c479663ba950d282b48394` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/instance--cae5c3cf82da82b144102182.md) | 50 | `declaration-track:cae5c3cf82da82b144102182aafc4582a5464ff98b9936af7ebe6c67749c4160` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/instance--d6cf511b2a94a70ea9d9fab4.md) | 53 | `declaration-track:d6cf511b2a94a70ea9d9fab4e4221cbf9e68a0c6890064085314dc121fccb87c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/instance--53a51449e3be5b1f62317b74.md) | 59 | `declaration-track:53a51449e3be5b1f62317b74e2a955e72e60a22cbbe7df77f59991d9158f0f7b` |
| 7 | `lemma` | [PrespectralSpace.of_isOpenCover](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/prespectralspace-of-isopencover--c8d315eb5b23effe93b79659.md) | 65 | `result-track:c8d315eb5b23effe93b79659ed7168264f9bd725e9565eab91d65fcdaa309b4e` |
| 8 | `lemma` | [PrespectralSpace.of_isInducing](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/prespectralspace-of-isinducing--1d9eefd23786f0bee0a75bca.md) | 73 | `result-track:1d9eefd23786f0bee0a75bca83a425b5eecee93bca4c66b64fe8343974fb4329` |
| 9 | `lemma` | [PrespectralSpace.of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/prespectralspace-of-isclosedembedding--57eb8823d3f36f28af14119b.md) | 80 | `result-track:57eb8823d3f36f28af14119bb5792613e2fad4891183c03d0f12916a95540113` |
| 10 | `def` | [PrespectralSpace.opensEquiv](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant4788e1f18b49e93f9de3162839c8c03215bed447f55469dec519a34c876f0e2e.lean/declarations/prespectralspace-opensequiv--d2364d5415d277fb6dcbfb5e.md) | 85 | `declaration-track:d2364d5415d277fb6dcbfb5e856529c5d45a59996df3dfaaa566d2fa757c654d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
