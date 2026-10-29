# Verification target: Exterior Power Basis Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "444a8fe51619ea950069990bc9554b09d8beccea",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `444a8fe51619ea950069990bc9554b09d8beccea`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instFinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/instfinite.md) | 38 | `declaration-track:47e863fe27ee7bd3e1cdb4abc1815f361676a2b3fdf462877bf81b0cf17d0c65` |
| 2 | `def` | [ιMultiDual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/multidual.md) | 53 | `declaration-track:9a4c2c509c2fec540ad80e9484b4fe03bf5b45b35e57e97842a952a2c25e6f3f` |
| 3 | `lemma` | [ιMultiDual_apply_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/multidual-apply-multi.md) | 57 | `result-track:462f1b57781ee0e17562a9806829d28e96ebd2b7e32c600bca42bb8a6e7ea8c8` |
| 4 | `lemma` | [ιMultiDual_apply_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/multidual-apply-diag.md) | 65 | `result-track:be7284150b4063f33a58e0a4dbdaf8742300cfd2d6573d19b032fa1154fa5859` |
| 5 | `lemma` | [ιMultiDual_apply_nondiag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/multidual-apply-nondiag.md) | 78 | `result-track:e2e512b6b24343af3518b5291db0f8d36fc74e084d2214bf4306600d84fe9f29` |
| 6 | `lemma` | [ιMulti_family_linearIndependent_ofBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/multi-family-linearindependent-ofbasis.md) | 95 | `result-track:c7143e4ce120e6cf0e6753df6f87d12d5d8a6a50b506ca0a9c0e4a9ee0181d7e` |
| 7 | `def` | [Exterior Power Basis Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/exteriorpower.md) | 104 | `declaration-track:25e8c383d8743cd064d321a392dfe6aa6f466d9d5f7789206e63851a42f9212a` |
| 8 | `lemma` | [coe_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/coe-basis.md) | 110 | `result-track:fa23a574c8614be8a40f1bad0bec8ad7ae68366076abc55b8c9ee342f551f66a` |
| 9 | `lemma` | [basis_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/basis-apply.md) | 114 | `result-track:76df4f979ce272460179749f856800fb44b444a591070c194b25bd140bc60474` |
| 10 | `lemma` | [basis_coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/basis-coord.md) | 122 | `result-track:c885e20872d21f2b35bb607d278e76290b31fdfc61155affa8ad74002742ad48` |
| 11 | `lemma` | [basis_repr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/basis-repr-apply.md) | 132 | `result-track:3a9a9ba50e6eb313b7453203526ed685c47a00093e9dda01342223073f8deb4d` |
| 12 | `lemma` | [basis_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/basis-repr-self.md) | 138 | `result-track:ee6cde89e7b5670dceff40025cdd6550788b3f96a2e5f3f3ed541f3099256f53` |
| 13 | `lemma` | [basis_repr_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/basis-repr-ne.md) | 143 | `result-track:51bf466acd908b3c1abbfdb22b2e0704c2d354a5d3f8ca62e3cf02579dc06013` |
| 14 | `lemma` | [basis_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/basis-repr.md) | 147 | `result-track:ee7d9a055ea87cbf932e095f8eacd38c4ea8437b70d6b15543ca6c817fe7403f` |
| 15 | `lemma` | [pairingDual_apply_dualBasis_exteriorPower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/pairingdual-apply-dualbasis-exteriorpower.md) | 154 | `result-track:e8681484d4f667b2145a4c136a592826563a0042379e92621dd14900b6ce7c9f` |
| 16 | `lemma` | [pairingDual_eq_dualBasis_constr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/pairingdual-eq-dualbasis-constr.md) | 158 | `result-track:57b2f2d18601473859c94aa72420bb8b52ed9ea45e8272227fed3a265944e8ce` |
| 17 | `instance` | [instFree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/instfree.md) | 171 | `declaration-track:74af677117a6e875aba9d478e6d73c7871adddd77c7bb80d355936fbb302a0c9` |
| 18 | `lemma` | [finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/finrank-eq.md) | 183 | `result-track:fbc6abaec109099bc4e63202091f980eb39ee8819f21f3648d3636a99b9a812e` |
| 19 | `lemma` | [bijective_pairingDual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/bijective-pairingdual.md) | 191 | `result-track:219509bfc0520d24ba8d090b0a6615254af1aa53bd2bd0892c0c0665f79feb05` |
| 20 | `lemma` | [ιMulti_family_linearIndependent_field](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasisNamespacedPublic.lean/declarations/multi-family-linearindependent-field.md) | 212 | `result-track:aa027e3fb0cbe1271c8c04019ce2624cae4e5302669f19c4329ed555b701e8cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f61918f138db69738b2521011a6736ca1a7a54ea477449884becabb80a64290 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
