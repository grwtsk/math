# Verification target: Perfect Numbers Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9195841f01cfb8912daac7b1e6776eb1e744a7d4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant766689bfdb5c6ab69268777e58c67b8974275ff84ad9215a0a12c5cb7251d799.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PerfectNumbersPublic.lean/index.md) · [Full source](../../../../NumberTheory/PerfectNumbersPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9195841f01cfb8912daac7b1e6776eb1e744a7d4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant766689bfdb5c6ab69268777e58c67b8974275ff84ad9215a0a12c5cb7251d799.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant766689bfdb5c6ab69268777e58c67b8974275ff84ad9215a0a12c5cb7251d799.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sigma_two_pow_eq_mersenne_succ](../../../../NumberTheory/PerfectNumbersPublic.lean/declarations/sigma-two-pow-eq-mersenne-succ.md) | 40 | `result-track:d19dac480f8bc5f7fa034417c61c0f6d6c1edc696428453ee99d470057294a49` |
| 2 | `theorem` | [perfect_two_pow_mul_mersenne_of_prime](../../../../NumberTheory/PerfectNumbersPublic.lean/declarations/perfect-two-pow-mul-mersenne-of-prime.md) | 45 | `result-track:5448140506fb9932390ef9471d6f80a34e58ed54b056e29d03280c0898e0b798` |
| 3 | `theorem` | [ne_zero_of_prime_mersenne](../../../../NumberTheory/PerfectNumbersPublic.lean/declarations/ne-zero-of-prime-mersenne.md) | 54 | `result-track:a804fa28862af94ead05dc3acfc1c4251f7dee2a5110de04a22f4fbf02ed996d` |
| 4 | `theorem` | [even_two_pow_mul_mersenne_of_prime](../../../../NumberTheory/PerfectNumbersPublic.lean/declarations/even-two-pow-mul-mersenne-of-prime.md) | 58 | `result-track:74a2358d77fd8100ad28d9b696b0c52b33932c8aa17ee3260b259fb5fdc75fd6` |
| 5 | `theorem` | [eq_two_pow_mul_odd](../../../../NumberTheory/PerfectNumbersPublic.lean/declarations/eq-two-pow-mul-odd.md) | 61 | `result-track:caad448170c56471b516e655c5bad1236dfecdfbbe3748683a926c2cb063050f` |
| 6 | `theorem` | [eq_two_pow_mul_prime_mersenne_of_even_perfect](../../../../NumberTheory/PerfectNumbersPublic.lean/declarations/eq-two-pow-mul-prime-mersenne-of-even-perfect.md) | 75 | `result-track:4e150c29fa6617105d456730f498cf908c4faaa05bf66c47f68538464668cb40` |
| 7 | `theorem` | [even_and_perfect_iff](../../../../NumberTheory/PerfectNumbersPublic.lean/declarations/even-and-perfect-iff.md) | 115 | `result-track:4ecc0db699c365be222ac9d320b8fac453768c2e52c4bae33516da5965023092` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=212009265c8e6b2b92451fd60b7e58d226e3cd62cb8b0d050d8201ddf63e3bf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant766689bfdb5c6ab69268777e58c67b8974275ff84ad9215a0a12c5cb7251d799.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant766689bfdb5c6ab69268777e58c67b8974275ff84ad9215a0a12c5cb7251d799.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
