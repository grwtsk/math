# Verification target: Cli Namespaced Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6683a30519cf0d41e2513f909b4fecb91f4ab3d2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant2c31f0da4a17cf56c3de323cff6604be718e914e80ebb51a08807732bea39902.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CliNamespacedPublicEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CliNamespacedPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6683a30519cf0d41e2513f909b4fecb91f4ab3d2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant2c31f0da4a17cf56c3de323cff6604be718e914e80ebb51a08807732bea39902.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant2c31f0da4a17cf56c3de323cff6604be718e914e80ebb51a08807732bea39902.lean.json)

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
| 1 | `structure` | [CliConfig](../../../../../ComputerScience/AlgorithmsInComputerScience/CliNamespacedPublicEdition1.lean/declarations/cliconfig.md) | 21 | `declaration-track:d8f33cd046ef4de96309d5fdb54608643bd7d442f6cd52cde7881379c70031ae` |
| 2 | `def` | [parseModuleName](../../../../../ComputerScience/AlgorithmsInComputerScience/CliNamespacedPublicEdition1.lean/declarations/parsemodulename.md) | 28 | `declaration-track:66a923ba92b656791eaf8b686fa2cdbaa27dbd340442a3d3632533e42b1cec3e` |
| 3 | `def` | [parseArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/CliNamespacedPublicEdition1.lean/declarations/parseargs.md) | 32 | `declaration-track:1dcaabeef8664bab7fb22a06874dab160d8bdcf70d8dd2651b167cf96894d14c` |
| 4 | `def` | [sourcePath](../../../../../ComputerScience/AlgorithmsInComputerScience/CliNamespacedPublicEdition1.lean/declarations/sourcepath.md) | 48 | `declaration-track:d3c78113edc8f7926765cfa63bf3905336bec9a2847ca485f68dc4cdcea1d9bc` |
| 5 | `def` | [selectedModules](../../../../../ComputerScience/AlgorithmsInComputerScience/CliNamespacedPublicEdition1.lean/declarations/selectedmodules.md) | 51 | `declaration-track:634f7deada63c0d2f1605052d87c50b95367bd3e668631d9d6b96adc65f0112a` |
| 6 | `def` | [run](../../../../../ComputerScience/AlgorithmsInComputerScience/CliNamespacedPublicEdition1.lean/declarations/run.md) | 61 | `declaration-track:d8d413cd6e373bff1aa0f5018d93adb9890d953f67d4fbe631b08fd9b334e2f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c64d8512f1a18df98ac970ecff4e6bb271ade52b7c5a138c2851dee5994acb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant2c31f0da4a17cf56c3de323cff6604be718e914e80ebb51a08807732bea39902.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variant2c31f0da4a17cf56c3de323cff6604be718e914e80ebb51a08807732bea39902.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
