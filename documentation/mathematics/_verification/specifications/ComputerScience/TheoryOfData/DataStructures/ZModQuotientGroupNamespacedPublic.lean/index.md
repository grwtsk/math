# Verification target: ZMod Quotient Group Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "951a09f8bb0a7a227dbf1aaf4cd7b3830cc586d3",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `951a09f8bb0a7a227dbf1aaf4cd7b3830cc586d3`.

Source path: `GRWTSK/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientZMultiplesNatEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/quotientzmultiplesnatequivzmod.md) | 48 | `declaration-track:acab27778e5a026f9b075a3b884fa518f1e1ada77d4ca07443724b243c2baf6a` |
| 2 | `def` | [quotientZMultiplesEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/quotientzmultiplesequivzmod.md) | 53 | `declaration-track:5a242e82a1bbe047d81a65e4c9d9c574335a7f025ca546a533054710dc1cfb3c` |
| 3 | `lemma` | [index_zmultiples](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/index-zmultiples.md) | 57 | `result-track:822f9cd0bce625bd50205170abb1658f11048399b7de1efde48c781ee5239baa` |
| 4 | `lemma` | [relIndex_zmultiples_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/relindex-zmultiples-mul.md) | 63 | `result-track:8188d729dac9e7191e87308b18308051003c9957530c5b9bfc2567df6a6d1e39` |
| 5 | `def` | [zmultiplesQuotientStabilizerEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/zmultiplesquotientstabilizerequiv.md) | 78 | `declaration-track:58523c4ea8788b8052c33ed5b08fed2f9b1adeee0b36446bce47447c0c0e5655` |
| 6 | `theorem` | [zmultiplesQuotientStabilizerEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/zmultiplesquotientstabilizerequiv-symm-apply.md) | 95 | `result-track:00c55d9ee153a2077c4468aad8bb77d4d5beafd4fd003cd2903c319eadbf47ee` |
| 7 | `def` | [zpowersQuotientStabilizerEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/zpowersquotientstabilizerequiv.md) | 109 | `declaration-track:e6cbc66a7811bcbb5e6245ca3834d8eb31a873af1a65b0bc54cb0fc28e168d81` |
| 8 | `theorem` | [zpowersQuotientStabilizerEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/zpowersquotientstabilizerequiv-symm-apply.md) | 114 | `result-track:c25ecac83edd80407774208672f2afb992d480b3047fd6c12a31b854a50a1bff` |
| 9 | `def` | [orbitZPowersEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/orbitzpowersequiv.md) | 119 | `declaration-track:8115f0f18eb744fa380e54e3bb40cc0be940c785bd7fca11467719d1a385acd5` |
| 10 | `def` | [ZMod Quotient Group Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/orbitzmultiplesequiv.md) | 123 | `declaration-track:2d738287a00aed769d2eaf71f2d1224be135c05b1f61d3ec5b0ee696a6b1f6d0` |
| 11 | `theorem` | [orbitZPowersEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/orbitzpowersequiv-symm-apply-source-edition-2.md) | 132 | `result-track:a46deb083968517b69ec83bd6ab475145144f6863600778124a9d7c59a5403f2` |
| 12 | `theorem` | [orbitZPowersEquiv_symm_apply'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/orbitzpowersequiv-symm-apply.md) | 137 | `result-track:8cf3e171841968528fb79738c448bd9aa8c858ccc70f51baed546ba69c2ce5e7` |
| 13 | `theorem` | [ZMod Quotient Group Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/orbitzmultiplesequiv-symm-apply.md) | 143 | `result-track:21252a5fb46352580b1a5a16bf658f651d4aa9c84f4a1b9715e1e7c9976998eb` |
| 14 | `theorem` | [minimalPeriod_eq_card](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/minimalperiod-eq-card.md) | 155 | `result-track:ff95984aab593ea12ec2837bb8db637c9708c02be1bc412d63c2fc0f5da49613` |
| 15 | `instance` | [minimalPeriod_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/minimalperiod-pos.md) | 160 | `declaration-track:7a69a55f8179b12ddf8eb741e06743a1e9157de4c1a2ecdc8533a67282f28b07` |
| 16 | `theorem` | [Nat.card_zpowers](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/nat-card-zpowers.md) | 178 | `result-track:0560740ec074a5fe92f3ea34ebdc024d0d17f6b40702515fe8d78f32d4fff48d` |
| 17 | `lemma` | [finite_zpowers](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/finite-zpowers.md) | 185 | `result-track:921935f8174e2cd13a2f9bcc5f1c53eb63349e6be4be86da9066f1b900b8eb3d` |
| 18 | `lemma` | [infinite_zpowers](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/infinite-zpowers.md) | 190 | `result-track:581f2764b4fca9a0b0aaff02b95d15d7e1746bab4b593938a872db63a88aa4bd` |
| 19 | `def` | [quotientEquivSigmaZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/quotientequivsigmazmod.md) | 204 | `declaration-track:dd75eb29d3b57bad8fb5c80dd6e52942519e104ae978c1242b4955c0e9da38c8` |
| 20 | `lemma` | [quotientEquivSigmaZMod_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/quotientequivsigmazmod-symm-apply.md) | 209 | `result-track:5f703751ea3732faf34b5dcbe84a3248ac1b4830b2edb1ba8970db48593d694e` |
| 21 | `lemma` | [quotientEquivSigmaZMod_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/quotientequivsigmazmod-apply.md) | 213 | `result-track:64329e6bf9d8cffe825f515b7da18df8b6abb97dcdbed4aeae8d3d650bace66a` |
| 22 | `lemma` | [index_eq_sum_minimalPeriod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupNamespacedPublic.lean/declarations/index-eq-sum-minimalperiod.md) | 219 | `result-track:df4dac5dfa63b62d520b37b8bb21dfd537738b2ba3e84eb93e7a7e6abf4518d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ace88746f6b72410061f2c7a5e666dc14f1b5ccf269122486cf156710552a1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
