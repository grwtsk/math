# Verification target: Lie Base Change Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3a3170909b0230d3862a38565d79aab28062799",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3a3170909b0230d3862a38565d79aab28062799`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bracket'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/bracket.md) | 51 | `declaration-track:aeae8e92f4fd7b976f42137c841705fe2d728890cdc63e6a50132953e7e0e0e0` |
| 2 | `theorem` | [bracket'_tmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/bracket-tmul-source-edition-2.md) | 58 | `result-track:d3cf630ca628a82dadc348bc5cc9929f4e8e6f7caf0986c62af975565d337229` |
| 3 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:345e34137e260d05699a5eca3d6ac5864fc8a9a120e688a28224a59a90d95a57` |
| 4 | `theorem` | [bracket_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/bracket-def.md) | 65 | `result-track:ac73ade025d9cadd7fcb0c38248c5129f24f1a8d25569d6a99e67080791ed598` |
| 5 | `theorem` | [bracket_tmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/bracket-tmul.md) | 69 | `result-track:425f80f623581a03518809ade176bb5db0078fa818713a8d065beab44af9610f` |
| 6 | `theorem` | [bracket_lie_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/bracket-lie-self.md) | 72 | `result-track:48dad835f69075c4d9b8902023ddc682fc7e23436fbd1ff3a7313d542c5d0ed8` |
| 7 | `theorem` | [bracket_leibniz_lie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/bracket-leibniz-lie.md) | 92 | `result-track:3c1a7054212778a8b767536b421088d412ec5dcd01bd76074d1bc60ce289dffc` |
| 8 | `instance` | [instLieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/instliering.md) | 108 | `declaration-track:0a5d6100553a84e426d6a410905259be54d702845813c251a9efdd869265b748` |
| 9 | `instance` | [instBaseLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/instbaseliealgebra.md) | 114 | `declaration-track:2a2bd96bbb87d316c422c710171d2ea2bd7a9cc446227e5bd187b37830005965` |
| 10 | `instance` | [instLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/instliealgebra.md) | 116 | `declaration-track:aafd97cdccd1a4b9e84f7058e5bee2715d325b25e1f5b524cb3576973e767591` |
| 11 | `instance` | [instLieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/instlieringmodule.md) | 120 | `declaration-track:2ce0029612e2f3d147695d122483ff23778e1784853e4d3060bc59d064e56d72` |
| 12 | `instance` | [instLieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/instliemodule.md) | 125 | `declaration-track:5495c456ded383c3f3d11863f474b86ba616a5549c20ef37d3aa448c5d6d630d` |
| 13 | `def` | [map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/map.md) | 130 | `declaration-track:02d4aa886ae4d023d59daa33f326b081a3ce13bc4def8c0861e4bccf95ce4a92` |
| 14 | `lemma` | [map_apply_tmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/map-apply-tmul.md) | 143 | `result-track:fc157d868c1ae2e53975cb8525dcbe8017d87256b574cb0b7ce262c090399906` |
| 15 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/instance.md) | 156 | `declaration-track:1602d9ed5020ae603d0071abc0199e2986b1472c05acd8067ed34e09b815d884` |
| 16 | `instance` | [lieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/liealgebra.md) | 162 | `declaration-track:0b3b1db713a0d72e523161009090bf7313bf2ae2c3ce6f22d1d46d24eef76e30` |
| 17 | `lemma` | [LieModule.toEnd_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/liemodule-toend-basechange.md) | 177 | `result-track:dc4415205ba086b77d2ab5febd02b1219d173ff1fbfb3e255cab450b2d8fd8cd` |
| 18 | `def` | [baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/basechange.md) | 193 | `declaration-track:77deb6e8d0d3bc281b2fe9c3ce36f310b1f209d4197ab47b9ef114fbedf295eb` |
| 19 | `lemma` | [coe_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/coe-basechange.md) | 210 | `result-track:9c4a01c2e51af989e5327e36d8a5cbc0808492e88106dd298879536c508d7e99` |
| 20 | `lemma` | [tmul_mem_baseChange_of_mem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/tmul-mem-basechange-of-mem.md) | 217 | `result-track:83c1f5cde0b1c03b5f4acb1d801ac8a432555c90cff589212a41de2b400638e0` |
| 21 | `lemma` | [mem_baseChange_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/mem-basechange-iff.md) | 221 | `result-track:90da89da832a1148ff295134437bb891a257b2ca7dbd78431df1e961813f6f75` |
| 22 | `lemma` | [baseChange_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/basechange-bot.md) | 227 | `result-track:3165502009e2f0e17443cccb6d0946342e034697d622eb1dd23a37216ca8478b` |
| 23 | `lemma` | [baseChange_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/basechange-top.md) | 232 | `result-track:3514e8aa65046554304f049b9406e0d49adb913ea06bc06c72d3cf9b51cf8c90` |
| 24 | `lemma` | [lie_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBaseChangeNamespacedPublic.lean/declarations/lie-basechange.md) | 236 | `result-track:c06818198e76bf7781ba9d1517d2e73b5d59e1b56d7bc48fcce40b99f7c9a296` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d844dc0b909f7c54edcdfe4ff839ecec16fc2d3ee9163d9068ff2b32862a1c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
