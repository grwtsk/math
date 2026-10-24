# Verification target: GRWTSK.Topology.GeneralTopology.Stirling.Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5060c493e10d7ab3cea2c678cd488566c9aef3f9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5060c493e10d7ab3cea2c678cd488566c9aef3f9`.

Source path: `GRWTSK/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Pi.Wallis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stirlingSeq](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/stirlingseq--463271f5faacf8c7e3331b20.md) | 57 | `declaration-track:463271f5faacf8c7e3331b20580cd1991ab941f9df45ae6b029606365c0828e9` |
| 2 | `theorem` | [stirlingSeq_zero](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/stirlingseq-zero--c314405d2adea9a1f80bc0d1.md) | 61 | `result-track:c314405d2adea9a1f80bc0d156618711880ee4979c6b5f8dd78bcacbcd83b38e` |
| 3 | `theorem` | [stirlingSeq_one](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/stirlingseq-one--5cf6e41250e0c0783bca79c9.md) | 65 | `result-track:5cf6e41250e0c0783bca79c92ef248ced81f9bba8fe2eabfef4c662bec59e810` |
| 4 | `theorem` | [log_stirlingSeq_formula](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/log-stirlingseq-formula--c0717a8b32f5967dc0d3e9fd.md) | 68 | `result-track:c0717a8b32f5967dc0d3e9fdc24e64126ff0e15c3d720c86a574f3b52fd7bece` |
| 5 | `theorem` | [log_stirlingSeq_diff_hasSum](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/log-stirlingseq-diff-hassum--e13e9a5b3fc7055d55fd3b5d.md) | 78 | `result-track:e13e9a5b3fc7055d55fd3b5d463288cabd0ef1310bfc3fa0b9733a145b853551` |
| 6 | `theorem` | [log_stirlingSeq'_antitone](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/log-stirlingseq-antitone--bcb0fab25e193d0f24c34f6b.md) | 97 | `result-track:bcb0fab25e193d0f24c34f6b43d3485207b6f2cf7941e84c42e316025d47f1c0` |
| 7 | `theorem` | [log_stirlingSeq_diff_le_geo_sum](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/log-stirlingseq-diff-le-geo-sum--e1de54fd586e7f7887225230.md) | 103 | `result-track:e1de54fd586e7f7887225230853bca074722302b43f77c4c011b9d3fbf4b43ef` |
| 8 | `theorem` | [log_stirlingSeq_sub_log_stirlingSeq_succ](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/log-stirlingseq-sub-log-stirlingseq-succ--645d2e3370b6997a96084293.md) | 123 | `result-track:645d2e3370b6997a960842936778469258b0dadffedc0e533396dd4a0e1995b6` |
| 9 | `theorem` | [log_stirlingSeq_bounded_aux](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/log-stirlingseq-bounded-aux--9c9598f4392e8aa5b1504950.md) | 141 | `result-track:9c9598f4392e8aa5b15049502a764f6f4428b82859c5ea951489471b7b765f64` |
| 10 | `theorem` | [log_stirlingSeq_bounded_by_constant](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/log-stirlingseq-bounded-by-constant--11e40c7da334fe1836efeb5f.md) | 162 | `result-track:11e40c7da334fe1836efeb5f36d588ba277b4d4aa0850c1c446d29fb5e3471f0` |
| 11 | `theorem` | [stirlingSeq'_pos](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/stirlingseq-pos--d93af6de10cbd47733ab105a.md) | 167 | `result-track:d93af6de10cbd47733ab105af54cba52516cad2a837e33a30dc5da2732a371ca` |
| 12 | `theorem` | [stirlingSeq'_bounded_by_pos_constant](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/stirlingseq-bounded-by-pos-constant--98682533e03f161026f150be.md) | 171 | `result-track:98682533e03f161026f150bef543827c7f44d15fbc135c49136d556cfc212a33` |
| 13 | `theorem` | [stirlingSeq'_antitone](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/stirlingseq-antitone--0f94ab06d61ecd1ff4874920.md) | 178 | `result-track:0f94ab06d61ecd1ff4874920e39d90f7a5a9a347da89803cc65b0a5ad85e23e1` |
| 14 | `theorem` | [stirlingSeq_has_pos_limit_a](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/stirlingseq-has-pos-limit-a--c7cc9b3f14c18f58e9aff057.md) | 182 | `result-track:c7cc9b3f14c18f58e9aff0576b99319e46d4fa8b294c6e93b26aa593ab86787c` |
| 15 | `theorem` | [tendsto_self_div_two_mul_self_add_one](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/tendsto-self-div-two-mul-self-add-one--142080b48e350c57d0bd38e0.md) | 196 | `result-track:142080b48e350c57d0bd38e0f0c351c316fa54cdacbb60f1fc0774b338ce1c9f` |
| 16 | `theorem` | [stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/stirlingseq-pow-four-div-stirlingseq-pow-two-eq--36f7526a202aacbaeb74937e.md) | 210 | `result-track:36f7526a202aacbaeb74937e9dd7021231987317e6e1167c56c05dc79985da59` |
| 17 | `theorem` | [second_wallis_limit](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/second-wallis-limit--759a83e6c5ca2a264b7c2248.md) | 223 | `result-track:759a83e6c5ca2a264b7c2248890b558721577ad37b417529f0dbd371a57fd0a7` |
| 18 | `theorem` | [tendsto_stirlingSeq_sqrt_pi](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/tendsto-stirlingseq-sqrt-pi--de571aedb9ca4b01ff708142.md) | 235 | `result-track:de571aedb9ca4b01ff708142de7b04d0a80e24bde3635a3904d6458387091edd` |
| 19 | `lemma` | [factorial_isEquivalent_stirling](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/declarations/factorial-isequivalent-stirling--e96fd8a4db22aacbe7a973e9.md) | 242 | `result-track:e96fd8a4db22aacbe7a973e9cc190044cc1a147a34167481577c6a847bc634df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
