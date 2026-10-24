# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Constructions.Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fc3cc7bc0c3ba546b17d2e41dea494332b80246",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fc3cc7bc0c3ba546b17d2e41dea494332b80246`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Ultra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsTransitiveRel.entourageProd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/declarations/istransitiverel-entourageprod--e90d0847c5b27dd433a77278.md) | 29 | `result-track:e90d0847c5b27dd433a772787624378b42f6832ce8a2bbf948031e3f771437a5` |
| 2 | `lemma` | [IsUltraUniformity.comap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/declarations/isultrauniformity-comap--aa9ed2e91b7bcb397b37943a.md) | 34 | `result-track:aa9ed2e91b7bcb397b37943ae91488d5639fac5f0bf00cc8c7690cd8802c4a5b` |
| 3 | `lemma` | [IsUltraUniformity.inf](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/declarations/isultrauniformity-inf--b214c0b585adfd95c3ad9676.md) | 41 | `result-track:b214c0b585adfd95c3ad96762b695918c47f113870ad41ae11db83fb08f78c9c` |
| 4 | `instance` | [IsUltraUniformity.prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/declarations/isultrauniformity-prod--8377bc6ee995032b02f6b3b7.md) | 51 | `declaration-track:8377bc6ee995032b02f6b3b75f46252de6fd44e63e18c89b09992588f29690ec` |
| 5 | `lemma` | [IsUltraUniformity.iInf](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/declarations/isultrauniformity-iinf--3c55db16d6e8f5f0919e4539.md) | 56 | `result-track:3c55db16d6e8f5f0919e4539398a47cb3c1ec4730210847ab82814ae78dae77a` |
| 6 | `instance` | [IsUltraUniformity.pi](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/declarations/isultrauniformity-pi--7d1324a55d18ef79968dba3c.md) | 66 | `declaration-track:7d1324a55d18ef79968dba3c67c67637d9b0083467fb8ab132186da6b466d99c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
