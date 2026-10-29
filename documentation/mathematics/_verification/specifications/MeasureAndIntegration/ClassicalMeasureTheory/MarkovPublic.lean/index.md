# Verification target: Markov Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fda7757f930eca525d6885e4890d4c57ac576a1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant41d852f6c850f8b2a6e726065a970d5aa840dbd4db0ec8b8a5a42faf460edfa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fda7757f930eca525d6885e4890d4c57ac576a1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant41d852f6c850f8b2a6e726065a970d5aa840dbd4db0ec8b8a5a42faf460edfa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Markov/Variant41d852f6c850f8b2a6e726065a970d5aa840dbd4db0ec8b8a5a42faf460edfa7.lean.json)

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
| 1 | `theorem` | [lintegral_add_mul_meas_add_le_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/lintegral-add-mul-meas-add-le-le-lintegral.md) | 34 | `result-track:9c17be94d75b2ff0f8861aa2d81d598fb1dc2f42ccce097b5e8c7acd28a50859` |
| 2 | `theorem` | [mul_meas_ge_le_lintegral₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/mul-meas-ge-le-lintegral.md) | 52 | `result-track:1d7dc6218396bfcc0ff8f8cd1f538357a50b05ef03353c1be0b004c053fa5ff9` |
| 3 | `theorem` | [mul_meas_ge_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/mul-meas-ge-le-lintegral-source-edition-2.md) | 59 | `result-track:fdd008622d4fad94c4979aba3cb75572ddb4d2be29e269edc108320b08b0799f` |
| 4 | `lemma` | [meas_le_lintegral₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/meas-le-lintegral.md) | 63 | `result-track:f8a1a673d4d04f9a25bf429ed91232af672ce0324520bc3dedcdc16f36b41850` |
| 5 | `lemma` | [lintegral_le_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/lintegral-le-meas.md) | 69 | `result-track:1dbe3180a77acd043af89eb233a7593ab40a9e1e7410ddec314dde25fbf841b0` |
| 6 | `lemma` | [setLIntegral_le_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/setlintegral-le-meas.md) | 76 | `result-track:6b5bb1bd68f65c77b91f1b3e8ef5965160513d42c39a1150620557fc4e926196` |
| 7 | `theorem` | [lintegral_eq_top_of_measure_eq_top_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/lintegral-eq-top-of-measure-eq-top-ne-zero.md) | 83 | `result-track:e571911d7a29ed90e618795eba6c34c38a9331df21b7f62e3685406eb82ad1d3` |
| 8 | `theorem` | [setLIntegral_eq_top_of_measure_eq_top_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/setlintegral-eq-top-of-measure-eq-top-ne-zero.md) | 90 | `result-track:bf5cd01e05d2a36d49839c978f8652d77db80910558b9ff976e82ac00f98e160` |
| 9 | `theorem` | [measure_eq_top_of_lintegral_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/measure-eq-top-of-lintegral-ne-top.md) | 96 | `result-track:5f6eb7ab815393786edb4f80ae896f8da9f11bbf39e70e673ce34feda9a59001` |
| 10 | `theorem` | [measure_eq_top_of_setLIntegral_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/measure-eq-top-of-setlintegral-ne-top.md) | 100 | `result-track:ac34cd4fdaec78433550778df531f70ad0e4a249a2b291d16b4445a616dd0522` |
| 11 | `theorem` | [meas_ge_le_lintegral_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/meas-ge-le-lintegral-div.md) | 106 | `result-track:8856f3ffe4a04fea7c654e996d2d2dbae79c186c494f3bb1a929b08ebe6e6814` |
| 12 | `theorem` | [ae_eq_of_ae_le_of_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/ae-eq-of-ae-le-of-lintegral-le.md) | 112 | `result-track:241d49e0102ae25bfc6aeacf1df2889cad8548d063eecb8ed4b2c2595bdb5394` |
| 13 | `theorem` | [lintegral_eq_iff_ae_eq_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/lintegral-eq-iff-ae-eq-of-ae-le.md) | 127 | `result-track:1da39410a9744cb5ccb6177a28f62f819fcbeb75959b31a3aa88a1f669a73ee7` |
| 14 | `theorem` | [lintegral_strict_mono_of_ae_le_of_frequently_ae_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/lintegral-strict-mono-of-ae-le-of-frequently-ae-lt.md) | 131 | `result-track:f989b92cdb4abed5a7aef9921abc43892f344c5fab68aa7e4dc26be58acfa768` |
| 15 | `theorem` | [lintegral_strict_mono_of_ae_le_of_ae_lt_on](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/lintegral-strict-mono-of-ae-le-of-ae-lt-on.md) | 137 | `result-track:24f97a3c68cdfe4abc111e5f965cdb63f5ccd28219aefe6a3cba8689fa8b4adf` |
| 16 | `theorem` | [lintegral_strict_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/lintegral-strict-mono.md) | 143 | `result-track:f709e586162f01a73fe2a6344c52e081c7c8c4411aace701f0c79fa6a4e76630` |
| 17 | `theorem` | [setLIntegral_strict_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/setlintegral-strict-mono.md) | 149 | `result-track:4fbd9820e66cbc678921905780c7b58e0f37e41bb2db1264a4285fac23f060e8` |
| 18 | `theorem` | [ae_lt_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/ae-lt-top.md) | 154 | `result-track:81bbf22429ad1c798e2028432f28eea580add95fa240ede0f692d8f5a700477e` |
| 19 | `theorem` | [ae_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarkovPublic.lean/declarations/ae-lt-top-source-edition-2.md) | 159 | `result-track:ac95d5705f7d944b888611a49cb2534bb591c3123116bb9365203b48154ee161` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f25ef8243668cdc64553569cc5780c31855041dc1e09e467bec4aa82e6fa7a7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant41d852f6c850f8b2a6e726065a970d5aa840dbd4db0ec8b8a5a42faf460edfa7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Markov/Variant41d852f6c850f8b2a6e726065a970d5aa840dbd4db0ec8b8a5a42faf460edfa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
