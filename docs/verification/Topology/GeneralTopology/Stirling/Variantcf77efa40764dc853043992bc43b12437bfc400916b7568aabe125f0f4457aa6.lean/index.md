# Verification target: GRWTSK.Topology.GeneralTopology.Stirling.Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9f23b701269fb0b377e0695f952e7e55f7aac81",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9f23b701269fb0b377e0695f952e7e55f7aac81`.

Source path: `GRWTSK/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Pi.Wallis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stirlingSeq](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/stirlingseq--3425039d6e14c0f20c9f82fa.md) | 49 | `declaration-track:3425039d6e14c0f20c9f82fa474e142e50f661f8e56dcc64081328d27a030457` |
| 2 | `theorem` | [stirlingSeq_zero](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/stirlingseq-zero--aa2cf1b19f6b8b9b33607633.md) | 53 | `result-track:aa2cf1b19f6b8b9b336076337df8205ef954d139cd1b480d6da82238fd1ab16e` |
| 3 | `theorem` | [stirlingSeq_one](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/stirlingseq-one--3971effde90fb44af8e6cfff.md) | 57 | `result-track:3971effde90fb44af8e6cfff6df30fe5d28f2fd5595e61101847a2c3c7d306f8` |
| 4 | `theorem` | [log_stirlingSeq_formula](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/log-stirlingseq-formula--1a95d8321a1d01ebe9e8f7b9.md) | 60 | `result-track:1a95d8321a1d01ebe9e8f7b9c5a2a8cde3a6ffad9747a5b4263d7c8316ae1258` |
| 5 | `theorem` | [log_stirlingSeq_diff_hasSum](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/log-stirlingseq-diff-hassum--4ff74d0f42afb9fc4aaf34d5.md) | 70 | `result-track:4ff74d0f42afb9fc4aaf34d513306347f02fab2fff6ab0a1ca777fe2d82c661e` |
| 6 | `theorem` | [log_stirlingSeq'_antitone](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/log-stirlingseq-antitone--c7c6eec36cb81b62c19365ed.md) | 89 | `result-track:c7c6eec36cb81b62c19365ed71656d5517258e61bbf845ed4689ce85a56bf2da` |
| 7 | `theorem` | [log_stirlingSeq_diff_le_geo_sum](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/log-stirlingseq-diff-le-geo-sum--3e408eed97fcf47d3d444698.md) | 95 | `result-track:3e408eed97fcf47d3d444698104abb99f1fb3cccca4dbef0baecef6f3e1e104d` |
| 8 | `theorem` | [log_stirlingSeq_sub_log_stirlingSeq_succ](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/log-stirlingseq-sub-log-stirlingseq-succ--0530a10798a2dad5c7ef154c.md) | 115 | `result-track:0530a10798a2dad5c7ef154c9164f936266710842614a02d31fe362224c76107` |
| 9 | `theorem` | [log_stirlingSeq_bounded_aux](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/log-stirlingseq-bounded-aux--cf6e6b1a87c76c03d55fd7bf.md) | 133 | `result-track:cf6e6b1a87c76c03d55fd7bf2f75eb7dd0eeaeb8f47d4f790efa33e1a1b83d59` |
| 10 | `theorem` | [log_stirlingSeq_bounded_by_constant](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/log-stirlingseq-bounded-by-constant--180cccfc24c52d7b73827aa6.md) | 154 | `result-track:180cccfc24c52d7b73827aa60b36e374631c99010a7697c80974dfd017d1fa25` |
| 11 | `theorem` | [stirlingSeq'_pos](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/stirlingseq-pos--688cd31a3cde80c501301bd9.md) | 159 | `result-track:688cd31a3cde80c501301bd92ed340c9e0028930c27397b0bee4fc54dee09293` |
| 12 | `theorem` | [stirlingSeq'_bounded_by_pos_constant](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/stirlingseq-bounded-by-pos-constant--0c8f035350000f305ac1eb61.md) | 163 | `result-track:0c8f035350000f305ac1eb61188d0b6f111f0a9119833a86b8aa17bd1475bab4` |
| 13 | `theorem` | [stirlingSeq'_antitone](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/stirlingseq-antitone--177d1a59c1b484975e2777ed.md) | 170 | `result-track:177d1a59c1b484975e2777edefec28beb93a303546193b13973cc7b9ff0de8ab` |
| 14 | `theorem` | [stirlingSeq_has_pos_limit_a](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/stirlingseq-has-pos-limit-a--67f8047622d7e80e31d0d4aa.md) | 174 | `result-track:67f8047622d7e80e31d0d4aa2ce11b7150f37c22ad303ef922fa7b8b8449a1ac` |
| 15 | `theorem` | [tendsto_self_div_two_mul_self_add_one](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/tendsto-self-div-two-mul-self-add-one--1e63632f6d7732e68acfd5a7.md) | 188 | `result-track:1e63632f6d7732e68acfd5a7becbf1fbd4d1c1c4f10101645a02d6c843e0c12b` |
| 16 | `theorem` | [stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/stirlingseq-pow-four-div-stirlingseq-pow-two-eq--5640e63d14a23b0577075328.md) | 202 | `result-track:5640e63d14a23b057707532882a4ea8c74180927342088c134a4853d25b7ccec` |
| 17 | `theorem` | [second_wallis_limit](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/second-wallis-limit--4e281ec068d5f0e06df93225.md) | 215 | `result-track:4e281ec068d5f0e06df932252fb1090290c7a196c0200edc2e9dab4e3371842a` |
| 18 | `theorem` | [tendsto_stirlingSeq_sqrt_pi](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/tendsto-stirlingseq-sqrt-pi--b058b4240b29f632bf97bc61.md) | 227 | `result-track:b058b4240b29f632bf97bc61e41451a47832bd39cc065a0a6adc98404e02d206` |
| 19 | `lemma` | [factorial_isEquivalent_stirling](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/declarations/factorial-isequivalent-stirling--c3e3c9815d5ae608e6bf10e5.md) | 234 | `result-track:c3e3c9815d5ae608e6bf10e5dbfa887f7cf5fff55c4848cd0f12e59b77fc1390` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
