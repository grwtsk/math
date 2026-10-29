# Verification target: Jurisdiction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1353b158dd2324d121f720c8a7c91bc9377854a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1353b158dd2324d121f720c8a7c91bc9377854a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Principal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.PointKind` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.Relation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.SourceAnalysis.AbstractSourceAddress` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OracleId](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/oracleid.md) | 24 | `declaration-track:d4d571adcadadd467718894ca46e9045f76ed9a857128a47fb16f5c7e021ee65` |
| 2 | `inductive` | [OracleOperation](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/oracleoperation.md) | 26 | `declaration-track:52bee33eb3ed122f24e817b3076d64d4eed28bab3b55c30ac95cbdde64f43435` |
| 3 | `inductive` | [OracleAuthorityCeiling](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/oracleauthorityceiling.md) | 36 | `declaration-track:e4746e363b50649064835e40519246d57007bc30fa8eafe909520d33122e51c1` |
| 4 | `inductive` | [OracleFailureMode](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/oraclefailuremode.md) | 43 | `declaration-track:4cf989b6239d94ab75a7b5098e77aa0e657d1a8c2cd2da71d6ef3bd762fdd00a` |
| 5 | `structure` | [OracleInterface](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/oracleinterface.md) | 54 | `declaration-track:e8c4b88d7003ef19a6de41d80572178e5d0ad95adeed33de4e71281203f67947` |
| 6 | `structure` | [ValidFor](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/validfor.md) | 67 | `declaration-track:02428722fa09f06c532c41dec2989c1f7f01f4cbc8ecac8f6ff3207c5c0e9ac9` |
| 7 | `structure` | [Jurisdiction](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/jurisdiction.md) | 83 | `declaration-track:9de583edb5f300ba1b96000e1af27f3c3ecf32d8ac83c8c7abb57b477820499e` |
| 8 | `structure` | [Jurisdiction.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/jurisdiction-valid.md) | 97 | `declaration-track:ccedcc92878c9e11e098a3b4c478c3e985ffa5909672b9a0e2e30166e7978c70` |
| 9 | `def` | [Jurisdiction.MayInterpret](../../../../../ComputerScience/AlgorithmsInComputerScience/JurisdictionNamespaced.lean/declarations/jurisdiction-mayinterpret.md) | 111 | `declaration-track:aa1331f88f37eb3344e32f8e6bf37e0b7ae6379c9b42103f282cce6d9107d694` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e459ef7134acbcfcd172619363210c3f98a1cfc32d8b40b1e24c5207ea87d8bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
