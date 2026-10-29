# Verification target: Norm Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "588e751a73c6098fea1da186c106906a6cca3286",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant79f5db1de51048467cb677ad082256b744cee2999c55b2bdcf734affc60cb5dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `588e751a73c6098fea1da186c106906a6cca3286`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant79f5db1de51048467cb677ad082256b744cee2999c55b2bdcf734affc60cb5dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant79f5db1de51048467cb677ad082256b744cee2999c55b2bdcf734affc60cb5dd.lean.json)

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
| 1 | `def` | [norm](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm.md) | 69 | `declaration-track:fbe479d7ee0bc977a7ce3b256d3b095a322931e1789a94809e70118c900ebd5b` |
| 2 | `theorem` | [norm_apply](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm-apply.md) | 72 | `result-track:832b8cb11470c5149ab1cb15be9e521fc0134768b89914f7e888f44ad215721b` |
| 3 | `theorem` | [norm_self](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm-self.md) | 75 | `result-track:1e46659e727b5b1abf948990df24e68e56ed5cda08282efa1fd1041c72de596d` |
| 4 | `theorem` | [norm_eq_one_of_not_exists_basis](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm-eq-one-of-not-exists-basis.md) | 79 | `result-track:9bb3cccd8181ed67d9d56959b7781ff14196dbaca18ef1c9a57712329abb36b5` |
| 5 | `theorem` | [norm_eq_one_of_not_module_finite](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm-eq-one-of-not-module-finite.md) | 84 | `result-track:68f495ac9daa4702b63bdf9b7164b3753cfbdaaf2de5396c19a3dd7f962fc6c3` |
| 6 | `theorem` | [norm_eq_matrix_det](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm-eq-matrix-det.md) | 90 | `result-track:a86efe34bf0142cbed20677ff613433f3b48284e38584376b9e16c5f3aa851e0` |
| 7 | `theorem` | [norm_algebraMap_of_basis](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm-algebramap-of-basis.md) | 95 | `result-track:fa78f86ec90fcfa08ca6bdebdafd6b3bb0991332ce3ecb5551ce6508dc8d2479` |
| 8 | `theorem` | [norm_algebraMap](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm-algebramap.md) | 108 | `result-track:c2fea597eec878feb84d818f2818f2ba62b9a826a42520b9fdf78dbf93975c7e` |
| 9 | `lemma` | [norm_natCast](../../../../CommutativeAlgebra/NormDefsNamespacedPublic.lean/declarations/norm-natcast.md) | 112 | `result-track:ef36821319fa9b8964e5342edff4c762b3de4c86df72a39b1b0e7baa737be061` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe062707a795e69c78c0af2556dcea3dbfa232c709b88178b6fb8c2ad9106a75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant79f5db1de51048467cb677ad082256b744cee2999c55b2bdcf734affc60cb5dd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant79f5db1de51048467cb677ad082256b744cee2999c55b2bdcf734affc60cb5dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
