# Verification target: Subtype Coe Ne Coe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fad4557848abd108bd65fb9f4757def57e624b79",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fad4557848abd108bd65fb9f4757def57e624b79`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prop](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/prop.md) | 38 | `result-track:00162739032c834448899a47cd4dba890238ed8c4e127e31ab5aaa2b20180c58` |
| 2 | `theorem` | [forall'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/forall.md) | 43 | `result-track:176df9a687b5083b818489de79ce41048311d35348be8d72f0ec169314ce9607` |
| 3 | `theorem` | [exists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/exists.md) | 48 | `result-track:7bf8cae9a2403589d1c0156b2ee0143c72156730de44c0b4ba4b2ea17704692b` |
| 4 | `theorem` | [heq_iff_coe_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/heq-iff-coe-eq.md) | 51 | `result-track:f85c274d637a68e1159852cf086eea2959a64b895c8f6b1e87fd1e3e7d46ed23` |
| 5 | `lemma` | [heq_iff_coe_heq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/heq-iff-coe-heq.md) | 57 | `result-track:c3d76a6d4ea36c92d99cffa63b62b326b1415e54aa6805a528870c85a15d63c5` |
| 6 | `theorem` | [ext_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/ext-val.md) | 63 | `result-track:405960ff472dd45567a4ad10d3c89ccc16ef207462e023a8ea1c4b5c554fb454` |
| 7 | `theorem` | [ext_iff_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/ext-iff-val.md) | 66 | `result-track:c5d4a5f60045f1f9abcd644a64150e45ee000d9475624a752009e80269cceead` |
| 8 | `theorem` | [coe_eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coe-eta.md) | 70 | `result-track:807bc18e6abcf664797535f71da23b323e50f9d6ad91ff640f63e2b5b0bca50f` |
| 9 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coe-mk.md) | 73 | `result-track:134b9a8878c736332595191b4f841ff7a15b8de2e538fda2c5a6ef6163ec48f7` |
| 10 | `theorem` | [mk_eq_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/mk-eq-mk.md) | 77 | `result-track:ec60d8aac8c2f36edc92460d5df45ccb2521d375b55d7fda3cf8cb221e35f812` |
| 11 | `theorem` | [coe_eq_of_eq_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coe-eq-of-eq-mk.md) | 79 | `result-track:ecd7989d240886509c4d47bc1ca42231f817dc201006000c4aa999265a207582` |
| 12 | `theorem` | [coe_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coe-eq-iff.md) | 82 | `result-track:c905676f4c169eb2dec13d4ca6b10558119327b5e5bb7639c96d3c71ba75e1fd` |
| 13 | `theorem` | [coe_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coe-injective.md) | 85 | `result-track:e3b52abf7867ca214bb50b73f90e3a491a5a140f9dee9f4ca08ea1dd879fdb93` |
| 14 | `theorem` | [val_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/val-injective.md) | 87 | `result-track:2a6edd076c564dfad199a0c30501127a40feaf5a83b6f7299b602a2271680a8c` |
| 15 | `theorem` | [coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coe-inj.md) | 90 | `result-track:259a48dae69ec5906a1d3ff1c08c6dc4de3de0017847602ac2c150a6d99f5e35` |
| 16 | `theorem` | [val_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/val-inj.md) | 93 | `result-track:e66360998d95f36ba1d923ec92fcdb79f38ae3fab1279cd34ae78fe8a50c2912` |
| 17 | `lemma` | [coe_ne_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coe-ne-coe.md) | 96 | `result-track:c322d7c073d48dcc667d04932ba26f80e79f2d92f9b0226d91e691cd022a4258` |
| 18 | `theorem` | [_root_.exists_eq_subtype_mk_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/root-exists-eq-subtype-mk-iff.md) | 99 | `result-track:666617e400e1c62e8a793d5047e61328bef736f8b4f1cac6601900b07d3ddcad` |
| 19 | `theorem` | [_root_.exists_subtype_mk_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/root-exists-subtype-mk-eq-iff.md) | 104 | `result-track:7966ee3384dcf3ebfa4acf6f80ca8e5670f10fc3d781ef6bff8c9227e8234e1e` |
| 20 | `theorem` | [_root_.Function.extend_val_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/root-function-extend-val-apply-source-edition-2.md) | 108 | `result-track:bf2d8fe6166587ede20198064f709a093f93eb38a3f8f3581f80f01a20958a21` |
| 21 | `theorem` | [_root_.Function.extend_val_apply'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/root-function-extend-val-apply.md) | 112 | `result-track:19775a153b360a6383eb2a23fdeb98348ced1717707d85352ddf4751093f05f6` |
| 22 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/restrict.md) | 119 | `declaration-track:f37dbb0815f28cec1607df14d42e76af24c8c046d0b4f569b84ee84bd97f0221` |
| 23 | `theorem` | [restrict_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/restrict-apply.md) | 122 | `result-track:91985f461982e1d452eca4c58d8e88b67eeb1a4dabfa6921c9e2a05e4c179d4d` |
| 24 | `theorem` | [restrict_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/restrict-def.md) | 126 | `result-track:8ca3245bfb85bedc6f3bcb1c98f2014f9a1453047f12f8450e2d25d5d211a49c` |
| 25 | `theorem` | [restrict_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/restrict-injective.md) | 129 | `result-track:328bf989d63307e5d2b325984baf3d81c3ac3d5f76377f115bcfe5637bd0c4dc` |
| 26 | `theorem` | [surjective_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/surjective-restrict.md) | 133 | `result-track:9455d5d142004f4dbb97a432f6125aac0acbc2c0a8411021dd5c2756791b94ea` |
| 27 | `def` | [coind](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coind.md) | 142 | `declaration-track:f03f31f5f587a6307e2d3cb94eedc182fc2446586870ea8166a5a5727e28c598` |
| 28 | `theorem` | [coind_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coind-injective.md) | 144 | `result-track:b7aa4ee352960717556279e89cbbfdda257c0205db15c9551b44c9862e8d24db` |
| 29 | `theorem` | [coind_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coind-surjective.md) | 147 | `result-track:ad8274f12bba52f66ea7602f317b9e75f2e093e8883650444daa9f9b1b0e9ff1` |
| 30 | `theorem` | [coind_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coind-bijective.md) | 152 | `result-track:d7c42613a24c67f0d1daf476723d3992c0371d348d7be82c6aae01222f22ccbf` |
| 31 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/map.md) | 158 | `declaration-track:82d6b303ee0d33897172e52047ce4be856ff73c018fcffa57cce0c7570f151f1` |
| 32 | `theorem` | [map_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/map-def.md) | 162 | `result-track:d0fefc5395f325976fca5f3d5907ef8b2fb38ac068baa5be5eea7fb38c12b9c0` |
| 33 | `theorem` | [map_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/map-comp.md) | 166 | `result-track:d01834442e9b92feb87db227fb2d8148671f6d17ce71cd8830a369461ab8699d` |
| 34 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/map-id.md) | 171 | `result-track:4270a6b8040c6f6809e910652dffd3cae4fe80fd5076d2c785c1562cfe6e9374` |
| 35 | `theorem` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/map-injective.md) | 174 | `result-track:8535a9aa5ff8462a9bef3091a82127a9292a2e2f9c002d650ab2ce3e461ac5c9` |
| 36 | `theorem` | [map_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/map-involutive.md) | 178 | `result-track:c61c933899a4b715b30146d4baffd87b429e74214f0c11ca6eb18eb39511580c` |
| 37 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/instance.md) | 182 | `declaration-track:0f0947d34c1faf344b489c07eebe7b77c9579225dea6dda70caffd9d97b64c8d` |
| 38 | `theorem` | [equiv_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/equiv-iff.md) | 185 | `result-track:d8d8117389f5e0b67e8964459dc3686273d0fb8365ac1c0157a24cf63f0ab857` |
| 39 | `theorem` | [refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/refl.md) | 190 | `result-track:9c87cb96c4cdba140b1cadbd53c8914d44b243b307d0373136360135f32649e3` |
| 40 | `theorem` | [symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/symm.md) | 193 | `result-track:91ffc5a11ce8a319c582a58ea59724300868349d33962c2bb2c4bf23bf99a594` |
| 41 | `theorem` | [trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/trans.md) | 196 | `result-track:6dfe1edbaa0834f71c11da41dd3f0c408e31aeee45d6c8520ebe781352990877` |
| 42 | `theorem` | [equivalence](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/equivalence.md) | 199 | `result-track:adeb5e666b7f901136ca33392b088d1428aae950b5df983324456cb15a853911` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/instance-source-edition-2.md) | 202 | `declaration-track:f7b7f56e826edaf5c579c9933d2074e34ba391058533ce4d14348fb9cc66fd5a` |
| 44 | `theorem` | [coe_prop](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/coe-prop.md) | 213 | `result-track:ecd05dc3e6b9b50d9b8db6c5c45b93ecea5413ffcc1d45d39c44a08c76be92ad` |
| 45 | `theorem` | [val_prop](../../../../../../ComputerScience/TheoryOfData/DataStructures/SubtypeCoeNeCoe.lean/declarations/val-prop.md) | 216 | `result-track:787b348817672368fce92128f01901007ce1a5ef90b1a1ff14ec2e87481cbdf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73d89ca5807220ff9f0310b6f9b4d302d5128d2ad13c0978723e2a9660b28989 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
