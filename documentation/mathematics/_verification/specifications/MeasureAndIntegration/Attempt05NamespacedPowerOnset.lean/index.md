# Verification target: Attempt05 Namespaced Power Onset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8de8d824a23a98d518c6589d8f41588fc8262ba0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variantaa81de87729e9b5407e0d35e95e16758c8a95520e977ae1e48e3a32252c1eb4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8de8d824a23a98d518c6589d8f41588fc8262ba0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variantaa81de87729e9b5407e0d35e95e16758c8a95520e977ae1e48e3a32252c1eb4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt05/Variantaa81de87729e9b5407e0d35e95e16758c8a95520e977ae1e48e3a32252c1eb4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/poweronset.md) | 25 | `declaration-track:99c03c8aca28693ae0d30b83bc77c581d7db49ba75b1682483553bd9234045ba` |
| 2 | `def` | [powerWeight](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/powerweight.md) | 28 | `declaration-track:590acad69e5a2e9b3f28db05cb84b0012b1ccbb7df501629dbd3e5c4f20c2649` |
| 3 | `def` | [positiveOnsetAtom](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsetatom.md) | 31 | `declaration-track:659509f223a96382877b54138b313abe0d3272d36246b8113c9bfb6831f1f04d` |
| 4 | `def` | [positiveOnsetTail](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsettail.md) | 34 | `declaration-track:92b2bea1c32cc724cafd267f52493abe9d6f9657be03f38337efafb195e7848a` |
| 5 | `theorem` | [powerOnset_pos](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/poweronset-pos.md) | 37 | `result-track:3c53939a9eacf8c44e4105162732affecc4e6def038d7ff83550f71e596be8fc` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/powerweight-nonneg.md) | 41 | `result-track:d188ad8250f2da186a711f2be7d56a6c4d7c2f5913ef8c7ecb8bac7517f7ef56` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsetatom-nonneg.md) | 46 | `result-track:f05abfd8ab736581fb19c47b4c635d455cc3bcb930088137d31cbbcffb277f89` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsetatom-measurable.md) | 50 | `result-track:e8a6faeb84c16ddd2bbc832fd875fac0c17d4e8a3459fad21576b4acb7623043` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsetatom-integrable.md) | 54 | `result-track:6e306bac02ac5c69f4581dc9208e936020b5463de9d8207fa6022ac6d9ee3245` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsetatom-integral.md) | 61 | `result-track:2683463048714e6579085deaed632bac0fcaae6edf7d2b83d870c1569acf4668` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsetatom-eq-omitted.md) | 69 | `result-track:717e03fd932457c754eceb4938fa6f97120542d591e8122492ae6cb863c78bc1` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsetatom-le-zeromoment.md) | 77 | `result-track:fcd01ff8573b099d29773273c6808f5c91e4c20bd623c385aebd3a7eb5dd88f0` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsettail-summable.md) | 84 | `result-track:d987a0315772b69467fca5dbc46afef2646b404cb668871d77f632bfc7f8f0c9` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsettail-nonneg.md) | 89 | `result-track:91590f76973161bbbd570537d3283f928bbe30f9bcf408a5a75b9acd85bc616a` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsettail-measurable.md) | 92 | `result-track:b21acd7ef1d6deae0bf0290b5d742c2f271936f7a4e7398133081c1ebe0702b5` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsettail-eq-indicator.md) | 95 | `result-track:7dee6e8609b17d2606e4c5da344d2e7546023cac3e8853c02af5a6eae9d02f26` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsettail-lintegral.md) | 105 | `result-track:45e59afda7b598890447dad9827a0f67da217a17728e21ddeeabd4a5d9f70334` |
| 18 | `theorem` | [positiveOnsetTail_integrable](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsettail-integrable.md) | 129 | `result-track:2a2ca2e6b84068ad533e3f8a921c9dadbdb0a4cd0f463ef1907a940ff8b466ca` |
| 19 | `theorem` | [positiveOnsetTail_integral](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/positiveonsettail-integral.md) | 135 | `result-track:021ab716700f9cbba7943e1429c2b95cc2707030554faca50a0bf92be66f6cea` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/omittedonsettail-integrable-positive.md) | 142 | `result-track:3799d5e788ab3204d5fa7a0c8fc71b4d41e67244a44da45d64132337e4414135` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/omittedonsettail-integral-eq-b1.md) | 147 | `result-track:13d20da673f4af551a70d544adfc37b5c031d6ad8a5ef329cae8cf3cbb3fc2ec` |
| 22 | `def` | [closedOnsetAtom](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetatom.md) | 153 | `declaration-track:d7942a828668424ccf622d61d6ce194abb3836bb3e5f287865b07a51e6400c8b` |
| 23 | `def` | [closedOnsetPrefix](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetprefix.md) | 156 | `declaration-track:8302c957a078e8f520d3874b37daeaeea049d6891692d7db128ebb8c123d1168` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetatom-nonneg.md) | 159 | `result-track:f65391f71332fca5c7eed9b58549bdc4691d3949b2cfe7237d992e6bb55ab671` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetatom-le-zeromoment.md) | 166 | `result-track:65064880fffa9ece33f0ae9feef4e67fb1701dd2d4d1a56647ac3ececb462b58` |
| 26 | `theorem` | [closedOnsetPrefix_summable](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetprefix-summable.md) | 173 | `result-track:97e1d9f36841491e533cd9b515777fcaa781e0170eb1ac27ae3ea08209a70050` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetatom-add-omitted.md) | 178 | `result-track:ccbe6cb8f5a100c3ce3fe2718881fbee4815b5c90f3d64faf8a03e972af1a8c8` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetprefix-add-tail.md) | 185 | `result-track:a22a61f161a8019353c3c7f7beecdca3969e6e619483d012bf921571d2bf64c0` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/properpowermoment-sub-closedprefix.md) | 192 | `result-track:0974900c3ef5c366e0ea68106e4a23f7311760e4b45b7bad355b8e2e08132ffd` |
| 30 | `theorem` | [closedOnsetAtom_touching](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetatom-touching.md) | 196 | `result-track:7a066daa1297a19c3d4097be12b2ea4526b69d987eafe7d1694045039a4d2ef0` |
| 31 | `theorem` | [powerOnset_ge_first](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/poweronset-ge-first.md) | 201 | `result-track:14115eda83ad08291d30409a7613c498d22e0d0b1595fa43a18b5bc5f2629d77` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/closedonsetprefix-below-first.md) | 208 | `result-track:7cfbb5c9df58e63178daf655bc8581574b707a63135d5dbc933194660a2f2e20` |
| 33 | `theorem` | [omittedOnsetTail_below_first](../../../../MeasureAndIntegration/Attempt05NamespacedPowerOnset.lean/declarations/omittedonsettail-below-first.md) | 216 | `result-track:7168975468affd1b4bc90272d40369581fe6d994e36b0c10dace87c93417c695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a0ae88c996cfa7c01acba462263a0c87d36decdef17c6d6b8ba02d008a75864 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variantaa81de87729e9b5407e0d35e95e16758c8a95520e977ae1e48e3a32252c1eb4d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt05/Variantaa81de87729e9b5407e0d35e95e16758c8a95520e977ae1e48e3a32252c1eb4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
