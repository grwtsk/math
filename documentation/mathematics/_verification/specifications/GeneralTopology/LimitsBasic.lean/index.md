# Verification target: Limits Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57567c77edfdb571376aafcbd9851aa337e34edb",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LimitsBasic.lean/index.md) · [Full source](../../../../GeneralTopology/LimitsBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57567c77edfdb571376aafcbd9851aa337e34edb`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Adjunctions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limitCone](../../../../GeneralTopology/LimitsBasic.lean/declarations/limitcone.md) | 38 | `declaration-track:7bd1a5cfa240cb10710af06a95c8b95ed91eb44127a8f61622d5d81a565a9e99` |
| 2 | `def` | [limitConeIsLimit](../../../../GeneralTopology/LimitsBasic.lean/declarations/limitconeislimit.md) | 53 | `declaration-track:067c7ac8814f9441e7eac464d2200585c5bd63620da827b3c45339d6660d94bb` |
| 3 | `def` | [conePtOfConeForget](../../../../GeneralTopology/LimitsBasic.lean/declarations/coneptofconeforget.md) | 77 | `declaration-track:9fd3ba402b3530b4b21389d90dda67dfe1935190d7fd69e4116dce4ebcee3398` |
| 4 | `instance` | [topologicalSpaceConePtOfConeForget](../../../../GeneralTopology/LimitsBasic.lean/declarations/topologicalspaceconeptofconeforget.md) | 79 | `declaration-track:fdfa27b0f337ecb95a0f769c3e931bd0cf6b744a25cb5c37c9cbd09517d76976` |
| 5 | `def` | [coneOfConeForget](../../../../GeneralTopology/LimitsBasic.lean/declarations/coneofconeforget.md) | 87 | `declaration-track:dec393fd0c63d95230b2fb9a33ead751cc2d5382a53c970c5605172bc73ec9b1` |
| 6 | `def` | [isLimitConeOfForget](../../../../GeneralTopology/LimitsBasic.lean/declarations/islimitconeofforget.md) | 100 | `declaration-track:657230e6d4d293a378b94539a7ed71c99f135044413a1b2e19f4ef5ea6a3a0c9` |
| 7 | `theorem` | [induced_of_isLimit](../../../../GeneralTopology/LimitsBasic.lean/declarations/induced-of-islimit.md) | 120 | `result-track:18e24b60119f26152090c2e017d9bd00ce60b043f5e455289e06c0e5e7d2037b` |
| 8 | `theorem` | [limit_topology](../../../../GeneralTopology/LimitsBasic.lean/declarations/limit-topology.md) | 136 | `result-track:33a63ef62f544fa261e51178267f2184513c86a8e9bb4e22138e82e728b5bc90` |
| 9 | `lemma` | [hasLimit_iff_small_sections](../../../../GeneralTopology/LimitsBasic.lean/declarations/haslimit-iff-small-sections.md) | 140 | `result-track:cef5c5166d391a47ffb3f8380cff606b527c0bccc2e0b8318d1d073d209c1dc9` |
| 10 | `instance` | [topCat_hasLimitsOfShape](../../../../GeneralTopology/LimitsBasic.lean/declarations/topcat-haslimitsofshape.md) | 147 | `declaration-track:1bec991693ccc41895e7799507d292a9e670bf1a8e92e676dc546a083afdca62` |
| 11 | `instance` | [topCat_hasLimitsOfSize](../../../../GeneralTopology/LimitsBasic.lean/declarations/topcat-haslimitsofsize.md) | 153 | `declaration-track:2eed543d31b17edfad1ed7175e41d73de010868d0d680e060a19a423008f843d` |
| 12 | `instance` | [topCat_hasLimits](../../../../GeneralTopology/LimitsBasic.lean/declarations/topcat-haslimits.md) | 155 | `declaration-track:26890ed25bd7495e16b1d0094da400f8107f0be1be847054d0e8a96665335c5a` |
| 13 | `instance` | [forget_preservesLimitsOfSize](../../../../GeneralTopology/LimitsBasic.lean/declarations/forget-preserveslimitsofsize.md) | 158 | `declaration-track:a245dd9f8116fa779d43f24655b66aecf35e5655358b89001c593de2db474298` |
| 14 | `instance` | [forget_preservesLimits](../../../../GeneralTopology/LimitsBasic.lean/declarations/forget-preserveslimits.md) | 161 | `declaration-track:08e22b62eed079921fec81dc4cfa1cf29a16dbb94411fc13e792fd2c32afc442` |
| 15 | `def` | [coconePtOfCoconeForget](../../../../GeneralTopology/LimitsBasic.lean/declarations/coconeptofcoconeforget.md) | 176 | `declaration-track:d9a4b35a15e7b60ab077460521e368d063769d8e9199be7b4011735256aa7b37` |
| 16 | `instance` | [topologicalSpaceCoconePtOfCoconeForget](../../../../GeneralTopology/LimitsBasic.lean/declarations/topologicalspacecoconeptofcoconeforget.md) | 178 | `declaration-track:ec051aaf92a68304e1522ae33d11bd26ee8a9e8b1c16a72bc4696d03270c3ec7` |
| 17 | `def` | [coconeOfCoconeForget](../../../../GeneralTopology/LimitsBasic.lean/declarations/coconeofcoconeforget.md) | 186 | `declaration-track:1d7e9067a3b457d08d749de9b7f02ace131b5fc206651b35851b962dbae0ce66` |
| 18 | `def` | [isColimitCoconeOfForget](../../../../GeneralTopology/LimitsBasic.lean/declarations/iscolimitcoconeofforget.md) | 199 | `declaration-track:c43465953dcf6acc04a977a607b6bf263bc38bc6219beb30785c09ddb25a3f39` |
| 19 | `theorem` | [coinduced_of_isColimit](../../../../GeneralTopology/LimitsBasic.lean/declarations/coinduced-of-iscolimit.md) | 222 | `result-track:5d6b0034901321b065a9c4199cc01c9e30d0908d4624bb71253942c9662f6e84` |
| 20 | `lemma` | [isOpen_iff_of_isColimit](../../../../GeneralTopology/LimitsBasic.lean/declarations/isopen-iff-of-iscolimit.md) | 235 | `result-track:dd202fe098b3d8f9a2167b22cdb0e2580020f5b7fa620a8324c7454d969fda6e` |
| 21 | `lemma` | [isClosed_iff_of_isColimit](../../../../GeneralTopology/LimitsBasic.lean/declarations/isclosed-iff-of-iscolimit.md) | 242 | `result-track:dc8f131d4f7196ad244e19a4d189508122c8703671014e3519358632ad964ca1` |
| 22 | `lemma` | [continuous_iff_of_isColimit](../../../../GeneralTopology/LimitsBasic.lean/declarations/continuous-iff-of-iscolimit.md) | 247 | `result-track:833e1e11779a44495ed9baec71084e962ece91a51d62533f8628e4b892facccc` |
| 23 | `theorem` | [colimit_topology](../../../../GeneralTopology/LimitsBasic.lean/declarations/colimit-topology.md) | 256 | `result-track:9e1f0e56fee56f13c3c68d7615962f1b2e1e421fcf5962e861c8f0cc918ee014` |
| 24 | `theorem` | [colimit_isOpen_iff](../../../../GeneralTopology/LimitsBasic.lean/declarations/colimit-isopen-iff.md) | 260 | `result-track:71c359f6d2c23561a423071f5ded1edbeeab50bf7cdd8f4361443a51f3da2d72` |
| 25 | `lemma` | [hasColimit_iff_small_quot](../../../../GeneralTopology/LimitsBasic.lean/declarations/hascolimit-iff-small-quot.md) | 265 | `result-track:eb61f72a626e624515e3f586557188904bccac15712d011fbae2ea1a6a851035` |
| 26 | `instance` | [topCat_hasColimitsOfShape](../../../../GeneralTopology/LimitsBasic.lean/declarations/topcat-hascolimitsofshape.md) | 272 | `declaration-track:b20cf90a46766f0ebbfd8912589b21cc3dc99a0bbc475f6e4043a6c6924017b1` |
| 27 | `instance` | [topCat_hasColimitsOfSize](../../../../GeneralTopology/LimitsBasic.lean/declarations/topcat-hascolimitsofsize.md) | 278 | `declaration-track:484d916ca68001859cecd08f1ddc249e5c7543bb302aa0366ea2d0c3e132b4d3` |
| 28 | `instance` | [topCat_hasColimits](../../../../GeneralTopology/LimitsBasic.lean/declarations/topcat-hascolimits.md) | 280 | `declaration-track:121720f3d8ef532fae362c21de3d0ef3e7ee3d2459ed6dcb6e023e134e28d98e` |
| 29 | `instance` | [forget_preservesColimitsOfSize](../../../../GeneralTopology/LimitsBasic.lean/declarations/forget-preservescolimitsofsize.md) | 283 | `declaration-track:0fefeca32282250f9b891cea8af936ea157a00118f5058b82f7ff018e4ebdf49` |
| 30 | `instance` | [forget_preservesColimits](../../../../GeneralTopology/LimitsBasic.lean/declarations/forget-preservescolimits.md) | 286 | `declaration-track:1dfd17eba2adb5d65023898a3992cd80da259af041e8ae90616807653e69084e` |
| 31 | `def` | [isTerminalPUnit](../../../../GeneralTopology/LimitsBasic.lean/declarations/isterminalpunit.md) | 291 | `declaration-track:e87d182f0173b89dafc48d5f6684febe5732fa515d3d9c8feaed63d9bd62c647` |
| 32 | `def` | [terminalIsoPUnit](../../../../GeneralTopology/LimitsBasic.lean/declarations/terminalisopunit.md) | 297 | `declaration-track:8ef6b852f5085ee79019da8eddfdc8d7dec9bb87ffb2ef78d24ed280c5f1d110` |
| 33 | `def` | [isInitialPEmpty](../../../../GeneralTopology/LimitsBasic.lean/declarations/isinitialpempty.md) | 301 | `declaration-track:54577648b087adcb3e7c94d930312535696249b1f00c8f9b30cd73f950e3c1ec` |
| 34 | `def` | [initialIsoPEmpty](../../../../GeneralTopology/LimitsBasic.lean/declarations/initialisopempty.md) | 307 | `declaration-track:9a32b90978793d6fd976cf56ce3dbda23c3e7b9f1128c83133fe2fb0a7034ec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bafa9480aa4625aef8b78ef81bf4a918ed0bd647c2e1d44012d6387e7d2fd1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
