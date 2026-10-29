# Verification target: Abel Summation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cec01fe997c5e206a52de1c5096b54955e018d5f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/AbelSummationNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/AbelSummationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cec01fe997c5e206a52de1c5096b54955e018d5f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.Floor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IsLocallyClosed` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sumlocc](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/sumlocc.md) | 62 | `result-track:2c5c617a14705e87c79db2d4e6d2683ba94fc914e30b121e8570e018febdfd03` |
| 2 | `theorem` | [integralmulsum](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/integralmulsum.md) | 68 | `result-track:966d2e623d1fa340cf9d35e81582252eefb9467fcf184ce05f606e28a70f80b5` |
| 3 | `theorem` | [ineqofmemIco](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/ineqofmemico-source-edition-2.md) | 84 | `result-track:ed39bd60157472d54e91532512f72b4a9cf382257155cc756d8322e21bbfd5ee` |
| 4 | `theorem` | [ineqofmemIco'](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/ineqofmemico.md) | 92 | `result-track:c00dcd0bbaecbc280e943ac8d8759268f79bd53bfeeea8fc74dbed5196754c27` |
| 5 | `theorem` | [Abel Summation Namespaced](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/integrableon-mul-sum-icc.md) | 96 | `result-track:b9df767f2d850f704cb8bd4e200535281bdfd9bcbea419c4e2c3905dbc11666a` |
| 6 | `theorem` | [Abel Summation Namespaced](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/sum-mul-eq-sub-sub-integral-mul-source-line-133-occurrence-2.md) | 133 | `result-track:c893c79ff0005394c684dd27d785a53d40c20c09f46367c7e35509b7befa98b8` |
| 7 | `theorem` | [Abel Summation Namespaced](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/sum-mul-eq-sub-sub-integral-mul.md) | 179 | `result-track:3206870799f4412e323339bd486de63f9b965a07bc8e379ca8509dea04f87608` |
| 8 | `theorem` | [sum_mul_eq_sub_integral_mul](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/sum-mul-eq-sub-integral-mul-source-edition-2.md) | 193 | `result-track:2c4027755bbe3045d3e36f25f224b204838366db3afff834a7994c807096eec8` |
| 9 | `theorem` | [sum_mul_eq_sub_integral_mul'](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/sum-mul-eq-sub-integral-mul.md) | 204 | `result-track:0aefc4d6d8bec9027f7a39fdaf09aad6d21e90e9e7414be0b4e1b7c15f2e2f52` |
| 10 | `theorem` | [sum_mul_eq_sub_integral_mul₀](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/sum-mul-eq-sub-integral-mul-source-edition-4.md) | 215 | `result-track:f9f045051d7dd0d2bc674bdce4a35e8cff1669e3cbef0cbd1aa59f34f71b82da` |
| 11 | `theorem` | [sum_mul_eq_sub_integral_mul₀'](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/sum-mul-eq-sub-integral-mul-source-edition-3.md) | 233 | `result-track:a181b85d7486c7bdb5edddfabbf4122b1938ef2d2366bd9c4e36e566eeae4e3b` |
| 12 | `theorem` | [locallyIntegrableOn_mul_sum_Icc](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/locallyintegrableon-mul-sum-icc.md) | 248 | `result-track:33086a93ea71324347f4e3d76f70701b345822cd619b8238336ce9dad20ff744` |
| 13 | `theorem` | [tendsto_sum_mul_atTop_nhds_one_sub_integral](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/tendsto-sum-mul-attop-nhds-one-sub-integral.md) | 261 | `result-track:543b56a7d51e69b6acbb9107e4fbabdfc5a6169baee8978d223c908431b6ed4e` |
| 14 | `theorem` | [tendsto_sum_mul_atTop_nhds_one_sub_integral₀](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/tendsto-sum-mul-attop-nhds-one-sub-integral-source-edition-2.md) | 280 | `result-track:fe19186de5ae87ebeb49eeab3b9808971593516afe1cbff60dcd83d1c6fc1376` |
| 15 | `theorem` | [summable_mul_of_bigO_atTop_aux](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/summable-mul-of-bigo-attop-aux.md) | 308 | `result-track:1a68ebf799f4f68955b67287f51534f4e1253d00a16be76e3b5908f5906f7cbb` |
| 16 | `theorem` | [summable_mul_of_bigO_atTop](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/summable-mul-of-bigo-attop.md) | 348 | `result-track:6f5cd49c3ed3f530a3d37b5ba773ab5dca93758281e03d6160b223840987076b` |
| 17 | `theorem` | [summable_mul_of_bigO_atTop'](../../../../NumberTheory/AbelSummationNamespaced.lean/declarations/summable-mul-of-bigo-attop-source-edition-2.md) | 360 | `result-track:ef3ef68529bcbabfca2dd78ed4bc8f573a9271836dbb56d8421c6a3fc0a2e1c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31e77658f6b505945d9bd58983f98faf3951b377bf673efb84667e8fc7763e75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
