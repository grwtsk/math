# Verification target: Const Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2839c60b947d284b9c7eef1e0eb2ee5179051b6d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variantb4e0ff8dffd3be03d8ce5ff4840281b01c30630bc9491a95d48487921537068a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2839c60b947d284b9c7eef1e0eb2ee5179051b6d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variantb4e0ff8dffd3be03d8ce5ff4840281b01c30630bc9491a95d48487921537068a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variantb4e0ff8dffd3be03d8ce5ff4840281b01c30630bc9491a95d48487921537068a.lean.json)

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
| 1 | `def` | [IsConst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst.md) | 45 | `declaration-track:4c1439523857ceb4d441bcb884c942d49f544a37d3a0282b9b9a45f6fbb0ff2c` |
| 2 | `theorem` | [isConst_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-iff.md) | 48 | `result-track:597fb6aabddf8f643b101194ea9b2b3532743e409c23a80ce4981dcd76482cd4` |
| 3 | `theorem` | [IsConst.eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-eq.md) | 52 | `result-track:d04528af52a139bff8b5fd4cbfcf4116058b4867f3a28d10f46f1ed46fcabf81` |
| 4 | `theorem` | [IsConst.const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-const.md) | 57 | `result-track:406afb6c7917de257ca86f77ae23314c6daede23e9403ed07c40dc0c93250b62` |
| 5 | `theorem` | [IsConst.of_subsingleton_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-of-subsingleton-domain.md) | 62 | `result-track:0126dc17295dbc910589c58cc030c402068f1ebbc9b700f8a579f8e3811f0670` |
| 6 | `theorem` | [IsConst.of_subsingleton_codomain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-of-subsingleton-codomain.md) | 67 | `result-track:e26b64fcc518f3772647702df25d6257f1f8d4642b32f726ebcdb223bd9b1de5` |
| 7 | `theorem` | [IsConst.of_forall_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-of-forall-eq.md) | 70 | `result-track:2d7611cec15e38de31e8def13a67f35ee0eba3d9809c39a7ef2d40c71ffdba6d` |
| 8 | `theorem` | [isConst_iff_exists_forall_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-iff-exists-forall-eq.md) | 75 | `result-track:c162970db5a8b3da1a5e4df7a2a6cb72b9088e1227f4919a6baf64ee1d028b4b` |
| 9 | `theorem` | [isConst_iff_exists_forall_eq_of_nonempty_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-iff-exists-forall-eq-of-nonempty-domain.md) | 84 | `result-track:5bf4bfed3b49f89a75dbf06aef80adf5ed4ef331a252b39cbc8c25bf10a692cb` |
| 10 | `theorem` | [isConst_iff_exists_eq_const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-iff-exists-eq-const.md) | 90 | `result-track:0cf896cd7f395e04bbfb90cc271b3b6a11ac03beea08e411d19910f8cc8bf290` |
| 11 | `theorem` | [isConst_iff_exists_eq_const_of_nonempty_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-iff-exists-eq-const-of-nonempty-domain.md) | 96 | `result-track:be709e936abc624ba1bd7ca0a81be4ba4f1bd37d6ad7aee3d98e42f71d8bcde1` |
| 12 | `theorem` | [IsConst.comp_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-comp-left.md) | 101 | `result-track:c5891eddf312f9236dae75a4ed5daa18c5f2d78443afcd1db5bc37a380d7766d` |
| 13 | `theorem` | [IsConst.comp_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-comp-right.md) | 106 | `result-track:d5d61fb3aba5d7e2fdcae8dc080b8cd61d29ac7b78f932855f7e4fe96be8a541` |
| 14 | `theorem` | [not_isConst_of_apply_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/not-isconst-of-apply-ne.md) | 110 | `result-track:e87c36d398de0890a5486ec5da0fef5b099efb3acfd3e0ff1be739af49646f55` |
| 15 | `theorem` | [not_isConst_iff_exists_apply_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/not-isconst-iff-exists-apply-ne.md) | 113 | `result-track:1d059085375cec36c8262a3132109378a8555ac1ecb3b536d6ac626606c0e079` |
| 16 | `theorem` | [isConst_id_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-id-iff.md) | 119 | `result-track:3892dcfe25ca8f5233a8b112a8a5c1b389705ae88ff32cd0fd31752cc8772b4b` |
| 17 | `theorem` | [Const Namespaced Public](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-isconst-vari-source-edition-2.md) | 123 | `result-track:791377ea2f976b5ca255a909bb7b6d0b047ae970ec995f639c034b4c9145ede9` |
| 18 | `theorem` | [Const Namespaced Public](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-isconst-vari.md) | 128 | `result-track:7537e1b8c22b49b9625fb4374777f0b3e7102868a865cfeaf8bdc804e04f124d` |
| 19 | `theorem` | [isConst_and_injective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-and-injective-iff.md) | 132 | `result-track:937d0f1ff6d5a896e0863bc7b8eca0932bf107b7974a18f64a57d256bb5f7f58` |
| 20 | `theorem` | [IsConst.injective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-injective-iff.md) | 136 | `result-track:f2cb741a2686a600199d06ec134b37bdb1d609a968e8108707855e6a014b6661` |
| 21 | `theorem` | [Injective.isConst_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/injective-isconst-iff.md) | 139 | `result-track:f3d4e7abd6810a4139fa1cf75cc1e82bc7b89ed169ab4647f8ed7b0ea7742eca` |
| 22 | `theorem` | [isConst_and_surjective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-and-surjective-iff.md) | 142 | `result-track:2a8509dc6634caeb3a070c2c56372fbf592b82081c90be55a3cc5d1449e120c2` |
| 23 | `theorem` | [isConst_and_surjective_iff_of_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-and-surjective-iff-of-nonempty.md) | 149 | `result-track:e662336cfa21b3447f5ff895ffaa5cb8d8665fca7849c0d3b1adfe6d7de06a4e` |
| 24 | `theorem` | [IsConst.surjective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/isconst-surjective-iff.md) | 153 | `result-track:5ddd55826c1f4006671a20192cd5d4b243b2fd1786a381c2547b9e178f55fc14` |
| 25 | `theorem` | [Surjective.isConst_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstNamespacedPublic.lean/declarations/surjective-isconst-iff.md) | 157 | `result-track:27d934da91dc66b6c0d3fce4dd80fab0f117c9f9b44d166cf609a1aeb2fbf7af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82479776604cc1de0f25ce6b418d106c4b906c7f370376caefb864fb8d89f37d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variantb4e0ff8dffd3be03d8ce5ff4840281b01c30630bc9491a95d48487921537068a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variantb4e0ff8dffd3be03d8ce5ff4840281b01c30630bc9491a95d48487921537068a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
