# Verification target: Run Linter Namespaced Resolve Default Root Modules

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e4797c2b75cfb35012f654cddb50ecaac15ffbb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e4797c2b75cfb35012f654cddb50ecaac15ffbb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Data.Array.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Lake.CLI.Main` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [NoLints](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/nolints.md) | 17 | `declaration-track:d6cf077ad7966c1fb60a0530ee042633e320dd2302b0f3dbd0b7388c3a02d31f` |
| 2 | `def` | [readJsonFile](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/readjsonfile.md) | 20 | `declaration-track:df4c4f45830c578bc310c418a46bba2664e75ca2d1063d17d589600363b60a2b` |
| 3 | `def` | [writeJsonFile](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/writejsonfile.md) | 25 | `declaration-track:0124b3a43a9ac8be88a7ee33897d04a07e5c0573489ce3510eab37454465c793` |
| 4 | `def` | [resolveDefaultRootModules](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/resolvedefaultrootmodules.md) | 31 | `declaration-track:02586bf03dc91121e2c903308a0a2bc0d4a27f40df0d657ad71c3c4a5fc7df1b` |
| 5 | `structure` | [LinterConfig](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/linterconfig.md) | 49 | `declaration-track:fe3c0cb5c7a30b6dcc7595ed48507bb41192ddbe11a2dee580105bb4cbf35588` |
| 6 | `def` | [Except.consError](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/except-conserror.md) | 59 | `declaration-track:479542fa1de496e8d78845c0e45041cdb4e8f0232fb1584ccfbae69c27db9f0a` |
| 7 | `def` | [parseLinterArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/parselinterargs.md) | 69 | `declaration-track:0f4b7b6c8ffb5bf42f916c2fc2bc72f8b5172aca21115277dd2cc78a0d6d9fc8` |
| 8 | `def` | [determineModulesToLint](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/determinemodulestolint.md) | 97 | `declaration-track:48dedbfe2591e89763acb4ca910c06693d54bcdd2b562ae50abc1764803c86b1` |
| 9 | `def` | [runLinterOnModule](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/runlinteronmodule.md) | 109 | `declaration-track:485c4e6a46641017f6fd13bdb923796dde7e1e234156f03452c480ce048fe285` |
| 10 | `def` | [main](../../../../../ComputerScience/AlgorithmsInComputerScience/RunLinterNamespacedResolveDefaultRootModules.lean/declarations/main.md) | 204 | `declaration-track:4edfc397076de1372fed5216499a2545374d1f53c70fea70dc74a06191422732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc362d882297a7695d1f66f6c315c7ae512ae8f05ab5fa5c675fb9ae8e244b2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
