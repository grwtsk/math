# Verification target: Braid Module Contract Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13eb60d3c1a0851026e6dfc8fd5d3c48d8f80c11",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e/Varianta4a3dc0b33bcee843dd5179f06b1bbf1841423e43245a2cd5d250fc039d01a29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13eb60d3c1a0851026e6dfc8fd5d3c48d8f80c11`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e/Varianta4a3dc0b33bcee843dd5179f06b1bbf1841423e43245a2cd5d250fc039d01a29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e/Varianta4a3dc0b33bcee843dd5179f06b1bbf1841423e43245a2cd5d250fc039d01a29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit0.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f4e6f6e636c61696d436174616c6f672e6c65616e` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidueDisposition](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/residuedisposition.md) | 17 | `declaration-track:a0da00a439b58954a0d3ebdc005dd27255e8fd2945e0877418e0039896f5ca79` |
| 2 | `inductive` | [RefusalCode](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/refusalcode.md) | 21 | `declaration-track:9b2456001ff2ad89bcefd5470652a7d9637c221c1c476ac0fbbb4f2d5f03a678` |
| 3 | `inductive` | [WitnessKind](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/witnesskind.md) | 34 | `declaration-track:0233eaa44f497ac4e77a2b2c284654f1fff057792127685e646c669b1f7a8af2` |
| 4 | `structure` | [ResidueSummary](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/residuesummary.md) | 38 | `declaration-track:ecd56ee9c7f4257c0c2f355ca3d17b5674e757b6239f91a0d62215056b219271` |
| 5 | `structure` | [ModuleContract](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/modulecontract.md) | 45 | `declaration-track:3788202a72429f749f3b4ffed502aa56b5d68dbd2c4523e6e6667238176d1152` |
| 6 | `structure` | [CoordinateFile](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/coordinatefile.md) | 54 | `declaration-track:469701203877afad009f70214691ed845a149d8ee052cabf748206a476cfb274` |
| 7 | `def` | [closedResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/closedresidue.md) | 59 | `declaration-track:5112f4200d16c51e13f52630279a6d458d954a1a9f5aedce5aabed9b62b6ebd7` |
| 8 | `def` | [defaultRefusals](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/defaultrefusals.md) | 65 | `declaration-track:3ed1cda0a63043f29b2d3793bfb7c7260300e7414c1440cafef2c63cd99aa44c` |
| 9 | `def` | [defaultModuleContract](../../../../../ComputerScience/AlgorithmsInComputerScience/BraidModuleContractNamespaced.lean/declarations/defaultmodulecontract.md) | 68 | `declaration-track:ab58ad849bdd35bb8b837a8a01c50b5bc9b22bee37f1bdefe8062cf331ed534d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=976c111482064f6dfc71ae7fd33561185a242f0cc0e2dc39c3f3764891a1a90b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e/Varianta4a3dc0b33bcee843dd5179f06b1bbf1841423e43245a2cd5d250fc039d01a29.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e/Varianta4a3dc0b33bcee843dd5179f06b1bbf1841423e43245a2cd5d250fc039d01a29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
