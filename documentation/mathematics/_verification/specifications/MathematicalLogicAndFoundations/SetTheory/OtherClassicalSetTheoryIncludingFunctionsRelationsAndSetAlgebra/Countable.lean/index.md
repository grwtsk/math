# Verification target: Countable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "018daef5087ab7e3ddc1eb0f9bb47e8ab5c45894",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `018daef5087ab7e3ddc1eb0f9bb47e8ab5c45894`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable.md) | 31 | `declaration-track:470e86b668a732b46e988bb0b29b63f9df60e424287fa454c0c7dc9f840ac0e4` |
| 2 | `theorem` | [countable_coe_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-coe-iff.md) | 36 | `result-track:93767e47e5d7d7d1b024e50debac622cafa81cb8cd943a4e21df55b91a48f389` |
| 3 | `theorem` | [to_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/to-countable.md) | 41 | `result-track:0675669307c72f9dde82f79e2a6d05c14faa5e91ab6f3ccb80589b84c2f5475a` |
| 4 | `theorem` | [countable_iff_exists_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-iff-exists-injective.md) | 50 | `result-track:174adeaac2aac1acf5b028ed0b9a4095e2320e88aff4b595a1e3914854f7c394` |
| 5 | `theorem` | [countable_iff_exists_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-iff-exists-injon.md) | 57 | `result-track:fe5a13d22e166f90420b68689baffaf947181795a715ef32780a8fe945e9852d` |
| 6 | `def` | [Countable.toEncodable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-toencodable.md) | 62 | `declaration-track:f80d9356489a4a04568d9d36d4135347777182e03f13140561e95a7f4bc74ea8` |
| 7 | `def` | [enumerateCountable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/enumeratecountable.md) | 70 | `declaration-track:8e20c494c986dfcb4c23b0f3bcb86e375118fd7302b3c3d2ad12f82aadc8c0ab` |
| 8 | `theorem` | [subset_range_enumerate](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/subset-range-enumerate.md) | 76 | `result-track:d18e10afb2815290d6f6b45d02c836f11fba6fc33753cf8eface8b98bd6303aa` |
| 9 | `theorem` | [Countable.mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-mono.md) | 85 | `result-track:28e6d3b2803fab7079e0c6cc40b4d371a9ce19e39e187f8036207826b61842cf` |
| 10 | `theorem` | [countable_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-range.md) | 89 | `result-track:47362c47b5c87fc5db064a3ac0be62b7ddbadeebf5ff109d5b71b56709843d84` |
| 11 | `theorem` | [countable_iff_exists_subset_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-iff-exists-subset-range.md) | 93 | `result-track:238ae87fd4af2d299df80fd0292125408353508c82823505eee90584ea49927f` |
| 12 | `theorem` | [countable_iff_exists_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-iff-exists-surjective.md) | 104 | `result-track:598e14d9439f149d044dfdb689429f085a307bf0eb5d68d531bf2ed635bde9a6` |
| 13 | `theorem` | [countable_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-univ.md) | 112 | `result-track:34fe46e75e5ac7f7dd8b2c3aa2625847bcc074620a78d18687467128d3b8a101` |
| 14 | `theorem` | [countable_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-univ-iff.md) | 116 | `result-track:8b329d607b710633e83a401793d11d5ba1e50eae80a0a827567201048d669c36` |
| 15 | `theorem` | [Countable.exists_eq_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-exists-eq-range.md) | 121 | `result-track:02083486507e2debdc4b920d9bdbd463ae19baadbd5822dde25019f2f065f913` |
| 16 | `theorem` | [countable_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-empty.md) | 128 | `result-track:09b39184fe2c1486765e74ad696b0a567fe917e0eb8d3288cb39b8c8442bbd48` |
| 17 | `theorem` | [countable_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-singleton.md) | 131 | `result-track:ccc76af8f0727792182bb8cad8530851659c5f8070689c4138131d119fe9c8e5` |
| 18 | `theorem` | [Countable.image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-image.md) | 134 | `result-track:f391b399d29177a9f2e08241e8779bb35ae49df5bc0a844931890da69a79ae4c` |
| 19 | `theorem` | [MapsTo.countable_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/mapsto-countable-of-injon.md) | 140 | `result-track:ab92ef36bd974ed71f4f022e4aeac06deb303b98a37ad4dbaffcde594cbd61ff` |
| 20 | `theorem` | [Countable.preimage_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-preimage-of-injon.md) | 146 | `result-track:60cda05cfb9e942ca3c5fc7a776140186ec1095b15586cd8aa30d62686596569` |
| 21 | `theorem` | [Countable.preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-preimage.md) | 151 | `result-track:ca42838003b7dcbc01a5cdb331defc1988a6b027b63bfc735ec5e296c79b6094` |
| 22 | `theorem` | [exists_seq_iSup_eq_top_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/exists-seq-isup-eq-top-iff-countable.md) | 156 | `result-track:d1537d88c4376e99021a65ec72d90a4aead661fdc1702a9c31c0a6d716be4dba` |
| 23 | `theorem` | [exists_seq_cover_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/exists-seq-cover-iff-countable.md) | 174 | `result-track:449455e38da27e616d8a1c0c6bab793550c41945ab0243d7dba986e96b600823` |
| 24 | `theorem` | [countable_of_injective_of_countable_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-of-injective-of-countable-image.md) | 180 | `result-track:dde926855dadb826bd7d8b249526dc900deaaa546bcdfea0f847feb0e1d9c83a` |
| 25 | `theorem` | [countable_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-iunion.md) | 185 | `result-track:6a6994f06d61dd9abbae260f9f74a70703df2d47a4bf719b9a57e88c4ff711b5` |
| 26 | `theorem` | [countable_iUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-iunion-iff.md) | 193 | `result-track:95517627f2c67718c85975e5ca91d01c61c7fded9e1cdcc40e819be0c2b4a728` |
| 27 | `theorem` | [Countable.biUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-biunion-iff.md) | 198 | `result-track:94a9a441f46f9fba3d7a850448062fdb1427787dc2b3dd0575b856f090dc64a5` |
| 28 | `theorem` | [Countable.sUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-sunion-iff.md) | 204 | `result-track:d518cd2381479d6e9869afd9444de31fc021e62266aa06b159d194bbab8ff1fe` |
| 29 | `theorem` | [countable_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-union.md) | 215 | `result-track:0f25ad045f217a96e00175c0b1a5309ecd885c1dfeec41f4d2bce465581b7ea0` |
| 30 | `theorem` | [Countable.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-union-source-edition-2.md) | 219 | `result-track:466645ec38621ebcecf5bf2632b3cacee3c6e65d224272af1c0f90222c904218` |
| 31 | `theorem` | [Countable.of_diff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-of-diff.md) | 223 | `result-track:ef1ce02d34b7047684da56e8d15d0323ad40e9c61a9795506b7ebe15f904eb97` |
| 32 | `theorem` | [countable_insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-insert.md) | 227 | `result-track:369bbe2179127800730e3ce61e2e52ff8dbb44c531caf8c67d805189ec0c9c56` |
| 33 | `theorem` | [Countable.insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-insert-source-edition-2.md) | 231 | `result-track:c3ea1f588995da2923614738ac66018fa9f451decf273050317354b623f8d2bc` |
| 34 | `theorem` | [Finite.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/finite-countable.md) | 235 | `result-track:145acae26f69e52dfbfd4d3d9f8b5a85ece794683537b4e2334e94ef9f314919` |
| 35 | `theorem` | [Countable.of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-of-subsingleton.md) | 240 | `result-track:db13da93b52a8751cd56ca3bd59d16cfc8f3d47c5ff9e2b20393f2604bf3c8cc` |
| 36 | `theorem` | [Subsingleton.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/subsingleton-countable.md) | 244 | `result-track:c2df5a4eb520ef72cb0c4da0b9ea33aa2550f18cfa5a13f09ebb218dd55c0bf2` |
| 37 | `theorem` | [countable_isTop](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-istop.md) | 248 | `result-track:22a76c2d8f39a29544d94d067c9eae923d61718f64dc8ee0d0ad697d7965e12a` |
| 38 | `theorem` | [countable_isBot](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-isbot.md) | 252 | `result-track:e06018c65aba65da823974933c84ccbcccf22780f279cf4bd9e6503d3e910648` |
| 39 | `theorem` | [countable_setOf_finite_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-setof-finite-subset.md) | 257 | `result-track:ce7e18c0ed988fdeb81dc17787c72f0cd519023a56816456c99b8ef955b5a9df` |
| 40 | `theorem` | [countable_univ_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-univ-pi.md) | 267 | `result-track:2a2c4ad9824b9b722382d1de92c61514c230e3c22cb92729af0906c87851601c` |
| 41 | `theorem` | [countable_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-pi.md) | 273 | `result-track:06fd85166b63caaa04d4fb8c038a31b076d24304fed7185aa8b953bc2fe48410` |
| 42 | `theorem` | [Countable.prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-prod.md) | 278 | `result-track:ffa2c4e9340dc73510671a0f9e1cc97c8b33e85749066801ef0083e3d56b84b3` |
| 43 | `theorem` | [Countable.image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-image2.md) | 285 | `result-track:622bf3e2115c96101eae57d4f4e331a4b1d13b01763270322fd1f1c1659de044` |
| 44 | `theorem` | [countable_setOf_nonempty_of_disjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/countable-setof-nonempty-of-disjoint.md) | 293 | `result-track:62917576da5f63efa1fcb8b46ef365da325f1acfc18ff093bcb924ef50241af3` |
| 45 | `theorem` | [Finset.countable_toSet](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Countable.lean/declarations/finset-countable-toset.md) | 314 | `result-track:6cfd934d53d5515dd6843baa3fc200be9e4a14618efdc23a395815c05d687f53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=511ead437612e4ab0b38e1684ef88fb8a57ccfa04d1569f7bc197b37938b5832 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
