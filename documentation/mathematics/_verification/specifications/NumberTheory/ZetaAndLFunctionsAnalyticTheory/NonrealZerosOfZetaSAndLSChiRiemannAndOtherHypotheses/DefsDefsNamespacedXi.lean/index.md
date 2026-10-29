# Verification target: Defs Defs Namespaced Xi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "189ff5bde429dd0b5ade5c1410dba56600dd91ff",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `189ff5bde429dd0b5ade5c1410dba56600dd91ff`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/xi.md) | 37 | `declaration-track:5fa0dcdb53d4b340b6f94ec3b6e0a074b35e1741db069114f8e532881c38feb8` |
| 2 | `def` | [xiDeriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/xideriv.md) | 40 | `declaration-track:7a30fecdf7cc2cc81aad8d8de185597571173ff8945dab0e5996ed664cc29730` |
| 3 | `def` | [IsXiDerivZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/isxiderivzero.md) | 48 | `declaration-track:4e3c393255c13a1dbdc6eb20d2cd492e45fb85d8c3c53318336df05f79e70bbb` |
| 4 | `def` | [xiDerivMult](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/xiderivmult.md) | 52 | `declaration-track:400d9a1f3948af041fe768ad0917b2db24fe0bdba28b56ccc12e4ae7fa7a118c` |
| 5 | `def` | [zerosIn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/zerosin.md) | 55 | `declaration-track:baf1ff9a557677bb7670eb74145989a2f70bde1c39b84e41347fa6f3be5a24af` |
| 6 | `def` | [Ncount](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/ncount.md) | 59 | `declaration-track:00551ffcafd4bae757e3245e613fc4f2e54d1499bb309d31db64870597581bb4` |
| 7 | `def` | [Ndist](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/ndist.md) | 62 | `declaration-track:31a0a86d58053f40e5365e828c1e7aadcb03dd5eccd0f0f488e1cbb8bbbf6147` |
| 8 | `def` | [N0simple](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/n0simple.md) | 66 | `declaration-track:593cf99ffea3d3387e6986fdeab8fa39192647e51b361bfc3ccdcbc5a4fafa39` |
| 9 | `def` | [N0](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/n0.md) | 70 | `declaration-track:2ab779a0ab396e9ff3fad5c84abc7a8dbd4206b2ceb7e3478f909596e9882a77` |
| 10 | `def` | [lamLogConv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/lamlogconv.md) | 83 | `declaration-track:0a69b91d34161e682506cb99d48654b8dcfaa2a4a4b3b04e4570aa88e930ed73` |
| 11 | `def` | [xiCoeff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/xicoeff.md) | 87 | `declaration-track:82a48ef5a94241838769725bc78434c1aab9b8c831c33784044f2eee5a60ebb5` |
| 12 | `def` | [LT](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/lt.md) | 93 | `declaration-track:b7283ab936c983f8346a62a7efca1c5ff34095e2ed68555c706a8e1e62ecdd49` |
| 13 | `def` | [Lstar](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/lstar.md) | 97 | `declaration-track:14d32e898c8d9375ef766f870a31a7aef32fd74c91820c2e7aac418173b6ce3b` |
| 14 | `def` | [L2star](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/l2star.md) | 100 | `declaration-track:cfec0f3c7bf2af5f9d4c0a8e198389ac62bcf4fd42157162f5e32ba5bc157f91` |
| 15 | `def` | [Pc](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/pc.md) | 109 | `declaration-track:13d8e6a8e3fc51d7cd869a9ced1f0c0fb4512800d2b31a755920d1339423ad62` |
| 16 | `def` | [P1X](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/p1x.md) | 114 | `declaration-track:458862e14fc44952738b2aa931d8a837e7d44791b50939a1095e0a9f9210f345` |
| 17 | `def` | [nucW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/nucw.md) | 118 | `declaration-track:34499e96b7ab3c3d8ce42f96737317876fa388a4b541b6394d33879df6e6dbde` |
| 18 | `def` | [nuc](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/nuc.md) | 121 | `declaration-track:cb9747f0335db68abef993cf0bff015ca3125e8c914cbbe93a54b8a91927ff3d` |
| 19 | `def` | [nucZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/nucz.md) | 124 | `declaration-track:5630889f6c191e77108861ba8ecb6db8609c49af79772110caabbd1a4d3637d9` |
| 20 | `def` | [GentryCW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/gentrycw.md) | 134 | `declaration-track:63d9962fa014fc31205c75a81d56d96d57025948beadf5529935ebf25bfcc59f` |
| 21 | `def` | [GentryC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/gentryc.md) | 139 | `declaration-track:f7408dd014b3e42f6328a14a5ea45487dfe7a780215f3ab7ac8bbfc12dcf47b7` |
| 22 | `def` | [GpC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/gpc.md) | 142 | `declaration-track:ab53726cb6e95975cce5b9ddc6f426238abff68cf3efe50ad5247e2bee25f99f` |
| 23 | `def` | [tauStar](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/taustar.md) | 146 | `declaration-track:2b31ea225a9b83cdbc840895c0554d75af1544202a0540ee948dafb9dca9d95d` |
| 24 | `def` | [Gentry1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/gentry1.md) | 150 | `declaration-track:93667081d870171a5e04541da49c8100291f19881627f9407749ef2df0ca8dd5` |
| 25 | `def` | [Gp1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/gp1.md) | 153 | `declaration-track:73fb2fbd81eb75432b0bc85a65aa9e35654d590379fa0f31e57aa98f9b48fec4` |
| 26 | `def` | [D1coeff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/d1coeff.md) | 164 | `declaration-track:8cd8afa3789e38dea5fa7a9b510a2fcf0ee7aa4e313a6c6f66933e1c85118557` |
| 27 | `def` | [D1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/d1.md) | 169 | `declaration-track:a489832c0141459ed132e0b9a2ac0c4f0ade30e247750a17e0e8adf3d99c51b5` |
| 28 | `def` | [D1trunc](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/d1trunc.md) | 173 | `declaration-track:cfa4234a62bea76981c65606d44f353c485d957bb312c9f68d8c412be3691633` |
| 29 | `def` | [vConv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/vconv.md) | 179 | `declaration-track:69017c63ed588586d908f4c08c0ec41ad6cbf24a9ce75be63c626ab42c3efd67` |
| 30 | `def` | [jWin](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/jwin.md) | 184 | `declaration-track:109cf10ff941b1277cbec884b46ea841be627be7be57c9efc4b222624e6f61ea` |
| 31 | `def` | [cWin](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/cwin.md) | 189 | `declaration-track:4cfdff21776207fc1265da4c7e7361f3a0f10d5235d6f60437d957acfa99fa8e` |
| 32 | `def` | [kappaXi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/kappaxi.md) | 196 | `declaration-track:3712574e898657d0b3b8ab064c6baa35de20e6c33c3c679fc1eacfb28b35f519` |
| 33 | `def` | [vFlat](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/vflat.md) | 200 | `declaration-track:827b33cb9f29e94bd1bed796b2ef1a3e54cb8a0ef07bc474121088a293e7f2dc` |
| 34 | `def` | [vQuartic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/vquartic.md) | 205 | `declaration-track:a870b28855210e646ba31010095dff28671c41404f57ef4c80a8cf57456decf0` |
| 35 | `def` | [Defs Defs Namespaced Xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-riemannz.md) | 209 | `declaration-track:692c88b97d43f1e318cdca5a1aaae44c6b83a025dd5c51c45ae7c8a87f5b156b` |
| 36 | `def` | [Defs Defs Namespaced Xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-riemannz-source-edition-2.md) | 214 | `declaration-track:ba3d736be4425963f0bb863c7ebed89f2753b889aba6df49fa665556ab708ed6` |
| 37 | `def` | [chiFE](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/chife.md) | 221 | `declaration-track:34ce2e4789ad7dc03627ea71b492810bfe8a5fb0f19da8d366591c0c32a888f5` |
| 38 | `def` | [L2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/l2.md) | 224 | `declaration-track:e4b66e7d56bc27e3590b2a6851d62c9406bbf25e19b58212598a23091170c574` |
| 39 | `def` | [hardyW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/hardyw.md) | 229 | `declaration-track:72c810fa386a643cc0d7d6b60732e89ede26013896e57cefc454f29075fb1211` |
| 40 | `def` | [IsWZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/iswzero.md) | 237 | `declaration-track:a6cb78732a5d9715b612ca1eed0d8fd25248ffa1a1bc849cfae4dd32d8409685` |
| 41 | `def` | [wMult](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/wmult.md) | 240 | `declaration-track:4d3f32c3496da4c390ae51710d410bfef322010e30f2a33be85eec8581d37aba` |
| 42 | `def` | [zerosInW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/zerosinw.md) | 243 | `declaration-track:8c3a29a5a7a8da232955b4f525ea7b281ee86c1eea205acbd5d112f20946a185` |
| 43 | `def` | [NcountW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/ncountw.md) | 246 | `declaration-track:10263a822cfe4ebebd0f08b5f0fc2cdd465c2017f49a9ca68bda5aee4f926717` |
| 44 | `def` | [NdistW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/ndistw.md) | 249 | `declaration-track:32ecf9d4aca37174ddcf288e3cbdc3e8beed771997a2d7a45d6cf14913d42ce7` |
| 45 | `def` | [N0simpleW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DefsDefsNamespacedXi.lean/declarations/n0simplew.md) | 252 | `declaration-track:bd35f4d39e6c9b2199c507936413f0ff0f642c0c1ea696e650409b5dcd87e15e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2ae5816012ce2d4be90d34fc6b8c53bc1683ba60e3eafdd98c4baa61bf11728 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
