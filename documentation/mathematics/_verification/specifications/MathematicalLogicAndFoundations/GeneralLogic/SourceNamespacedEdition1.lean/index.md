# Verification target: Source Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dcce4fdb7b54a16d035b6aa931dfc7ac25b0133",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dcce4fdb7b54a16d035b6aa931dfc7ac25b0133`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalSource](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/canonicalsource.md) | 27 | `declaration-track:181d13f222f11410f761eff607578e2fcd13115651e61cf454e27ece4685c499` |
| 2 | `def` | [text](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/text.md) | 35 | `declaration-track:d4753bc178277a27f880044fafa0c3795ad8d11c5de5f36e6bb183b7039ee722` |
| 3 | `def` | [utf8](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/utf8.md) | 39 | `declaration-track:3783f9ff3afec11fedf9526a2fe78c76f1d551a7771a63802e36c200d185cd59` |
| 4 | `def` | [byteBitMSB](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/bytebitmsb.md) | 45 | `declaration-track:e41a1229721feafb3a610018cc86adc1d4b8077ab6ec275aaa5845f438439e7e` |
| 5 | `inductive` | [SourcePoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/sourcepoint.md) | 49 | `declaration-track:ffca8f4550e776e69c7f61e3a9ce9a454e60c8c58b1343e772bc5ff8c1f7d70d` |
| 6 | `inductive` | [SourceRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/sourcerelation.md) | 55 | `declaration-track:178c67a1d92a0b46e62fd7953481c3402b8787e86f770f48077663f6a102e2ff` |
| 7 | `def` | [SourceRelation.arity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/sourcerelation-arity.md) | 62 | `declaration-track:2761291403faf01e433f40dc6457f92038e2824feb10fbeff38a55488d623d06` |
| 8 | `structure` | [SourceCodec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/sourcecodec.md) | 69 | `declaration-track:c67aff1b24e525127f9a01e508cb602ff623da679e63f0f903e9ef2acf3ffaa5` |
| 9 | `theorem` | [encode_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/encode-injective.md) | 77 | `result-track:d00c491f8bb39773ab0a9b79716c06e9eab0a86303390d3e44f21862ecf4f45d` |
| 10 | `def` | [SourceState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/sourcestate.md) | 87 | `declaration-track:0e53f23643e6babd6ce93a1df2b7091bed46bf3803201bc52c86f293acf9b159` |
| 11 | `def` | [sourceEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/sourceequiv.md) | 94 | `declaration-track:0b6e552b6c0c408e691bc32aec7361f48bb4a28f53c53d45733f122f6f999960` |
| 12 | `theorem` | [sourceEquiv_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/sourceequiv-apply.md) | 110 | `result-track:7869eee17cd11ca55187172b164d4ce4d803f23cfbb8172acce2421a74c2e9b3` |
| 13 | `def` | [sourceBaseline](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceNamespacedEdition1.lean/declarations/sourcebaseline.md) | 118 | `declaration-track:6ed66c8ac3ef13b690b65c798cf162f71903b4428f502b9cef4a388132c5def9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ee0f8d01095f5438e5da617ce72f5d504b4756ea6d9a1d002d96c4df3e35944 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant9db37286b5247e7f410e7074f8f27b573002ffaa7d71516acb58572af4b4e278.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
