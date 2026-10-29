# Verification target: Order Extend From Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4173e3492bf59eabaabea7c00334218fddcd26e2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant5f9f4042971f75ea8a221d9f1be6eee4374837313016fbd0f3e176caf0bca79e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4173e3492bf59eabaabea7c00334218fddcd26e2`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant5f9f4042971f75ea8a221d9f1be6eee4374837313016fbd0f3e176caf0bca79e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtendFrom/Variant5f9f4042971f75ea8a221d9f1be6eee4374837313016fbd0f3e176caf0bca79e.lean.json)

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
| 1 | `theorem` | [continuousOn_Icc_extendFrom_Ioo](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/declarations/continuouson-icc-extendfrom-ioo.md) | 36 | `result-track:f0e0b0d064b57f21ef19cdb3faf5131a8b15ec41ba3c50f0638318f4afba1ccb` |
| 2 | `theorem` | [continuousOn_uIcc_extendFrom_uIoo](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/declarations/continuouson-uicc-extendfrom-uioo.md) | 49 | `result-track:225c24fa4594333cc5be47a1b1cf770f2b4533e7cb4919001fbcb64bf6cd19fa` |
| 3 | `theorem` | [continuousOn_Ico_extendFrom_Ioo](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/declarations/continuouson-ico-extendfrom-ioo.md) | 63 | `result-track:5b766af49f5e46491017fd055c45dcd0d8bae00cf72555847fb956c23910f879` |
| 4 | `theorem` | [continuousOn_Ioc_extendFrom_Ioo](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/declarations/continuouson-ioc-extendfrom-ioo.md) | 77 | `result-track:ce7e3ee41a70560c2c06e2c091f9acd78630898a460eb4f7c76eb8c7cd3cd3d0` |
| 5 | `theorem` | [eq_lim_at_left_extendFrom_Ioo](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/declarations/eq-lim-at-left-extendfrom-ioo.md) | 91 | `result-track:51101e7a466d7469068d68ef3d837680330c46e86f7ecfed3479e20716f01d03` |
| 6 | `theorem` | [eq_lim_at_right_extendFrom_Ioo](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/declarations/eq-lim-at-right-extendfrom-ioo.md) | 98 | `result-track:15cdd85a942eb8e9fa658d8a2d6dcedd341683384bbc94713927644bf8c5635c` |
| 7 | `theorem` | [eq_lim_at_left_extendFrom_uIoo](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/declarations/eq-lim-at-left-extendfrom-uioo.md) | 105 | `result-track:dbf928ed7dfd8ed215024855b5d407fdc4194cf618de7975571fd2fb4ad5032a` |
| 8 | `theorem` | [eq_lim_at_right_extendFrom_uIoo](../../../../GeneralTopology/OrderExtendFromNamespacedPublic.lean/declarations/eq-lim-at-right-extendfrom-uioo.md) | 109 | `result-track:abdf2d506217b37b68fa70d5d1d0f094c3a30f0f943077e187516df87944ba30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63e0e628fafd7856168c566e8ec9367575227a49097db635819666837ae20bbe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant5f9f4042971f75ea8a221d9f1be6eee4374837313016fbd0f3e176caf0bca79e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ExtendFrom/Variant5f9f4042971f75ea8a221d9f1be6eee4374837313016fbd0f3e176caf0bca79e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
