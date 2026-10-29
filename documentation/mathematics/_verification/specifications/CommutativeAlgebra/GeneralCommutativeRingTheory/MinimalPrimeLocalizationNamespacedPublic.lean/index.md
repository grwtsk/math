# Verification target: Minimal Prime Localization Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e43118f69e85425959adf7fb0b539eb5f6498bad",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e43118f69e85425959adf7fb0b539eb5f6498bad`.

Source path: `GRWTSK/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Regular` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.iUnion_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-iunion-minimalprimes.md) | 50 | `result-track:12f7cb960bc9f2bafe9ae8afbeca95fb5d1f6136f396c28f777c09c51e2968d9` |
| 2 | `theorem` | [Ideal.exists_mul_mem_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-exists-mul-mem-of-mem-minimalprimes.md) | 79 | `result-track:73de266b0d736459df73a055e0fb6923b3b6f0ec06269e912e1a28b7b4d0a130` |
| 3 | `theorem` | [IsSMulRegular.notMem_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/issmulregular-notmem-of-mem-minimalprimes.md) | 91 | `result-track:f41dc3e9431a7516746d52059bfcb8fc0eb42de6d33ca5fbf21793625826bae2` |
| 4 | `lemma` | [Ideal.disjoint_nonZeroDivisors_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-disjoint-nonzerodivisors-of-mem-minimalprimes.md) | 100 | `result-track:b215a57eeb315569f636805c8e1636d76be2fec30ed6e15d49a23fdb693cbcb6` |
| 5 | `lemma` | [notMem_nonZeroDivisors_of_mem_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/notmem-nonzerodivisors-of-mem-mem-minimalprimes.md) | 107 | `result-track:e80cccc027b1840aa2d5de686b7112f15126a72cdaa02b1fc1e63f6e66a6f92c` |
| 6 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes.md) | 112 | `result-track:9029fcf01ecab3740a9beae6241d24a31085d94fd317b92bbb14d6828657f4fd` |
| 7 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes-of-injective.md) | 118 | `result-track:ff653e7b8aa5f6bf8cbae4e6d164e8197b72f60e1cd576a83fa2756f3d7e7e0e` |
| 8 | `theorem` | [Ideal.exists_minimalPrimes_comap_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-exists-minimalprimes-comap-eq.md) | 125 | `result-track:bc955d4b574f5d35d6e15dc61fa1fdf119dd48b02a6fc515882fafcf24fb0484` |
| 9 | `theorem` | [Ideal.minimalPrimes_comap_subset](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-minimalprimes-comap-subset.md) | 134 | `result-track:c06686b9d9ee97a1449394734cb63dd0069e02ac57d758610d0f3f0736ec26d8` |
| 10 | `theorem` | [Ideal.minimalPrimes_comap_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-minimalprimes-comap-of-surjective.md) | 144 | `result-track:c4a1677fc701d8aa4bc9e88f8dc8341d81f647503d6b391d41bd3d7352d00a0d` |
| 11 | `theorem` | [Ideal.comap_minimalPrimes_eq_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-comap-minimalprimes-eq-of-surjective.md) | 159 | `result-track:4a85cd5253684dc43491bedd40db431698ab0ada4084a40bd4d76b7478fae74d` |
| 12 | `lemma` | [Ideal.minimalPrimes_map_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-minimalprimes-map-of-surjective.md) | 169 | `result-track:57203dd66ff5404339068e48d4f7464fedf427d68eec0d813fd13f6e3b809547` |
| 13 | `theorem` | [Ideal.minimalPrimes_eq_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/ideal-minimalprimes-eq-comap.md) | 178 | `result-track:cf9c34de116989413ebb266fc6cb0ce05e1511a302a815917a1dfee5b93da5bb` |
| 14 | `theorem` | [IsLocalization.minimalPrimes_map](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/islocalization-minimalprimes-map.md) | 189 | `result-track:e1df013d75280ba224569f88b7973b345dc1e2543310f739d3cdfe6ef2c79225` |
| 15 | `theorem` | [IsLocalization.minimalPrimes_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/islocalization-minimalprimes-comap.md) | 214 | `result-track:af4be541ad13052795a27bf44f28df417c577fdeeb9d47d5bbbbad8519255bc7` |
| 16 | `theorem` | [IsLocalization.AtPrime.radical_map_of_mem_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeLocalizationNamespacedPublic.lean/declarations/islocalization-atprime-radical-map-of-mem-minimalprimes.md) | 220 | `result-track:70ccf8f2f4fcfdf2762429f1ffcc3719c24966b7f62c50a94306bab9a6e373c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74283f19c2a375e0782b68a267a7039e45ba4fc14229fedf3dfaa7b94f690115 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean","GRWTSK/_verification/specifications/Algebra/Localization/Variant8109f70194f46b41c0a066b8018879443e4b4c5de4bec11840ddc12676b1961e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
