# Verification target: Zero Object Planning

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be9dc45ed82f93248eef18f5aaa2d9bf4b7cab16",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variant65bde4c592684bc0caac624f798d48ae33fd3759270358673ff52837f42e7b81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be9dc45ed82f93248eef18f5aaa2d9bf4b7cab16`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variant65bde4c592684bc0caac624f798d48ae33fd3759270358673ff52837f42e7b81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variant65bde4c592684bc0caac624f798d48ae33fd3759270358673ff52837f42e7b81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeta_order_finite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/zeta-order-finite.md) | 9 | `result-track:c8a3ab881c4797a829fd475ee50c0d0a037ee230eaef05b1b8c92567b15b9ced` |
| 2 | `theorem` | [zeta_multiplicity_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/zeta-multiplicity-pos.md) | 18 | `result-track:4e630d7491e12fc0a0283328fb03489b8978836b1833f05aac45a71674756dd4` |
| 3 | `theorem` | [analytic_conj_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/analytic-conj-conj.md) | 27 | `result-track:2ddc04019112f11852077dfb1f207546b35850d5b8093e06f8f4061da7e21b2a` |
| 4 | `theorem` | [order_conj_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/order-conj-conj.md) | 35 | `result-track:45063207e2ca1f66de21e86442da18dbc0d1c58d0b60a92c6ea5d368cc77f7bc` |
| 5 | `theorem` | [zeta_order_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/zeta-order-conj.md) | 49 | `result-track:9554df54e64fc7fe8a18307d05878e6207bd08f12bee02335f99201a4007d905` |
| 6 | `theorem` | [completed_analytic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/completed-analytic.md) | 53 | `result-track:24e0771e368132a121c9ba514e38c32fe3174ee70952bbf1fd2be3d809427236` |
| 7 | `theorem` | [zeta_order_completed](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/zeta-order-completed.md) | 62 | `result-track:9d759fafd0b03e8170ab816f6dc0d7d5c3707317a91b55ecc50a3c8548664935` |
| 8 | `theorem` | [zeta_order_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/zeta-order-reflect.md) | 75 | `result-track:6d75836530acd024b65c7d98f7097ad9bd997d1ca314de85885387429a70df8f` |
| 9 | `def` | [ZeroPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/zeropoint.md) | 89 | `declaration-track:398599796ec314f180a75a989367b46814a0200b0d661ade6b0e212aa9e13681` |
| 10 | `theorem` | [point_nontrivial](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/point-nontrivial.md) | 91 | `result-track:ab80f71708da651f05582389cf1c01e19f12d7a3382e0e44ae3d654c677f09c8` |
| 11 | `def` | [multiplicity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/multiplicity.md) | 104 | `declaration-track:3bc6a7ca51fe212c3e2236ba0a8701633b71c6dd4f28cd39374625f1d6395982` |
| 12 | `theorem` | [multiplicity_positive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/multiplicity-positive.md) | 106 | `result-track:3bdc4bcff6502bd0375b766ba55177bb19d276607bcbc9499522ffb155cd3295` |
| 13 | `def` | [ZeroOccurrence](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/zerooccurrence.md) | 109 | `declaration-track:c960747cac2c4a1ed3e07b79b58191a2e51fbed4db77cb5ab8b0ee05e4d76ea0` |
| 14 | `def` | [conjugatePoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/conjugatepoint.md) | 111 | `declaration-track:e6a0e20fbba4278bab7ba07154a2b5e3f34ceb2c07b9c957033969974cedeefc` |
| 15 | `def` | [reflectPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/reflectpoint.md) | 114 | `declaration-track:390632feb91b27231a5174eb9251e6ee4ad237e179579608b5368e375a5f7a8d` |
| 16 | `theorem` | [conjugatePoint_involutive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/conjugatepoint-involutive.md) | 119 | `result-track:81808887d8bb60fdaac76ebd3307032927f6df891947564cf1c5d5a0b9cbc5e0` |
| 17 | `theorem` | [reflectPoint_involutive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/reflectpoint-involutive.md) | 124 | `result-track:a146efaed76488c97e540a94b6f97711d1abd5d848a6b73fe4b150bb1ba8faf0` |
| 18 | `theorem` | [multiplicity_conjugate](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/multiplicity-conjugate.md) | 129 | `result-track:b73a44d6433901a1313d2a2317f5cade19329e222778bdae2deb3bfd035db114` |
| 19 | `theorem` | [multiplicity_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/multiplicity-reflect.md) | 133 | `result-track:c2139e4d3a5558a8e07e730a3a6844534b5a7330100aeb18fd1ded3f003c8b4d` |
| 20 | `def` | [conjugateOccurrence](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/conjugateoccurrence.md) | 137 | `declaration-track:65f1c37c722b0b12f69c618398828ad23c457d3f051f52a020d53c33a14dbf43` |
| 21 | `def` | [reflectOccurrence](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/reflectoccurrence.md) | 140 | `declaration-track:2c68549f0712e70fe7796f022ba6f00ad13f3bfeaa83a541812a55d1e2161981` |
| 22 | `theorem` | [conjugateOccurrence_involutive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/conjugateoccurrence-involutive.md) | 143 | `result-track:7677482e684c4dc60c9f2675418026bba6ef17358732bae42267de0078a743d7` |
| 23 | `theorem` | [reflectOccurrence_involutive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/reflectoccurrence-involutive.md) | 149 | `result-track:50b5469fd243724fe3c2f95bea803c872037e35db943aa76b98d057b2c9f8d32` |
| 24 | `def` | [conjugateEquiv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/conjugateequiv.md) | 155 | `declaration-track:faf999d61c82067538e01056580d04ae6412649cee046cba6de517e637cdf690` |
| 25 | `def` | [reflectEquiv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/reflectequiv.md) | 158 | `declaration-track:b432600ff320be2902ed8ec976b5bcb97d948cb10936206ffab911f62e091ceb` |
| 26 | `def` | [shiftedValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/shiftedvalue.md) | 161 | `declaration-track:b22258ac34e61410e64dbbb8e1e5161e0420cbf339446aa9a56c06c6bece0ff1` |
| 27 | `theorem` | [shiftedValue_conjugate](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/shiftedvalue-conjugate.md) | 163 | `result-track:60ebd3a774e7e2f1b0b037fcfdafe005bb9bfb5cc7608ce7f52ed53d18c4d316` |
| 28 | `theorem` | [shiftedValue_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/shiftedvalue-reflect.md) | 167 | `result-track:e1cc0eb662aa33c091b6aa62a1f1c0ce78d58cae2a4afee793b8356ef1066870` |
| 29 | `theorem` | [shiftedValue_strip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/shiftedvalue-strip.md) | 172 | `result-track:4d82458a499442b90fb5af2c27273e4268ebf8e0348a4afe358032cd660d9830` |
| 30 | `theorem` | [shiftedValue_ne_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/shiftedvalue-ne-half.md) | 177 | `result-track:ccac7199b69caca9c178d12784638791f39635cfa406aeb4506138cdd7534ee4` |
| 31 | `theorem` | [shiftedValue_ne_neg_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/shiftedvalue-ne-neg-half.md) | 184 | `result-track:d08385c5385f26cca46e356acc919c3257a3b513a2594e2987891011c967095d` |
| 32 | `def` | [RealZeroExclusionObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/realzeroexclusionobligation.md) | 191 | `declaration-track:b49ac46be38f9c0e27460e7985344f1be1425a78764ff377b7d42ffb271f2c58` |
| 33 | `theorem` | [shiftedValue_im_ne_zero_of_realZeroExclusion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/shiftedvalue-im-ne-zero-of-realzeroexclusion.md) | 194 | `result-track:4681dbd9b99b211ac69b1bfc9a77f34a609f537cc696b07818e282d63966b364` |
| 34 | `theorem` | [shiftedValue_ne_zero_of_realZeroExclusion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/shiftedvalue-ne-zero-of-realzeroexclusion.md) | 204 | `result-track:1d822b7d6de2cb00cad5e72662d5e79b078e880f606899f81c0519bf5460481a` |
| 35 | `def` | [MultiplicityAndSymmetryObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/multiplicityandsymmetryobligation.md) | 210 | `declaration-track:aee01d9c4003248f036d089cd7fb4338c7fa46fc78b3b9aa9203b529769de9bc` |
| 36 | `theorem` | [multiplicity_and_symmetry](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/multiplicity-and-symmetry.md) | 226 | `result-track:519236c4b0356a0d7d118f799680cca107349736d4a197430b8cf53cb4845ffb` |
| 37 | `def` | [ZeroObjectAdmissionObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/zeroobjectadmissionobligation.md) | 235 | `declaration-track:e1454298bc393973ecc7cda873c20e2b51bcc267c420e69a3a6fca85c25fa051` |
| 38 | `theorem` | [admission_of_realZeroExclusion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/admission-of-realzeroexclusion.md) | 238 | `result-track:3462fa85aa8bb9ae446f6aa3f8553e3ad2c62dca30162e5119e29db7c50bad73` |
| 39 | `def` | [pairedEtaTerm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/pairedetaterm.md) | 242 | `declaration-track:07e64a41b093f7792163961562f1896e40d1fb36fe9ada154e669f45bd1b1f7e` |
| 40 | `theorem` | [pairedEtaTerm_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/pairedetaterm-pos.md) | 245 | `result-track:3a9939d667aded791c721564b639e8a8c6a5779a302daae05523c1cc9fb8116a` |
| 41 | `theorem` | [pairedEta_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/pairedeta-summable.md) | 250 | `result-track:ced19894865742b809bd4f23877902de56182a9311c96c2f38d69c30f44476bb` |
| 42 | `def` | [PairedEtaPositivitySummabilityObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/pairedetapositivitysummabilityobligation.md) | 268 | `declaration-track:0ffe6a9367c6a542335365bdea911aaae3d1e94d4377e2ceff48abd14111282c` |
| 43 | `theorem` | [paired_eta_positive_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/paired-eta-positive-summable.md) | 271 | `result-track:7d667ce735bc22107d99ecfd262b48ea8615a25cc0f80d24acd8f2d2fb1d4618` |
| 44 | `def` | [PairedEtaIdentityObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/pairedetaidentityobligation.md) | 275 | `declaration-track:ccaf66a40c36d28936fc1a0de997fab35656e56e242795d434645b0102a1d50f` |
| 45 | `theorem` | [real_zero_exclusion_of_paired_eta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/real-zero-exclusion-of-paired-eta.md) | 279 | `result-track:7ceae7072dc4d2dfbc606f20b30ed4320cf070e02b58657f837097be5df27a16` |
| 46 | `def` | [PairedEtaReductionObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/pairedetareductionobligation.md) | 288 | `declaration-track:4c0f702b33ca526b8f1ee25f63a0ab8df9d5c47ccb370f51a9637aa49047d996` |
| 47 | `theorem` | [paired_eta_reduction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObjectPlanning.lean/declarations/paired-eta-reduction.md) | 291 | `result-track:c0d80961faf1ddf3f95c09f7b5ccd2897b11a6985faed63e436afc11a829f648` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cff35512206aa3778bab9b5a58dd903c252bae968121c9e3412084a331a9ba33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variant65bde4c592684bc0caac624f798d48ae33fd3759270358673ff52837f42e7b81.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variant65bde4c592684bc0caac624f798d48ae33fd3759270358673ff52837f42e7b81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
