# Verification target: Minimal Prime Localization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ae9893769208e82340e9928cf4a95e17b59eb4d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ae9893769208e82340e9928cf4a95e17b59eb4d`.

Source path: `GRWTSK/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.MinimalPrime.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.iUnion_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-iunion-minimalprimes.md) | 37 | `result-track:ba3869436a6a5d9eb26408cf7e8f5b2e7fd791bde9cc69a8e15a75fa81fd3472` |
| 2 | `theorem` | [Ideal.exists_mul_mem_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-exists-mul-mem-of-mem-minimalprimes.md) | 67 | `result-track:4d70b21650876ba19cb02a56edc7b7595b402af4c9154388c94d0f26c043b460` |
| 3 | `lemma` | [Ideal.disjoint_nonZeroDivisors_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-disjoint-nonzerodivisors-of-mem-minimalprimes.md) | 80 | `result-track:4b6d5895ef6dd1c1a17d5604f9c90d86352356a6a452e2eaad3a8f32eeaad990` |
| 4 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes.md) | 86 | `result-track:b36950ff441cbb3d5066e14a4dab90c772b68693139c1c3129f1ec70c002ae73` |
| 5 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes-of-injective.md) | 92 | `result-track:396cff13e2c3bf0ce66839bdcf11078791d4a592f0201b90f70a09edde561cf0` |
| 6 | `theorem` | [Ideal.exists_minimalPrimes_comap_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-exists-minimalprimes-comap-eq.md) | 99 | `result-track:7fe33eb89b2e0815331b9e62abde4c127b545b16b920257e4ec432209f30f0d0` |
| 7 | `theorem` | [Ideal.minimalPrimes_comap_subset](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-minimalprimes-comap-subset.md) | 108 | `result-track:688429479b476a8b8cc6ab4692751e90a515d8526dcfb7983b037dd093dcaf7b` |
| 8 | `theorem` | [Ideal.minimal_primes_comap_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-minimal-primes-comap-of-surjective.md) | 118 | `result-track:3f9966ee4106d5ac0af63c62ec0f326c16c6851082c374ce430d34b29451ec73` |
| 9 | `theorem` | [Ideal.comap_minimalPrimes_eq_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-comap-minimalprimes-eq-of-surjective.md) | 130 | `result-track:a738456f4e086e137215942bb81b73a8bf4e9369f353c581775d061ce97919bd` |
| 10 | `lemma` | [Ideal.minimalPrimes_map_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-minimalprimes-map-of-surjective.md) | 140 | `result-track:616dee634588b60612878432a1b388ca7a1a391f1ade2df3062e893db9449ae8` |
| 11 | `theorem` | [Ideal.minimalPrimes_eq_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/ideal-minimalprimes-eq-comap.md) | 149 | `result-track:dbc12b60095fd244e5492b2b7896809d912ea0ff1b6ba1cc6697a56e6b557e92` |
| 12 | `theorem` | [IsLocalization.minimalPrimes_map](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/islocalization-minimalprimes-map.md) | 160 | `result-track:16c6b4b4d367fc7db93bf7d90776b919f79c41e5dcf268fa086736233c814ab0` |
| 13 | `theorem` | [IsLocalization.minimalPrimes_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalization.lean/declarations/islocalization-minimalprimes-comap.md) | 186 | `result-track:d32dada2258064778c3fcfb625aaf6a4e9a8ad15215011671f7bb4b43495c0cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cec7200cef596bf4287a62abcfe911c66f44dfdf3741aa614bb100c978f1faeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean","GRWTSK/_verification/specifications/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
