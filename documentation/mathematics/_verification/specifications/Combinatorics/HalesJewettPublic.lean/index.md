# Verification target: Hales Jewett Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af5bdd5a4f3889634fabd26415570b3e6a1db8d5",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/HalesJewettPublic.lean/index.md) · [Full source](../../../../Combinatorics/HalesJewettPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af5bdd5a4f3889634fabd26415570b3e6a1db8d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean.json)

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
| 1 | `structure` | [Subspace](../../../../Combinatorics/HalesJewettPublic.lean/declarations/subspace.md) | 91 | `declaration-track:ab54e2db246f57801795ff0f338f0f3aaf3811c424b378d5ce717e123d96f9a5` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/HalesJewettPublic.lean/declarations/instance.md) | 103 | `declaration-track:3daa9a273883e2da70e4ff8140ece4891ebea840a4852382d5247cbe6160a31c` |
| 3 | `def` | [toFun](../../../../Combinatorics/HalesJewettPublic.lean/declarations/tofun-source-edition-2.md) | 106 | `declaration-track:8c2fc37463910920623644eeca62436613e699704b9278adceb864ae3a9ae48e` |
| 4 | `instance` | [instCoeFun](../../../../Combinatorics/HalesJewettPublic.lean/declarations/instcoefun.md) | 108 | `declaration-track:4a9c864fbdcf1d02f2d65e589c635d2b9490b5111a2f8c8b12668bd3a098a0d6` |
| 5 | `lemma` | [coe_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/coe-apply.md) | 110 | `result-track:5170d77dabca18e4cc02b7d0781a7e784f55741cdb84188e1d3a3a92691dc224` |
| 6 | `lemma` | [coe_injective](../../../../Combinatorics/HalesJewettPublic.lean/declarations/coe-injective.md) | 113 | `result-track:ac5011a69ee6c37df1534299ef6c43bd9f86d01835f818b182b2074d84d942da` |
| 7 | `lemma` | [apply_def](../../../../Combinatorics/HalesJewettPublic.lean/declarations/apply-def-source-edition-2.md) | 133 | `result-track:9c33a09205ea755f860f94c0df6dbaf7a08dd094e31cc2ac114053c4c20cc991` |
| 8 | `lemma` | [apply_inl](../../../../Combinatorics/HalesJewettPublic.lean/declarations/apply-inl.md) | 134 | `result-track:2bd83d9be453dee569d5f532c9af35cc1a8342addb1152dbdd41acd29cc0d27a` |
| 9 | `lemma` | [apply_inr](../../../../Combinatorics/HalesJewettPublic.lean/declarations/apply-inr.md) | 135 | `result-track:9d1e07ca1b25eafee29392aebdb3817f3c74ef7cc29b13dbfcef75bdf2962f99` |
| 10 | `def` | [IsMono](../../../../Combinatorics/HalesJewettPublic.lean/declarations/ismono.md) | 139 | `declaration-track:1e683127a2066fa5083a11276896bce6cd080dc8fef87d41ffcd4121b13a58cf` |
| 11 | `def` | [reindex](../../../../Combinatorics/HalesJewettPublic.lean/declarations/reindex.md) | 144 | `declaration-track:532298f3fc7cb804235f9a72ea1b4d9b5d05acf4bbb888229be5f6f8a135cb4c` |
| 12 | `lemma` | [reindex_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/reindex-apply.md) | 149 | `result-track:d7640ac49ca32f134e900f9364233e4dc01770d5e579eead37ac2ab5ea9496d3` |
| 13 | `lemma` | [reindex_isMono](../../../../Combinatorics/HalesJewettPublic.lean/declarations/reindex-ismono.md) | 153 | `result-track:39ab2e88df222059432db4c0ce25355081fe28b9efc989ca3ceffc2123941b0e` |
| 14 | `lemma` | [IsMono.reindex](../../../../Combinatorics/HalesJewettPublic.lean/declarations/ismono-reindex.md) | 158 | `result-track:8225d2964328b59da874c140cd1d57e7265f12253bd7af4f5d581545aaf8215e` |
| 15 | `structure` | [Line](../../../../Combinatorics/HalesJewettPublic.lean/declarations/line.md) | 175 | `declaration-track:10e8d04838cc78deed2610ff0ead35de91f170b242c10ac499c3980db0509cce` |
| 16 | `def` | [toFun](../../../../Combinatorics/HalesJewettPublic.lean/declarations/tofun.md) | 187 | `declaration-track:88d2579aa5f06ce17dbd416442fdf154c72d457c49dc70033127c396027263ba` |
| 17 | `instance` | [instCoeFun](../../../../Combinatorics/HalesJewettPublic.lean/declarations/instcoefun-source-edition-2.md) | 190 | `declaration-track:91ceeef1411dc32011244d66af5651922b78c2bd52ecd0471425778403aa3da1` |
| 18 | `lemma` | [coe_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/coe-apply-source-edition-2.md) | 192 | `result-track:bb02edde6018dfdca70e2ba038f8ab64b702cac37bb26b5c557aa8bcf8016151` |
| 19 | `lemma` | [coe_injective](../../../../Combinatorics/HalesJewettPublic.lean/declarations/coe-injective-source-edition-2.md) | 195 | `result-track:d4de7ecc52d471e8abffdb702f3c6806c9af6bbbc5a582ea3dac275e843a5344` |
| 20 | `def` | [IsMono](../../../../Combinatorics/HalesJewettPublic.lean/declarations/ismono-source-edition-2.md) | 205 | `declaration-track:835e78bb303144b09eb424ca1e8935d45f6304ba11fb643ab62d40f5eb844b01` |
| 21 | `def` | [toSubspaceUnit](../../../../Combinatorics/HalesJewettPublic.lean/declarations/tosubspaceunit.md) | 209 | `declaration-track:078e74c4bf2507c7563b411b49898dbe330d390bed531df32c864b92abc97775` |
| 22 | `lemma` | [toSubspaceUnit_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/tosubspaceunit-apply.md) | 213 | `result-track:2a3f0ae881826d12dcc6e12477dc86bfbdc3bf566def6a4dac270728d31e6bce` |
| 23 | `lemma` | [toSubspaceUnit_isMono](../../../../Combinatorics/HalesJewettPublic.lean/declarations/tosubspaceunit-ismono.md) | 216 | `result-track:1612b7341fdb02bc9142c347e3a9a217242221a8a2ebc137148ac59cdc315721` |
| 24 | `def` | [toSubspace](../../../../Combinatorics/HalesJewettPublic.lean/declarations/tosubspace.md) | 223 | `declaration-track:21a25e509c487118b71f8c4385894ddcff88b53fcc1ec5133abebfd0810b2a07` |
| 25 | `lemma` | [toSubspace_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/tosubspace-apply.md) | 227 | `result-track:d3494fe5971006554a7947cdeb2ae9b705527cdbc3f95c5dd170f0ebc75eed66` |
| 26 | `lemma` | [toSubspace_isMono](../../../../Combinatorics/HalesJewettPublic.lean/declarations/tosubspace-ismono.md) | 231 | `result-track:5696e791ab35f7d20c74bc2e628ae1a68c571b591a3dce43dc22a66b2585a364` |
| 27 | `def` | [diagonal](../../../../Combinatorics/HalesJewettPublic.lean/declarations/diagonal.md) | 238 | `declaration-track:2e166eb196b7a24c491de81b7764c6302ad050a52ab44bf93d1ec185424b33c2` |
| 28 | `instance` | [(anonymous)](../../../../Combinatorics/HalesJewettPublic.lean/declarations/instance-source-edition-4.md) | 242 | `declaration-track:f84fb9f0dd0ebe9246645a6285ebe9e89e5012bddbc163654c2918cccdc224aa` |
| 29 | `structure` | [AlmostMono](../../../../Combinatorics/HalesJewettPublic.lean/declarations/almostmono.md) | 246 | `declaration-track:40aa989b2c6add324dc781a3fb6370c40c64c6b59498d234ea8e550e30e2d54d` |
| 30 | `instance` | [(anonymous)](../../../../Combinatorics/HalesJewettPublic.lean/declarations/instance-source-edition-3.md) | 256 | `declaration-track:cb026c64c866ea3e71194c454162bdb910766b413928f91d12734f33fbaf4992` |
| 31 | `structure` | [ColorFocused](../../../../Combinatorics/HalesJewettPublic.lean/declarations/colorfocused.md) | 268 | `declaration-track:09c7c2e3166190709689586214999416105bc7daa8211787a22f36768355182f` |
| 32 | `instance` | [(anonymous)](../../../../Combinatorics/HalesJewettPublic.lean/declarations/instance-source-edition-2.md) | 278 | `declaration-track:6903def0404611945a351500657bba6f9ff72ffcb84875adc434566d711b70b6` |
| 33 | `def` | [map](../../../../Combinatorics/HalesJewettPublic.lean/declarations/map.md) | 284 | `declaration-track:596fb91893100b7b45b7e7e3b3cf53600f593f38f97a1925dd36f8d7d8ffc9eb` |
| 34 | `def` | [vertical](../../../../Combinatorics/HalesJewettPublic.lean/declarations/vertical.md) | 289 | `declaration-track:84a097093bf7006e5a7893732fb97d99b0e5c61cb54a6a7af1d6afd66889d20a` |
| 35 | `def` | [horizontal](../../../../Combinatorics/HalesJewettPublic.lean/declarations/horizontal.md) | 294 | `declaration-track:479ee649bb111a2a055bcdf72454395a1f78e1e123073f543e5626116bff7b7d` |
| 36 | `def` | [prod](../../../../Combinatorics/HalesJewettPublic.lean/declarations/prod.md) | 299 | `declaration-track:c9101488304a3a26bbdb197fe75792828476f933047daa2536f62365c807e63e` |
| 37 | `theorem` | [apply_def](../../../../Combinatorics/HalesJewettPublic.lean/declarations/apply-def.md) | 303 | `result-track:2d2b0ec642fb7e78e56c522e40c207145d2719500adc25fc084a7893159d1130` |
| 38 | `theorem` | [apply_none](../../../../Combinatorics/HalesJewettPublic.lean/declarations/apply-none.md) | 305 | `result-track:9fc6640cd6242678ca1b0d24693bafada442a2b8346b877d66be7b2f3ffca574` |
| 39 | `lemma` | [apply_some](../../../../Combinatorics/HalesJewettPublic.lean/declarations/apply-some.md) | 308 | `result-track:664519bcde869a37c8409b51fd4b2559f34fb97c70555858a47654b89e359a31` |
| 40 | `theorem` | [map_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/map-apply.md) | 311 | `result-track:a04090a47ed0c9f7ecefec652cd921400a12c53df9a0afc4c4bb156c8d47164b` |
| 41 | `theorem` | [vertical_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/vertical-apply.md) | 315 | `result-track:8e476d5ecba2c1e3c105d955388dc7e826bad712df0c49fd5b9c5c8eb01561ab` |
| 42 | `theorem` | [horizontal_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/horizontal-apply.md) | 321 | `result-track:7280b3e5091e70e121634ae3f5e695f3ef9c3da1206855cd9c01a22340dc3a7f` |
| 43 | `theorem` | [prod_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/prod-apply.md) | 327 | `result-track:2f3d583908c2aae281582473ece242095ec9416b87f106be81cfa42ee51e363a` |
| 44 | `theorem` | [diagonal_apply](../../../../Combinatorics/HalesJewettPublic.lean/declarations/diagonal-apply.md) | 333 | `result-track:acf12ed5bea7ca458d7831df1f3fbd6600d03f7f7678360f4d4b32d711cd3df4` |
| 45 | `theorem` | [exists_mono_in_high_dimension'](../../../../Combinatorics/HalesJewettPublic.lean/declarations/exists-mono-in-high-dimension-source-edition-2.md) | 339 | `result-track:8a959780b97cf8533d3d089d8697c2f8dd1f6e08d81526a5a71748e893002d9c` |
| 46 | `theorem` | [exists_mono_in_high_dimension](../../../../Combinatorics/HalesJewettPublic.lean/declarations/exists-mono-in-high-dimension.md) | 448 | `result-track:3548932d2ad33270e5f4cb3058c1238256e9aae45a5a5c44e78ee2cfa23a9009` |
| 47 | `theorem` | [exists_mono_homothetic_copy](../../../../Combinatorics/HalesJewettPublic.lean/declarations/exists-mono-homothetic-copy.md) | 459 | `result-track:70e851b63a9d1add30e1c564fd1b1ca39ad648d62e6b7e10bb2ab4687dbfe02d` |
| 48 | `theorem` | [exists_mono_in_high_dimension](../../../../Combinatorics/HalesJewettPublic.lean/declarations/exists-mono-in-high-dimension-source-edition-3.md) | 492 | `result-track:c85c9a3214f8cc3e8354df9d71e29f0f4317502dc0bdce81467f9ec4f77a327f` |
| 49 | `theorem` | [exists_mono_in_high_dimension_fin](../../../../Combinatorics/HalesJewettPublic.lean/declarations/exists-mono-in-high-dimension-fin.md) | 504 | `result-track:196f137c64392d60883a1c72cfc8bd12b36cb2d35b98dca7eadd5222b6e3b55c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b03396499cc9b7c0a7506777a4aa8679570625d767368bdac87d48fe3410635f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
