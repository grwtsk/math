# Verification target: SMul With Zero Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eee041af0121a51ab870069d6b5f93bdd7a90b22",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eee041af0121a51ab870069d6b5f93bdd7a90b22`.

Source path: `GRWTSK/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Opposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Prod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/smulwithzero.md) | 57 | `declaration-track:f01e6d7e972eb1e0f5711134d75ab105a416027695dde323cb7f4ee78e1a9e52` |
| 2 | `instance` | [MulZeroClass.toSMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/mulzeroclass-tosmulwithzero.md) | 62 | `declaration-track:02748106843ec458f81d8157020b7e467332904b6caf0aa578f835128a4f183f` |
| 3 | `instance` | [MulZeroClass.toOppositeSMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/mulzeroclass-tooppositesmulwithzero.md) | 69 | `declaration-track:bf5d6ffeb02e13a625cb551672a7b0557100d69094635b33b6a9f0543c3a8db0` |
| 4 | `theorem` | [zero_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/zero-smul.md) | 78 | `result-track:e4fc30158bf353e15ea5b3b2a3e7f931831491883f13554c6d43113d897919ea` |
| 5 | `lemma` | [smul_eq_zero_of_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/smul-eq-zero-of-left.md) | 84 | `result-track:786b65f560f6f920804318d8a2a50ef986d3a0b435216c26289f7a875f97916e` |
| 6 | `lemma` | [smul_eq_zero_of_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/smul-eq-zero-of-right.md) | 86 | `result-track:0e75cd28b3a2c1628d623f25224b30955ed617b8b9bad0c96e7ae59f6c166ddc` |
| 7 | `lemma` | [left_ne_zero_of_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/left-ne-zero-of-smul.md) | 88 | `result-track:d3a5c4ccb24b173dd6d12e51fbf0945efcef2da1244911fe9a6475b09b5107b8` |
| 8 | `lemma` | [right_ne_zero_of_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/right-ne-zero-of-smul.md) | 90 | `result-track:2ff7874d1b90620b62bd193ced63be42fc027f9f253d48083e0e26c2091e4219` |
| 9 | `def` | [Function.Injective.smulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/function-injective-smulwithzero.md) | 98 | `declaration-track:2666fffe1f0d3995806e3a086127f45f61e54283385d41c9588effd0c7ffb360` |
| 10 | `def` | [Function.Surjective.smulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/function-surjective-smulwithzero.md) | 109 | `declaration-track:9c2f0483aae757031c21523532f5f0817b071294f3250d48c916ddf9851aff80` |
| 11 | `def` | [SMulWithZero.compHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/smulwithzero-comphom.md) | 122 | `declaration-track:c66e9a7705865b0308d62929f402c52afd1ee572cd4d277e9ee628e4c887d1e6` |
| 12 | `instance` | [AddMonoid.natSMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/addmonoid-natsmulwithzero.md) | 130 | `declaration-track:fc994979f3a48ac832f33bdcc12a0d6db58a0987e3058b65d4e0fb0b4d14ace2` |
| 13 | `instance` | [AddGroup.intSMulWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/addgroup-intsmulwithzero.md) | 135 | `declaration-track:8b36df2e4019145afbfc0050c30c5c93e43c8e9b36cf0ed79a9470e30488f0ee` |
| 14 | `class` | [MulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/mulactionwithzero.md) | 149 | `declaration-track:8ef149d1e5cb9717198a33d1d7b7aeafa149e3d8f0866de6976606ec6902f9a3` |
| 15 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/instance.md) | 158 | `declaration-track:60317b4625430a1847901e0f8bcc7a8e7cd81306520041ea529d42dff8b950e3` |
| 16 | `instance` | [MonoidWithZero.toMulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/monoidwithzero-tomulactionwithzero.md) | 164 | `declaration-track:ec5e1f4f092db9010eaa0a7eaa0f70f733e053c54a82907091705f59bcfd2b9a` |
| 17 | `instance` | [MonoidWithZero.toOppositeMulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/monoidwithzero-tooppositemulactionwithzero.md) | 170 | `declaration-track:0740a62310b102c54f0edaa09c53633210ebb8f996d658c65f2b6b905d584fa9` |
| 18 | `lemma` | [MulActionWithZero.subsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/mulactionwithzero-subsingleton.md) | 174 | `result-track:3cc686eb8537651cbe5334a0b3163c9e4126291bef2eb2204fd0ad1f2b58abf9` |
| 19 | `lemma` | [MulActionWithZero.nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/mulactionwithzero-nontrivial.md) | 179 | `result-track:8c30e51bb606c5c498460113a008463fbcbb9c49ac4c1d10603f8bd2d5c7d0b9` |
| 20 | `def` | [Function.Injective.mulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/function-injective-mulactionwithzero.md) | 191 | `declaration-track:bf1b73e5098baceedbc6a2df8e8aee9b5a1b10bd1be3dd120141560546f9769c` |
| 21 | `def` | [Function.Surjective.mulActionWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/function-surjective-mulactionwithzero.md) | 199 | `declaration-track:dab30637e3294eb4e8a5f585eb1ec9d21d5739cc6d36b3099e98cf31f4c61503` |
| 22 | `def` | [MulActionWithZero.compHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/mulactionwithzero-comphom.md) | 207 | `declaration-track:0b229d366f90a8129f2f072b472a28bb087de4d17612518504f0cfe9438bdb0d` |
| 23 | `theorem` | [smul_inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/smul-inv.md) | 220 | `result-track:7282bed4ae838210cdebb4e86437744624134838f695a2228d9f472437087607` |
| 24 | `def` | [smulMonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SMulWithZeroNamespaced.lean/declarations/smulmonoidwithzerohom.md) | 234 | `declaration-track:33c1ac617398b05abd084c53e41f45649a23e4678bc152cc4fdab6f977e0434b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9af6f326adaf79d7b8c45d68bef10f114f42549e60fab1ac32a17c70aa350904 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean","GRWTSK/_verification/specifications/Algebra/SMulWithZero/Variant717517e97a6cf5c80acaeeabbf09757329da1afd8ab307cda886d2fb7df9cc2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
