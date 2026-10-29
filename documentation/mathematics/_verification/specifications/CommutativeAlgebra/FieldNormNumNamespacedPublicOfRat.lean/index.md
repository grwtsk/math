# Verification target: Field Norm Num Namespaced Public Of Rat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f5da884e88f24480c5970a8a08091ff4ac917c0",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f5da884e88f24480c5970a8a08091ff4ac917c0`.

Source path: `GRWTSK/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Rat.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ofRat](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat.md) | 26 | `declaration-track:9e269313906726b8f82fafaf53465f563064afc363f986d0493a4d0a847fd1ed` |
| 2 | `theorem` | [dvd_helper₁](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/dvd-helper.md) | 33 | `result-track:621b97502cbd7b5730d419f6b15b9cd3f4c9e1721b6a1f4a48b27fc3d4eb048f` |
| 3 | `theorem` | [dvd_helper₂](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/dvd-helper-source-edition-2.md) | 35 | `result-track:6eaf289e69fdf613623b15ec99966e8da69bc7ea1ecbfd06d36c4a13bb201211` |
| 4 | `theorem` | [nonzero_helper](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/nonzero-helper.md) | 38 | `result-track:7ef6e7b83c0458a7f6893d5222205d3fb3ec2d05cde939a1905fe18f22fb158c` |
| 5 | `theorem` | [ofRat_add'](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-add-source-edition-2.md) | 50 | `result-track:d8d0279e5543a6f9ec9357a88f8fd045b8c9bcd6940f7b152332e7d16926eb6a` |
| 6 | `theorem` | [ofRat_mul'](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-mul-source-edition-2.md) | 61 | `result-track:c826909f33240fea8deefa995ca559a3449846dc35800903cdfc452b1dd97320` |
| 7 | `theorem` | [ofRat_add](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-add.md) | 71 | `result-track:78fc3c8b770989e94a43806267f5d2b2453a82d412ea3339ae8dfa2ec677f25a` |
| 8 | `theorem` | [ofRat_mul](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-mul.md) | 75 | `result-track:11689470a533fb7d824c5cfb4e479b5efd335082d442c86013f1f4970a22f587` |
| 9 | `theorem` | [ofRat_inv](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-inv.md) | 78 | `result-track:78191e70d39304c4b35ddcfc56ef399f666b19dfba5bc507ef02ba62976548a2` |
| 10 | `theorem` | [ofRat_div'](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-div.md) | 95 | `result-track:71d2ebc33782166ede9b1ce9fbcf0b5451458f6d8b50f8da37a2381684046b46` |
| 11 | `theorem` | [ofRat_div](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-div-source-edition-2.md) | 109 | `result-track:c2d8dea4daa730246723bc30429fa28709e0d6eee6c735e8f7109536eb3a50cf` |
| 12 | `theorem` | [ofRat_neg](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-neg.md) | 112 | `result-track:df4865bcac2272ddfbc71a15afa0fe0b4cbd6c224f0c633866016f86284573ca` |
| 13 | `theorem` | [ofRat_sub'](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-sub.md) | 115 | `result-track:87f6501f7b39f999e0967c11881dafd7abb2f8c02e1c90f0d2974173827e0787` |
| 14 | `theorem` | [ofRat_sub](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-sub-source-edition-2.md) | 120 | `result-track:97bad5a502e2587b99d40e1269226b6c6ce6513b41d2fe755a6da6a7cebab1cb` |
| 15 | `theorem` | [ofRat_npow'](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-npow.md) | 124 | `result-track:b2a16dd2848540e3c922ce39662ad47fc326c8f2b2a1ef6c75514a2d41b890a6` |
| 16 | `theorem` | [ofRat_npow](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-npow-source-edition-2.md) | 144 | `result-track:ec110b716eaebc8a5b446edf502d4ae214a622143180670862ea66a78e144788` |
| 17 | `theorem` | [ofRat_zpow'](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-zpow.md) | 149 | `result-track:3e06e2936b9339c77d002ed11ef5a79b41313039ec35ca23bfa2d73998d27482` |
| 18 | `theorem` | [ofRat_zpow](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofrat-zpow-source-edition-2.md) | 158 | `result-track:85fd569a1a06dd439f17e201fa24ec22dc6d786492abad5882e6660ad0e5d0a6` |
| 19 | `theorem` | [natCast_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/natcast-eq.md) | 167 | `result-track:865d2289ee16760aa2ba48584be43f9070aede65a73d19fcd5b6c7d7598bdcf9` |
| 20 | `theorem` | [ofNat_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/ofnat-eq.md) | 171 | `result-track:7a284da6a13200478c5429dc62a9277381aa6766c9a2729905014751fd535923` |
| 21 | `theorem` | [intCast_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/intcast-eq.md) | 175 | `result-track:21db8fdc962faa5aa23973687eda26e189453816ae9780782ecd5e36ad5904fe` |
| 22 | `theorem` | [add_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/add-eq.md) | 178 | `result-track:19f2c918781519174dc459a9624a745a7497eb93b3b4cc4a704971a945ac19b2` |
| 23 | `theorem` | [sub_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/sub-eq.md) | 182 | `result-track:75fdcc117bb4a797b3ad62fac2dfa8ee73150545f3ed73343c59a210dac2e039` |
| 24 | `theorem` | [mul_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/mul-eq.md) | 186 | `result-track:b1b2bc89322346db58a7651e33b8e4bb3fc23fb90354158e6de7313aabf704ba` |
| 25 | `theorem` | [div_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/div-eq.md) | 190 | `result-track:5ff1d5c7805e380d920c20fdcc5264ff0c5e4115f3b67632f0551f40eb5cfad7` |
| 26 | `theorem` | [inv_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/inv-eq.md) | 194 | `result-track:c553caa64446094f05c6d4e4b4cec3b5fa04f56ff5103d47934e878216bf8697` |
| 27 | `theorem` | [neg_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/neg-eq.md) | 198 | `result-track:846197aa6e207a30898363a19d008946964b5e5ccf41af06f6ed7cf04817e748` |
| 28 | `theorem` | [npow_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/npow-eq.md) | 202 | `result-track:6097af57c50549014ad939e39b93ccbc23749863b9169da235e338b251c7c6de` |
| 29 | `theorem` | [zpow_eq](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/zpow-eq.md) | 206 | `result-track:d11289ec6a989517932bcda25df488b61b17a4a0a097eacdc2f01f14bc5ba3d4` |
| 30 | `theorem` | [eq_int](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/eq-int.md) | 210 | `result-track:b12a9060cb4f2ceb55c322b4d5a7c2a30c5e097f71541960673d72907fbe5a14` |
| 31 | `theorem` | [eq_inv](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/eq-inv.md) | 217 | `result-track:030dc3fc8d5c45aab5008cdc45dac3828701043e24640130e2150f34d5fe5fcc` |
| 32 | `theorem` | [eq_mul_inv](../../../../CommutativeAlgebra/FieldNormNumNamespacedPublicOfRat.lean/declarations/eq-mul-inv.md) | 224 | `result-track:fd4cc205329d146742c59459a482f16aa3556325252bd49cb726eddff0191e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7a309ec535beaa9e33a97b7a8bbe4f2827a753091ef1ec5cfdd77b13c562ea5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean","GRWTSK/_verification/specifications/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
