# Verification target: GRWTSK.Topology.UniqueGluing.Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1557d076c227b04889fc3b1202977571b43a66e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/index.md) · [Full source](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1557d076c227b04889fc3b1202977571b43a66e`.

Source path: `GRWTSK/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Forget` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompatible](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/iscompatible--4b7a1b18fa2691249cb8fad7.md) | 65 | `declaration-track:4b7a1b18fa2691249cb8fad7e221287d9666a786170e06438a85686172909b8c` |
| 2 | `def` | [IsGluing](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/isgluing--7c66c0a52c280b14535a3514.md) | 71 | `declaration-track:7c66c0a52c280b14535a35143969d8df770db6f980f2fb98f4d9257e54d7b47b` |
| 3 | `def` | [IsSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/issheafuniquegluing--e9c43eb83a6760f6d3b30909.md) | 82 | `declaration-track:e9c43eb83a6760f6d3b309095b082df3e3d7e6b238d88b9a688482de3399cac5` |
| 4 | `def` | [objPairwiseOfFamily](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/objpairwiseoffamily--136d7ceeb439c59e7ae44bb6.md) | 94 | `declaration-track:136d7ceeb439c59e7ae44bb6a134768046cc7870b815a5de0701c616a720217d` |
| 5 | `def` | [IsCompatible.sectionPairwise](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/iscompatible-sectionpairwise--ad0040a0396df79bc9551adb.md) | 103 | `declaration-track:ad0040a0396df79bc9551adba247150065c247b97e67a0a39080ca1623c2e944` |
| 6 | `theorem` | [isGluing_iff_pairwise](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/isgluing-iff-pairwise--37e446d6a0c61d97dd0393c4.md) | 113 | `result-track:37e446d6a0c61d97dd0393c4bf58d33d3508554cf1a5f6c856b668e402ae17f8` |
| 7 | `theorem` | [IsSheaf.isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/issheaf-issheafuniquegluing-types--8f7ecb47429cbdecda8cbd6f.md) | 121 | `result-track:8f7ecb47429cbdecda8cbd6f7ded8dfb7c6e2366c9db64d57a050358b0674536` |
| 8 | `theorem` | [isSheaf_iff_isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/issheaf-iff-issheafuniquegluing-types--932e160fe0a4578bb5273b9c.md) | 131 | `result-track:932e160fe0a4578bb5273b9ced93c1e404e31f4f0c4e9d6593bc0f5147fab58b` |
| 9 | `theorem` | [isSheaf_of_isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/issheaf-of-issheafuniquegluing-types--9a3574b44dcb128066b9f0a4.md) | 145 | `result-track:9a3574b44dcb128066b9f0a40a2d64a1a956bbdd8dfb6091cc0bddbb5f30dbba` |
| 10 | `theorem` | [IsSheaf.isSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/issheaf-issheafuniquegluing--48faabf9cef29764e15647be.md) | 156 | `result-track:48faabf9cef29764e15647be1ee0e6a372a455898f6c6b2858800abba462c5b5` |
| 11 | `theorem` | [isSheaf_iff_isSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/issheaf-iff-issheafuniquegluing--16a2c5a1ee942001ca7483a1.md) | 166 | `result-track:16a2c5a1ee942001ca7483a193ef9a1fa86df338f0022d0e2c5352e05dea86ed` |
| 12 | `theorem` | [existsUnique_gluing](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/existsunique-gluing--5f7f0abf14e030f8a79085bc.md) | 186 | `result-track:5f7f0abf14e030f8a79085bc1bb9dd091af781889a5ccf78baf2d36a9f41ff86` |
| 13 | `theorem` | [existsUnique_gluing'](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/existsunique-gluing--add4cb0f1aa8ae7484141708.md) | 194 | `result-track:add4cb0f1aa8ae7484141708947a114439ba8fd132e8ae890865954324438789` |
| 14 | `theorem` | [eq_of_locally_eq](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/eq-of-locally-eq--6edab39dba3a5da6ca07711d.md) | 211 | `result-track:6edab39dba3a5da6ca07711d4e4ea656b996a8a9f34c49ec5d39726f079184d1` |
| 15 | `theorem` | [eq_of_locally_eq'](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/eq-of-locally-eq--3692eadec86cb8dc98ae451f.md) | 231 | `result-track:3692eadec86cb8dc98ae451f9380f692a2a2d85a0f1bce8160f6a7e31d69d7f6` |
| 16 | `theorem` | [eq_of_locally_eq₂](../../../../mathematics/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/declarations/eq-of-locally-eq--ad4f86767d84c50212588063.md) | 244 | `result-track:ad4f86767d84c50212588063edd03e8c5c6b375b1b848d6011dc61fffe7dd79c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
