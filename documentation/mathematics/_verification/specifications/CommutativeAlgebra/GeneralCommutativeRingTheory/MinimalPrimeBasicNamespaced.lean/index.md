# Verification target: Minimal Prime Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "600f9c9264bc1399f2419260d8ef47408d853f19",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `600f9c9264bc1399f2419260d8ef47408d853f19`.

Source path: `GRWTSK/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.IsPrimary` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-minimalprimes.md) | 43 | `declaration-track:efec23c2c8044b62956e725f90491441574d51d305f98fc204f69264f1d0c1ff` |
| 2 | `def` | [minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/minimalprimes.md) | 49 | `declaration-track:fbaee453a739409add0d1fcf7c3fc81c3705ad46305438ba61357b46a87279c6` |
| 3 | `lemma` | [minimalPrimes_eq_minimals](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/minimalprimes-eq-minimals.md) | 52 | `result-track:cede1e13871ab17c89a5b14ae2cd7cd19dc8f5998c6ef982805306616da9f1fd` |
| 4 | `theorem` | [Ideal.minimalPrimes_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-minimalprimes-isprime.md) | 57 | `result-track:aaa7f12cb106b14e99306b596416fdd0c0a915c3ba09d0dbdb3c1e3e14c8ac61` |
| 5 | `theorem` | [Ideal.exists_minimalPrimes_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-exists-minimalprimes-le.md) | 60 | `result-track:763da691cc0096e97ef695eaf25b543ea7aad1f3094766673129ed4b5a3ceb39` |
| 6 | `theorem` | [Ideal.nonempty_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-nonempty-minimalprimes.md) | 78 | `result-track:baec22a92b8c02c01cdf412f2684c1e38b72e0787590739510ecf345ee132110` |
| 7 | `theorem` | [Ideal.eq_bot_of_minimalPrimes_eq_empty](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-eq-bot-of-minimalprimes-eq-empty.md) | 83 | `result-track:c7d35f363e73d20cbc3ec1344bc898c4be4a68ef99c260a1771b94c44c56adeb` |
| 8 | `theorem` | [Ideal.radical_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-radical-minimalprimes.md) | 89 | `result-track:5c003f36b2d99ffa0e551cfca1573935e732d4a72952c2d0a63e6e0afff290a9` |
| 9 | `theorem` | [Ideal.sInf_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-sinf-minimalprimes.md) | 101 | `result-track:10f40ef60d06e3f86766d027935846a3f83e6208f80d4f1c5233c690b2bbaa7a` |
| 10 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-minimalprimes-eq-subsingleton.md) | 119 | `result-track:99a5a093da6b3d1050a692c848b762922742c405881de201fff23d4ce357e864` |
| 11 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton_self](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-minimalprimes-eq-subsingleton-self.md) | 128 | `result-track:371cbacbe0aab31c99ea21dac9b955b88ff9397505496545f9b2a1c99821a2ff` |
| 12 | `theorem` | [Ideal.minimalPrimes_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-minimalprimes-top.md) | 141 | `result-track:857e1712c1d53ee13b44ea7b08141ced1df671a10d0dc61dc904d92e19c650bc` |
| 13 | `theorem` | [Ideal.minimalPrimes_eq_empty_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/MinimalPrimeBasicNamespaced.lean/declarations/ideal-minimalprimes-eq-empty-iff.md) | 147 | `result-track:067aafb51becb8d98db9c883facdba2d1a3a292e98763608427b9931cd5c2fc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4350f7eb3e83d12c8a0b6d9b4cac548ba433e283fbf88d80c91398c420a549be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
