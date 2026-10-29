# Verification target: Integral Representation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfb5d261991388600339b7871a14fd954559d6cb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/IntegralRepresentation.lean/index.md) · [Full source](../../../../SpecialFunctions/IntegralRepresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfb5d261991388600339b7871a14fd954559d6cb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand.md) | 50 | `declaration-track:87d8d47056520596d1af810f6374fcbdc0a800d190a46de937920b94c8b0a2f0` |
| 2 | `lemma` | [rpowIntegrand₀₁_zero_right](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-zero-right.md) | 55 | `result-track:bdd49949d731a19769af8aa520c75220a4d0091f70301ef552d35e40f657127e` |
| 3 | `lemma` | [rpowIntegrand₀₁_zero_left](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-zero-left.md) | 57 | `result-track:4bec1d4719935237e1a24acb7294424436f4efcfebe3c76810ddfaeab435cefe` |
| 4 | `lemma` | [rpowIntegrand₀₁_nonneg](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-nonneg.md) | 60 | `result-track:570da681163b2537cebe58383576953eef3691f5e6fc2a427d2bc8d5f29e66b4` |
| 5 | `lemma` | [rpowIntegrand₀₁_eq_pow_div](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-eq-pow-div.md) | 71 | `result-track:048dd2e2bce4a6f569849b0722894fefd7e4511563d63a6611e8e60a928f1c1d` |
| 6 | `lemma` | [rpowIntegrand₀₁_eqOn_pow_div](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-eqon-pow-div.md) | 88 | `result-track:15851a1be3fa6e1b59740214d8d0d12a81eac1c6c69dfbfc2ee2a6b082001fff` |
| 7 | `lemma` | [rpowIntegrand₀₁_apply_mul](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-apply-mul-source-edition-2.md) | 93 | `result-track:fc1f13251b950b23d72a72021f7b4729d924ea8d1f14e793355d7927729f1195` |
| 8 | `lemma` | [rpowIntegrand₀₁_apply_mul'](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-apply-mul.md) | 109 | `result-track:78d1e82ad546ca1f5727087f786a3f40b87178f42893763dda42b892cb89e094` |
| 9 | `lemma` | [rpowIntegrand₀₁_apply_mul_eqOn_Ici](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-apply-mul-eqon-ici.md) | 115 | `result-track:8cfbcb9d4d9be09e065e46a9b1a00e467e25e9aed75a66ee8d22e5f485bb97e1` |
| 10 | `lemma` | [continuousOn_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/continuouson-rpowintegrand.md) | 120 | `result-track:c915e95598b0f5c6bffc701c95c4c9da785ec3bf0ebd9e4596f8a641af6d5be8` |
| 11 | `lemma` | [aestronglyMeasurable_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/aestronglymeasurable-rpowintegrand.md) | 127 | `result-track:ae55a958f86b9a3f42518129d93baba8f3c8f5a8c745acaa1d52fdcfddc9d6f8` |
| 12 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_two_mul_self](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-le-rpow-sub-two-mul-self.md) | 131 | `result-track:f2f312bde5b918ebc788dc69cfb07db509a5728e558180cc67667f320df079b9` |
| 13 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_one](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-le-rpow-sub-one.md) | 142 | `result-track:55d386b31bf92063dc113788722c6a944456f4e018eb2342a4e14bf608ec29f1` |
| 14 | `lemma` | [rpowIntegrand₀₁_one_ge_rpow_sub_two](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpowintegrand-one-ge-rpow-sub-two.md) | 156 | `result-track:48d01feccb01b4458d079d6b5b502ee03f82620e26be208cc11fd8963d070e81` |
| 15 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioc](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/integrableon-rpowintegrand-ioc.md) | 171 | `result-track:1caf1fb50e49429499d8181f302e789475b3186c69553421b36beef9f255820e` |
| 16 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi_one](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/integrableon-rpowintegrand-ioi-one.md) | 192 | `result-track:f3c116b9b079707da233e2eeff83804c5d28f5879ef5268471abb3aceb893b66` |
| 17 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/integrableon-rpowintegrand-ioi.md) | 211 | `result-track:e65a57adc9407f6bd45f9c52fdc3c35e820452b1183dfe694995f029787cbaab` |
| 18 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ici](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/integrableon-rpowintegrand-ici.md) | 219 | `result-track:5858891904412fd89c8a4a576e8136cc9665dd3fbe956b2ee040170a13f787dd` |
| 19 | `lemma` | [integral_rpowIntegrand₀₁_eq_rpow_mul_const](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/integral-rpowintegrand-eq-rpow-mul-const.md) | 223 | `result-track:604a2bc42649269a60478839af21a7d48f4723bf59aa8eeb8c34b60b2e1f378b` |
| 20 | `lemma` | [le_integral_rpowIntegrand₀₁_one](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/le-integral-rpowintegrand-one.md) | 245 | `result-track:0226652e59c6fa8dfef128d9493e57fec4f0ebcba7816b55153cd6dda3e0c4ba` |
| 21 | `lemma` | [integral_rpowIntegrand₀₁_one_pos](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/integral-rpowintegrand-one-pos.md) | 265 | `result-track:c2849e32d81f5c0ba7e294e1f70842e25c26b35ad60d27fcc5e8f5c7f691d209` |
| 22 | `lemma` | [rpow_eq_const_mul_integral](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/rpow-eq-const-mul-integral.md) | 274 | `result-track:bb28cb0a684913a8b552e6367cd2c12e8ca6662ddf2d65261890fe8662e1a243` |
| 23 | `lemma` | [exists_measure_rpow_eq_integral](../../../../SpecialFunctions/IntegralRepresentation.lean/declarations/exists-measure-rpow-eq-integral.md) | 287 | `result-track:b17aeaf5f40f12fcea066941905278a87663a1cf8d4b95a1398d2d6db370bec8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0663246cb6fa619c7668e23b4524cf031bc133d267b1fbc996f2a037cd244858 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
