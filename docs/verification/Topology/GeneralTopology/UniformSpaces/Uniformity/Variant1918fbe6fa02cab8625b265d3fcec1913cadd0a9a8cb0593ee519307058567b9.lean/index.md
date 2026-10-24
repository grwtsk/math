# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Uniformity.Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d07d51a5ccc3e482bdf6e96949ccb19930adeb2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d07d51a5ccc3e482bdf6e96949ccb19930adeb2`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/ofprenndist--5e4bd952886c880498e18d24.md) | 65 | `declaration-track:5e4bd952886c880498e18d243073ace9f934a29e9fd36a5380425ff9261c921b` |
| 2 | `theorem` | [dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/dist-ofprenndist--813bd1921ef83489ac22c96b.md) | 89 | `result-track:813bd1921ef83489ac22c96b9353f7a17355155c4a7b9412954217676946dea8` |
| 3 | `theorem` | [dist_ofPreNNDist_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/dist-ofprenndist-le--a55aa931db1485d8d15314f4.md) | 96 | `result-track:a55aa931db1485d8d15314f4e396f0aa81e28151bb993fdf0019c616d73e99fc` |
| 4 | `theorem` | [le_two_mul_dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/le-two-mul-dist-ofprenndist--1c79cef2f966998730603dda.md) | 108 | `result-track:1c79cef2f966998730603dda0a24892d6754790955067b376947ee09e8291024` |
| 5 | `theorem` | [UniformSpace.metrizable_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/uniformspace-metrizable-uniformity--1493781d846518fa042ded87.md) | 186 | `result-track:1493781d846518fa042ded87602facc35cc6b49e5274d4e153d306298be3869a` |
| 6 | `def` | [UniformSpace.pseudoMetricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/uniformspace-pseudometricspace--3ebe21c986329a0e8b598ef4.md) | 254 | `declaration-track:3ebe21c986329a0e8b598ef4090d4cfbe3fc0b3e49addbb6b558d25b0469b901` |
| 7 | `def` | [UniformSpace.metricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/uniformspace-metricspace--dc4b4f299960ddf9418ecf15.md) | 260 | `declaration-track:dc4b4f299960ddf9418ecf152b209b2158c1a4fe129fb15faab6812af36ece0c` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/instance--252b47cc9d8d115e0946bbfe.md) | 265 | `declaration-track:252b47cc9d8d115e0946bbfe006e0fc78841e9f72010c4fbc6fc65037f70e9cf` |
| 9 | `theorem` | [UniformSpace.metrizableSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/uniformspace-metrizablespace--fc4c57aa7e9a0c7726d61d94.md) | 272 | `result-track:fc4c57aa7e9a0c7726d61d94d69dc84c3bae437f8946db4808918fa2db66c7a5` |
| 10 | `lemma` | [TotallyBounded.isSeparable](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/totallybounded-isseparable--cbd0de8c1720e7121415d5dd.md) | 279 | `result-track:cbd0de8c1720e7121415d5ddcf1805b27ca5b575c00ba80a0f3a6a466c5c71e9` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/instance--e42d8a974a47b6f44ddd1382.md) | 295 | `declaration-track:e42d8a974a47b6f44ddd13824836f369a21d07940eb0f42fcccd0b800909735d` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/instance--867a4b3bff9437bb214bb164.md) | 301 | `declaration-track:867a4b3bff9437bb214bb164138cfcf2295d9433e8e89f73c2da391f6ecd042b` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/declarations/instance--9d96bcc39dbe7172dd675b00.md) | 305 | `declaration-track:9d96bcc39dbe7172dd675b004496cf37b07fede9eed9cbd080a77b17af15d912` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
