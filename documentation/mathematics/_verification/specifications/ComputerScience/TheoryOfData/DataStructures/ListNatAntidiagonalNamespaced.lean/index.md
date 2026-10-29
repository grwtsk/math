# Verification target: List Nat Antidiagonal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24bf8bcb8a34810fe21c2d90a3ffb4ca77a251d7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantab05075231bc64833850b23ac702a9914b9ec6609920eb15e54db1790c84e2a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24bf8bcb8a34810fe21c2d90a3ffb4ca77a251d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantab05075231bc64833850b23ac702a9914b9ec6609920eb15e54db1790c84e2a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantab05075231bc64833850b23ac702a9914b9ec6609920eb15e54db1790c84e2a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/antidiagonal.md) | 37 | `declaration-track:c39d90ea69fc10d391793d9df0dd111c8082fe8eec2be4b1eaf6476063e042c6` |
| 2 | `theorem` | [mem_antidiagonal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/mem-antidiagonal.md) | 42 | `result-track:2a3fba87519ee22f3f51dfb2faeeb2bce246ef46d776ee980bf9d565a5fd35c7` |
| 3 | `theorem` | [length_antidiagonal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/length-antidiagonal.md) | 55 | `result-track:34222b205cfa043392f920f228bbc981f2b0a71b3e86b5b649267a13cc351d61` |
| 4 | `theorem` | [antidiagonal_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/antidiagonal-zero.md) | 60 | `result-track:cec573ed8c22c7fc59b715f701a970417f5b3afeb65b64a9257b7de520521cf6` |
| 5 | `theorem` | [nodup_antidiagonal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/nodup-antidiagonal.md) | 64 | `result-track:bb00692a4284bf01734fe1eb723156a07ffdc6f7e296d04bf7211055a6d1593c` |
| 6 | `theorem` | [antidiagonal_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/antidiagonal-succ-source-edition-2.md) | 68 | `result-track:a2c529ccbec7e3fcaac568ec40be714d17324ca44ad38d66df9d7d1ca00a0aab` |
| 7 | `theorem` | [antidiagonal_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/antidiagonal-succ.md) | 75 | `result-track:89245c37d89ff0b7c16557311c1cce24740e21261e743b2922ed2829d9fd8590` |
| 8 | `theorem` | [antidiagonal_succ_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/antidiagonal-succ-succ.md) | 83 | `result-track:50b401b27bff19b7cf92bebac997457dc55acd6b83dcda179fa8a9b76756caf1` |
| 9 | `theorem` | [map_swap_antidiagonal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListNatAntidiagonalNamespaced.lean/declarations/map-swap-antidiagonal.md) | 92 | `result-track:ae74fa4d47466ff918f0fb4d3c4b9032f2097f72b682bf7f23410c0b89f5fa68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11dc348fdaef074ed331202cda959ddb68947383a76f6b025250e4ffe21f9dbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantab05075231bc64833850b23ac702a9914b9ec6609920eb15e54db1790c84e2a5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantab05075231bc64833850b23ac702a9914b9ec6609920eb15e54db1790c84e2a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
