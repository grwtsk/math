# Verification target: Equidecomp Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46600cabfab38113407f4441f2faa60bcaf790fe",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equidecomp/Varianta1cec875ae78c35f50191734249c974d881324b47057b73cdd7bcd98728142e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46600cabfab38113407f4441f2faa60bcaf790fe`.

Source path: `GRWTSK/Algebra/GroupTheory/Equidecomp/Varianta1cec875ae78c35f50191734249c974d881324b47057b73cdd7bcd98728142e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equidecomp/Varianta1cec875ae78c35f50191734249c974d881324b47057b73cdd7bcd98728142e8.lean.json)

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
| 1 | `def` | [IsDecompOn](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/isdecompon.md) | 73 | `declaration-track:9f4d889880dac9637936203ad867291ec8e91a6d2b5268df01a1513b15abab13` |
| 2 | `structure` | [_root_.Equidecomp](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/root-equidecomp.md) | 85 | `declaration-track:09130d600e6cee3216f895dcb86b1993ea2717f8208b45246175f34948b2fa6f` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/instance.md) | 91 | `declaration-track:91c368a5cb0e2e8899a10ef77189dc558610737e321267805f4c42c06e9118d4` |
| 4 | `def` | [witness](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/witness.md) | 95 | `declaration-track:1d94574e1e1dd7c418b53376ff5aa8d4d8c670fc484c9f2c240e8707af4c38cb` |
| 5 | `theorem` | [isDecompOn](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/isdecompon-source-edition-2.md) | 97 | `result-track:c3a32f2c72e2c71be59d75a6ec488f92e192694c3fa382af4c6c251db17b6309` |
| 6 | `theorem` | [apply_mem_target](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/apply-mem-target.md) | 100 | `result-track:87da623edad644b8cf5238ad8b5ee9bf5d5f30515ee2d6cdbdebb60f63e0a269` |
| 7 | `theorem` | [toPartialEquiv_injective](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/topartialequiv-injective.md) | 103 | `result-track:01dc07d156eca566d3e90bc2b885d1d5c3492e20b0b6b6f1947c204185ec1385` |
| 8 | `theorem` | [IsDecompOn.mono](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/isdecompon-mono.md) | 107 | `result-track:94595122dce1ca7a35937791265f11ddcdc76aa66c8bf7a3f8b5b166eb5c6420` |
| 9 | `def` | [restr](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/restr.md) | 115 | `declaration-track:c4ec8be2581bf0553ecf13afcdb1a4a19ceabc498fc14653677daadb2c3d2af0` |
| 10 | `theorem` | [toPartialEquiv_restr](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/topartialequiv-restr.md) | 121 | `result-track:603def3d3af9c332bd6de2366f415eef681379a61da717b8388b5105382b38a1` |
| 11 | `theorem` | [source_restr](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/source-restr.md) | 124 | `result-track:6507333eb5be7bce0e99bd0adc06c5f8896a6e0f7cb5074e1decdfaa41f4abe0` |
| 12 | `theorem` | [restr_of_source_subset](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/restr-of-source-subset.md) | 127 | `result-track:5d89029b8987dd5a8d1fe1d88d0dbc85cd2bec58d19eb421b258d3ab7a8a5ab9` |
| 13 | `theorem` | [restr_univ](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/restr-univ.md) | 133 | `result-track:b361f64a6e453175be0119ede1ad006628084f179906582562a4380dcd3cd59c` |
| 14 | `def` | [refl](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/refl.md) | 146 | `declaration-track:83161815389399b786f6ca0dcd940a5efe8a268fe8515918ff1fa17d62981866` |
| 15 | `theorem` | [IsDecompOn.comp'](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/isdecompon-comp-source-edition-2.md) | 153 | `result-track:dad3364aaaeeef734426604b699c338f4b4651b457128fea12c193df04ef199c` |
| 16 | `theorem` | [IsDecompOn.comp](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/isdecompon-comp.md) | 163 | `result-track:a4dac601cac2fd4369b5ce1d6226270e8dd3980fed21e99e80aac91d7ae391e4` |
| 17 | `def` | [trans](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/trans.md) | 171 | `declaration-track:68b4e9b56400ce3c37a82640316be28b76df34e3e8f9ad470a207333dd6aba31` |
| 18 | `theorem` | [IsDecompOn.of_leftInvOn](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/isdecompon-of-leftinvon.md) | 182 | `result-track:4ed030c171fb24d1528b1d1aa5b90a602b18fe1eaaf24c6c8e0f43f367ad5556` |
| 19 | `def` | [symm](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/symm.md) | 191 | `declaration-track:e4397734e05aa9d246b05b65dc41bf3ab10ef35258a76c1152d8cccac645c3dc` |
| 20 | `theorem` | [map_target](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/map-target.md) | 197 | `result-track:1d24591df1a416d568d9dd417a8fcebeecd9744c82be3cec5589fd178057dd80` |
| 21 | `theorem` | [left_inv](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/left-inv.md) | 200 | `result-track:1fb561faf94bf0d1bc19ca68420134845c8d58dbd8e08df7c56bcf613abd2339` |
| 22 | `theorem` | [right_inv](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/right-inv.md) | 203 | `result-track:0f8a712af9b8d47be2fa6a13bc00707878c16e47b04803856d5c6aa007fc812c` |
| 23 | `theorem` | [symm_symm](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/symm-symm.md) | 207 | `result-track:7b1c2989e7140b38b16013238fd41de061b85ccb4761e545ecb3aabb3a721e39` |
| 24 | `theorem` | [symm_apply_eq](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/symm-apply-eq.md) | 209 | `result-track:ff91e614b5d8852fb917291c274603d91f0a26c3d060cbe79ec753f7a90cedf8` |
| 25 | `theorem` | [eq_symm_apply](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/eq-symm-apply.md) | 213 | `result-track:e17c754a6f358dd9446005b2c84b6fa363601a2b618451d74def145fbd8eff50` |
| 26 | `theorem` | [symm_involutive](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/symm-involutive.md) | 217 | `result-track:215ed5b4672a756a6b4c1e3132425473b19e3965263ee951731829cb2c03649d` |
| 27 | `theorem` | [symm_bijective](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/symm-bijective.md) | 219 | `result-track:9d8b4db5c300cf457f44c9f92b08ad8b5114e073411b3ab31f2dc3b477d1d86a` |
| 28 | `theorem` | [refl_symm](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/refl-symm.md) | 222 | `result-track:6dd0f470c8d01d5b88ed3ed1697a0863fb71cd58f9060212dbb552bbfc81b272` |
| 29 | `theorem` | [restr_refl_symm](../../../../GroupTheoryAndGeneralizations/EquidecompPublic.lean/declarations/restr-refl-symm.md) | 225 | `result-track:206b1215bc4630a5ed8a6d96b05e640156d36544b39c81014f6f589a42283221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6ff1115c2938d243400bb91e02809842a9d0f4aa96d507bacc85bdc1941b17b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Equidecomp/Varianta1cec875ae78c35f50191734249c974d881324b47057b73cdd7bcd98728142e8.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Equidecomp/Varianta1cec875ae78c35f50191734249c974d881324b47057b73cdd7bcd98728142e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
