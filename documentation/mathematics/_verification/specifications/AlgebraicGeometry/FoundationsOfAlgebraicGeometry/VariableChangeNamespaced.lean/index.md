# Verification target: Variable Change Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "966a35b23963e2357f57e1630d1593901ce200ca",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `966a35b23963e2357f57e1630d1593901ce200ca`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/macro.md) | 42 | `declaration-track:e378a23535a973d4b61722ff0f15d1793df9d7b52e134dcfa7317410f7ba32e9` |
| 2 | `structure` | [VariableChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-source-edition-2.md) | 61 | `declaration-track:b5cc264bc7fc073d6c49d606c32a60f1020386f517b58fb7ec3c0957f5320b9f` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/instance-source-edition-7.md) | 75 | `declaration-track:ca0716d0ff5fe62808e24ec2c2cf3c234f4c395ad6f9ec7858688ba266e3bfae` |
| 4 | `lemma` | [one_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/one-def.md) | 79 | `result-track:a44f501db55d13fc49cdc5153785cbea5ae951582d1650b1df984eed8a0d840b` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:6a4e0c24a86f515ea579a45dba3f7e738e7dafb8f72a2ab1f5626b44475f2589` |
| 6 | `lemma` | [mul_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/mul-def.md) | 89 | `result-track:ecdec3e58b10eb1405c5293728458a33aa5a129fcc54e289b9cee3921614cd16` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/instance.md) | 95 | `declaration-track:0e1bffcfbff7768acc0c6d12aef71b34c1fd8474e8872cec419d3eb7b5671702` |
| 8 | `lemma` | [inv_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/inv-def.md) | 103 | `result-track:ba372691e4bd0c80bcbea2d648c9df1136d91149ba52c32a8d99b1d3bcd19865` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:55f7cd7a99925ffff8991eaf9312a672d5aa571943dd276c01d39662c14a465a` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/instance-source-edition-5.md) | 129 | `declaration-track:9d5d550f82500c60dfb60ad11fd1608cc301d2bae2de5c49db892f8bd47985ac` |
| 11 | `lemma` | [variableChange_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-def.md) | 141 | `result-track:b32ba36018153ac06209ccde2ebd4147d465f3f72e34c115aa429ed12e0a8a81` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/instance-source-edition-6.md) | 150 | `declaration-track:afda8eaec2133863129583421e09c98a0846a27581eacb7169607d40c5753525` |
| 13 | `lemma` | [variableChange_a₁](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-a-source-edition-5.md) | 182 | `result-track:f501184a99c1a899fd760e18185bd8330a81830778e0861c023991fbcae32d0b` |
| 14 | `lemma` | [variableChange_a₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-a.md) | 185 | `result-track:0c8467679e5c1a2632a5bb92198a9cc7f9dfcaa2888cb7568db13fa35c7fa35f` |
| 15 | `lemma` | [variableChange_a₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-a-source-edition-2.md) | 188 | `result-track:89a6f34f275e5ac7546dbb140ef41b89483640549d11f6912472a0b176fbf3d0` |
| 16 | `lemma` | [variableChange_a₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-a-source-edition-4.md) | 191 | `result-track:d435c512b6d06dd3b3f403419ae46e99b0f0dbbfbbedee5317fa64077c5401b8` |
| 17 | `lemma` | [variableChange_a₆](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-a-source-edition-3.md) | 196 | `result-track:aa7d618dceff26619a1081bd0ddac0560f005c19c64f4e0b30fedd455196d1fb` |
| 18 | `lemma` | [variableChange_b₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-b.md) | 201 | `result-track:2c3a28383c0fc13966b2f656822d4b0184087a25135644bcf0e5a4fc02b0acb0` |
| 19 | `lemma` | [variableChange_b₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-b-source-edition-2.md) | 206 | `result-track:734b22885fc082ace26075466615906b47d85d2dedf45adb62d24c7ad943ddb0` |
| 20 | `lemma` | [variableChange_b₆](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-b-source-edition-4.md) | 211 | `result-track:bded334e2fb9a9f06b2d651f1c9f8768cc8af8c98062c46acd9b0ef10a8a1051` |
| 21 | `lemma` | [variableChange_b₈](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-b-source-edition-3.md) | 217 | `result-track:a6f91a4635c3bb60cd8c23aef0d20b30d0bbae10e36d6c7a559d49e8d79a51e3` |
| 22 | `lemma` | [variableChange_c₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-c.md) | 224 | `result-track:4c3c867aab7cb5dcbe9bc9c84062b563f04cf1ea85bce8f901625f932af0bcd6` |
| 23 | `lemma` | [variableChange_c₆](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-c-source-edition-2.md) | 229 | `result-track:f0fbfa221f3e0bfa3a7586b035fc14be20f3e137f533f856e74d4ca550b85543` |
| 24 | `lemma` | [variableChange_Δ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-source-edition-3.md) | 234 | `result-track:bd54aec54b48b0895c4cee9031d4444711853df10973a8bc24a8d2f588696f5f` |
| 25 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/instance-source-edition-4.md) | 241 | `declaration-track:99e3f697e03b680bdb878e6e58275c6bae5be43b6595aa035aeaf88ff67c5e98` |
| 26 | `lemma` | [variableChange_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange.md) | 247 | `result-track:2b858c309c63c0cfc129f678b8abf919641d5af68c298f960c11d0496c153792` |
| 27 | `lemma` | [coe_variableChange_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/coe-variablechange.md) | 251 | `result-track:76a75a0fa644ba0c232f5ad3a53e6296425f680b2ca2071d4487467a517124a2` |
| 28 | `lemma` | [inv_variableChange_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/inv-variablechange.md) | 255 | `result-track:f36a9da78d7babe3926dffad89e9b5671c03e25e8fb39597c54fe355752d01cc` |
| 29 | `lemma` | [coe_inv_variableChange_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/coe-inv-variablechange.md) | 259 | `result-track:e1e316545a3ae9f18f83ae7d29fd47fbd658953980aa60510545db6b60f5f37e` |
| 30 | `lemma` | [variableChange_j](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/variablechange-j.md) | 263 | `result-track:1a590f5d9b81630149c41b46f258acac96021ac612ce291fe574dfd8a99c22f3` |
| 31 | `def` | [map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/map.md) | 281 | `declaration-track:d83efbb0b1f9c4c15e07699c9ee65773535530b48ab22f1f00e52d647b369b71` |
| 32 | `abbrev` | [baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/basechange.md) | 286 | `declaration-track:2f071de9315516b2616a85911b5a83e231f03ac6ed2b0ad77e37bdc0b8310edf` |
| 33 | `lemma` | [map_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/map-id.md) | 290 | `result-track:c2f3554bd8f5bbb9704bf0fda605aed3f901653f544350a385ccf6741f2d9a75` |
| 34 | `lemma` | [map_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/map-map.md) | 293 | `result-track:6cdf781a87aa7ef7b555f3a242140cf0ea69c88b1c9c2d548f7b3e00e79c51ab` |
| 35 | `lemma` | [map_baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/map-basechange.md) | 298 | `result-track:e0349eaf769e8da03b89045570c49d7eea564e92a19cc94eb2644d23676a3b8d` |
| 36 | `lemma` | [map_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/map-injective.md) | 303 | `result-track:013f289d580d02719545593117c10118dc2f3ab1c78fe5350f2c7106143a6850` |
| 37 | `def` | [mapHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/maphom.md) | 310 | `declaration-track:309c829c471c94def20a6afb9444dbb4bcbff1a136e73e74c82a439afca818b3` |
| 38 | `lemma` | [map_variableChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/VariableChangeNamespaced.lean/declarations/map-variablechange.md) | 321 | `result-track:79470a78111eecd505c332c142c61e5e7e71696efef15a40f9b60d34c245b654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5242ddc2197599c683d314131caca6ed2bef2aaf15fa49594c1015136c35f4e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
