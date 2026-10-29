# Verification target: Convolution Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48b7c00557b77e5e33dc142a73fb8d880897551c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Convolution/Variant1bb42706fc6339e50bddd470e49254f99b2a07cb4ce70dfb220e1076d739e08e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ConvolutionPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ConvolutionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48b7c00557b77e5e33dc142a73fb8d880897551c`.

Source path: `GRWTSK/Algebra/Convolution/Variant1bb42706fc6339e50bddd470e49254f99b2a07cb4ce70dfb220e1076d739e08e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Convolution/Variant1bb42706fc6339e50bddd470e49254f99b2a07cb4ce70dfb220e1076d739e08e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance-source-edition-4.md) | 40 | `declaration-track:475bf02bb62ae5830b56f94f5dac434d9ba6287fc9563308c6a14d85e1b413d8` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance-source-edition-6.md) | 43 | `declaration-track:67de659d033da24d4f507432e55624345caac8590591c40770e3caeb9278f9ad` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance.md) | 46 | `declaration-track:03cabad75f0c2acfdcad46a5b1d115eace285d23029bfd4bfb77ef38a36cdec5` |
| 4 | `lemma` | [convOne_def](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convone-def.md) | 48 | `result-track:21d99419511c0d0ff87a17faa1a2da5733f2c47e4c0554857aa515fc37936438` |
| 5 | `lemma` | [convMul_def](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convmul-def-source-edition-2.md) | 50 | `result-track:5fa67234c71d3f7f7dea329436129b16fa6578ade5c9cfb681d0baa514d1198b` |
| 6 | `lemma` | [convPow_succ](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convpow-succ.md) | 53 | `result-track:6cc02be423ed119f15c37598793b06963fe3d49bad2bcced0e51dfa46ec6a8c3` |
| 7 | `lemma` | [convOne_apply](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convone-apply-source-edition-2.md) | 56 | `result-track:c12e448e08957ff86c1d1aac5c1ef67526b88aaeaee53e01e6404a66b5ffbfd9` |
| 8 | `lemma` | [convMul_apply](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convmul-apply.md) | 58 | `result-track:a15b80974f24df65ae2d589a7859d8281e32205972d2c09a534528f84010cd5b` |
| 9 | `lemma` | [toLinearMap_convOne](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/tolinearmap-convone.md) | 66 | `result-track:6f45d11126b5b2d7fca96a2ba59521d90a65a95a55d2eab11524708161324112` |
| 10 | `lemma` | [toLinearMap_convMul](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/tolinearmap-convmul-source-edition-2.md) | 69 | `result-track:6a2350f68815a3ebd822bdf9135bd83c72fbcd72d63a362a2dbabe4cba33709d` |
| 11 | `lemma` | [toLinearMap_convPow](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/tolinearmap-convpow.md) | 74 | `result-track:752f6475c07d1ec19b01c53fe627fe06704fb0dd195f09c4d702bbc2af39a873` |
| 12 | `lemma` | [convMul_comp_bialgHom_distrib](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convmul-comp-bialghom-distrib.md) | 79 | `result-track:c3fb0c67f9d1656fed879d9cac14482ddf2a2bcecedc5706818ea016c461d2b3` |
| 13 | `lemma` | [comp_convMul_distrib](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/comp-convmul-distrib.md) | 84 | `result-track:9fc68f7eb131059fd54305f52409fc15c26e63e847f420ddeaffbce876c49fbe` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance-source-edition-7.md) | 91 | `declaration-track:843f62d27c33ae55d937bb7b83ceb1ed9d8ef572fcd5eb6aa96b312baf34f520` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance-source-edition-9.md) | 97 | `declaration-track:c02095657496fd7edfe329e2f74ad0beabce1aa7cf15e721e8f484890bf36910` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance-source-edition-5.md) | 106 | `declaration-track:5ff9af8770b7ba88201fbaeb046a6fb2d63f86e2e203a69509aec4f1a5cd1980` |
| 17 | `lemma` | [convOne_def](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convone-def-source-edition-2.md) | 109 | `result-track:37381b2b777f38db73ae8bc24b593672fd7faa9078d6d990622a9ce1f8976e5b` |
| 18 | `lemma` | [convOne_apply](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convone-apply.md) | 112 | `result-track:9bfa0597b09dd2d7cfabc44a2e947a6dd6d45e9023127540f7318dd37dd82242` |
| 19 | `lemma` | [toLinearMap_convOne](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/tolinearmap-convone-source-edition-2.md) | 115 | `result-track:896cdee95d9a21098839f78d244ca254f38ec9509186d763bb3b37c14766ce23` |
| 20 | `lemma` | [toAlgHom_convOne](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/toalghom-convone.md) | 118 | `result-track:b722d59ca7625cd050778f29be659de644e6fb7c718bc12a1602feab0d7be234` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance-source-edition-8.md) | 122 | `declaration-track:b2be744802cd9e77359faa29e70bbb80b7b363e0f83eace38bf82ca9e291f1c3` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance-source-edition-3.md) | 125 | `declaration-track:2d3a1bb961c96e3c6656e5816b78ab6efd9585339b7520e91f1ef2a01eaf30ea` |
| 23 | `lemma` | [convMul_def](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convmul-def.md) | 127 | `result-track:22f5b61ed981857f15ebe42c5bf2d02c8937fe93cdb9c05ec498f1943c15b60e` |
| 24 | `lemma` | [convPow_succ](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/convpow-succ-source-edition-2.md) | 132 | `result-track:d20785c138350b464897135db1f0d851e510dab34e1ea8fc864fdda64f598d3d` |
| 25 | `lemma` | [toLinearMap_convMul](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/tolinearmap-convmul.md) | 136 | `result-track:4b7b97442aba55ca2b08a85a14bd8551fb60e3fd3738f8ca7394d7ac30676fdf` |
| 26 | `lemma` | [toAlgHom_convMul](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/toalghom-convmul.md) | 141 | `result-track:31dc9154f22ce0bfa5cc2e214b74c0bb951e81059fee0474dd8494af2254db1e` |
| 27 | `lemma` | [toLinearMap_convPow](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/tolinearmap-convpow-source-edition-2.md) | 147 | `result-track:f95d82bfd71741a0dcaab1ee3a2725fb7415a58bc08c8c5fd7fd6861965457f2` |
| 28 | `lemma` | [toAlgHom_convPow](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/toalghom-convpow.md) | 153 | `result-track:f2506718f620df1ebfeaf268c6570984c81ec005a0de9863142354112dc957da` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ConvolutionPublic.lean/declarations/instance-source-edition-2.md) | 158 | `declaration-track:1b7ec66f0ae88516ad9d423aace0e57b1268c7cde8d756124662e9e983a0ce3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a72bc7143c3ffe269da44d5850bb43130a2cad239ec342ae72c9d6a11559569 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Convolution/Variant1bb42706fc6339e50bddd470e49254f99b2a07cb4ce70dfb220e1076d739e08e.lean","GRWTSK/_verification/specifications/Algebra/Convolution/Variant1bb42706fc6339e50bddd470e49254f99b2a07cb4ce70dfb220e1076d739e08e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
