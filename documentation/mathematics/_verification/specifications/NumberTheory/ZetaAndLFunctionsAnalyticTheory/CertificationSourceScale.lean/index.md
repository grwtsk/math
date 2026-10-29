# Verification target: Certification Source Scale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1680f2a47df62daa3dd37a74019d2ec5ef7f9976",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1680f2a47df62daa3dd37a74019d2ec5ef7f9976`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.CertificationEquivalence` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/scale.md) | 38 | `declaration-track:a044bc054d8960c2e79d9d8af906acf3a720411bd42bf2d78dbffa7650ca5800` |
| 2 | `abbrev` | [SmallCoordinate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallcoordinate.md) | 40 | `declaration-track:9db34d81f791b7852da7a1b14e4d775d296cbdded574b32899930ccedd4d7e32` |
| 3 | `def` | [squareEquiv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/squareequiv.md) | 43 | `declaration-track:816ec437bb83912fa31d43a2092f7766ce898e13b36521f3e2440c8aad230998` |
| 4 | `def` | [reciprocalEquiv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/reciprocalequiv.md) | 54 | `declaration-track:152cce94021853ca898eeaf2b4b4794f0bf7c459bc36387d31ba3602f8df1389` |
| 5 | `def` | [smallScaleEquiv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallscaleequiv.md) | 61 | `declaration-track:9d75fed24f7a41d7d5c7ca10ee5c3d5df97178d243c1cd9d1b297ebdceead260` |
| 6 | `theorem` | [smallScaleEquiv_value](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallscaleequiv-value.md) | 63 | `result-track:f2c9c2dfd2730cf95661756107857b13404b9a9dd90e18ea24ab219d3ad00314` |
| 7 | `theorem` | [smallScaleEquiv_reconstruct_value](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallscaleequiv-reconstruct-value.md) | 65 | `result-track:463e657858a1dce70a76f157f54c1e4fc1599fb092dda2d10c7d3685bd6d04dc` |
| 8 | `inductive` | [Quantity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/quantity.md) | 71 | `declaration-track:e12bedcc4ef30654c8208b0c59fe2e2c771242ac48fac419d79d837ab57ed337` |
| 9 | `abbrev` | [family](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/family.md) | 80 | `declaration-track:025c8ff971e44d78089abacaa0b00b1cccd5c155f3ff7c2ad7d15c4a08be684b` |
| 10 | `abbrev` | [smallRepresentation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallrepresentation.md) | 92 | `declaration-track:0075adce9586f2905c940b50fb3ed3f9aac39fa443a342508962550b55936df0` |
| 11 | `theorem` | [smallRepresentation_minimal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallrepresentation-minimal.md) | 101 | `result-track:902cdf87b92505db4d92ad7290e40f48eadc4e06d1c149f3d0ce78924ff36c2f` |
| 12 | `abbrev` | [smallQuine](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallquine.md) | 109 | `declaration-track:360d0b68d137bd508b5996f483254cf3675beaab9d8cb21d6756666d6ad9c910` |
| 13 | `abbrev` | [largeRepresentation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/largerepresentation.md) | 118 | `declaration-track:3a4861bbf9f9d990149e5ab890a30719f47f331fdcbfefeaf6a12837dac6d113` |
| 14 | `theorem` | [largeRepresentation_minimal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/largerepresentation-minimal.md) | 125 | `result-track:e80f5bb4ec60e5253ffd50a53a0a41369440fab1338a58fc06fe042691f7f611` |
| 15 | `abbrev` | [largeQuine](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/largequine.md) | 135 | `declaration-track:77e0033bd881ad8565e6d5f0c78d6aa595a727cc8aa697bfd13bae10b9d9bde8` |
| 16 | `theorem` | [comparison_eq_reciprocal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/comparison-eq-reciprocal.md) | 145 | `result-track:e5096e22a7970c97ef45d3d1d4ddd839e64ad4e15d2688f6bbb697b206ff532f` |
| 17 | `theorem` | [decoder_agreement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/decoder-agreement.md) | 154 | `result-track:9916b61210d533cf1f48aeab3df56e39f14ab8ef89c2ef5573ed806c300e5228` |
| 18 | `theorem` | [quadratic_decoder_agreement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/quadratic-decoder-agreement.md) | 160 | `result-track:723deca3e8fca28703648479e913c8bcb7e9f3cb163ff536ada455b31186c363` |
| 19 | `theorem` | [compensated_decoder_agreement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/compensated-decoder-agreement.md) | 165 | `result-track:89735e37e2180792059bdf2469c88b0fb14a1550451d52260da2760a7927e0f4` |
| 20 | `theorem` | [terminal_decoder_agreement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/terminal-decoder-agreement.md) | 169 | `result-track:840a4d77ef737ca2e72e79b4e853a1abc1aaf49670b2474e30c5518763b91b73` |
| 21 | `theorem` | [full_terminal_decoder_agreement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/full-terminal-decoder-agreement.md) | 174 | `result-track:89a2812abab73a836d797786c790d8541048e7235f5bc9d2ee75300ca5ee6fcf` |
| 22 | `theorem` | [full_terminal_eq_compensated](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/full-terminal-eq-compensated.md) | 183 | `result-track:ef92238378e65ed6ac85a956167be9ce5ea9b77d10a3c6b2f5fdd8ff582565a6` |
| 23 | `def` | [scaleStep](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/scalestep.md) | 192 | `declaration-track:9ce98b9eac551cc44d61a497e794e1c454b0eeb7582cbaf1a53dc99f8677f0ea` |
| 24 | `def` | [largeStep](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/largestep.md) | 196 | `declaration-track:6aee8d0321bef69a7db86519c26080aec02719fc3f8bb144eba975db84cd2188` |
| 25 | `def` | [smallStep](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallstep.md) | 200 | `declaration-track:26b2888200115bcb2d6b8d1e6b664b35b6620b1a6b4396338f8490a9e0f9bd49` |
| 26 | `theorem` | [largeStep_compress](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/largestep-compress.md) | 203 | `result-track:19876aa4d7ffc5176611c83bc19213a0a9d97d87727680c8ae92d45b478a4674` |
| 27 | `theorem` | [smallStep_compress](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallstep-compress.md) | 210 | `result-track:476193b63000480a739c02ae011239419fc22239901f8afb3890b6b19310a2be` |
| 28 | `theorem` | [smallStep_value](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/smallstep-value.md) | 217 | `result-track:95437b9b464d2cbf9eb08a92703070474d30a27c6981f43499aa9af92c2b98a2` |
| 29 | `theorem` | [transition_evolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/transition-evolution.md) | 225 | `result-track:08a1a287a906f320fa89c1b23db3843e2e0068b8fd4c91715f44dd4948fdb802` |
| 30 | `theorem` | [evolved_decoder_agreement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/evolved-decoder-agreement.md) | 234 | `result-track:783d3d5ab5ec86946d62561bf6d65cca72cfbba09fc78b8b9f237f9cb0fd16ce` |
| 31 | `theorem` | [native_lower_bound_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/native-lower-bound-iff.md) | 242 | `result-track:875547135641ac6bfb269327dcce90079d9324a237738eb2a886d8ab5f256524` |
| 32 | `theorem` | [native_terminal_budget_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/native-terminal-budget-iff.md) | 254 | `result-track:db7aa021db88919118c297339dc9877d2abd223227ccc8e3b0eb28c9e4aa0c52` |
| 33 | `theorem` | [native_full_terminal_budget_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/native-full-terminal-budget-iff.md) | 266 | `result-track:5aa663690962b5aaecd5081480d0cd585e571867261042047db68f54889495aa` |
| 34 | `theorem` | [source_coordinate_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/source-coordinate-ne-zero.md) | 278 | `result-track:b235f2c17bfa04cc089fa84c1a5da0be01179511a34b2e6398762564589a43d2` |
| 35 | `theorem` | [scale_le_iff_smallCoordinate_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/scale-le-iff-smallcoordinate-le.md) | 282 | `result-track:b3c3cb547401e9847fdc322844921940695e692b935b405dab7f424f59ac87a5` |
| 36 | `theorem` | [decoded_tail_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/decoded-tail-iff.md) | 289 | `result-track:78c9b0333211ea9fbb717aa580f6c3a44b92d959250217c7cf0ab34f37c16371` |
| 37 | `theorem` | [native_full_terminal_tail_budget_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertificationSourceScale.lean/declarations/native-full-terminal-tail-budget-iff.md) | 296 | `result-track:eef233323b54603cce06f90d1199d09093ac1fad1513959f0aeacaecff022aee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=400d385072802336fc6f7d1b7456e7ba6ea1ce6fd7dbc3ca9444929ff9f03acd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variant4f64d2bb349ac0540c74aca74587d670cfcc79c859639464460a0058c7f0684c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
