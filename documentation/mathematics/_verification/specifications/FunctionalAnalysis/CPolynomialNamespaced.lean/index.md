# Verification target: CPolynomial Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9baa8381560f64df4fc54cdfd38730f88a67d772",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9baa8381560f64df4fc54cdfd38730f88a67d772`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.CPolynomialDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFiniteFPowerSeriesOnBall_const](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesonball-const.md) | 35 | `result-track:c840bf58c7506a122e61bc1d05ff6c4fb4f79866e351ff3f9787ad93dc5bd076` |
| 2 | `theorem` | [hasFiniteFPowerSeriesAt_const](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesat-const.md) | 39 | `result-track:d0b80ebcd6229f6bc2bdc47a79f1c4a9573d959a822027f475885395e49e8978` |
| 3 | `theorem` | [CPolynomialAt_const](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialat-const.md) | 43 | `result-track:40d1fa9a50a373e4ce850017e613b9597b7efe49bf00ac9173a39a481bef84c4` |
| 4 | `theorem` | [CPolynomialOn_const](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialon-const.md) | 46 | `result-track:1069c2173a7e40f640896787e8795327d3d9ea4e918a76d1ea1bbd372e0082ca` |
| 5 | `theorem` | [HasFiniteFPowerSeriesOnBall.add](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesonball-add.md) | 49 | `result-track:8de37645f52e7ca9cd49e1beda8fdf83aa21a8ceba91ef6318a406ddeb2d7df9` |
| 6 | `theorem` | [HasFiniteFPowerSeriesAt.add](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesat-add.md) | 56 | `result-track:e5daa3606fa644b938d8685120805a553ec57ace34ca0f31c23ed525dbb28966` |
| 7 | `theorem` | [CPolynomialAt.add](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialat-add.md) | 62 | `result-track:b628f4c868992ab7e79723be49e9480567ce5e39d22f8f668056707f6bbe0733` |
| 8 | `theorem` | [HasFiniteFPowerSeriesOnBall.neg](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesonball-neg.md) | 68 | `result-track:5010eb827f8ed9ae47eae0de1e0621101923b1af86686bd82c66f3cf3622659f` |
| 9 | `theorem` | [HasFiniteFPowerSeriesAt.neg](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesat-neg.md) | 72 | `result-track:823b99c95f60af9073ffd9f251a9975c0287d6e257bf56876ea0533e84c0bab4` |
| 10 | `theorem` | [CPolynomialAt.neg](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialat-neg.md) | 77 | `result-track:599170f2f94a3362cf80228cbaf65f3fc009702f4375b3ae6063259c5a855499` |
| 11 | `theorem` | [HasFiniteFPowerSeriesOnBall.sub](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesonball-sub.md) | 81 | `result-track:c2e73937fc15f4c17e3a426b4cb22063e93d23746038ada2420bfa3793a027eb` |
| 12 | `theorem` | [HasFiniteFPowerSeriesAt.sub](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesat-sub.md) | 86 | `result-track:19af78b96130d135ed961b28a991a282601335c0edb3670fe27d04717fd6bdeb` |
| 13 | `theorem` | [CPolynomialAt.sub](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialat-sub.md) | 91 | `result-track:18d6d3539974f28bf0389ba77bc0c28c865732fbe468755bb675274e3b37a3c5` |
| 14 | `theorem` | [CPolynomialOn.add](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialon-add.md) | 95 | `result-track:5df09e77d57284862416014d6d674b4f67ea9c05c771b03d650f38a95751c0a9` |
| 15 | `theorem` | [CPolynomialOn.sub](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialon-sub.md) | 99 | `result-track:f3aa6b7e270652b2e1b0c4d49f7740875bba4fad1cd2425cd27dab11424832bc` |
| 16 | `theorem` | [hasFiniteFPowerSeriesOnBall](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesonball.md) | 117 | `result-track:6cbb96bbd01a18bdea6b424c823747eba0899c75aaefd4f8a9ebd31912125ee2` |
| 17 | `lemma` | [cpolynomialAt](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialat.md) | 124 | `result-track:44f00da33b28cdb74404844a5b5d3f1fc4de652954b1a2495fc5b91a44408250` |
| 18 | `lemma` | [cpolynomialOn](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialon.md) | 128 | `result-track:fa3724a0a7f04f04c2b5ca360f7447110c942bb3e2207301ce9d33a7e8329cd9` |
| 19 | `lemma` | [analyticOnNhd](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/analyticonnhd.md) | 132 | `result-track:c1a9f940b54eea1e9304ef1af5d2ac60df8b2cfcff5933ca433a8c7b71e5ceea` |
| 20 | `lemma` | [analyticOn](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/analyticon.md) | 134 | `result-track:2a334c7391ddde5038b688b2140328c0abd3ef950b53e2c21e7a1bc804734fed` |
| 21 | `lemma` | [analyticAt](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/analyticat.md) | 136 | `result-track:fb12e211acc7bb00b6b58f0443c5ba80274db2c9fd1c1aee89be828e9fe9967c` |
| 22 | `lemma` | [analyticWithinAt](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/analyticwithinat.md) | 138 | `result-track:d228194df05b8d700b7849af6a70af3c4fcd71a0f0fe532f3240b038f2a81e0e` |
| 23 | `def` | [toFormalMultilinearSeriesOfMultilinear](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/toformalmultilinearseriesofmultilinear.md) | 157 | `declaration-track:529fce5b9d33aa144e573f4a194e9781539db953eb9b2e9700936f1b03435584` |
| 24 | `theorem` | [hasFiniteFPowerSeriesOnBall_uncurry_of_multilinear](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/hasfinitefpowerseriesonball-uncurry-of-multilinear.md) | 163 | `result-track:e3e75447b68b2355c69bc634c00d57cfdc9436d87e498703af21b0f80727c34b` |
| 25 | `lemma` | [cpolynomialAt_uncurry_of_multilinear](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolynomialat-uncurry-of-multilinear.md) | 175 | `result-track:e6f7a09f7935981a9247226634bab40ba52a9ab25958f7c059667461aae80785` |
| 26 | `lemma` | [cpolyomialOn_uncurry_of_multilinear](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/cpolyomialon-uncurry-of-multilinear.md) | 180 | `result-track:5405d3b43ec3567555e41a353c96bf0ddbc9b3920300fe78142e554c4e0c0380` |
| 27 | `lemma` | [analyticOnNhd_uncurry_of_multilinear](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/analyticonnhd-uncurry-of-multilinear.md) | 184 | `result-track:203727c61bc8e99607e1c1e3a4095392f5e04847dc2ec723eb8649037e377d7e` |
| 28 | `lemma` | [analyticOn_uncurry_of_multilinear](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/analyticon-uncurry-of-multilinear.md) | 188 | `result-track:36f31aadea19ae85af53ec5467feee2ad928e7acac37e66303c05667b3ef41ea` |
| 29 | `lemma` | [analyticAt_uncurry_of_multilinear](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/analyticat-uncurry-of-multilinear.md) | 192 | `result-track:54def44fa239b65ca8dbba8ace9a2035af25f3e1d988d8e07663c74d7113d884` |
| 30 | `lemma` | [analyticWithinAt_uncurry_of_multilinear](../../../../FunctionalAnalysis/CPolynomialNamespaced.lean/declarations/analyticwithinat-uncurry-of-multilinear.md) | 195 | `result-track:b22a509bda9f8c2338cbfa5a1395ce0d29fe17ed35327827566f0ee86a5260b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a919d1d85f12d40fd91889f249148e3bb9b10c8b4b00133e4c84ad86945fde2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
