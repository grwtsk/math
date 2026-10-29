# Verification target: Real ENat ENNReal ENat ENNReal Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfd3ebbe088e58d261d177a6a27cfdacce776534",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variantceb13c19e0e853ec182a9ae2412e2d5177fd59e59efea44552d61f0480670c02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/index.md) · [Full source](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfd3ebbe088e58d261d177a6a27cfdacce776534`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variantceb13c19e0e853ec182a9ae2412e2d5177fd59e59efea44552d61f0480670c02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variantceb13c19e0e853ec182a9ae2412e2d5177fd59e59efea44552d61f0480670c02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENNReal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toENNReal](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal.md) | 26 | `declaration-track:a67ae0071d8c3bf2e806c96eefa82297f5c87636d20241e53c51208391fefb79` |
| 2 | `instance` | [hasCoeENNReal](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/hascoeennreal.md) | 28 | `declaration-track:67039add8dd5892dce821c8638284e364cbd0441df24b0b74532d2415833a734` |
| 3 | `theorem` | [map_coe_nnreal](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/map-coe-nnreal.md) | 31 | `result-track:d4c066ce566e34de8ec1ecc89d22eb96e5ff67e2e618fab414c4813f14f88c7c` |
| 4 | `def` | [toENNRealOrderEmbedding](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennrealorderembedding.md) | 36 | `declaration-track:f44b0e101d681c58cdb9c47f0f863e65c12a70dce9e05da049a5a73360af7193` |
| 5 | `def` | [toENNRealRingHom](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennrealringhom.md) | 41 | `declaration-track:c4f78c6416069ac6b1eb74a804b00c15ad86e6cb4d7bac48121f6f94e5b841e3` |
| 6 | `theorem` | [toENNReal_top](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-top.md) | 45 | `result-track:3f7a28e5a40fe6e4dac8b95ad763f9bff8f02624a770c766f3a547fb3d4a6444` |
| 7 | `theorem` | [toENNReal_coe](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-coe.md) | 49 | `result-track:03a4570afdaa0a31fa0fa27dde3cea284929eccd1899f857b96db6864f12be0e` |
| 8 | `theorem` | [toENNReal_ofNat](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-ofnat.md) | 53 | `result-track:19f12b1188f024dc789c62837400a63b56503c0e428e6a533ad7ff8b04b30427` |
| 9 | `theorem` | [toENNReal_inj](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-inj.md) | 57 | `result-track:02d8ff0869e96361ee814bbd6f29eab400b65183a5056299556b2e84f87d3e72` |
| 10 | `lemma` | [toENNReal_eq_top](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-eq-top.md) | 62 | `result-track:8267bb6c4e3b10dfa188f2186b88363d85731e6ab0ed85e037a4035c84502150` |
| 11 | `lemma` | [toENNReal_ne_top](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-ne-top.md) | 63 | `result-track:3f3fdd5f92ea29ebce175b8f3a43a8fc5217c5694b4aa7824995b83ea2378c88` |
| 12 | `theorem` | [toENNReal_le](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-le.md) | 66 | `result-track:d8c6e5baaf0ed0253fee42c547f94342e068ae05fb96222bd01facd74b37282e` |
| 13 | `theorem` | [toENNReal_lt](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-lt.md) | 70 | `result-track:86b6a77ce3a6504dc94dad02b20c4d2247fe59da91b9370dcf1db3cc12bb96e9` |
| 14 | `lemma` | [toENNReal_lt_top](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-lt-top.md) | 74 | `result-track:2e4486a9fcb4dc5ca2571c47ea681f1d2f5b9be9f18f270498b78eddc932e4cc` |
| 15 | `theorem` | [toENNReal_mono](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-mono.md) | 77 | `result-track:d57d6691897d64eb0755c5fcbc4e4db0827035ca008aa40aadfc32cc66321a66` |
| 16 | `theorem` | [toENNReal_strictMono](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-strictmono.md) | 81 | `result-track:c0b4f0aa83185de7d31204da9d254553da454f814a8c1a7e843acf99e5c70fac` |
| 17 | `theorem` | [toENNReal_zero](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-zero.md) | 85 | `result-track:2191aec49a56e954977002ed42f0965698659ffa46f726a6a2d696b3d3c358e7` |
| 18 | `theorem` | [toENNReal_add](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-add.md) | 89 | `result-track:1ea658ad6c711e115f3ae3909112099b20e7c3eccc13d7d0d0a3ed8f26fed6fc` |
| 19 | `theorem` | [toENNReal_one](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-one.md) | 93 | `result-track:68e8dcfeb1dbae8febaeff5f3e9269478563cdbb06d48d049cd9455379c2338b` |
| 20 | `theorem` | [toENNReal_mul](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-mul.md) | 97 | `result-track:68b0a1c5226caecc6f5170929782192ba1ca8dd7311ff62735e89573470066ae` |
| 21 | `theorem` | [toENNReal_pow](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-pow.md) | 101 | `result-track:09d6c335719e90c029b4f5076e30de1dd95de9774e7600b2b93abedc4fcfa8a5` |
| 22 | `theorem` | [toENNReal_min](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-min.md) | 105 | `result-track:92c5a7fad9a44330ac421f3773c32361665ac5920b0ac54fff6ac50920de5846` |
| 23 | `theorem` | [toENNReal_max](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-max.md) | 109 | `result-track:b2e0e66eb9c08b6f66f2995a032b869536628ca030948ae77b544ccc00713a5a` |
| 24 | `theorem` | [toENNReal_sub](../../../../RealFunctions/RealENatENNRealENatENNRealSourceEdition1.lean/declarations/toennreal-sub.md) | 113 | `result-track:29b0f486d4aecf62868dc69b0dfee11b4a9297fc17492c22e52be07a7cae11d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85ad2b475c43cd67f3a79f1a4a184de9ec906e48b2aaed1114ff6423a1d736a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variantceb13c19e0e853ec182a9ae2412e2d5177fd59e59efea44552d61f0480670c02.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variantceb13c19e0e853ec182a9ae2412e2d5177fd59e59efea44552d61f0480670c02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
