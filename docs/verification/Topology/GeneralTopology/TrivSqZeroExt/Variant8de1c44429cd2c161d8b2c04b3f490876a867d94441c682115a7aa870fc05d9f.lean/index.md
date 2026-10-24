# Verification target: GRWTSK.Topology.GeneralTopology.TrivSqZeroExt.Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450ffa9c722c617f04f346c7e7cfc3e427cbb4fd",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450ffa9c722c617f04f346c7e7cfc3e427cbb4fd`.

Source path: `GRWTSK/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/insttopologicalspace--64372d34baaada36cbc1ab55.md) | 52 | `declaration-track:64372d34baaada36cbc1ab55c448ac079fbfd58b74e90bed01da3ce7b288b940` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--c4a7b813fde11a979e72176e.md) | 55 | `declaration-track:c4a7b813fde11a979e72176ea015234d81c2dd8404f448af7dd1ca6122467df2` |
| 3 | `theorem` | [nhds_def](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/nhds-def--eac9676e2ff23686524e1fb7.md) | 58 | `result-track:eac9676e2ff23686524e1fb77f827cbb45f9043b03724a3e2b0f540f416b6d81` |
| 4 | `theorem` | [nhds_inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/nhds-inl--1f2bbfeb1d7486d0141ff9ac.md) | 60 | `result-track:1f2bbfeb1d7486d0141ff9acb5d457c531a24393f5733ff3e807c2ca156c32d8` |
| 5 | `theorem` | [nhds_inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/nhds-inr--6eb3a05c69e4d903caee137d.md) | 63 | `result-track:6eb3a05c69e4d903caee137d1e17b9987df632f34028580afe6f609ef8c4dd03` |
| 6 | `theorem` | [continuous_fst](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/continuous-fst--d6fb97bf1662c3d5b6d8f593.md) | 66 | `result-track:d6fb97bf1662c3d5b6d8f593320e7c344dcada3ddd91d4180ae78241ec005d89` |
| 7 | `theorem` | [continuous_snd](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/continuous-snd--efdb18436c6a78af4d74eded.md) | 69 | `result-track:efdb18436c6a78af4d74ededb6cd1054b2823f1b508c9071d0133ef8df311906` |
| 8 | `theorem` | [continuous_inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/continuous-inl--274fbddabae376a90c2986c9.md) | 72 | `result-track:274fbddabae376a90c2986c905a6146e907935170af2051966165cbccc0e5126` |
| 9 | `theorem` | [continuous_inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/continuous-inr--59392d422c2604629d455df5.md) | 75 | `result-track:59392d422c2604629d455df5802ea22210d12a43d710f944a197296b6a437c52` |
| 10 | `theorem` | [IsEmbedding.inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/isembedding-inl--401dcf9065179ab476041341.md) | 78 | `result-track:401dcf9065179ab47604134131d15c2f67144ce700bf39e680b810acc02aa929` |
| 11 | `theorem` | [IsEmbedding.inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/isembedding-inr--f8f3877f3bd7e866ae52c2de.md) | 81 | `result-track:f8f3877f3bd7e866ae52c2deb29e3a5054c3511c20af2e888e6d39d54898b626` |
| 12 | `def` | [fstCLM](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/fstclm--794dd70be73a7bd5258a39d3.md) | 88 | `declaration-track:794dd70be73a7bd5258a39d307c444f52e920828bb407427ef7b521222ee8e4e` |
| 13 | `def` | [sndCLM](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/sndclm--452ae8ca5845d541019749d1.md) | 93 | `declaration-track:452ae8ca5845d541019749d13d035eec1eb0e971af0c984f9c46938aa09e2c9f` |
| 14 | `def` | [inlCLM](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/inlclm--b0381d33afea7685c22b8c08.md) | 98 | `declaration-track:b0381d33afea7685c22b8c085e7395491225fb0cc7485753678d0f85f52e974b` |
| 15 | `def` | [inrCLM](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/inrclm--21fa5e5b5a8b3c2ef846e547.md) | 103 | `declaration-track:21fa5e5b5a8b3c2ef846e547759b21042d8cc316d2ef088d17eb1d60685b006d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--32c5a3e8e8fb96f7e1b88032.md) | 108 | `declaration-track:32c5a3e8e8fb96f7e1b880321c97b79042dedd5e3f5c225558c6ab17c4ee7838` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--61b06423ff994bdb5d64fbdf.md) | 111 | `declaration-track:61b06423ff994bdb5d64fbdf48ee58a0c2371c1b5809d32c46c5b6c14feb273e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--ea626da51454c8924818dbaf.md) | 118 | `declaration-track:ea626da51454c8924818dbafb1e0755cb4eb1662d48da0f655c733a8e265ea6f` |
| 19 | `theorem` | [topologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/topologicalsemiring--dd8b06022b7959faed3aa73e.md) | 123 | `result-track:dd8b06022b7959faed3aa73e02edb0b3a4181550ffbd912b2a873a89e40c434a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--432dc4ecb67c368e3095413e.md) | 127 | `declaration-track:432dc4ecb67c368e3095413ee34423114f0f5a5fe985ed6105b9f4e4392eb632` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--f7e4cce1320fbb5320df76e0.md) | 131 | `declaration-track:f7e4cce1320fbb5320df76e07479ef5e2f497c2815d16b4e4cc2bc2f334affc9` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--702a745c3ded909c2f32c2e9.md) | 135 | `declaration-track:702a745c3ded909c2f32c2e9fdf99f718760d60efe7bcf3d733672eae11f76fa` |
| 23 | `theorem` | [hasSum_inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/hassum-inl--61f0edf475ef8485977df13e.md) | 141 | `result-track:61f0edf475ef8485977df13e12f40a770d8dc93203cee3ce1f18681937c72a68` |
| 24 | `theorem` | [hasSum_inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/hassum-inr--df933633a9a969d261476577.md) | 145 | `result-track:df933633a9a969d261476577ab268cf5ce491b407876da270b19f0f75cc86958` |
| 25 | `theorem` | [hasSum_fst](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/hassum-fst--029a7fdd6143cb4b359058fb.md) | 149 | `result-track:029a7fdd6143cb4b359058fb350b906b31e7162e60242d4eba7b903a7cea7160` |
| 26 | `theorem` | [hasSum_snd](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/hassum-snd--47840ed97d873362c9387bd1.md) | 153 | `result-track:47840ed97d873362c9387bd1746e7b41979fe8e8d0b1ee9980dec4cc259cc630` |
| 27 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instuniformspace--56a73eef95b0d25e6de9437e.md) | 162 | `declaration-track:56a73eef95b0d25e6de9437e77d79e3e786d12ffab607863355511d216911e51` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--e3fdd152c6da88a966e77fc8.md) | 166 | `declaration-track:e3fdd152c6da88a966e77fc8446bffcecef020fbbf937a3070689d9ad991b90d` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/instance--5f2dcfd313dfb7ce8b84b933.md) | 169 | `declaration-track:5f2dcfd313dfb7ce8b84b9339f5a64815957a94700c1633ce8839fc97009c0d9` |
| 30 | `theorem` | [uniformity_def](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/uniformity-def--bd2f429fada73688b9d4946e.md) | 175 | `result-track:bd2f429fada73688b9d4946ee64ff906c18daada5803462ef941608270e68565` |
| 31 | `theorem` | [uniformContinuous_fst](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/uniformcontinuous-fst--f98595136da6dd63bb1af94f.md) | 180 | `result-track:f98595136da6dd63bb1af94fc82c5b18fdcebccd7f74e5e8ab8fe6ccb989ec39` |
| 32 | `theorem` | [uniformContinuous_snd](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/uniformcontinuous-snd--8cd10a0dbf06756f1071d87d.md) | 183 | `result-track:8cd10a0dbf06756f1071d87dd8cbea2147b9319391b7f18bf3652d272cf68fc1` |
| 33 | `theorem` | [uniformContinuous_inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/uniformcontinuous-inl--d6ff17d0d71df3cbde1389d3.md) | 186 | `result-track:d6ff17d0d71df3cbde1389d3f5794686b1b67921fe9badd591d48a5e28319706` |
| 34 | `theorem` | [uniformContinuous_inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant8de1c44429cd2c161d8b2c04b3f490876a867d94441c682115a7aa870fc05d9f.lean/declarations/uniformcontinuous-inr--1a335428d4c632e4ff4f0102.md) | 189 | `result-track:1a335428d4c632e4ff4f01029354908c09e0ff2c9585f855c5bd3aa79674da57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
