# Verification target: Source Cutoff Variation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6a18318e73faa14ad4fe0f652bf6164ab501da2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6a18318e73faa14ad4fe0f652bf6164ab501da2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [longDivisorRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/longdivisorrow.md) | 35 | `declaration-track:7c8285835975395b5220f8cee45f146112225dabf0790cb8fae43512a5628853` |
| 2 | `def` | [cutoffVariation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/cutoffvariation.md) | 39 | `declaration-track:b55a4a085179ba040f1f845ee78ca979c8ec90d4857c17cb1f45e6c478500f5d` |
| 3 | `theorem` | [long_divisor_row_increment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/long-divisor-row-increment.md) | 43 | `result-track:b775c76d185eebaa710db0326e164889394567396d0fd70dd8997fef1e869780` |
| 4 | `theorem` | [cutoff_variation_eq_divisor_cost](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/cutoff-variation-eq-divisor-cost.md) | 61 | `result-track:50a762a3bb18a711afc62647a44c2edb0e9c16582fcfaa6b54ce55c70c5670cc` |
| 5 | `theorem` | [mu_six](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-six.md) | 70 | `result-track:ccf38c9a565405dde69b3df6d8f9cf25b845dc13671a7197634ab5a90b2004c0` |
| 6 | `theorem` | [mu_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-ten.md) | 76 | `result-track:c5b95250f6622ae7c62bcf692a28bf4a486002f02f07901eef95a7bb668bbd1e` |
| 7 | `theorem` | [mu_fifteen](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-fifteen.md) | 82 | `result-track:b505557a84e3c5f9ce427a4e5bfce38069bccaf5d6c28e0e83003f73f1c6e2b7` |
| 8 | `theorem` | [mu_thirty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-thirty.md) | 88 | `result-track:634cb0f0c1c6ecfbd678b5008ac79dabc4951faa711955e209dc3cb2545abff1` |
| 9 | `theorem` | [divisors_thirty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/divisors-thirty.md) | 94 | `result-track:c172f949557f28f6d3b3d834d8feb7dc4a9d163409c6d35f36b0f242e053d938` |
| 10 | `theorem` | [mu_thirty_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-thirty-five.md) | 98 | `result-track:aecfec3d071bb321198fe8c0811bffef52712c8471347384e70772c29cd16b56` |
| 11 | `theorem` | [mu_forty_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-forty-two.md) | 104 | `result-track:7eb59b4e29766eaf15703aae03963beb35f09cefd928d6f9f6b6c38dba240aa3` |
| 12 | `theorem` | [mu_seventy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-seventy.md) | 110 | `result-track:9a60ded7c3f720015cba37c2f557b5aedf5c4fecf079b187ff32da40a5780966` |
| 13 | `theorem` | [mu_one_hundred_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-one-hundred-five.md) | 116 | `result-track:6a5e52dafcc0bb960d5c77924e3cc0bf4e5e758f480dfd856d1c6ef01c56ebcf` |
| 14 | `theorem` | [mu_two_hundred_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mu-two-hundred-ten.md) | 122 | `result-track:4a09888a150c3ead8c5bbd2c652404455f2716936c35eadbb37231e7a128f619` |
| 15 | `theorem` | [divisors_two_hundred_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/divisors-two-hundred-ten.md) | 128 | `result-track:ca8ebf5d441c8dcd022d7026af563892ab503df2e37f01c5dfad87b893a575a1` |
| 16 | `theorem` | [long_divisor_row_thirty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/long-divisor-row-thirty.md) | 134 | `result-track:905eab1fd45a530e93edc1bed620340194d9e71720f17f7d4b03d5798795a923` |
| 17 | `theorem` | [row_thirty_envelope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/row-thirty-envelope.md) | 149 | `result-track:e950d13df5d61b24b360bd8b1b466d639b02a0504f60584e16d7442469b99333` |
| 18 | `theorem` | [row_thirty_attains_envelope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/row-thirty-attains-envelope.md) | 154 | `result-track:22d0d858c9f47a00860a1fa7048f0fa0473871a78a5188320cc659683f13fc51` |
| 19 | `theorem` | [row_thirty_variation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/row-thirty-variation.md) | 159 | `result-track:0ecad08a33491ef1b5909a82c563c9529e0582ca6f7bf076b5baadf331455a9a` |
| 20 | `theorem` | [row_thirty_variation_from_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/row-thirty-variation-from-two.md) | 167 | `result-track:0aef7ec770a29bf9902bf2697e7b0d90803477e75acee478d67658e55e882fa9` |
| 21 | `theorem` | [minimal_envelope_fails_mask_variation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/minimal-envelope-fails-mask-variation.md) | 175 | `result-track:2c2b2843b84cbe9576ef8abed3c9ef8dc567ca2ed45e07066a0186129768c798` |
| 22 | `theorem` | [mask_variation_forces_envelope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/mask-variation-forces-envelope.md) | 181 | `result-track:98f8c7b01111733914cc100112489e89565109e60654833d0ea0683f33926850` |
| 23 | `theorem` | [long_divisor_row_two_hundred_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/long-divisor-row-two-hundred-ten.md) | 189 | `result-track:867e6d996cd0bee482fa34fdbe709a3477354064c24f5d737e98b35cd7dcab95` |
| 24 | `theorem` | [row_two_hundred_ten_envelope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/row-two-hundred-ten-envelope.md) | 204 | `result-track:c8680fe9f72a8715f0f9525bec108f2ce66d072ae0fe1cc0d8df06af2bfc724d` |
| 25 | `theorem` | [row_two_hundred_ten_attains_envelope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/row-two-hundred-ten-attains-envelope.md) | 209 | `result-track:6ed12627408bd504190cc48331218d62de56f703183b6a129fa4faebb757e342` |
| 26 | `theorem` | [row_two_hundred_ten_variation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/row-two-hundred-ten-variation.md) | 213 | `result-track:330e157d86ad3daf4b81b22e563923a6dfd21fccaf4d6e5a1b2f4aada8c89917` |
| 27 | `theorem` | [supported_minimal_envelope_fails_mask_variation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/supported-minimal-envelope-fails-mask-variation.md) | 219 | `result-track:750bc45ef09d9d35edeb696fe65ad7d25d98a4bf6d36a7eb954e9bda7a838809` |
| 28 | `theorem` | [supported_mask_variation_forces_envelope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCutoffVariation.lean/declarations/supported-mask-variation-forces-envelope.md) | 224 | `result-track:3dc08e8911f48cc1b4bcc4dd3d30e5265da1b998af94835c7e7dbc161dea550e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b36495b50981aff3bc0dc932f9db3b25f66e8097a8e47df9870b9546ddd66341 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
