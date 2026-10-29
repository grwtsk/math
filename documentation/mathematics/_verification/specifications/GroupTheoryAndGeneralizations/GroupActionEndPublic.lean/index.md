# Verification target: Group Action End Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d36c42d030ab54641f1da1f326978138c8cc93b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d36c42d030ab54641f1da1f326978138c8cc93b`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean.json)

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
| 1 | `instance` | [applyMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/applymulaction-source-edition-3.md) | 56 | `declaration-track:ba86c1f2f9adb251020074b83e2fc82926e40a40cdd6c6c210c625ffac73f214` |
| 2 | `instance` | [applyAddAction](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/applyaddaction.md) | 62 | `declaration-track:f33472f7e9a606362ac63299d4c0caa92041decec363b6ad30b1b615b03802d7` |
| 3 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/smul-def-source-edition-2.md) | 64 | `result-track:d4e6396906e096d66a2aeb8a104b777686859b08e8b849c362855232d4628cd2` |
| 4 | `lemma` | [mul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/mul-def.md) | 67 | `result-track:ade34467dc16fc25414b5424e3914f6e856a7921a6a5570a0f1fecda61128991` |
| 5 | `lemma` | [one_def](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/one-def.md) | 70 | `result-track:56ebb6aac47c9c22b13450b2c68bb7dee1d728efe433e7f8c2958a194cdbeb81` |
| 6 | `instance` | [apply_FaithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/apply-faithfulsmul-source-edition-2.md) | 73 | `declaration-track:d8cf9f2b7a7fb1adca7f43cdd9fc13e282db212294d02f847af002cf842096fb` |
| 7 | `instance` | [applyMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/applymulaction-source-edition-2.md) | 84 | `declaration-track:7dccb108d19b4526fa48fc4d871eb0fb5293c991e21c6837a20f6a1dc222eefb` |
| 8 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/smul-def-source-edition-3.md) | 90 | `result-track:e65c4c26ad4c8457a2760277efe376bca2013982e0bb5d0670ebefaa3f721a80` |
| 9 | `instance` | [applyFaithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/applyfaithfulsmul.md) | 93 | `declaration-track:5aac6a0e2d2ff264275b8b4558b2cc52c9231f0beaeae6b7d575882a3ba56b00` |
| 10 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/instance.md) | 96 | `declaration-track:d499a4696efcd6cc410e0f447f95d2b8092925b7a4f0e4eb0a7a29c1284e5b6a` |
| 11 | `instance` | [applyMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/applymulaction.md) | 112 | `declaration-track:66dbeb31f0add987d907972e15f149823b4145bfd47a21de230ba4d8a57c69c2` |
| 12 | `instance` | [applyMulDistribMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/applymuldistribmulaction.md) | 121 | `declaration-track:95776bbebb1f41882613eacc867b930bc420e2e744d383444a6c670a2f75055e` |
| 13 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/smul-def.md) | 125 | `result-track:32c4a56c06d2a287e7d3c5e886d1f94308ec760f1d0868d864c1b879e2c5e08e` |
| 14 | `instance` | [apply_faithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/apply-faithfulsmul.md) | 129 | `declaration-track:b340f15a9000451d45e298449c1bf4149d8230135eaf34416554b8b4a6941685` |
| 15 | `def` | [MulAction.toEndHom](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/mulaction-toendhom.md) | 151 | `declaration-track:4042cc7a7fe248c6340707e6d5aebeef519fb4f3e1578590e7bbf12a5e40c706` |
| 16 | `abbrev` | [MulAction.ofEndHom](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/mulaction-ofendhom.md) | 159 | `declaration-track:18a25b4fe2ed4980ed2acb119387e41388f656ad0bacbd05b984d96b5b9885ae` |
| 17 | `def` | [AddAction.toEndHom](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/addaction-toendhom.md) | 169 | `declaration-track:363eaa3f001c186101f0e96ee23c7c0655a010bea1e3b00a671be2e5b2d23f87` |
| 18 | `abbrev` | [AddAction.ofEndHom](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/addaction-ofendhom.md) | 175 | `declaration-track:727ab7a1b525c1b13d9da8c118f098692c00073b7094a33de996abcff55cfd56` |
| 19 | `def` | [MulAction.toPermHom](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/mulaction-topermhom.md) | 184 | `declaration-track:7c00f0b93552d9e11f6a66733d9db448f3ae4865030544db4246c34cda9116e5` |
| 20 | `lemma` | [MulAction.coe_toPermHom](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/mulaction-coe-topermhom.md) | 189 | `result-track:0fe0f5199bdd429ce1858d19a58202871dad5d9b6ebe05759812fd7c0f3f26f1` |
| 21 | `lemma` | [MulAction.toPerm_one](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/mulaction-toperm-one.md) | 193 | `result-track:9061c36dd3e93189c9f4b40bb14a2dc429ee1f37c1746565ec3b3bb04724b2be` |
| 22 | `def` | [AddAction.toPermHom](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/addaction-topermhom.md) | 205 | `declaration-track:f4f0622785c8aef4f2ba0768377dc1696540bd54a4478b9a1f15e24317e84ac8` |
| 23 | `lemma` | [AddAction.coe_toPermHom](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/addaction-coe-topermhom.md) | 207 | `result-track:a19b55d0f46c498c6733de4848dea9a02d8da39033d6091b47f265f36312529d` |
| 24 | `theorem` | [AddAction.toPerm_zero](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/addaction-toperm-zero.md) | 211 | `result-track:f3281769d5fc83b132b8c7384e9faad7f643255ddc8007272b5e15b9ce01838a` |
| 25 | `def` | [MulDistribMulAction.toMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/muldistribmulaction-tomulequiv.md) | 224 | `declaration-track:b04f7df3a42ccf823ea0c4436d3b12d9a15c57c4f824150dd983336c5f5d94b6` |
| 26 | `def` | [MulDistribMulAction.toMulAut](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/muldistribmulaction-tomulaut.md) | 232 | `declaration-track:649d04a3f6dce9e8cefe965bf11fa13819eb97d729d5cbb13d3978a488fc1386` |
| 27 | `def` | [mulAutArrow](../../../../GroupTheoryAndGeneralizations/GroupActionEndPublic.lean/declarations/mulautarrow.md) | 246 | `declaration-track:eb4576653c32a7e888b7a08956b7c97397750041087d6d0e9e3a2e8cbd2bc5a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3616a5eb31ea2ece07cdaf71fb33c78e81a984482d4ecbaddb9397b0d2c2d53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
