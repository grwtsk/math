# Verification target: Submodule Bilinear Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d739f6616c6dc0f97f009dad19f5d7e6fd7e3d8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant29417de98f6ddb847bb4318e88a827c47fd71ec3b3977e8d7c25fb4a68e30ff3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d739f6616c6dc0f97f009dad19f5d7e6fd7e3d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant29417de98f6ddb847bb4318e88a827c47fd71ec3b3977e8d7c25fb4a68e30ff3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant29417de98f6ddb847bb4318e88a827c47fd71ec3b3977e8d7c25fb4a68e30ff3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map.md) | 48 | `declaration-track:e682b7537912e5e6857821e2a13aa1b07668e3a9d6a69779faba4714862a6b08` |
| 2 | `theorem` | [apply_mem_map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/apply-mem-map.md) | 51 | `result-track:dbfe33326e3100fa6f14abffddf90385cd8d24af7156ff47845014afda4592df` |
| 3 | `theorem` | [map₂_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-le.md) | 55 | `result-track:382c341c63c3c63475b3891f31c86eaf92004bce74e71592f3d0686f1df13952` |
| 4 | `theorem` | [map₂_span_span](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-span-span.md) | 61 | `result-track:240351311ce1cb3c0ad34fe65a38a4eeec0d81654974b57f11a67469b9fb24eb` |
| 5 | `theorem` | [map₂_bot_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-bot-right.md) | 79 | `result-track:2efbc3c97029533b7d133e0796a3b43f21e3079fcf331a4d4f9c0411a1ed5070` |
| 6 | `theorem` | [map₂_bot_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-bot-left.md) | 86 | `result-track:a25de7a98e7bb63ce3250670b940108a42f5712b3913f1bbdb36ac5d1c233ab2` |
| 7 | `theorem` | [map₂_le_map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-le-map.md) | 93 | `result-track:2e35e6cb038cd4c76624a59c27e95d9e23f9e9f45ecf072f44e8f5a5b00da1cb` |
| 8 | `theorem` | [map₂_le_map₂_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-le-map-left.md) | 97 | `result-track:a537b2ac0a50960916bfdf18770846aadd92893c1162a9b761ad807dc1d7969a` |
| 9 | `theorem` | [map₂_le_map₂_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-le-map-right.md) | 101 | `result-track:5410438bc537e0ba50cb5471a3cbe036e3e8151482c95de4886525ce426ea159` |
| 10 | `theorem` | [map₂_sup_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-sup-right.md) | 105 | `result-track:6b7a93cfbec46eef0946587fb9aa766942a1f65014088bbb1f3ddec77841a2ce` |
| 11 | `theorem` | [map₂_sup_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-sup-left.md) | 113 | `result-track:32edf5c11890357cb8dc05b2f7e28c27c30eae4c2b3f25c7716474d5aa79e79d` |
| 12 | `theorem` | [image2_subset_map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/image2-subset-map.md) | 123 | `result-track:fcdb8aca70e82dac4c3f03e77396c2f0246c7e01254fe3f0d6feefb628d39433` |
| 13 | `theorem` | [map₂_eq_span_image2](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-eq-span-image2.md) | 128 | `result-track:47ed0f89f147b65d72ced387b24fd9723161d4b1ea18ecd3ecabd9aae9e1857d` |
| 14 | `theorem` | [map₂_flip](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-flip.md) | 132 | `result-track:b873b1f54c2ea7a760919141235e59539a2be0f6fea37342efcb2b1ea43c1599` |
| 15 | `theorem` | [map₂_iSup_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-isup-left.md) | 137 | `result-track:83fe8ba08265feb6f96498f8973ace0c98c7bf7a876752552decf3070ff1da5b` |
| 16 | `theorem` | [map₂_iSup_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-isup-right.md) | 143 | `result-track:99f717b20657d88079052577edd707b5ffc11249168d56c705083051749bc198` |
| 17 | `theorem` | [map₂_span_singleton_eq_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-span-singleton-eq-map.md) | 149 | `result-track:98631b4e8bc3e2c22e724b0153262ab39b0e6cb492c35759d4e063a584076d0d` |
| 18 | `theorem` | [map₂_span_singleton_eq_map_flip](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-span-singleton-eq-map-flip.md) | 154 | `result-track:8eec7cd7f2942edacad96e34fb11f32c96e4634c831143e967a3ba7fad40e3fa` |
| 19 | `theorem` | [map_map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-map.md) | 162 | `result-track:b23383a38eefc3c126cf2d8c74c8cb56098b1828df747bcbc58fcf4c02a2cc9d` |
| 20 | `theorem` | [map₂_map_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-map-right.md) | 166 | `result-track:e4bc8315c50681129f2a68e4aeda48272a27dc633d0c96456e801c57936aa677` |
| 21 | `theorem` | [map₂_map_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-map-left.md) | 171 | `result-track:008789717f94f1faa5b38eb3969d485a02d1334e44f5935bd4d4a1bb32b82bfb` |
| 22 | `theorem` | [map₂_map_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearPublic.lean/declarations/map-map-map.md) | 177 | `result-track:9d1c5d630c1afd3a8bad33e604095ab7e6362490e9c5ca03cb5330a5d0cc750c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d4650c31480a3dfc63ad50421b966587912ab24bc5d0b82cd5c1634863e68f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant29417de98f6ddb847bb4318e88a827c47fd71ec3b3977e8d7c25fb4a68e30ff3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bilinear/Variant29417de98f6ddb847bb4318e88a827c47fd71ec3b3977e8d7c25fb4a68e30ff3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
