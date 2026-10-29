# Verification target: Finitely Generated Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7b0b4a64339967e3f5989d67901851392482c4b",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variant9c6f289766f40c37b5a816c0a067db4d795a39b167b020f6d7fa5a729b5d0f8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7b0b4a64339967e3f5989d67901851392482c4b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variant9c6f289766f40c37b5a816c0a067db4d795a39b167b020f6d7fa5a729b5d0f8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variant9c6f289766f40c37b5a816c0a067db4d795a39b167b020f6d7fa5a729b5d0f8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Substructures` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-source-edition-2.md) | 51 | `declaration-track:6df34511518c122d95a1e8a356a187cac9a27de0d7e64f356f11ab16fb63eea2` |
| 2 | `theorem` | [fg_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-def-source-edition-2.md) | 54 | `result-track:fe9b326a380c66652e594a248e2e32c16e51d0a7d94ebc5ae55bff6841098da1` |
| 3 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-iff-exists-fin-generating-family.md) | 60 | `result-track:98b316b85cb67030864cde7531a0d204bac4a3b4b8bc4390a7535e1b7b81075d` |
| 4 | `theorem` | [fg_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-bot.md) | 70 | `result-track:adc4ae382e3734c850be68def91c8dfa5250e1a72cd8ae956d20866ff5a3a18d` |
| 5 | `instance` | [instInhabited_fg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/instinhabited-fg.md) | 73 | `declaration-track:e19ecba8c93fe24c5d969060855a1e1c902782ccbba53ce73bf75054ce92cd70` |
| 6 | `theorem` | [fg_closure](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-closure.md) | 75 | `result-track:23f283f1f89ed343eb60dd0c25d12ffd1db26a3cebe1d23144b8221b3bfa4b5b` |
| 7 | `theorem` | [fg_closure_singleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-closure-singleton.md) | 78 | `result-track:ecdb388f8347dbb2d1e59d1eea354d840b93cd56f865ac2afbf0ff9226c78978` |
| 8 | `theorem` | [FG.sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-sup.md) | 81 | `result-track:d77c8f7c02799f3b1316c0f162a8efca6883eac5d94036bc5aa0ac36e3777127` |
| 9 | `theorem` | [FG.map](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-map.md) | 86 | `result-track:e97f94e1abb0e6cb1bc4109a103cf0fb326bbdc75a25e2a036bad9ea08fa59f4` |
| 10 | `theorem` | [FG.of_map_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-of-map-embedding.md) | 91 | `result-track:99c779a21177ddf1d73f9eaea242922d5bf3fac376d300c035eddc62399b7cc6` |
| 11 | `theorem` | [FG.of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-of-finite.md) | 104 | `result-track:790571ddb7e98a1230627b0048dd6815fc1cb20aef2e0bfc61b603dd9e24560c` |
| 12 | `theorem` | [FG.finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-finite.md) | 107 | `result-track:3e41e6b3cf88519c6c7775ea68cee9f17e7cb29e7d7a1f4a159223f5ca0535c9` |
| 13 | `theorem` | [fg_iff_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-iff-finite.md) | 113 | `result-track:89b925f58216fa9fb4048e4988ae50a20848c4c8acce3ce0e2b8805114f2a38b` |
| 14 | `def` | [CG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-source-edition-2.md) | 118 | `declaration-track:c93dfe54822c1dbbd6e743f497925f94838923558c8c2a572f6b2f13df4f685c` |
| 15 | `theorem` | [cg_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-def.md) | 121 | `result-track:616a480638089796657e3c15a9fbdc33e51908d40827feb36b2a5ac81915169b` |
| 16 | `theorem` | [FG.cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-cg.md) | 124 | `result-track:450613882393580c963c0bcd01a2b97d6b0a41cce43cd2b086ef5667a36488f8` |
| 17 | `theorem` | [cg_iff_empty_or_exists_nat_generating_family](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-iff-empty-or-exists-nat-generating-family.md) | 128 | `result-track:4cabb4221164032ed6ddd91a7e572e4cd95f59c821b7896c62a788513b2d3467` |
| 18 | `theorem` | [cg_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-bot.md) | 149 | `result-track:02b534ee12ac391ab7882f86d82af751053c418b034a970b4768b9ef9d0d7b4f` |
| 19 | `theorem` | [cg_closure](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-closure.md) | 152 | `result-track:8ceac1fe6074f693603fe80b6f14e851933a5ef009762bf828f28cc40295b7df` |
| 20 | `theorem` | [cg_closure_singleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-closure-singleton.md) | 155 | `result-track:d0b21f1837bcada247e8eb11deec1fe820199532226dcbbaa92df86435d3a7a3` |
| 21 | `theorem` | [CG.sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-sup.md) | 158 | `result-track:9caa9e1b0d5124440b5c88c1f0987522ea2b5017c1ca57ef4875bce2962166f9` |
| 22 | `theorem` | [CG.map](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-map.md) | 163 | `result-track:5d506cad4e45b58c941233398a2cd7e34360162741a4e1906d587e0df32164b0` |
| 23 | `theorem` | [CG.of_map_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-of-map-embedding.md) | 168 | `result-track:90cd2a076f7dab4a553e30224a19becdf97bc68a5efcef79a18b4307b9a99267` |
| 24 | `theorem` | [cg_iff_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-iff-countable.md) | 181 | `result-track:83c191df04ea414c2625941c0543090e64bcc1bbed00cdb9b86f859b3b18e670` |
| 25 | `theorem` | [cg_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-of-countable.md) | 187 | `result-track:8add026deb73357bd4ee8e0c07833d64a29a5db15fb60cce44ffab2e4bd7e2bf` |
| 26 | `class` | [FG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg.md) | 199 | `declaration-track:44e8fcfcb12b37463bf8c94dbdad3fe987698211b4c3e481bc37ad513292b6fc` |
| 27 | `class` | [CG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg.md) | 203 | `declaration-track:427a5f82034c4888f5fcdfed9204a886e05ba93b9a5c33cbb7c02bf3ecebd27c` |
| 28 | `theorem` | [fg_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-def.md) | 208 | `result-track:842647dad6adbe290da7f8567e948d26386bfc08846726cb2e73d7bb9b351a2c` |
| 29 | `theorem` | [fg_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-iff.md) | 212 | `result-track:b44c60d0d7b73e745a3f871e9f5245dc263739d58b6d9c8ac97a9d05b9b412c0` |
| 30 | `theorem` | [FG.range](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-range.md) | 215 | `result-track:aa7118266da8e530443b087a62744454ac00fa236dea8923d12d3f9e59c8658d` |
| 31 | `theorem` | [FG.map_of_surjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-map-of-surjective.md) | 219 | `result-track:f49afa31787eb4bc82715f84c9b89c3977871456968f88209a2141ef582ada31` |
| 32 | `theorem` | [FG.countable_hom](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-countable-hom.md) | 225 | `result-track:a9f6b7fcaafa09cf181c0004e75ffabeb09f363e4f6e8e7cc4e88cd6591b2702` |
| 33 | `instance` | [FG.instCountable_hom](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-instcountable-hom.md) | 238 | `declaration-track:a4fd82eb669067e88c95e4c01e57d2da07a6b06711ec2f15c7e1ea6f3955d2d6` |
| 34 | `theorem` | [FG.countable_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-countable-embedding.md) | 242 | `result-track:4d00a2985b335ed370e7a4d265b89045f04a39120cec1c86808e2591bc578a44` |
| 35 | `instance` | [Fg.instCountable_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-instcountable-embedding.md) | 246 | `declaration-track:55a9b4a7d4eeaee44456f33ebb778d08b2312bd9185dd312bd76592070b21395` |
| 36 | `theorem` | [FG.of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-of-finite-source-edition-2.md) | 250 | `result-track:ebfc000a58da7a70beeafbfe0539ab48d367cdc5432ea557290e0e8144c57520` |
| 37 | `theorem` | [FG.finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-finite-source-edition-2.md) | 253 | `result-track:70bb4becfda423beb28b9baa5d1076ccd62fb3576b7667fa59adddb7a80a54ac` |
| 38 | `theorem` | [fg_iff_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-iff-finite-source-edition-2.md) | 256 | `result-track:c7044bd877b96c90daab74e2240b786617505c4b11b190522b01d00f8ab2d0bd` |
| 39 | `theorem` | [cg_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-def-source-edition-2.md) | 259 | `result-track:db92fea8dacd673f93fc58614ab01c972cc2c4855dfe24d166be47bb62846619` |
| 40 | `theorem` | [cg_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-iff.md) | 263 | `result-track:06d60dd0e3fed0dedadd1a19ceee21e61cfb567c3b361751b8c8a9e4c54b6de4` |
| 41 | `theorem` | [CG.range](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-range.md) | 266 | `result-track:51bdedd4e5e4f042b96e6a6e51afac52640a4c9baa1df328e3f372f2e909994e` |
| 42 | `theorem` | [CG.map_of_surjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-map-of-surjective.md) | 270 | `result-track:130f1ebefbdf1f011a14a3b25859e93cea876ee37a64e26ba5209813cd771e89` |
| 43 | `theorem` | [cg_iff_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-iff-countable-source-edition-2.md) | 276 | `result-track:8ae4173b57ba915c5b89ecef4c98a84e65eab8e8f0070fd9b1e1133e6766d12d` |
| 44 | `theorem` | [cg_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/cg-of-countable-source-edition-2.md) | 279 | `result-track:b9861a6bb452a97b285988cab4adbde45ff25d32871eca26580626e9394b2802` |
| 45 | `theorem` | [FG.cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/fg-cg-source-edition-2.md) | 282 | `result-track:d4025ea4a84f90ad81c9257402ba325443d48bf3bd2e7672e3f0b483736802ea` |
| 46 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/instance.md) | 285 | `declaration-track:04dd8753298e98bc46d494d492e3f1f423ca1c43915c7088a1b5e65b13bbcea4` |
| 47 | `theorem` | [Equiv.fg_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/equiv-fg-iff.md) | 290 | `result-track:60e1655fb886104cb83de6b242ff81f3761b85ce2cc18b3635a9e02f33bd8ecb` |
| 48 | `theorem` | [Substructure.fg_iff_structure_fg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/substructure-fg-iff-structure-fg.md) | 295 | `result-track:db3e8ccfbf796a42aa78462a6c2b0bc31ddae5978e8d2ed445f194f724881fcc` |
| 49 | `theorem` | [Equiv.cg_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/equiv-cg-iff.md) | 304 | `result-track:40072d1699db9e65358c0ba03805738e281cd0f10f08dc8f2113938a61e839f8` |
| 50 | `theorem` | [Substructure.cg_iff_structure_cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/substructure-cg-iff-structure-cg.md) | 309 | `result-track:2816841f7813b0419f4f5b83107f14b6c02329648b3e1229cf23a59d06c6011b` |
| 51 | `theorem` | [Substructure.countable_fg_substructures_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/substructure-countable-fg-substructures-of-countable.md) | 318 | `result-track:bbb453e477ad37e5e032255e6e54952a7e10f3ea3ce295bbdea26b1ca6849863` |
| 52 | `instance` | [Substructure.instCountable_fg_substructures_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedNamespaced.lean/declarations/substructure-instcountable-fg-substructures-of-countable.md) | 329 | `declaration-track:15943cd774337a2f6890c02ee18b4cf21065e1e908a263a53e908a53d90e55d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69510e3b3e945f8f3da2e5e0434f25d7db2b33d05c09b7296d7ef9c5d03c1439 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variant9c6f289766f40c37b5a816c0a067db4d795a39b167b020f6d7fa5a729b5d0f8a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variant9c6f289766f40c37b5a816c0a067db4d795a39b167b020f6d7fa5a729b5d0f8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
