# Verification target: Simply Connected

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3460b7af1d490b4ee628f182fe55cf9833b43713",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplyConnected.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplyConnected.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3460b7af1d490b4ee628f182fe55cf9833b43713`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SimplyConnected/Variant0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.InducedMaps` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.PUnit` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SimplyConnectedSpace](../../../../AlgebraicTopology/SimplyConnected.lean/declarations/simplyconnectedspace.md) | 35 | `declaration-track:a0543cb8b5b324b9c976acb5e2e3d29b91d5a4e9a8e70364be00827d7d365408` |
| 2 | `theorem` | [simply_connected_iff_unique_homotopic](../../../../AlgebraicTopology/SimplyConnected.lean/declarations/simply-connected-iff-unique-homotopic.md) | 38 | `result-track:99fd3f79be0ac626d0e399b86db611efbd3e5ccdd247596d015d1f2ccfd6e14b` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplyConnected.lean/declarations/instance.md) | 50 | `declaration-track:1cbb129042b7df5f49a6a09d4b25b1fd7f19bfb29c274b42bdf25485351d0089` |
| 4 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplyConnected.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:3158876e844a7c84c123481cd460ee8569ae46e94f89e6f00d0d1decd5512244` |
| 5 | `theorem` | [paths_homotopic](../../../../AlgebraicTopology/SimplyConnected.lean/declarations/paths-homotopic.md) | 62 | `result-track:eb1bc1c1177df952bf0adc3f0b7d62a7e8681d8fcd19389fa9ca029eddabe8d7` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplyConnected.lean/declarations/instance-source-edition-3.md) | 65 | `declaration-track:8c6266d03e7e4403261958c0b617149d08ee41f95b8f861a85a86615c25db1af` |
| 7 | `theorem` | [simply_connected_iff_paths_homotopic](../../../../AlgebraicTopology/SimplyConnected.lean/declarations/simply-connected-iff-paths-homotopic.md) | 78 | `result-track:a76d1a9ecfd71bf3401cfdcf15365037f23b24d757fc09f2cad2b7b176371798` |
| 8 | `theorem` | [simply_connected_iff_paths_homotopic'](../../../../AlgebraicTopology/SimplyConnected.lean/declarations/simply-connected-iff-paths-homotopic-source-edition-2.md) | 86 | `result-track:f88d65dcad1361a30e70c8c449e2cbc4046174758f2daffede4c98212a8073dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7890ad0112926d1a93eeb8cc7a49b59facc45829dcb00b65e21dc296945d8a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SimplyConnected/Variant0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
