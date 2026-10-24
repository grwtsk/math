# Verification target: GRWTSK.Topology.GeneralTopology.ValuedField.Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "629b7e1b7e879a2fbaa8c6ea97246011f0c44131",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `629b7e1b7e879a2fbaa8c6ea97246011f0c44131`.

Source path: `GRWTSK/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Valuation.inversion_estimate](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valuation-inversion-estimate--4f2e0f3ee6efceed8b073dad.md) | 54 | `result-track:4f2e0f3ee6efceed8b073dade329dc4e720e71a1e61fd8a01244374ec6b44f35` |
| 2 | `theorem` | [Valuation.inversion_estimate'](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valuation-inversion-estimate--519d8b02113cad7f75164445.md) | 77 | `result-track:519d8b02113cad7f7516444517f5a79581d131115103651126202b8f9c946024` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/instance--3fd6af77a607ef1e3a5d7c5c.md) | 91 | `declaration-track:3fd6af77a607ef1e3a5d7c5c9f46b172c65665ddb60fe6c43a0d84717dff9e63` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/instance--5b988d1b1810ad25d8718342.md) | 105 | `declaration-track:5b988d1b1810ad25d8718342b5586ae1b1fc5a103b48dfbb0c58c4dda0be29f9` |
| 5 | `theorem` | [Valued.continuous_valuation](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valued-continuous-valuation--4eea593f077673c2ecaac56e.md) | 123 | `result-track:4eea593f077673c2ecaac56e0f2562163dc39e48d85bbfb1da2b4c351a7fc8ed` |
| 6 | `theorem` | [Valued.continuous_valuation_of_surjective](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valued-continuous-valuation-of-surjective--f741781f7bebbf971de6851d.md) | 138 | `result-track:f741781f7bebbf971de6851d86b4db63d3905e1bc794f8d2ab4af405da603349` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/instance--2f459589e676f41729eddc10.md) | 169 | `declaration-track:2f459589e676f41729eddc103b75534760d7d2e434fe1749cb82bea8515a32a4` |
| 8 | `lemma` | [valuation_isClosedMap](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valuation-isclosedmap--9a5b520dcd7ac2f5d3d40766.md) | 211 | `result-track:9a5b520dcd7ac2f5d3d40766294ceaa1b81c3671374fa340adff09e72568d899` |
| 9 | `def` | [extension](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/extension--d8c97dd4fe0d8be9d34da645.md) | 225 | `declaration-track:d8c97dd4fe0d8be9d34da6450bf499095a252e3c86a58ab7a5dfa4fcd238655b` |
| 10 | `theorem` | [continuous_extension](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/continuous-extension--6173754196005d453cbbaca8.md) | 228 | `result-track:6173754196005d453cbbaca85b6ccfbbb92b5bf2610fd1ceb4f16f3fb2932b4c` |
| 11 | `theorem` | [extension_extends](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/extension-extends--4c508cec2ce3b8121ca45ef3.md) | 298 | `result-track:4c508cec2ce3b8121ca45ef3f1d391346fddd4abdc03df0fb90ab0653e4f8cc0` |
| 12 | `def` | [extensionValuation](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/extensionvaluation--c9eaac710e7971e490365dec.md) | 306 | `declaration-track:c9eaac710e7971e490365dec5b2aae15ab74ab789a6efdd5290f92df215a15e6` |
| 13 | `lemma` | [extensionValuation_toFun](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/extensionvaluation-tofun--2bdaa7052de91ed5bc21add0.md) | 340 | `result-track:2bdaa7052de91ed5bc21add0a3127b13707beeff3cecb90b584264a31544065f` |
| 14 | `lemma` | [extensionValuation_coe_apply](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/extensionvaluation-coe-apply--f41cda768685b1c0ec2ec1f3.md) | 343 | `result-track:f41cda768685b1c0ec2ec1f36d3fc6200cd73f10dd5b03e7a8fbfce12bf29233` |
| 15 | `lemma` | [extensionValuation_apply_coe](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/extensionvaluation-apply-coe--81ee88f21cf6ad95148dd249.md) | 347 | `result-track:81ee88f21cf6ad95148dd249fd38e93741705fa4f988feecad2af87c1cb47e20` |
| 16 | `lemma` | [extension_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/extension-eq-zero-iff--0e6509c31a5deeb216d36599.md) | 352 | `result-track:0e6509c31a5deeb216d36599b610b5a120fa56bcded1b91e86a6edebe57b2ca0` |
| 17 | `lemma` | [exists_coe_eq_v](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/exists-coe-eq-v--d6ca3d17f8a0f4011c707a91.md) | 357 | `result-track:d6ca3d17f8a0f4011c707a914e5cd87dc85fbd78c8a07094773583077a5db7f2` |
| 18 | `theorem` | [closure_coe_completion_v_lt](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/closure-coe-completion-v-lt--f79fbe4d6f519c7ec3ef8ff9.md) | 378 | `result-track:f79fbe4d6f519c7ec3ef8ff99a6e3b3178bccba06e51d280548602866970942a` |
| 19 | `theorem` | [closure_coe_completion_v_mul_v_lt](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/closure-coe-completion-v-mul-v-lt--e34cd03278fffa59b79eeaa8.md) | 413 | `result-track:e34cd03278fffa59b79eeaa81fbb451d92eb5a2818593e8c137be7f4dccaaf05` |
| 20 | `def` | [valueGroup₀_hom_extensionValuation](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valuegroup-hom-extensionvaluation--3d5b21f0451faeb3d2f3217b.md) | 423 | `declaration-track:3d5b21f0451faeb3d2f3217be178f6e877eaece12bd65ab35bda01ca4b41f6d9` |
| 21 | `def` | [valueGroup₀_equiv_extensionValuation](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valuegroup-equiv-extensionvaluation--52d2b2a0a606095196afafef.md) | 463 | `declaration-track:52d2b2a0a606095196afafef54a1fd6c2db60cc8d5974b4dcc61c8737d8f87c7` |
| 22 | `instance` | [valuedCompletion](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valuedcompletion--034fd4a1f9dedb5b5927747b.md) | 514 | `declaration-track:034fd4a1f9dedb5b5927747b897b9807372b6d483ab45449d6b5bd195b4b1aa5` |
| 23 | `theorem` | [valuedCompletion_apply](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valuedcompletion-apply--96bd4efe8f9a213013b4ed9e.md) | 566 | `result-track:96bd4efe8f9a213013b4ed9e722417520093d3233e61cda6610d06c2e875e3de` |
| 24 | `lemma` | [valuedCompletion_surjective_iff](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/valuedcompletion-surjective-iff--c86b834f6bcda22ef36ea84c.md) | 569 | `result-track:c86b834f6bcda22ef36ea84cfe17754bf3dd0663fb1cb6d59dd3baf039fca249` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/instance--ddcfb11ddb7587df0a68aad8.md) | 588 | `declaration-track:ddcfb11ddb7587df0a68aad8826ab4655e9605d2f3bc9fe691f0dbbfac2cfcbe` |
| 26 | `def` | [integer](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/integer--81e9d0c1896b0a417d3190c7.md) | 605 | `declaration-track:81e9d0c1896b0a417d3190c7c75f6c34a649f2081cafda38fad8aec9d1af5459` |
| 27 | `def` | [maximalIdeal](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/maximalideal--19a01e7afe28ff5462612af8.md) | 613 | `declaration-track:19a01e7afe28ff5462612af81ac673cdf682fe55bfec9883269144d5dc668fe8` |
| 28 | `def` | [ResidueField](../../../../../mathematics/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/declarations/residuefield--c446d91a9d11eff6d617ce90.md) | 621 | `declaration-track:c446d91a9d11eff6d617ce90553ceb38f37f1e149ce8128ad336a1c3cbbff0cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
