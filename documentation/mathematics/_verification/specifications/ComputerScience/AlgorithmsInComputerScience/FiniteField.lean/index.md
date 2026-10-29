# Verification target: Finite Field

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379fa43ce3249b225da568f0d33e2cea10b77e71",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379fa43ce3249b225da568f0d33e2cea10b77e71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.Field` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [F2Elements](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f2elements.md) | 12 | `declaration-track:9a953fc5b1fbb1b9c14e317d9fe3b53f9531a20146f1e50dda6ee8594937652a` |
| 2 | `theorem` | [F2Elements_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f2elements-nodup.md) | 15 | `result-track:27c4b59a8a75d7146dee9ca65fcd110ec2c327c89241377320067b8a79491576` |
| 3 | `theorem` | [F2Elements_exhaustive](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f2elements-exhaustive.md) | 18 | `result-track:6de096a45aa2433d6fc3d17803e297ef66d61acaca4488e9dadb0cc7aba47473` |
| 4 | `def` | [F3Elements](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f3elements.md) | 31 | `declaration-track:4194001f90cd7acf8d88880140cb80c22b02a8ebe4d3e06809ff9baab45382ed` |
| 5 | `theorem` | [F3Elements_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f3elements-nodup.md) | 34 | `result-track:912cb9c2c9ff2a75051730ada2e016dfab6b636e8075692c268b33d00b216ad7` |
| 6 | `theorem` | [F3Elements_exhaustive](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f3elements-exhaustive.md) | 37 | `result-track:4428438a7983753a86bf0c61b0202ac514c789a3930cbf2610c81d5ff31c1718` |
| 7 | `def` | [F5Elements](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f5elements.md) | 55 | `declaration-track:c727849973b761b6940b89518a59e8b9c739a6e29ae854511551dfc49b6db9bb` |
| 8 | `theorem` | [F5Elements_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f5elements-nodup.md) | 59 | `result-track:a413b32d05d4716c025901a3e09dc28ebbbb06456e3a1527b9403b70b41606a6` |
| 9 | `theorem` | [F5Elements_exhaustive](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f5elements-exhaustive.md) | 62 | `result-track:074992f4441bfde00854bd61031b82f0270919ca578f7ab72410eaa99e881f0e` |
| 10 | `def` | [F2](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f2.md) | 93 | `declaration-track:24076c83ab95605f27c3bbe2886a9e52446f5506e88c0b810d7b120dd3b17514` |
| 11 | `def` | [F3](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f3.md) | 111 | `declaration-track:a531493abbe0828979597b96cfb42b697114c87c75b2c19d5208389324221b5a` |
| 12 | `def` | [F5](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/f5.md) | 129 | `declaration-track:1ba5d681fc6595753eaac569babdf3a9c4d8fb51d1352a62173d36186335e6e9` |
| 13 | `def` | [finiteSumNat](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteField.lean/declarations/finitesumnat.md) | 147 | `declaration-track:d6a675d87cb6d36735de14678b7425da7ca3cfc64cc460aba72602768a035ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f07bdb787864c9f1d5105b5ceee2baca5396a7906494c28ec9ed3b02ec72d76d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
