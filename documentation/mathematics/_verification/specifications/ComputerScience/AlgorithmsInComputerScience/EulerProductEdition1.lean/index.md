# Verification target: Euler Product Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "035457f1bb692448ed2ff7a8b8995148a8bac335",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `035457f1bb692448ed2ff7a8b8995148a8bac335`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f.lean.json)

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
| 1 | `structure` | [PrimeWindow](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/declarations/primewindow.md) | 16 | `declaration-track:f8438cd25d48fd24f617d40261023b99b91dbe09032e30660040f8eb3f722f53` |
| 2 | `structure` | [LocalEulerFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/declarations/localeulerfactor.md) | 22 | `declaration-track:95921918896584d9b06a4072506deb875c9d9023ff397cf0bed335cadbf452a0` |
| 3 | `structure` | [FiniteEulerProduct](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/declarations/finiteeulerproduct.md) | 29 | `declaration-track:9349496bd8c3250c5b19ebde3e48686dfcb60fa36a1bb05d61e81fac591e78fc` |
| 4 | `theorem` | [prime_window_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/declarations/prime-window-sound.md) | 36 | `result-track:e4e88e811a6a990545625fbece70dadd0537b93c423060948d169448dc9fcca2` |
| 5 | `theorem` | [local_euler_factor_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/declarations/local-euler-factor-sound.md) | 41 | `result-track:1a6828ceb8071d4cbf19b410ec81379aea16911c36220241e46f44ec1614ff18` |
| 6 | `theorem` | [finite_euler_product_expansion_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/declarations/finite-euler-product-expansion-sound.md) | 46 | `result-track:ef5bdac5c0e14701f6ea189eaf743e5bbc0e0ea823e59f2a4ee0ffc8d9ca7985` |
| 7 | `def` | [FiniteEulerProductProvesInfiniteEulerProduct](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/declarations/finiteeulerproductprovesinfiniteeulerproduct.md) | 52 | `declaration-track:7fa51de408ff12fd9e6a7679d1004e62484c19f088d22a284545e9ce0836e8fe` |
| 8 | `theorem` | [finite_euler_product_not_infinite_identity](../../../../../ComputerScience/AlgorithmsInComputerScience/EulerProductEdition1.lean/declarations/finite-euler-product-not-infinite-identity.md) | 56 | `result-track:69dc25443aa365b65b89a6d010dc274bb9c51fbc8382f09afc7b83d0912db203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b64763049e275ba1c66fe4c0c96a92973c408fbdddbc258ea10e20ce7b0ea46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
