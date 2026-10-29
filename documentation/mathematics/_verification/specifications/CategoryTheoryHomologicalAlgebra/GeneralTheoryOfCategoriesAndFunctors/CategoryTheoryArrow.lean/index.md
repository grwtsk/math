# Verification target: Category Theory Arrow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25adda394af29fc0be5a8d77684f8a4e8c4aaf3a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25adda394af29fc0be5a8d77684f8a4e8c4aaf3a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/arrow.md) | 36 | `declaration-track:54e654902243984d00d3c50ebcef08c9892be665976fd45443081c9e344b1256` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/instance.md) | 41 | `declaration-track:2006619d52c5c17ea41519887e0b4ae89b9b251567bfb3d9e1709cc2afda29fc` |
| 3 | `instance` | [Arrow.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/arrow-inhabited.md) | 44 | `declaration-track:0351b14f2cc220eea4db7df320ff88c9f4ecc6c6b4895e8752d8adc7bd0773de` |
| 4 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/hom-ext.md) | 53 | `result-track:6135ed559772a2048c4dcc4ec1ae24d608a04566f2f2fdfe499c2fe69befb759` |
| 5 | `theorem` | [id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/id-left.md) | 58 | `result-track:835ee271deddb02883c847d4297d3b34f76f2345fe1eb4ba3c3581e83503f0ef` |
| 6 | `theorem` | [id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/id-right.md) | 63 | `result-track:682247eef4dba4366f4c52765023ba33ba2fa807e292681f764ad115aac17d0d` |
| 7 | `theorem` | [comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/comp-left.md) | 69 | `result-track:46826c52a4aaa039ecd7169b3452f13930ebc6c724aa9a7ac4fc0a0b20566cd5` |
| 8 | `theorem` | [comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/comp-right.md) | 74 | `result-track:5592ec6239b606784b4eecec13077de713cb7a0d9fd69a9cd782d0a25fe9dfa0` |
| 9 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/mk.md) | 79 | `declaration-track:85b0d81f7860ac2f11f61e04e282154c8b610f628f63cb8f1eeb2a51920e1576` |
| 10 | `theorem` | [mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/mk-eq.md) | 86 | `result-track:d13f5503917f430dbd5f30ad8d9d22022cfda0afb7a0bb68decdd3e889a8d6a8` |
| 11 | `theorem` | [mk_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/mk-injective.md) | 91 | `result-track:47a26d3b8d4dd549fa265ed3d9fa310fef581b66235a78c786d7309b35588a24` |
| 12 | `theorem` | [mk_inj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/mk-inj.md) | 97 | `result-track:96a7f3ae7555c3c488da84b2c2924a74f2540efc5370468334b6b42ef297c434` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/instance-source-edition-2.md) | 102 | `declaration-track:6a099fba0a2d277d4f5351f8b1dca7c8b8033d6f0c7defdeaed591f006c0e6dc` |
| 14 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/hommk.md) | 108 | `declaration-track:817da747410d02bf8f5a86becd23445228916adc556171869af9260954be4da0` |
| 15 | `def` | [homMk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/hommk-source-edition-2.md) | 117 | `declaration-track:f91e72e70a8af2d28766fa95167560dcbefb7a0f89efbe73798d563e24629a02` |
| 16 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/w.md) | 127 | `result-track:b6a6e923f6e2a8829dd7e8b03e1e9e55e3e94c61fdc950b0e11ff48c1118a19e` |
| 17 | `theorem` | [w_mk_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/w-mk-right.md) | 133 | `result-track:d46d811c3ef93953dd1e29b27a0ba5e46087347432c5aac9f6abc09a7412ed52` |
| 18 | `theorem` | [isIso_of_isIso_left_of_isIso_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/isiso-of-isiso-left-of-isiso-right.md) | 138 | `result-track:53b8e7ca3e4f0851d19e83e9ad1a890bd93399209561e297b15f919ebe7e582c` |
| 19 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/isomk-source-edition-2.md) | 150 | `declaration-track:cdf690bf88395745ed371efe92818571739f9d70ddb907020010fe8c51a59098` |
| 20 | `abbrev` | [isoMk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/isomk.md) | 157 | `declaration-track:68ff1faec6565f4f8f0b1a3bb51dd33517f913ceac151719b6304de65c93ac94` |
| 21 | `theorem` | [hom.congr_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/hom-congr-left.md) | 162 | `result-track:f1d56e4cce692c5b640f7b2dc1cbb123aebd687e0f8b65840d51ea4f3ca807ac` |
| 22 | `theorem` | [hom.congr_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/hom-congr-right.md) | 167 | `result-track:412eedabcf1cfa3e02e59bbf4d1e9154a70b0fd444eb6be2dec5d46a870105d1` |
| 23 | `theorem` | [iso_w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/iso-w.md) | 171 | `result-track:b54d70bdf0ee54bfcc433e4089b97f580ad1431050d7be4e081bb8613d3688c9` |
| 24 | `theorem` | [iso_w'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/iso-w-source-edition-2.md) | 177 | `result-track:fd58b6dcbe1ec138ae5a866386351f72851663c212dca8f82137a31e2d777118` |
| 25 | `instance` | [isIso_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/isiso-left.md) | 186 | `declaration-track:77e6980c036a8951eba0e280827ff47dec8a682173d6b003c5ae044e888da376` |
| 26 | `instance` | [isIso_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/isiso-right.md) | 194 | `declaration-track:f95a5ae2c23616f685b11cb874bf5713b40db75dc2b8c91ee9dc34a69a689f38` |
| 27 | `theorem` | [inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/inv-left.md) | 203 | `result-track:b57db66320644284f7b23bdaf9051256e6f50be5ab3c8daf686bfcaca307177f` |
| 28 | `theorem` | [inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/inv-right.md) | 208 | `result-track:c9edc18ae74a0c39670fbd21f64d14409f36fe2f3e60d8448c7aff2de1f5e24c` |
| 29 | `theorem` | [left_hom_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/left-hom-inv-right.md) | 213 | `result-track:b573505163ebe3b0da633ffbb7e5e2d5da10531ef3a257e29ddd396ae99548c5` |
| 30 | `theorem` | [inv_left_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/inv-left-hom-right.md) | 218 | `result-track:f70a32dcaa6271f7197ef970e9b9b83a3d86c4d058306e7736d59f4d2d8822f4` |
| 31 | `instance` | [mono_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/mono-left.md) | 222 | `declaration-track:09e129f6e5b6d18bb9472e73426ce15ded391d4d377a255e38d2d2b380baccac` |
| 32 | `instance` | [epi_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/epi-right.md) | 238 | `declaration-track:7b0b5dfd27d15b1226cc6621c6f05ac29d108b8272514e958d1e0faf6ed8aa10` |
| 33 | `theorem` | [square_to_iso_invert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/square-to-iso-invert.md) | 256 | `result-track:ca3f8b0c2938b3dd5a3aacf4b275dedc7feb865415a9b08ee04dea7bcfd65038` |
| 34 | `theorem` | [square_from_iso_invert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/square-from-iso-invert.md) | 263 | `result-track:c733955edb564b41f84ce5f9e4774785261b5bd1f3ebefad2073aba91bceeeef` |
| 35 | `def` | [squareToSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/squaretosnd.md) | 278 | `declaration-track:f7b37bd5846c7a88de190b4ac7bbf9ced72c1735fd9bf0ea44ff039b13221015` |
| 36 | `def` | [leftFunc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/leftfunc.md) | 286 | `declaration-track:e072479a662474b21942aa141dc4288114f8c4fda1472333142643a7e0ef8ca6` |
| 37 | `def` | [rightFunc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/rightfunc.md) | 292 | `declaration-track:60d0232d9b06530cb98f8abf6eb79faeeb9b9624d16f95c24a3de389dd943ab8` |
| 38 | `def` | [leftToRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/lefttoright.md) | 298 | `declaration-track:ecc5026c5ce25afae030c54149368c80e5b28513b838b0f1dc49e0298f9a5b56` |
| 39 | `def` | [mapArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/maparrow.md) | 311 | `declaration-track:8e8a222a16c0e4476920ee578fa009003ae76325de897ba4256b9d6f8efce305` |
| 40 | `def` | [Arrow.isoOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryArrow.lean/declarations/arrow-isoofnatiso.md) | 330 | `declaration-track:55bc8f66984b2d3c50eb56dc663d9f9e716a0c4224f83c1426ad6ad5398f373d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa9c630a89c92caa9a132c7eaac8bad7a698eb63c6080e49f77be739055b14ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
