# Verification target: Result

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93aad7675d064913ec4b3adc9b799160ff793910",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant991e0eede730850a9af6a562adbab8853a339376c8bbb6fef606a56cb03cb567.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93aad7675d064913ec4b3adc9b799160ff793910`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant991e0eede730850a9af6a562adbab8853a339376c8bbb6fef606a56cb03cb567.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant991e0eede730850a9af6a562adbab8853a339376c8bbb6fef606a56cb03cb567.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Archive.Examples.IfNormalization.Statement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.AList` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Recall` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/macro-source-edition-2.md) | 16 | `declaration-track:5284d73751f9eb022f02cef7ac07b4a3949973b221ff936c59b76d7f46b58d3e` |
| 2 | `macro` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/macro.md) | 17 | `declaration-track:158762098c928f42985216463deed75625f28927818fc3c67928a552a655c7bf` |
| 3 | `theorem` | [eval_lit](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/eval-lit.md) | 35 | `result-track:2b881e95b97c0e7b020deecb1afd8582685ba94d561a78e7deb7f36bd60c97e6` |
| 4 | `theorem` | [eval_var](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/eval-var.md) | 36 | `result-track:087dd3efc1a2868b65928db47d393391d7bc08cc69b7426373d289c0be7d91a6` |
| 5 | `theorem` | [eval_ite_lit](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/eval-ite-lit.md) | 37 | `result-track:c032c6c65e826be0577ae5f4c7334e31fb7e01fec171fe0a079ae05442a7bd95` |
| 6 | `theorem` | [eval_ite_var](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/eval-ite-var.md) | 39 | `result-track:7934f469e3619cef6ba7a8c88bfc1ec88ecb8e43a84f879433b6456d7a3263d4` |
| 7 | `theorem` | [eval_ite_ite](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/eval-ite-ite.md) | 41 | `result-track:da3807def87b341f772313c0fccda67dc967ec3c99f0c356a838275ac890eaa7` |
| 8 | `def` | [normSize](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/normsize.md) | 46 | `declaration-track:4325c37399cf3e58ec906da4aafc8bd3cf30c8befd8497c5208b28a3ac1f93ed` |
| 9 | `def` | [normalize](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/normalize.md) | 53 | `declaration-track:8d088dde7fcd9045526ee6c016ae59e19c451a48e93dfca85694ec0da141cacf` |
| 10 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/Result.lean/declarations/example.md) | 105 | `declaration-track:3dd49a8809a5ef06e0fd2423c9216aa1ced280905eb161c5120cc6372af6434c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=288ff699f5a4dace5dad2ed0f7bea20b48142c4c36a58178771d0d7c993c06be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant991e0eede730850a9af6a562adbab8853a339376c8bbb6fef606a56cb03cb567.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant991e0eede730850a9af6a562adbab8853a339376c8bbb6fef606a56cb03cb567.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
