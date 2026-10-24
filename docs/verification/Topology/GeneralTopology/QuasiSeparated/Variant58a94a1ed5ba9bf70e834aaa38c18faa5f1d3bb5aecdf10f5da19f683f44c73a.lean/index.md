# Verification target: GRWTSK.Topology.GeneralTopology.QuasiSeparated.Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6105ae8fd9b16eb5829729a3df4562fdfefd60f5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6105ae8fd9b16eb5829729a3df4562fdfefd60f5`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NoetherianSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsQuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/isquasiseparated--303f1c5866e403b1aa4725d6.md) | 45 | `declaration-track:303f1c5866e403b1aa4725d6e14cb42fae40b1caac5905c1153d5fd5052c8a5e` |
| 2 | `class` | [QuasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/quasiseparatedspace--dbefb75dcea78d483918668b.md) | 51 | `declaration-track:dbefb75dcea78d483918668bb4ccb5a3db2c2d5e1f117aa06adf990798bc417b` |
| 3 | `theorem` | [isQuasiSeparated_univ_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/isquasiseparated-univ-iff--56f4ab24796e68b8fb2c964a.md) | 56 | `result-track:56f4ab24796e68b8fb2c964aec3a90922fa8ab4dc77995296792802745dfab08` |
| 4 | `theorem` | [isQuasiSeparated_univ](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/isquasiseparated-univ--21d35d1b468103839a26b51b.md) | 61 | `result-track:21d35d1b468103839a26b51b246153bc430695f386ed276c4b95e9a267207575` |
| 5 | `theorem` | [IsQuasiSeparated.image_of_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/isquasiseparated-image-of-isembedding--96f47425e8b8f4f4a4c4ba7a.md) | 65 | `result-track:96f47425e8b8f4f4a4c4ba7ad8518f6390d300c8217a503a2ea3f024acfc3f1d` |
| 6 | `theorem` | [Topology.IsOpenEmbedding.isQuasiSeparated_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/topology-isopenembedding-isquasiseparated-iff--112eef9d3231999d260ad42f.md) | 92 | `result-track:112eef9d3231999d260ad42fa2d96c6880de1b3f54877e8fee97d95d1abff90c` |
| 7 | `theorem` | [isQuasiSeparated_iff_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/isquasiseparated-iff-quasiseparatedspace--10af29c9c8ab1e3f28fa57a9.md) | 101 | `result-track:10af29c9c8ab1e3f28fa57a9cef1909279e12449f41ce223c4db9b87f6e99bea` |
| 8 | `theorem` | [IsQuasiSeparated.of_subset](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/isquasiseparated-of-subset--b0819eea9ac5eee0dc3e5706.md) | 107 | `result-track:b0819eea9ac5eee0dc3e57063d062556f075613f7fc97e2375d5a51328ba1ce3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/instance--c203776f0f0bc5078b6030ee.md) | 112 | `declaration-track:c203776f0f0bc5078b6030ee13d481cf9dce93fcd4e367433a934299c539c316` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/instance--fe6a02301a88c8eeaa75f095.md) | 115 | `declaration-track:fe6a02301a88c8eeaa75f095b2c4341d49a3ffd284fcac3a6f8f618e064416f5` |
| 11 | `lemma` | [QuasiSeparatedSpace.of_isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/quasiseparatedspace-of-istopologicalbasis--faf0182bc9fb548eee6c8269.md) | 119 | `result-track:faf0182bc9fb548eee6c8269b4eb40d219ca46c7e17bad3e0d997aacae75beca` |
| 12 | `lemma` | [IsQuasiSeparated.of_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/isquasiseparated-of-quasiseparatedspace--722fe616dfb755f82c78f548.md) | 133 | `result-track:722fe616dfb755f82c78f54849b9b96b32b28708142f333639dbad6ce6c9e261` |
| 13 | `lemma` | [QuasiSeparatedSpace.of_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/quasiseparatedspace-of-isopenembedding--61b050f0a787d6a28623f9a5.md) | 136 | `result-track:61b050f0a787d6a28623f9a5fba7483fdd5e5da55e115b269fd560dea282b72f` |
| 14 | `lemma` | [IsCompact.inter_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/iscompact-inter-of-isopen--033d4911711bdcd35df7b55b.md) | 140 | `result-track:033d4911711bdcd35df7b55bc98688a05e397d8b7908225fa4a1f6ae0a1a001a` |
| 15 | `lemma` | [quasiSeparatedSpace_congr](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/declarations/quasiseparatedspace-congr--a243c873fc7dd5d52ed149e7.md) | 146 | `result-track:a243c873fc7dd5d52ed149e7dfc189722968601cbd960d02e1a41cdeea14420a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
