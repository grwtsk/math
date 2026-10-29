# Verification target: Lossless Package

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92d370b09b7ce1b99e46c1ae0d9ad2f70741ede1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LosslessPackage/Variantd5e6ea5e88753a398b759700448135136322aa16cf27308db17dee98296a6ab3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LosslessPackage.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LosslessPackage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92d370b09b7ce1b99e46c1ae0d9ad2f70741ede1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LosslessPackage/Variantd5e6ea5e88753a398b759700448135136322aa16cf27308db17dee98296a6ab3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LosslessPackage/Variantd5e6ea5e88753a398b759700448135136322aa16cf27308db17dee98296a6ab3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.Invariant` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPolyhierarchy](../../../../../ComputerScience/AlgorithmsInComputerScience/LosslessPackage.lean/declarations/normalizedpolyhierarchy.md) | 9 | `declaration-track:4e7b3e79cd55dd146daf8df9841acbbc72e6c1e146fd514778e39534d779119b` |
| 2 | `def` | [decodeProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/LosslessPackage.lean/declarations/decodeprojection.md) | 18 | `declaration-track:7cad0d94e26478b5f4067d3c624ae4f445e54e452afc6baec500881cd8052404` |
| 3 | `structure` | [LosslessPackage](../../../../../ComputerScience/AlgorithmsInComputerScience/LosslessPackage.lean/declarations/losslesspackage.md) | 24 | `declaration-track:8fd68cbc5c871601d3b996c1f7159c921408730c8a411dbc62ea8cc53ffafdcc` |
| 4 | `theorem` | [LosslessPackage.decode_eq_source](../../../../../ComputerScience/AlgorithmsInComputerScience/LosslessPackage.lean/declarations/losslesspackage-decode-eq-source.md) | 29 | `result-track:86de76308a643e240115ec55e67479d127c83171bf33c54d18b99909d08cade8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c36e3a1ac7ff45960a4ddd9f8e0b9fce663bbe4f4d44530fab32e6c530cb3cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LosslessPackage/Variantd5e6ea5e88753a398b759700448135136322aa16cf27308db17dee98296a6ab3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LosslessPackage/Variantd5e6ea5e88753a398b759700448135136322aa16cf27308db17dee98296a6ab3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
