# Verification target: Action Type Tags Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34d0280d3a38f017afdc8b8923d42f5672904c30",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant52981c520aa6875de7abf70956d9a3683e4140d2b922f1628b8e5b0b9852a0f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34d0280d3a38f017afdc8b8923d42f5672904c30`.

Source path: `GRWTSK/Algebra/GroupTheory/TypeTags/Variant52981c520aa6875de7abf70956d9a3683e4140d2b922f1628b8e5b0b9852a0f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TypeTags/Variant52981c520aa6875de7abf70956d9a3683e4140d2b922f1628b8e5b0b9852a0f5.lean.json)

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
| 1 | `instance` | [Additive.vadd](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/additive-vadd.md) | 39 | `declaration-track:2ccc261bde9215d131be7fe0454c57b6d8800f06a2256709f0ad85345a260068` |
| 2 | `instance` | [Multiplicative.smul](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/multiplicative-smul.md) | 41 | `declaration-track:c4379f8f234c2d88564c6b1fc998cc532ad48d00f60833aa9cb10c044421d531` |
| 3 | `lemma` | [toMul_smul](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/tomul-smul.md) | 43 | `result-track:bf1fc929d81b27e8f9f5bc39594bceabbeb33db461077c547945654d2da61e59` |
| 4 | `lemma` | [ofMul_vadd](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/ofmul-vadd.md) | 45 | `result-track:318b988cc617bef106f6ff2080e2b19540cc80e2a14a77dd1ad88eb6ac19e16d` |
| 5 | `lemma` | [toAdd_vadd](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/toadd-vadd.md) | 47 | `result-track:bb889686b818419052f5cb5fb11d30e8ff8698f3faf40902e15c34a09e1ffb67` |
| 6 | `lemma` | [ofAdd_smul](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/ofadd-smul.md) | 50 | `result-track:a666cb92001ae7dbc403661d56a443f4dc565d869f0a805ed00c1a1a3e7e60a7` |
| 7 | `instance` | [Additive.addAction](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/additive-addaction.md) | 52 | `declaration-track:dd4fbfd0b556117b70a32a59f061218298ab495b86ce58667e02b3a39ecadc8c` |
| 8 | `instance` | [Multiplicative.mulAction](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/multiplicative-mulaction.md) | 56 | `declaration-track:f89f38592270ea57505bfa20043556d1b984c95ac354b2c84359402d81b82672` |
| 9 | `instance` | [Additive.vaddCommClass](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/additive-vaddcommclass.md) | 61 | `declaration-track:1af81773129c418466cfbce1c5d83ba0361ba61196d599a8feabc5b03cce26ea` |
| 10 | `instance` | [Multiplicative.smulCommClass](../../../../GroupTheoryAndGeneralizations/ActionTypeTagsNamespacedPublic.lean/declarations/multiplicative-smulcommclass.md) | 65 | `declaration-track:576d751beb81473174a2a1ec4c1f56751677f7b0517a7857b7f83c2131ea8d97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d0b81b48b8cd262327a2772c20549d952fbc7941c91f709f615d37c82cfdbaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/TypeTags/Variant52981c520aa6875de7abf70956d9a3683e4140d2b922f1628b8e5b0b9852a0f5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/TypeTags/Variant52981c520aa6875de7abf70956d9a3683e4140d2b922f1628b8e5b0b9852a0f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
