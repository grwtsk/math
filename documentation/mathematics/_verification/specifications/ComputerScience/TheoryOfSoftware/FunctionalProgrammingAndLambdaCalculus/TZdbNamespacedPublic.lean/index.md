# Verification target: TZdb Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd1fa13e2da72f6b61ef2586ef384c351b0bb89e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd1fa13e2da72f6b61ef2586ef384c351b0bb89e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TZdb](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/tzdb.md) | 31 | `declaration-track:3e6014714bf2585a2f93d4320aae112499440d1aa59dbb6f6455c0003d0ae9a0` |
| 2 | `def` | [parseTZif](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/parsetzif.md) | 45 | `declaration-track:d49e810df5d2003278f3fb30b28d38b195d7307faf9af7846d24420ccd88a970` |
| 3 | `def` | [parseTZIfFromDisk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/parsetziffromdisk.md) | 52 | `declaration-track:41b243b665ea42e93fc94c38eb16c3998af7fa29efa4d6f01a9b2e3e7b212ecd` |
| 4 | `def` | [idFromPath](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/idfrompath.md) | 59 | `declaration-track:05f01534536722ad1367bebf40289d74229bca9e282dc75644d9a7064881ec3e` |
| 5 | `def` | [localRules](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/localrules.md) | 71 | `declaration-track:4f8f6fe3da3cd7e6de8f1b88eeea40a0cec0fde3b3fe92c7189b813806c00657` |
| 6 | `def` | [readRulesFromDisk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/readrulesfromdisk.md) | 80 | `declaration-track:f3c2f5b25f541ea9efde21df2d40c99cb4d8ebf9fa79ec65e2872af44542486c` |
| 7 | `inductive` | [TZSpec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/tzspec.md) | 89 | `declaration-track:1f1298101d3bc92abf8fe1097f3bd81bbf40d8123147e7b820012ebb48e7c20b` |
| 8 | `def` | [parseTZValue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/parsetzvalue.md) | 106 | `declaration-track:94c401d0e82fbef92e717fdd253997a1cf0eac15ffd93de8543ea7663def9c64` |
| 9 | `def` | [findInPaths](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/findinpaths.md) | 118 | `declaration-track:6ec5b90d74da39d73faa9695a7e72a1bea8ff72134bdcab60f67004dd642c157` |
| 10 | `def` | [resolveLocalPath](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/resolvelocalpath.md) | 131 | `declaration-track:60af1ffd01ca52fdc55064e8f6157b50e4309c70ee9e22b4b4e644d63d609aa7` |
| 11 | `def` | [default](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/default.md) | 153 | `declaration-track:76d0cacc68511158b46b1eed40c6fb6e5b81df63f3306c8de5aae667aca11873` |
| 12 | `def` | [resolveZonesPaths](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/resolvezonespaths.md) | 161 | `declaration-track:93b230b07767e49cf9921cecdf3ecc78ba4848f92b13ca16015201049b59dd8b` |
| 13 | `def` | [getLocalZoneRules](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/getlocalzonerules.md) | 172 | `declaration-track:004396e8014d0019596bd2706d4bc15d1f0a19b01bbd183d1897b55cc3de4f53` |
| 14 | `def` | [getZoneRules](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/getzonerules.md) | 180 | `declaration-track:66b0cb7fe494736a316b7fd6e62992b184ace5da18f9971d141efb910d09dfcb` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TZdbNamespacedPublic.lean/declarations/instance.md) | 187 | `declaration-track:0718528ca206beca4d5e65667c33b71d802e260c0507122e217e910d6a056dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95c9c0e1c52f79e2fc06ca060af0405364d6c6de11f5521892375ffcd03d550f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
