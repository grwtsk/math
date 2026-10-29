# Verification target: Maximal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fca120ed82b45c18738ee0934a7f47b1f7ec85d1",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fca120ed82b45c18738ee0934a7f47b1f7ec85d1`.

Source path: `GRWTSK/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMaximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal.md) | 47 | `declaration-track:5e2741b03ac828442f140aee23fee63498152e5349a48fbf0fa4b2db0ef57e6f` |
| 2 | `theorem` | [isMaximal_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-def.md) | 52 | `result-track:e82b432dadf57ba32e32a9255494d1c1311c162ff74e410cc364c733ac9acac2` |
| 3 | `theorem` | [IsMaximal.ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-ne-top.md) | 55 | `result-track:d4e8b7138ee90050a5fbd3819dd87f914914f07828898aed96be4d6e81d813fd` |
| 4 | `theorem` | [IsMaximal.lt_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-lt-top.md) | 58 | `result-track:531434aa9fc38038cabb6000f46e8bfbebf4dbe5ee00c7e81922c6feabb9bfbf` |
| 5 | `theorem` | [isMaximal_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-iff.md) | 61 | `result-track:9966022c5f288f705d3cffbd082112a6c2150e056d549fa0e882b2e54275be58` |
| 6 | `theorem` | [IsMaximal.eq_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-eq-of-le.md) | 65 | `result-track:ad3e400c49fefeec04d7e8e031c1a74d492921db8f80ce290c49f46bb1545a01` |
| 7 | `theorem` | [IsMaximal.eq_iff_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-eq-iff-le.md) | 68 | `result-track:91462d5d622df11b4f0fb194085b7fe919f457e04e776cbf4005016ee892293a` |
| 8 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:2c23757e9d7286e9d5011efd3b2f09143fa45f5f5dda2aec52fffa150a3f78a7` |
| 9 | `theorem` | [IsMaximal.coprime_of_ne](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-coprime-of-ne.md) | 73 | `result-track:af46e074c276a8576661703ce7a2a869d33143b91403b13853b3a56a76555ba3` |
| 10 | `theorem` | [exists_le_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/exists-le-maximal.md) | 80 | `result-track:51a3fb264e5810ec1ecca7efbe3da479c58becaa407605f141132b8ce3db61bb` |
| 11 | `theorem` | [exists_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/exists-maximal.md) | 86 | `result-track:4f25a6dcdf399e5bf9008330ea617184ef82bcbd13442a2f7ef7532f0a351e38` |
| 12 | `theorem` | [ne_top_iff_exists_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ne-top-iff-exists-maximal.md) | 90 | `result-track:aeb4121a5b972b02c28402a289ba19f5366846c81e4c61b2154d5e2bf638ecc5` |
| 13 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/instance-source-edition-3.md) | 97 | `declaration-track:c39b9d3e27605b3edc048af06930af9f42a7a09ac83dabe2c0d7c515d28c4b55` |
| 14 | `theorem` | [maximal_of_no_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/maximal-of-no-maximal.md) | 103 | `result-track:a55e8146012a19db88201454bad3d4594cb73efc5649cc3c185c0d083da96180` |
| 15 | `theorem` | [IsMaximal.exists_inv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-exists-inv.md) | 109 | `result-track:60586dc4c8d4ab969930ca0640a5cd758139766ca6567a49022c3efd5418e909` |
| 16 | `theorem` | [sInf_isPrime_of_isChain](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/sinf-isprime-of-ischain.md) | 119 | `result-track:ad545e82f21dc72deadc983f66f285ebe49dfa9bc488d2136f0a1dd07e302ca8` |
| 17 | `theorem` | [span_singleton_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/span-singleton-prime.md) | 148 | `result-track:4ae0d2374aacf678fb9fe2dc73f2fdf90814a8e34b60265068b8d6f131a1589a` |
| 18 | `theorem` | [isPrime_span_singleton_of_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/isprime-span-singleton-of-prime.md) | 151 | `result-track:f5363d52ef34b4226b151d8db884c458fd0ce9e9d312042c52aa8dd50e0a50b1` |
| 19 | `theorem` | [IsMaximal.isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/ismaximal-isprime.md) | 154 | `result-track:339d65cc2aab93fd4ea90ce8763f9436da535c7a93650216c9993052011a7aff` |
| 20 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/instance.md) | 169 | `declaration-track:16b63454e8edafe27b8289ce3d5ad0036645fb49161140f177ac8d10973a084f` |
| 21 | `theorem` | [exists_disjoint_powers_of_span_eq_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/exists-disjoint-powers-of-span-eq-top.md) | 172 | `result-track:836a3a238e37043307f603e668fd681c2379fa2dc8f82b3a83becc87207ad7fb` |
| 22 | `theorem` | [span_singleton_lt_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/span-singleton-lt-span-singleton.md) | 181 | `result-track:1a2462c306d84ac1f54d2e0b7b53adfc95befde5aec4ecfad5a3815cb50e91e5` |
| 23 | `lemma` | [isPrime_of_maximally_disjoint](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/isprime-of-maximally-disjoint.md) | 186 | `result-track:5394c00508b1c42e11b9a2684ccc1da2c5e431d280edee11010c6d40112daccf` |
| 24 | `theorem` | [exists_le_prime_disjoint](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/exists-le-prime-disjoint.md) | 210 | `result-track:7132b1d7259b066795d87e56c2bd341276a08e4b86636c988590309d962d38b3` |
| 25 | `theorem` | [exists_le_prime_notMem_of_isIdempotentElem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/exists-le-prime-notmem-of-isidempotentelem.md) | 221 | `result-track:60abc952b2e2b22b484ed146fc049bc547111a98a5fbb1c4561b7218de88f92d` |
| 26 | `theorem` | [irreducible_of_isMaximal_of_eq_span_singleton_of_not_isIdempotentElem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/irreducible-of-ismaximal-of-eq-span-singleton-of-not-isidempotentelem.md) | 232 | `result-track:97fae1b2cfa3df8c31215b9cdf7059bda92b9e724fb5d8bc23693c3be1265f21` |
| 27 | `theorem` | [irreducible_of_isMaximal_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/irreducible-of-ismaximal-span-singleton.md) | 253 | `result-track:5ad4ae9ff307216e9ccbcbb8540f8c9dc03d770ff1a0803bcf6c9f1a63de62bd` |
| 28 | `theorem` | [isPrime_iff_of_isPrincipalIdealRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/isprime-iff-of-isprincipalidealring.md) | 262 | `result-track:b93c2f9827fa451502c4f3f7e47d2096837678f981abbd1bf45ac47375abcde4` |
| 29 | `theorem` | [isPrime_iff_of_isPrincipalIdealRing_of_noZeroDivisors](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/isprime-iff-of-isprincipalidealring-of-nozerodivisors.md) | 271 | `result-track:e8968243fd84d578146de7636d15e9b29d96981376692fd3f6fcc4ef8baaacfd` |
| 30 | `theorem` | [bot_isMaximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MaximalPublic.lean/declarations/bot-ismaximal.md) | 289 | `result-track:eea955615f7e3cd1c9ccf608794de3ca2bb4bc6d4f0244788ab8edb29c0c1a45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae0cbcb9042dd8fa7eb6219b554de8bacae99df8ee68b4ddc07e7e30f36ea4de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean","GRWTSK/_verification/specifications/Algebra/Maximal/Variant6ab9075d5c94fba10d1e243c0d36665294427a21c16d7eb946dc97c3fb8ba678.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
