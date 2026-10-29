# Verification target: Euler Product Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e443851c5b3c022ce9476cf31efe9281e106bec7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e443851c5b3c022ce9476cf31efe9281e106bec7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.ArithmeticFunction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeWindow](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/declarations/primewindow.md) | 16 | `declaration-track:95126d8035e2de1c1f1d96a01208f8a52588246b4595f1a7e52ca63373c3e64d` |
| 2 | `structure` | [LocalEulerFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/declarations/localeulerfactor.md) | 22 | `declaration-track:b6f80e90e56044b9629416cf8ef1ccc6b3ee1a428c85c6a4432685da155b5d64` |
| 3 | `structure` | [FiniteEulerProduct](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/declarations/finiteeulerproduct.md) | 29 | `declaration-track:e0fc4c8fd627c69008e7fa9c7e74872addf9ad9d600706d11e001eb245ba68ae` |
| 4 | `theorem` | [prime_window_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/declarations/prime-window-sound.md) | 36 | `result-track:748e3e1ab294f6aaf05859bbadaa05d8d4542eed27b0f58361f54242a095bafe` |
| 5 | `theorem` | [local_euler_factor_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/declarations/local-euler-factor-sound.md) | 41 | `result-track:ff18f6d55654115cd014643f8ad948ac1c45291c9f9a668814d58a43da2bea4b` |
| 6 | `theorem` | [finite_euler_product_expansion_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/declarations/finite-euler-product-expansion-sound.md) | 46 | `result-track:6aaf5953912b3d6e9ad5cef72967832b8087fbdb63c23056499144008fa6c18c` |
| 7 | `def` | [FiniteEulerProductProvesInfiniteEulerProduct](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/declarations/finiteeulerproductprovesinfiniteeulerproduct.md) | 52 | `declaration-track:ac17f60a93fb89f50fa67ebc382d9205c3eb4d3e7459319140ef6ac6a060b6d3` |
| 8 | `theorem` | [finite_euler_product_not_infinite_identity](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition2.lean/declarations/finite-euler-product-not-infinite-identity.md) | 56 | `result-track:30c6ecdecff9f58adf30de1de621c2a4bd7ee70958d8e3ba54aa535cfa9b57c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e887e4bf14edfaa8b6fb86523ef91b13634339a9f882777219561df6c353c9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
