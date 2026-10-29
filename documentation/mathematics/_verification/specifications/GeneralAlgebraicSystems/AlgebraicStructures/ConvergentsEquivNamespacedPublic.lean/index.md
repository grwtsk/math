# Verification target: Convergents Equiv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65efd2b6f17c9df8f8ba9581164e67f546edeffc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65efd2b6f17c9df8f8ba9581164e67f546edeffc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean.json)

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
| 1 | `def` | [squashSeq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/squashseq.md) | 102 | `declaration-track:e9520c8daf91e6fac7f967e38cd83894240b2ff66b5aa576495f5cdd482c49b2` |
| 2 | `theorem` | [squashSeq_eq_self_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/squashseq-eq-self-of-terminated.md) | 114 | `result-track:d5bfd8fa85090c664bddc31b5debb6bbf6f576fb6e2afaf08250edc8e1a9f76e` |
| 3 | `theorem` | [squashSeq_nth_of_not_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/squashseq-nth-of-not-terminated.md) | 121 | `result-track:46039859835a1ce9866fa5478562e9e33be716ad61b25d31f4dbfe786e4feb39` |
| 4 | `theorem` | [squashSeq_nth_of_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/squashseq-nth-of-lt.md) | 127 | `result-track:9afc0d474a39f68c6e135fb3826590b514d95b2bd801df6bd2923a0ccfe9be57` |
| 5 | `theorem` | [squashSeq_succ_n_tail_eq_squashSeq_tail_n](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/squashseq-succ-n-tail-eq-squashseq-tail-n.md) | 137 | `result-track:fcafbebc24433d0d542d1e7ec7f7dd5ed518538b23ae35333607cecfbf55863b` |
| 6 | `theorem` | [succ_succ_nth_conv'Aux_eq_succ_nth_conv'Aux_squashSeq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/succ-succ-nth-conv-aux-eq-succ-nth-conv-aux-squashseq.md) | 157 | `result-track:2d30a5baf76641655c6c27ff76f15f130867abcbc6129aad999e563a604fef91` |
| 7 | `def` | [squashGCF](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/squashgcf.md) | 189 | `declaration-track:698f6e87da1e05fe415810bf27b79d4b262296f7d524749b591d67049beaf764` |
| 8 | `theorem` | [squashGCF_eq_self_of_terminated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/squashgcf-eq-self-of-terminated.md) | 201 | `result-track:8a8a0c744f113802a643829256dafc29e653a226eee6574f436ce6e1e261bab0` |
| 9 | `theorem` | [squashGCF_nth_of_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/squashgcf-nth-of-lt.md) | 213 | `result-track:af85e2381483fbb8fe6cb75296f2f7ebd21dc145bf891db42204575c160c816c` |
| 10 | `theorem` | [succ_nth_conv'_eq_squashGCF_nth_conv'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/succ-nth-conv-eq-squashgcf-nth-conv-source-edition-2.md) | 219 | `result-track:f2b927987ca00da3b1f627c06eb88a14e56061a2b9318b7e7190c98c70327fb9` |
| 11 | `theorem` | [contsAux_eq_contsAux_squashGCF_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/contsaux-eq-contsaux-squashgcf-of-le.md) | 230 | `result-track:c3f56aed54bea5a23c68919278582666b7b79d7e4cda4fdca0ceb75c30f610ee` |
| 12 | `theorem` | [succ_nth_conv_eq_squashGCF_nth_conv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/succ-nth-conv-eq-squashgcf-nth-conv.md) | 256 | `result-track:9c0635241b39153b6b70fa138b569e5057df0966ab14daa8dc0830182eeb4251` |
| 13 | `theorem` | [convs_eq_convs'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/convs-eq-convs-source-edition-2.md) | 330 | `result-track:9d6f28baea247392a6527003fb51e30bcf6fa1654dadbaefdbb637f3f9115302` |
| 14 | `theorem` | [convs_eq_convs'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConvergentsEquivNamespacedPublic.lean/declarations/convs-eq-convs.md) | 385 | `result-track:5470495f6d2002b508396988dcb708967e5be159044f6d8d1593d4a5e7bfdc31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f90d13b82f80b1aaca063258b2b0053d2de8a522a00e9bac8804f07646dc5dbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
