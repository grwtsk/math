# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.HeineCantor.Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9140cb9a687da21eae277578b7631f29c9165f07",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9140cb9a687da21eae277578b7631f29c9165f07`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CompactSpace.uniformContinuous_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/compactspace-uniformcontinuous-of-continuous--ce6322533c532e183e88e062.md) | 34 | `result-track:ce6322533c532e183e88e062ff081f74c0a93b2720cb45d801fad1df82f7b2b3` |
| 2 | `theorem` | [IsCompact.uniformContinuousOn_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/iscompact-uniformcontinuouson-of-continuous--f0f8d18cf7093d22264b8750.md) | 43 | `result-track:f0f8d18cf7093d22264b8750ee89082887a9fb136969e5c90fae57af94e7fe7e` |
| 3 | `theorem` | [IsCompact.uniformContinuousAt_of_continuousAt](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/iscompact-uniformcontinuousat-of-continuousat--6215c55a4a33f27dafe46b41.md) | 54 | `result-track:6215c55a4a33f27dafe46b41650a89acac9574e7dcb1afed0916da5281af53f7` |
| 4 | `theorem` | [Continuous.uniformContinuous_of_tendsto_cocompact](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/continuous-uniformcontinuous-of-tendsto-cocompact--f2912ea2cab8ff7aa09ce3ba.md) | 68 | `result-track:f2912ea2cab8ff7aa09ce3baa019a774d362bfdc7aa4a604213269b3ca1f3cdf` |
| 5 | `theorem` | [HasCompactMulSupport.uniformContinuous_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/hascompactmulsupport-uniformcontinuous-of-continuous--0610fd0e7bcf76b38aca8418.md) | 85 | `result-track:0610fd0e7bcf76b38aca8418c0556349295d89a790f08f2632b0a24d9c7ca45e` |
| 6 | `theorem` | [ContinuousOn.tendstoUniformly](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/continuouson-tendstouniformly--57f7e850f2a760b1ead433cc.md) | 91 | `result-track:57f7e850f2a760b1ead433cc6150058999227bec770f593ef87ffff01d47437d` |
| 7 | `theorem` | [Continuous.tendstoUniformly](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/continuous-tendstouniformly--787c59f6fbdcab1d3373598d.md) | 102 | `result-track:787c59f6fbdcab1d3373598db65cc45bdefded1b83a999ce3e54816133d359da` |
| 8 | `lemma` | [IsCompact.mem_uniformity_of_prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/iscompact-mem-uniformity-of-prod--1bd84361788c01db77a448ca.md) | 112 | `result-track:1bd84361788c01db77a448ca04ea1653e20e408cdfd96bf5b1d4d7ad02411057` |
| 9 | `theorem` | [CompactSpace.uniformEquicontinuous_of_equicontinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/declarations/compactspace-uniformequicontinuous-of-equicontinuous--db7f8c413ef797a4b984f9f5.md) | 140 | `result-track:db7f8c413ef797a4b984f9f5b73e191e72c0d873b85ccab898deb5897648c48b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
