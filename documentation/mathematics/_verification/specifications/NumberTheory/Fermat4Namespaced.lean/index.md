# Verification target: Fermat4 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ee92ef1ec8c5716d7667065593062873a64a973",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/Fermat4Namespaced.lean/index.md) · [Full source](../../../../NumberTheory/Fermat4Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ee92ef1ec8c5716d7667065593062873a64a973`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.PythagoreanTriples` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Fermat42](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/fermat42.md) | 33 | `declaration-track:a56850bbff3abe3145c731c7a57467b12dfa7c815794a9e69894fe778236b1fb` |
| 2 | `theorem` | [comm](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/comm.md) | 39 | `result-track:f9ac24519d1fb29036069bb9ec4c18de78a1d231e4df82b384abceb31976f62a` |
| 3 | `theorem` | [mul](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/mul.md) | 45 | `result-track:73ee2174b7f0dcf5f325bb442071133faf76523e8b1fb34e8bbb55c978f72f7d` |
| 4 | `theorem` | [ne_zero](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/ne-zero.md) | 65 | `result-track:3d14dd0e2f2b70a226217b42702cc98a2cc7b90409343ce6a268ae51cc044bfb` |
| 5 | `def` | [Minimal](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/minimal.md) | 74 | `declaration-track:138cba348ae510c2d7cb023ff375a7baf0b617247bd39696089e861f318a00f8` |
| 6 | `theorem` | [exists_minimal](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/exists-minimal.md) | 79 | `result-track:1d3ac319794ed165f6192211a0cd46ffe00b8cbac048c9e2c2a30e391c76b250` |
| 7 | `theorem` | [coprime_of_minimal](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/coprime-of-minimal.md) | 96 | `result-track:1218bc219ceca6e000951f2af0dc82df568fbccc8ac061af74c0dabaf242fd24` |
| 8 | `theorem` | [minimal_comm](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/minimal-comm.md) | 116 | `result-track:26a14fa3a55247244b3e57f4143d26c7cdc07f97bfc947c6e4507590b8df9f84` |
| 9 | `theorem` | [neg_of_minimal](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/neg-of-minimal.md) | 121 | `result-track:bc47e3370e1d66134d222151a12b2147f0a314dd0ef666beceba8783c98be6ee` |
| 10 | `theorem` | [exists_odd_minimal](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/exists-odd-minimal.md) | 131 | `result-track:997e1805e2b671bde5aa5050564c08a38ec72daeb2e12cd67d688c1af93314b5` |
| 11 | `theorem` | [exists_pos_odd_minimal](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/exists-pos-odd-minimal.md) | 148 | `result-track:ea8e764c057ef0fb081019260b1937f89306c1ac384e7c2ea33f0a703983204d` |
| 12 | `theorem` | [Int.coprime_of_sq_sum](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/int-coprime-of-sq-sum.md) | 161 | `result-track:19e4436c3f7fabe6a52c2d25fa9703d8f3d7469be6e560f31acf7ed0e2cf5d7e` |
| 13 | `theorem` | [Int.coprime_of_sq_sum'](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/int-coprime-of-sq-sum-source-edition-2.md) | 166 | `result-track:99836957c2f0ed5800ce50cdee2a5c438b51af33a8529287ba8c12eb51f4bff9` |
| 14 | `theorem` | [not_minimal](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/not-minimal.md) | 176 | `result-track:d2d1019ee8470aab734d97a61ea71d0219805971d842b1c5cfc94bad7b5958d4` |
| 15 | `theorem` | [not_fermat_42](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/not-fermat-42.md) | 308 | `result-track:cc8cfac2444aeca1ab1a7770046bed8a106d0e9d899cd2de69377b2242f2c139` |
| 16 | `theorem` | [not_fermat_4](../../../../NumberTheory/Fermat4Namespaced.lean/declarations/not-fermat-4.md) | 315 | `result-track:7650d694a21cec12bb2b94c7568af5d88151bf09c05e05a54e4bec063f21171a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6566d7cd69b7655e66d4037a191a6ea2bf76bce5bc40b83ff5dbedc321fb0c17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean","GRWTSK/_verification/specifications/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
