# Verification target: Countable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3450ecf511efcfaa4564fc0c1a254333df1f1955",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variantdb572def0a8f3f81d1ad61979d9606e9539434a13962b2de0c10dd389beb6e0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3450ecf511efcfaa4564fc0c1a254333df1f1955`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variantdb572def0a8f3f81d1ad61979d9606e9539434a13962b2de0c10dd389beb6e0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variantdb572def0a8f3f81d1ad61979d9606e9539434a13962b2de0c10dd389beb6e0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable.md) | 39 | `declaration-track:4c44aad5ce2319cb586b2bc5bcd4cea1a3bb6ea92890dbb4d79c73ab1cbb3688` |
| 2 | `theorem` | [countable_coe_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-coe-iff.md) | 44 | `result-track:80625207bf4afdc13acd4da558f628f681171b3679c64d4d4d07254099002127` |
| 3 | `theorem` | [to_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/to-countable.md) | 49 | `result-track:29360da16cd76c809732a7f7bfed57c9fac42011debded9864debfc16edfa301` |
| 4 | `theorem` | [countable_iff_exists_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-iff-exists-injective.md) | 58 | `result-track:9f0c723c5e4045e6d55e5f2d27f12d8d5f76d341b705917e2e426be73e878737` |
| 5 | `theorem` | [countable_iff_exists_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-iff-exists-injon.md) | 65 | `result-track:b04ed0e47adbfd3d76f49a29360082181cbf89c23397c77b263063a4159bab85` |
| 6 | `def` | [Countable.toEncodable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-toencodable.md) | 70 | `declaration-track:763b3bf852d2bd7056092116c0dbdc1a890698d69520607089bf210ff8af4fb6` |
| 7 | `def` | [enumerateCountable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/enumeratecountable.md) | 78 | `declaration-track:7c49c0b0d274f9350f12df4733139dc675ee0bd1dfcda6ff647d9c084e155a65` |
| 8 | `theorem` | [subset_range_enumerate](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/subset-range-enumerate.md) | 84 | `result-track:d1d624aa49d2c32ffb329559250b2602804ea80a08367bb7c96f42631919aa44` |
| 9 | `theorem` | [Countable.mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-mono.md) | 93 | `result-track:4ab73eb9401dbd00907cddf8b9deef956f07271df7fec742fa0f4401dbc671c5` |
| 10 | `theorem` | [countable_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-range.md) | 97 | `result-track:3f1b54d7cd02aa6c0d2c7a7fa2d652b16693212f4a0f50d81e6bb69149f5266a` |
| 11 | `theorem` | [countable_iff_exists_subset_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-iff-exists-subset-range.md) | 101 | `result-track:2e6c817d102958e79276a8a701abb1579340fc8e5b6a7eadbf32a0dd862a3e42` |
| 12 | `theorem` | [countable_iff_exists_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-iff-exists-surjective.md) | 112 | `result-track:6fd69e0bde65b5a98e7d3b8427f746306f860d881e9088d8d190c4ec5ff331ec` |
| 13 | `theorem` | [countable_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-univ.md) | 120 | `result-track:9d1b085b5be05329dcf61ca463c9ab03f7bd54d371dc6e356e61b70ddbbd764a` |
| 14 | `theorem` | [countable_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-univ-iff.md) | 124 | `result-track:41cb921501613ed0203c900385e2fbaa1286c1fc0495eaa09e92ae881118593b` |
| 15 | `theorem` | [Countable.exists_eq_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-exists-eq-range.md) | 129 | `result-track:68ad13743151bf9025ed7085598de51aaa306188fdb5baf96be2fff849d35623` |
| 16 | `theorem` | [countable_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-empty.md) | 136 | `result-track:8c09014f2bd745fdf5b7361c1f4764a5d22c4d8c0634746ae538ea665c9dc6bc` |
| 17 | `theorem` | [countable_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-singleton.md) | 139 | `result-track:6e977ee4312e4dc4730b543b7550e2dcb7dec0c45f0d441cbf214a6dfe608370` |
| 18 | `theorem` | [Countable.image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-image.md) | 142 | `result-track:e9e2a5f8085a96fe4304173b41cbe2bca85db8bf59bfa85ca6616c4b7c49641a` |
| 19 | `theorem` | [MapsTo.countable_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/mapsto-countable-of-injon.md) | 148 | `result-track:51fcc7636a5033d9665dc913cac22811fb8496ad9e629ae00284f09787292c86` |
| 20 | `theorem` | [Countable.preimage_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-preimage-of-injon.md) | 154 | `result-track:3eaea14c312aefe22e09d7846d09f09990e232e6196ac325d38b24607d43fd1e` |
| 21 | `theorem` | [Countable.preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-preimage.md) | 159 | `result-track:2e17575c0c3af4ce9b988d6e3c30bad447d8b4145618fe98c87109d773772e5c` |
| 22 | `theorem` | [exists_seq_iSup_eq_top_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/exists-seq-isup-eq-top-iff-countable.md) | 164 | `result-track:fca84b7eb83a62cfe0e6487d50c1f83eb39c907e5fb69859dc027d58290ee2f5` |
| 23 | `theorem` | [exists_seq_cover_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/exists-seq-cover-iff-countable.md) | 182 | `result-track:9937d9f84597e270afa472d304f02a89cdfea776732d643d20213f1221c2c81a` |
| 24 | `theorem` | [countable_of_injective_of_countable_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-of-injective-of-countable-image.md) | 188 | `result-track:12ea3bd1f83f479bf899406996f9103bca1da0b7ef5684b1e67cf93701c2042f` |
| 25 | `theorem` | [countable_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-iunion.md) | 193 | `result-track:6516048b22c1ae21b211f0d16801cb2cacbf575849511c12decc93e399f6b19d` |
| 26 | `theorem` | [countable_iUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-iunion-iff.md) | 201 | `result-track:40a8b951ed083cbb8183ba5da6242e9a3fa9cb96b19cad7dc4f0de4d705bfac5` |
| 27 | `theorem` | [Countable.biUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-biunion-iff.md) | 206 | `result-track:a619fc3ba738e1f89cffd4cfb632d8234a20d3438c0c01de6b7d8680437ddf8d` |
| 28 | `theorem` | [Countable.sUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-sunion-iff.md) | 212 | `result-track:7d4d1a05943127adb82e69ed65629820665958a5e881029cf84ed16072d62d42` |
| 29 | `theorem` | [countable_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-union-source-edition-2.md) | 223 | `result-track:cbcff8f379466f466221eb5fdabff923822f97dadaa866e40c085417e34877d1` |
| 30 | `theorem` | [Countable.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-union.md) | 227 | `result-track:21c461434df89ea1df36238867ae64fb225491ed858d3783c8c65f8a9295a4e2` |
| 31 | `theorem` | [Countable.of_diff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-of-diff.md) | 231 | `result-track:49180186131f57b2a4a59662fc1ebc38d3f9a9c817e99d2e6e21a5af8e9f0824` |
| 32 | `theorem` | [countable_insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-insert-source-edition-2.md) | 235 | `result-track:5cb3c1f75623f6ffb2b49800508c426eb8ecf82406f31706075992d4205606b5` |
| 33 | `theorem` | [Countable.insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-insert.md) | 239 | `result-track:50368c4d14d57f9d4d65d53665819e7477230d405ea6407179032469db44da30` |
| 34 | `theorem` | [Finite.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/finite-countable.md) | 243 | `result-track:a5cf0e6a1305aee7fcedabf4ef5d7ad494af28951670c311f2260dd144e83b77` |
| 35 | `theorem` | [Countable.of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-of-subsingleton.md) | 248 | `result-track:e96b321a4ebab1a0355fd3e52cdd946cf50a735037e498b2e13eb724f456b5e0` |
| 36 | `theorem` | [Subsingleton.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/subsingleton-countable.md) | 252 | `result-track:f614323d632aea8ac34194e5220e0d22c415ce7cb0649eb79bba41716b7d81a2` |
| 37 | `theorem` | [countable_isTop](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-istop.md) | 256 | `result-track:1a35cc0f3bfa2e6accc462487c49b7f70a822412c4a599876baed8a4a04f2a58` |
| 38 | `theorem` | [countable_isBot](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-isbot.md) | 260 | `result-track:60ba3ed2fc6151de2ff534d745ffe76ed5924a3877a761ceb7014b73e670bdfa` |
| 39 | `theorem` | [countable_setOf_finite_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-setof-finite-subset.md) | 265 | `result-track:c200b361a30bf7a1674a4e92cae4832ac5c5b8b84b19acfb3831ed580f897e0d` |
| 40 | `theorem` | [countable_univ_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-univ-pi.md) | 275 | `result-track:ee0aa02b1a1cfdbdf9d2d02a9c01779266f3529bf92dc5f17a83856a90d08cb1` |
| 41 | `theorem` | [countable_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-pi.md) | 281 | `result-track:7ed8baed27fdf84c1354f4ff5f184c447b46ef898c0ca152a4bb6739d433a4ab` |
| 42 | `theorem` | [Countable.prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-prod.md) | 286 | `result-track:9c499e03b590e40a2b86219b858ce2cf86ee56149245d214db9d318f085ebdd3` |
| 43 | `theorem` | [Countable.image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-image2.md) | 293 | `result-track:30433637319677ab2b2cb83ea0ca645ccd6f00d4473207749223bc24f8e14d1b` |
| 44 | `theorem` | [countable_setOf_nonempty_of_disjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/countable-setof-nonempty-of-disjoint.md) | 301 | `result-track:ef5ad1162155e197d391fc664e4cdcde4a3b55a745321eb31286647693a6b78c` |
| 45 | `theorem` | [Finset.countable_toSet](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespaced.lean/declarations/finset-countable-toset.md) | 322 | `result-track:3caa4409cdd7f89d729abe522fdaed55c3764b93bf26ff9eddfdeb605cae177c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f60b2f6fa4e8815a599b24c8c67860614fe452de272fee3d95e571432f5dea4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variantdb572def0a8f3f81d1ad61979d9606e9539434a13962b2de0c10dd389beb6e0f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variantdb572def0a8f3f81d1ad61979d9606e9539434a13962b2de0c10dd389beb6e0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
