# Verification target: Higher Power Moment Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c15840acadf484b4d04aa270b2c057305d4920f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c15840acadf484b4d04aa270b2c057305d4920f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/integermoment.md) | 11 | `declaration-track:0eacc4576a247027d7652e2089ec5424eb32823ef2d48ee2ce864330f700f23a` |
| 2 | `def` | [higherMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/highermoment.md) | 14 | `declaration-track:a4c607a6ca534dfd92d07007c7001109e60ed8415102287b81b5d8fbe954c0d1` |
| 3 | `def` | [geometricRatio](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/geometricratio.md) | 18 | `declaration-track:e5c8353f551345b80f1c1d155c60f46cae7e2429882012730eb5bafaa76b59ea` |
| 4 | `def` | [exponentMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/exponentmoment.md) | 21 | `declaration-track:361102b5d603816684ef65626fa06af61721fa1443c27cd5bbe5d427ca444925` |
| 5 | `theorem` | [integerMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/integermoment-nonneg.md) | 23 | `result-track:121d3176d54d8259409dfe5bab4f5edf84a3785fd63cef28a1e54d6aad176a6e` |
| 6 | `theorem` | [higherMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/highermoment-nonneg.md) | 27 | `result-track:0a48abe0e152d175bae812fe9c910940e5da5dd063ca23c2dc72dc17f698bed4` |
| 7 | `theorem` | [geometricRatio_pos](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/geometricratio-pos.md) | 31 | `result-track:ba40e0319b35d2226c8af9aa91be22b70d5fdb1964336c6f6b946a87b2ec59b4` |
| 8 | `theorem` | [geometricRatio_lt_one](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/geometricratio-lt-one.md) | 33 | `result-track:adf2e07900455f11f085fe7c3a98900f8e48e9907d0928a55f93f0bae9a21860` |
| 9 | `theorem` | [exponentMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/exponentmoment-nonneg.md) | 36 | `result-track:a97a537b1842668af61385fce9ed7187f320c5187eee8ebc56092d2ba8cde229` |
| 10 | `theorem` | [integerMoment_le](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/integermoment-le.md) | 39 | `result-track:f0a60d1c2208bac064bc61e1af2d61d9280f077a6758bfe408da620eb7dc03ac` |
| 11 | `theorem` | [integerMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/integermoment-summable.md) | 58 | `result-track:8b357407ee52a5748b1567164a5bdc71b9bb592a6d8051e4b966e15f011005ab` |
| 12 | `theorem` | [exponentMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/exponentmoment-summable.md) | 62 | `result-track:7103b7fcb51b1df31d6caaacbe3eb5050856a8a8fc30936590c0aa84d93d2572` |
| 13 | `theorem` | [halfPower_pow](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/halfpower-pow.md) | 75 | `result-track:1e89b1c4f32664f1eb3c392b8f69601f853becdeea2dcbbee05107b9a0189297` |
| 14 | `theorem` | [higherMoment_factorization](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/highermoment-factorization.md) | 82 | `result-track:7421c3464ee629536a906e870ed235ef5539d7cd48247b2559bcdd289e6038c6` |
| 15 | `theorem` | [higherMoment_le_product](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/highermoment-le-product.md) | 97 | `result-track:fcb3bcb949be9207b9f52e6143a4985ff9254d092d1fac601ac8a0063ee2c33a` |
| 16 | `theorem` | [higherMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/highermoment-summable.md) | 108 | `result-track:e5c7ed7dccbb4464d30818d98973477668c2cae39c6c669ea0ebf7ee3b6c5578` |
| 17 | `theorem` | [primeHigherMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/primehighermoment-summable.md) | 119 | `result-track:1e0a6eca135d4a52835e289e8bd6235bd42592218d4ea1042bd3fd891006df1f` |
| 18 | `theorem` | [logLocation_sq_ge_one](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/loglocation-sq-ge-one.md) | 132 | `result-track:a88f93282fad30890ebc3e7cd8816c67fa5b6d74bbf0a982a7573aa579a4f53e` |
| 19 | `theorem` | [higherWeight_le_moment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/higherweight-le-moment.md) | 143 | `result-track:176a4997273941f71515ba42ad681d3b6eeb88f0f915ee171e9cf94a308b8e10` |
| 20 | `theorem` | [primeHigherWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/primehigherweight-summable.md) | 148 | `result-track:74a56de5c8752ddebbcec3e621de602b32d0d0d12819cc244e90e57f3178713a` |
| 21 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-4.md) | 160 | `declaration-track:28c76116c0ea6c82ac95626a220d796071fe91e584eaa50c40c9d293d3f5c691` |
| 22 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-8.md) | 162 | `declaration-track:5c2cd30be706a9ab54dd8fb5a7f94a87998f6a54b8fe6983ba71cef51a5956d2` |
| 23 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-15.md) | 164 | `declaration-track:b747ee84478ce1d17a35b88591539a3f67c37f26944ef1632ecc561849ed04f4` |
| 24 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-16.md) | 166 | `declaration-track:c94c4283fdda36f97b2b6aec25d6dd3862efa20dc1935d8905d1c611e0edbf8b` |
| 25 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-6.md) | 168 | `declaration-track:343488ff94fb075d8b7162174a624fe0bd86d67899c619ea8827dd592be4dc2c` |
| 26 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-2.md) | 171 | `declaration-track:132bcd6dc63e483da6f069383f6f33afd6d8d3035956b54d8417fd5532f2f436` |
| 27 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-11.md) | 174 | `declaration-track:95f61b3f192340cb7a45a53dc6dff46327d2d991416b2291826d1e65917f2d7c` |
| 28 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-3.md) | 177 | `declaration-track:18cea5aef04b1a32829c83c1a1a4509f7d2864cbdf92268dcf85536a44dffd6e` |
| 29 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-12.md) | 180 | `declaration-track:a8fe59335fc9e00242f9d000b36322934868a1be007dc12980ca04d5571d9610` |
| 30 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-9.md) | 183 | `declaration-track:6e5fb8dc98ea4f1ad4a2f590f0b1708fa3f07003f8a338aa8e3912cc84e7c45f` |
| 31 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-5.md) | 187 | `declaration-track:29d63c295c4f3197d752905124ac99eb5a9810f9849050d5d0f235930883a77d` |
| 32 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-17.md) | 190 | `declaration-track:ca0a48ce2cae63445d5b04aa1d2636bcfc4c0c6a0ae0ee9f74471ee383cdcd80` |
| 33 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-10.md) | 193 | `declaration-track:8ae600c8f2402a2e004bf1f844efeeb32d75025ea4b138790760c94626fca787` |
| 34 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-14.md) | 198 | `declaration-track:b596ea9ea770388cd794ff1121d223202f40bd11c8a676b8ed40ae1467cd0b5d` |
| 35 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example.md) | 202 | `declaration-track:0ea944b4efc96333765eae9c428e9293f8fcba1e2cb079a4b069fe8712aec11c` |
| 36 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-13.md) | 207 | `declaration-track:ac363368abc343a950d62f43d60c4fc47bcaf31638e835e8d4896c56935b786f` |
| 37 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-18.md) | 213 | `declaration-track:ce653c85bc9b7563b3946ff0fc895d0cdbeb4ce878d7fe1952e110f1435b7a03` |
| 38 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-19.md) | 217 | `declaration-track:f1b22182a024333a2768b5223f4f6108ec667e51e1255dbb17ab2cd3b07c49d6` |
| 39 | `example` | [(anonymous)](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentStatements.lean/declarations/example-source-edition-7.md) | 221 | `declaration-track:4b09c47f1cf5ce0e42b3c31c3bc0c6ccf9d0bfef724e45ba5972cb5acd44e7e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9920afdabde42dc4e425e69642d5f59ef2049a29ce39958695267124406ce240 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant5ddc00763e6986851af3280a41e32bfa5a4b3884f11504061f223d4f2f59960c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
