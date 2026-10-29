# Verification target: Propose Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "663bcec6f10947e53423c4ba8882249d173cb0f7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `663bcec6f10947e53423c4ba8882249d173cb0f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Propose` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GuardHypNums` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Associated` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [foo](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/declarations/foo.md) | 11 | `result-track:e564f8f5cb7f25942dafd9c2291fb51fa969a01ba99f03c192dcdcdc111225a6` |
| 2 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/declarations/example-source-edition-2.md) | 19 | `declaration-track:c2fcc55efe2734e31616d4b51641492689214c6397ae57c6bdd77c1815077778` |
| 3 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/declarations/example-source-edition-4.md) | 31 | `declaration-track:edacd3e6e069267eee770f5426c4b808154122b54ea72d1022ca2839036d36a7` |
| 4 | `def` | [bar](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/declarations/bar.md) | 42 | `declaration-track:d452ea2a73b4ea5b5d07fd8902929660f5abae45aa8c8cbc903e65c82f26cd9a` |
| 5 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/declarations/example.md) | 51 | `declaration-track:218da2d7164b85deff2d31e96b213b520b22e4d1b58e4242d16cce288e7e5c65` |
| 6 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/declarations/example-source-edition-3.md) | 63 | `declaration-track:e5a0dce71cfea4accf8b9c9b10da4e2f4a1c89abcabd1371861d6ef1f9d668c7` |
| 7 | `theorem` | [dvd_of_dvd_pow](../../../../../ComputerScience/AlgorithmsInComputerScience/ProposeEdition1.lean/declarations/dvd-of-dvd-pow.md) | 86 | `result-track:bc6a0e18fcf7e23f69c66c0e88f8354dcee51e1ce4f83a358d6d010ffc08c87e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d0041be7f7c5c478b39a9f6218bb977881b23ca7649876c9147f728fda7181d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
