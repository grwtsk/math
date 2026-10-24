# Verification target: GRWTSK.Topology.GeneralTopology.Stirling.Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afda0468b72d09b19e29b15a07a9dde801f34027",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afda0468b72d09b19e29b15a07a9dde801f34027`.

Source path: `GRWTSK/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Pi.Wallis` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/macro-rules--6478b42072999c3a7adeaf31.md) | 39 | `declaration-track:6478b42072999c3a7adeaf31612e283ebf06f6726f35c0cda733c8bde910e0c1` |
| 2 | `def` | [stirlingSeq](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/stirlingseq--fa17544f81cc7a42d8c1f488.md) | 52 | `declaration-track:fa17544f81cc7a42d8c1f488d4959b8e4303d1f27c44e6a0c9c3e5f78db8b30c` |
| 3 | `theorem` | [stirlingSeq_zero](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/stirlingseq-zero--085d81e565ccd5a8ddd4bcc4.md) | 57 | `result-track:085d81e565ccd5a8ddd4bcc435d9b842290615e7ff1cda231f4c155a8a1b0cab` |
| 4 | `theorem` | [stirlingSeq_one](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/stirlingseq-one--1c8d1edb94a86018c9f1b339.md) | 63 | `result-track:1c8d1edb94a86018c9f1b33957023c2cdca6c4f6f82061f23e5aebb10f09dee0` |
| 5 | `theorem` | [log_stirlingSeq_formula](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/log-stirlingseq-formula--a936cf458e2ae9ad5ed22a10.md) | 70 | `result-track:a936cf458e2ae9ad5ed22a10dbbbf90f94daa63ed370989a562dce31c958961c` |
| 6 | `theorem` | [log_stirlingSeq_diff_hasSum](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/log-stirlingseq-diff-hassum--f017e0c88a31c5f59c7cc2fd.md) | 78 | `result-track:f017e0c88a31c5f59c7cc2fd149eb055e799dc89a091ea577b2962955fddff67` |
| 7 | `theorem` | [log_stirlingSeq'_antitone](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/log-stirlingseq-antitone--95aa9322c677da5e82958f39.md) | 101 | `result-track:95aa9322c677da5e82958f39a68bb01011ba2c94bcb6669b9fb42e4e8e7e633d` |
| 8 | `theorem` | [log_stirlingSeq_diff_le_geo_sum](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/log-stirlingseq-diff-le-geo-sum--0f3dcffde38b80ec61119c70.md) | 108 | `result-track:0f3dcffde38b80ec61119c705097d94857bda29ba8cdcba963fcb675e7e41821` |
| 9 | `theorem` | [log_stirlingSeq_sub_log_stirlingSeq_succ](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/log-stirlingseq-sub-log-stirlingseq-succ--a1ff299a689f4d7b119232e6.md) | 129 | `result-track:a1ff299a689f4d7b119232e682398856d3d1f29af7f79c5fd08439a3998122d7` |
| 10 | `theorem` | [log_stirlingSeq_bounded_aux](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/log-stirlingseq-bounded-aux--8d94d0f304ad0fa727b2e42d.md) | 148 | `result-track:8d94d0f304ad0fa727b2e42d41c0a298f8b1e80911e0a4609bca74456b13dd28` |
| 11 | `theorem` | [log_stirlingSeq_bounded_by_constant](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/log-stirlingseq-bounded-by-constant--535060fd8e651805eddc97b4.md) | 172 | `result-track:535060fd8e651805eddc97b407e99204a3f59ac10af3fe98fc502d941b9c217e` |
| 12 | `theorem` | [stirlingSeq'_pos](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/stirlingseq-pos--f8310126971022b4471635a0.md) | 178 | `result-track:f8310126971022b4471635a0fb8f0cf7f4c8d94326a32c2e9be56f15704873dc` |
| 13 | `theorem` | [stirlingSeq'_bounded_by_pos_constant](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/stirlingseq-bounded-by-pos-constant--ecff020cfb978fc3a53b9bb7.md) | 183 | `result-track:ecff020cfb978fc3a53b9bb7820bc74e4c3fe665b353c47b9a9a0cdb2dce27c2` |
| 14 | `theorem` | [stirlingSeq'_antitone](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/stirlingseq-antitone--61d366b87907932b795e084c.md) | 191 | `result-track:61d366b87907932b795e084c72e104454d00c11772397f624209424696e55b6e` |
| 15 | `theorem` | [stirlingSeq_has_pos_limit_a](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/stirlingseq-has-pos-limit-a--c57fd8d4c08bf6dda3ef5566.md) | 196 | `result-track:c57fd8d4c08bf6dda3ef5566c0056ea24b93b5e6a05e95c3e6edba9cdf1548a0` |
| 16 | `theorem` | [tendsto_self_div_two_mul_self_add_one](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/tendsto-self-div-two-mul-self-add-one--559b990380826811b8d858fc.md) | 211 | `result-track:559b990380826811b8d858fcaad0aaf00c8a8293ac7b0fee019338c3c34c210f` |
| 17 | `theorem` | [stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/stirlingseq-pow-four-div-stirlingseq-pow-two-eq--34ee616885a28a59bde06306.md) | 226 | `result-track:34ee616885a28a59bde0630687da8e1a0002545f68feeb4fa08e7f7e5fa88b33` |
| 18 | `theorem` | [second_wallis_limit](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/second-wallis-limit--c8f849f51c61245231e7f4f5.md) | 239 | `result-track:c8f849f51c61245231e7f4f583f83e934aa7653fb316823baef1e661517be1a3` |
| 19 | `theorem` | [tendsto_stirlingSeq_sqrt_pi](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/declarations/tendsto-stirlingseq-sqrt-pi--172ea0550bde45ab962c819b.md) | 252 | `result-track:172ea0550bde45ab962c819b93ed74209bd7acf3b53e878a3b32a4dee13901ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
